import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'

interface PointsState {
  balance: number
  todayEarned: number
  isLoading: boolean
  fetchBalance: () => Promise<void>
  addPoints: (amount: number, reason: string, referenceId?: string | null) => Promise<void>
  spendPoints: (amount: number, reason: string, referenceId?: string | null) => Promise<boolean>
}

export const usePointsStore = create<PointsState>((set, get) => ({
  balance: 0,
  todayEarned: 0,
  isLoading: false,

  fetchBalance: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    set({ isLoading: true })
    const { data } = await supabase.rpc('get_total_points', { user_id: userId })
    const balance = Number(data ?? 0)
    const today = new Date().toISOString().slice(0, 10)
    const { data: todayData } = await supabase.from('points_transactions').select('amount').eq('user_id', userId).gte('created_at', today).gt('amount', 0)
    const todayEarned = todayData?.reduce((sum, t) => sum + t.amount, 0) ?? 0
    set({ balance, todayEarned, isLoading: false })
  },

  addPoints: async (amount: number, reason: string, referenceId: string | null = null) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId || amount <= 0) return
    await supabase.from('points_transactions').insert({ user_id: userId, amount, reason, reference_id: referenceId })
    set(state => ({ balance: state.balance + amount, todayEarned: state.todayEarned + amount }))
  },

  spendPoints: async (amount: number, reason: string, referenceId: string | null = null) => {
    const { balance } = get()
    if (balance < amount) return false
    const userId = useAuthStore.getState().user?.id
    if (!userId) return false
    await supabase.from('points_transactions').insert({ user_id: userId, amount: -amount, reason, reference_id: referenceId })
    set(state => ({ balance: state.balance - amount }))
    return true
  },
}))
