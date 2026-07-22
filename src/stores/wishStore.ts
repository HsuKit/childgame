import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import type { WishBalance } from '../lib/wishRewards'
import type { Database } from '../lib/database.types'

export type WishReward = Database['public']['Tables']['wish_rewards']['Row']
export type WishRewardInsert = Database['public']['Tables']['wish_rewards']['Insert']
export type WishRedemption = Database['public']['Tables']['wish_redemptions']['Row']
export type DiaryEntry = Database['public']['Tables']['reward_diary_entries']['Row']

export const emptyBalance: WishBalance = { totalEarned: 0, frozen: 0, spent: 0, available: 0 }

export interface WishActionDependencies {
  getUserId: () => string | undefined
  callSubmitRedemption: (rewardId: string, childNote: string | null) => Promise<WishRedemption>
  callApproveRedemption: (redemptionId: string, parentNote: string | null) => Promise<WishRedemption>
  callRejectRedemption: (redemptionId: string, parentNote: string | null) => Promise<WishRedemption>
  callFulfillRedemption: (redemptionId: string) => Promise<WishRedemption>
  refresh?: () => Promise<void>
  setMessage?: (message: string) => void
}

function isInsufficientWishBalanceError(error: unknown) {
  if (!(error instanceof Error)) return false
  const message = error.message.toLowerCase()
  return message.includes('insufficient') || error.message.includes('不够')
}

export function createWishActions(deps: WishActionDependencies) {
  const requireUserId = () => {
    const userId = deps.getUserId()
    if (!userId) throw new Error('Not authenticated')
    return userId
  }

  return {
    submitRedemption: async (reward: WishReward, childNote: string | null = null) => {
      requireUserId()
      try {
        const redemption = await deps.callSubmitRedemption(reward.id, childNote || null)
        deps.setMessage?.('愿望已提交，等待爸妈确认')
        await deps.refresh?.()
        return redemption
      } catch (error) {
        if (isInsufficientWishBalanceError(error)) {
          deps.setMessage?.('愿望币还不够哦')
          return null
        }
        throw error
      }
    },

    approveRedemption: async (redemption: WishRedemption, parentNote: string | null = null) => {
      requireUserId()
      const updated = await deps.callApproveRedemption(redemption.id, parentNote || null)
      deps.setMessage?.('已同意这个愿望')
      await deps.refresh?.()
      return updated
    },

    rejectRedemption: async (redemption: WishRedemption, parentNote: string | null = null) => {
      requireUserId()
      const updated = await deps.callRejectRedemption(redemption.id, parentNote || null)
      deps.setMessage?.('已退回这个愿望，愿望币已返还')
      await deps.refresh?.()
      return updated
    },

    fulfillRedemption: async (redemption: WishRedemption) => {
      requireUserId()
      const updated = await deps.callFulfillRedemption(redemption.id)
      deps.setMessage?.('已记录为愿望实现')
      await deps.refresh?.()
      return updated
    },
  }
}

export const createWishActionsForTest = createWishActions

type CreateRewardInput = Omit<WishRewardInsert, 'id' | 'user_id' | 'is_preset' | 'is_active' | 'created_at'> & {
  is_active?: boolean
}

interface WishState {
  balance: WishBalance
  rewards: WishReward[]
  redemptions: WishRedemption[]
  diaryEntries: DiaryEntry[]
  isLoading: boolean
  message: string | null
  fetchWishData: () => Promise<void>
  awardDailyWishCoins: (checkInId: string) => Promise<number>
  createReward: (input: CreateRewardInput) => Promise<void>
  submitRedemption: (reward: WishReward, childNote?: string | null) => Promise<boolean>
  approveRedemption: (redemption: WishRedemption, parentNote?: string | null) => Promise<void>
  rejectRedemption: (redemption: WishRedemption, parentNote?: string | null) => Promise<void>
  fulfillRedemption: (redemption: WishRedemption) => Promise<void>
  clearMessage: () => void
}

function readRpcData<T>(result: { data: T | null; error: unknown }): T {
  if (result.error) throw result.error
  if (result.data === null) throw new Error('Supabase RPC returned no data')
  return result.data
}

