import { describe, expect, it, vi } from 'vitest'
import { createWishActionsForTest } from './wishStore'
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

type WishReward = Database['public']['Tables']['wish_rewards']['Row']
type WishRedemption = Database['public']['Tables']['wish_redemptions']['Row']

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

describe('createWishActionsForTest', () => {
  it('submits a redemption through the RPC dependency instead of ledger inserts', async () => {
    const submitted = redemption({ child_note: '想周六完成' })
    const deps = {
      getUserId: () => 'user-1',
      getAvailable: () => 10,
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

  it('approves a redemption through the approve RPC dependency', async () => {
    const approved = redemption({ status: 'approved_pending_fulfillment', parent_note: '周六可以' })
    const deps = {
      getUserId: () => 'user-1',
      getAvailable: () => 10,
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
      getAvailable: () => 10,
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
      getAvailable: () => 10,
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
