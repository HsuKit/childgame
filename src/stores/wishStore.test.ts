import { beforeEach, describe, expect, it, vi } from 'vitest'
import { createWishActionsForTest, emptyBalance, useWishStore } from './wishStore'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import type { Database } from '../lib/database.types'

vi.mock('../lib/supabase', () => ({
  supabase: {
    rpc: vi.fn(),
    from: vi.fn(),
    auth: {
      getSession: vi.fn(),
      signInAnonymously: vi.fn(),
      signOut: vi.fn(),
    },
  },
}))

vi.mock('./authStore', () => ({
  useAuthStore: {
    getState: vi.fn(),
  },
}))

type WishReward = Database['public']['Tables']['wish_rewards']['Row']
type WishRedemption = Database['public']['Tables']['wish_redemptions']['Row']
type DiaryEntry = Database['public']['Tables']['reward_diary_entries']['Row']

interface TableMock {
  select: ReturnType<typeof vi.fn>
  eq: ReturnType<typeof vi.fn>
  order: ReturnType<typeof vi.fn>
  limit: ReturnType<typeof vi.fn>
  insert: ReturnType<typeof vi.fn>
  then: <TResult1 = { data: unknown[]; error: null }, TResult2 = never>(
    onfulfilled?: ((value: { data: unknown[]; error: null }) => TResult1 | PromiseLike<TResult1>) | null,
    onrejected?: ((reason: unknown) => TResult2 | PromiseLike<TResult2>) | null,
  ) => Promise<TResult1 | TResult2>
}

function reward(overrides: Partial<WishReward> = {}): WishReward {
  return {
    id: 'reward-1',
    user_id: null,
    name: '一起做手工',
    description: '周末做一个小作品',
    type: 'companionship',
    cost: 6,
    is_preset: true,
    is_active: true,
    availability_note: null,
    created_at: '2026-07-22T00:00:00.000Z',
    ...overrides,
  }
}

function redemption(overrides: Partial<WishRedemption> = {}): WishRedemption {
  return {
    id: 'redemption-1',
    user_id: 'user-1',
    reward_id: 'reward-1',
    reward_name: '一起做手工',
    reward_cost: 6,
    reward_type: 'companionship',
    status: 'pending_parent_review',
    child_note: null,
    parent_note: null,
    requested_at: '2026-07-22T00:00:00.000Z',
    reviewed_at: null,
    fulfilled_at: null,
    ...overrides,
  }
}

function diaryEntry(overrides: Partial<DiaryEntry> = {}): DiaryEntry {
  return {
    id: 'diary-1',
    user_id: 'user-1',
    entry_type: 'wish_fulfilled',
    title: '愿望实现',
    description: '一起做手工',
    reference_id: 'redemption-1',
    created_at: '2026-07-22T00:00:00.000Z',
    ...overrides,
  }
}

function makeTableMock(data: unknown[] = []): TableMock {
  const table = {
    select: vi.fn(),
    eq: vi.fn(),
    order: vi.fn(),
    limit: vi.fn(),
    insert: vi.fn().mockResolvedValue({ error: null }),
    then: <TResult1 = { data: unknown[]; error: null }, TResult2 = never>(
      onfulfilled?: ((value: { data: unknown[]; error: null }) => TResult1 | PromiseLike<TResult1>) | null,
      onrejected?: ((reason: unknown) => TResult2 | PromiseLike<TResult2>) | null,
    ) => Promise.resolve({ data, error: null }).then(onfulfilled, onrejected),
  }
  table.select.mockReturnValue(table)
  table.eq.mockReturnValue(table)
  table.order.mockReturnValue(table)
  table.limit.mockResolvedValue({ data, error: null })
  return table
}

let tableMocks: Record<string, TableMock>

function mockSignedInUser() {
  vi.mocked(useAuthStore.getState).mockReturnValue({ user: { id: 'user-1', isAnonymous: true } } as never)
}

function setupFetchMocks() {
  tableMocks = {
    wish_rewards: makeTableMock([reward()]),
    wish_redemptions: makeTableMock([redemption()]),
    reward_diary_entries: makeTableMock([diaryEntry()]),
    wish_coin_transactions: makeTableMock([]),
  }
  vi.mocked(supabase.from as unknown as ReturnType<typeof vi.fn>).mockImplementation((table: string) => tableMocks[table])
}