function readQueryData<T>(result: { data: T | null; error: unknown }, fallback: T): T {
  if (result.error) throw result.error
  return result.data ?? fallback
}

export const useWishStore = create<WishState>((set, get) => {
  let fetchRequestId = 0
  const actionDeps: WishActionDependencies = {
    getUserId: () => useAuthStore.getState().user?.id,
    callSubmitRedemption: async (rewardId, childNote) => readRpcData(await supabase.rpc('submit_wish_redemption', {
      reward_id: rewardId,
      child_note: childNote,
    })),
    callApproveRedemption: async (redemptionId, parentNote) => readRpcData(await supabase.rpc('approve_wish_redemption', {
      redemption_id: redemptionId,
      parent_note: parentNote,
    })),
    callRejectRedemption: async (redemptionId, parentNote) => readRpcData(await supabase.rpc('reject_wish_redemption', {
      redemption_id: redemptionId,
      parent_note: parentNote,
    })),
    callFulfillRedemption: async (redemptionId) => readRpcData(await supabase.rpc('fulfill_wish_redemption', {
      redemption_id: redemptionId,
    })),
    refresh: () => get().fetchWishData(),
    setMessage: (message) => set({ message }),
  }
  const actions = createWishActions(actionDeps)

  return {
    balance: emptyBalance,
    rewards: [],
    redemptions: [],
    diaryEntries: [],
    isLoading: false,
    message: null,

    fetchWishData: async () => {
      const requestId = fetchRequestId + 1
      fetchRequestId = requestId
      const userId = useAuthStore.getState().user?.id
      if (!userId) {
        set({
          balance: emptyBalance,
          rewards: [],
          redemptions: [],
          diaryEntries: [],
          message: null,
          isLoading: false,
        })
        return
      }

      set({ isLoading: true })
      try {
        const [balanceResult, rewardsResult, redemptionsResult, diaryResult] = await Promise.all([
          supabase.rpc('get_wish_coin_balance', { user_id: userId }),
          supabase.from('wish_rewards').select('*').eq('is_active', true).order('cost', { ascending: true }),
          supabase.from('wish_redemptions').select('*').eq('user_id', userId).order('requested_at', { ascending: false }),
          supabase.from('reward_diary_entries').select('*').eq('user_id', userId).order('created_at', { ascending: false }).limit(20),
        ])

        const balanceRows = readRpcData(balanceResult)
        const balanceRow = balanceRows[0]
        const balance = balanceRow
          ? {
              totalEarned: Number(balanceRow.total_earned ?? 0),
              frozen: Number(balanceRow.frozen ?? 0),
              spent: Number(balanceRow.spent ?? 0),
              available: Number(balanceRow.available ?? 0),
            }
          : emptyBalance

        if (requestId !== fetchRequestId || useAuthStore.getState().user?.id !== userId) return

        set({
          balance,
          rewards: readQueryData(rewardsResult, []),
          redemptions: readQueryData(redemptionsResult, []),
          diaryEntries: readQueryData(diaryResult, []),
        })
      } finally {
        if (requestId === fetchRequestId) set({ isLoading: false })
      }
    },

    awardDailyWishCoins: async (checkInId) => {
      const amount = Number(readRpcData(await supabase.rpc('award_daily_wish_coins', { check_in_id: checkInId })) ?? 0)
      if (amount > 0) await get().fetchWishData()
      return amount
    },

    createReward: async (input) => {
      const userId = useAuthStore.getState().user?.id
      if (!userId) throw new Error('Not authenticated')
      const { error } = await supabase.from('wish_rewards').insert({
        ...input,
        user_id: userId,
        is_preset: false,
        is_active: input.is_active ?? true,
      })
      if (error) throw error
      await get().fetchWishData()
    },

    submitRedemption: async (reward, childNote = null) => Boolean(await actions.submitRedemption(reward, childNote)),
    approveRedemption: async (redemption, parentNote = null) => {
      await actions.approveRedemption(redemption, parentNote)
    },
    rejectRedemption: async (redemption, parentNote = null) => {
      await actions.rejectRedemption(redemption, parentNote)
    },
    fulfillRedemption: async (redemption) => {
      await actions.fulfillRedemption(redemption)
    },
    clearMessage: () => set({ message: null }),
  }
})