beforeEach(() => {
  vi.clearAllMocks()
  mockSignedInUser()
  setupFetchMocks()
  vi.mocked(supabase.rpc as unknown as ReturnType<typeof vi.fn>).mockImplementation((name: string) => {
    if (name === 'get_wish_coin_balance') {
      return Promise.resolve({
        data: [{ total_earned: 10, frozen: 0, spent: 0, available: 10 }],
        error: null,
      })
    }
    if (name === 'award_daily_wish_coins') return Promise.resolve({ data: 1, error: null })
    if (name === 'submit_wish_redemption') return Promise.resolve({ data: redemption(), error: null })
    if (name === 'fulfill_wish_redemption') return Promise.resolve({ data: redemption({ status: 'fulfilled' }), error: null })
    return Promise.resolve({ data: redemption(), error: null })
  })
  useWishStore.setState({
    balance: emptyBalance,
    rewards: [],
    redemptions: [],
    diaryEntries: [],
    isLoading: false,
    message: null,
  })
})

describe('createWishActionsForTest', () => {
  it('submits a redemption through the RPC dependency instead of ledger inserts', async () => {
    const submitted = redemption({ child_note: '想周六完成' })
    const deps = {
      getUserId: () => 'user-1',
      callSubmitRedemption: vi.fn().mockResolvedValue(submitted),
      callApproveRedemption: vi.fn(),
      callRejectRedemption: vi.fn(),
      callFulfillRedemption: vi.fn(),
      refresh: vi.fn(),
      setMessage: vi.fn(),
    }

    const actions = createWishActionsForTest(deps)
    const result = await actions.submitRedemption(reward(), '想周六完成')

    expect(result).toBe(submitted)
    expect(deps.callSubmitRedemption).toHaveBeenCalledWith('reward-1', '想周六完成')
    expect(deps.refresh).toHaveBeenCalledOnce()
    expect(deps.setMessage).toHaveBeenCalledWith('愿望已提交，等待爸妈确认')
    expect('insertTransaction' in deps).toBe(false)
  })

  it('does not block submission using stale local available balance', async () => {
    const deps = {
      getUserId: () => 'user-1',
      callSubmitRedemption: vi.fn().mockResolvedValue(redemption()),
      callApproveRedemption: vi.fn(),
      callRejectRedemption: vi.fn(),
      callFulfillRedemption: vi.fn(),
      refresh: vi.fn(),
      setMessage: vi.fn(),
    }

    const result = await createWishActionsForTest(deps).submitRedemption(reward({ cost: 100 }))

    expect(result).toEqual(redemption())
    expect(deps.callSubmitRedemption).toHaveBeenCalledWith('reward-1', null)
    expect(deps.setMessage).toHaveBeenCalledWith('愿望已提交，等待爸妈确认')
  })

  it('turns RPC insufficient balance errors into a child-friendly message', async () => {
    const deps = {
      getUserId: () => 'user-1',
      callSubmitRedemption: vi.fn().mockRejectedValue(new Error('insufficient wish coin balance')),
      callApproveRedemption: vi.fn(),
      callRejectRedemption: vi.fn(),
      callFulfillRedemption: vi.fn(),
      refresh: vi.fn(),
      setMessage: vi.fn(),
    }

    const result = await createWishActionsForTest(deps).submitRedemption(reward())

    expect(result).toBeNull()
    expect(deps.setMessage).toHaveBeenCalledWith('愿望币还不够哦')
    expect(deps.refresh).not.toHaveBeenCalled()
  })

  it('approves a redemption through the approve RPC dependency', async () => {
    const approved = redemption({ status: 'approved_pending_fulfillment', parent_note: '周六可以' })
    const deps = {
      getUserId: () => 'user-1',
      callSubmitRedemption: vi.fn(),
      callApproveRedemption: vi.fn().mockResolvedValue(approved),
      callRejectRedemption: vi.fn(),
      callFulfillRedemption: vi.fn(),
      refresh: vi.fn(),
      setMessage: vi.fn(),
    }

    const result = await createWishActionsForTest(deps).approveRedemption(redemption(), '周六可以')

    expect(result).toBe(approved)
    expect(deps.callApproveRedemption).toHaveBeenCalledWith('redemption-1', '周六可以')
    expect(deps.refresh).toHaveBeenCalledOnce()
    expect(deps.setMessage).toHaveBeenCalledWith('已同意这个愿望')
  })

  it('rejects a redemption through the reject RPC dependency', async () => {
    const rejected = redemption({ status: 'rejected', parent_note: '这周不行' })
    const deps = {
      getUserId: () => 'user-1',
      callSubmitRedemption: vi.fn(),
      callApproveRedemption: vi.fn(),
      callRejectRedemption: vi.fn().mockResolvedValue(rejected),
      callFulfillRedemption: vi.fn(),
      refresh: vi.fn(),
      setMessage: vi.fn(),
    }

    const result = await createWishActionsForTest(deps).rejectRedemption(redemption(), '这周不行')

    expect(result).toBe(rejected)
    expect(deps.callRejectRedemption).toHaveBeenCalledWith('redemption-1', '这周不行')
    expect(deps.refresh).toHaveBeenCalledOnce()
    expect(deps.setMessage).toHaveBeenCalledWith('已退回这个愿望，愿望币已返还')
  })

  it('fulfills a redemption through the fulfill RPC dependency without client diary writes', async () => {
    const fulfilled = redemption({ status: 'fulfilled' })
    const deps = {
      getUserId: () => 'user-1',
      callSubmitRedemption: vi.fn(),
      callApproveRedemption: vi.fn(),
      callRejectRedemption: vi.fn(),
      callFulfillRedemption: vi.fn().mockResolvedValue(fulfilled),
      refresh: vi.fn(),
      setMessage: vi.fn(),
    }

    const result = await createWishActionsForTest(deps).fulfillRedemption(redemption())

    expect(result).toBe(fulfilled)
    expect(deps.callFulfillRedemption).toHaveBeenCalledWith('redemption-1')
    expect(deps.refresh).toHaveBeenCalledOnce()
    expect(deps.setMessage).toHaveBeenCalledWith('已记录为愿望实现')
    expect('createDiaryEntry' in deps).toBe(false)
  })
})

describe('useWishStore Supabase wiring', () => {
  it('awards daily wish coins through RPC', async () => {
    const amount = await useWishStore.getState().awardDailyWishCoins('check-1')

    expect(amount).toBe(1)
    expect(supabase.rpc).toHaveBeenCalledWith('award_daily_wish_coins', { check_in_id: 'check-1' })
  })

  it('submits redemptions through RPC without client ledger or redemption inserts', async () => {
    useWishStore.setState({ balance: { ...emptyBalance, available: 0 } })

    const result = await useWishStore.getState().submitRedemption(reward(), 'note')

    expect(result).toBe(true)
    expect(supabase.rpc).toHaveBeenCalledWith('submit_wish_redemption', {
      reward_id: 'reward-1',
      child_note: 'note',
    })
    expect(tableMocks.wish_redemptions.insert).not.toHaveBeenCalled()
    expect(tableMocks.wish_coin_transactions.insert).not.toHaveBeenCalled()
  })

  it('fulfills redemptions through RPC without client diary inserts', async () => {
    await useWishStore.getState().fulfillRedemption(redemption())

    expect(supabase.rpc).toHaveBeenCalledWith('fulfill_wish_redemption', {
      redemption_id: 'redemption-1',
    })
    expect(tableMocks.reward_diary_entries.insert).not.toHaveBeenCalled()
  })

  it('resets prior wish state when fetching without an authenticated user', async () => {
    vi.mocked(useAuthStore.getState).mockReturnValue({ user: null } as never)
    useWishStore.setState({
      balance: { totalEarned: 20, frozen: 3, spent: 4, available: 13 },
      rewards: [reward()],
      redemptions: [redemption()],
      diaryEntries: [diaryEntry()],
      message: '旧消息',
      isLoading: true,
    })

    await useWishStore.getState().fetchWishData()

    expect(useWishStore.getState()).toMatchObject({
      balance: emptyBalance,
      rewards: [],
      redemptions: [],
      diaryEntries: [],
      message: null,
      isLoading: false,
    })
  })
})
