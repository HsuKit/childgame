import { describe, expect, it } from 'vitest'
import {
  WISH_REWARD_GROUPS,
  DEFAULT_WISH_REWARDS,
  calculateDailyWishAward,
  calculateWishBalance,
  getRedemptionStatusLabel,
  groupWishRewards,
  resolveVisibleWishRewards,
  groupParentWishRedemptions,
} from './wishRewards'

describe('calculateDailyWishAward', () => {
  it('does not award a streak bonus for a zero-day streak', () => {
    expect(calculateDailyWishAward(0)).toEqual({ base: 1, streakBonus: 0, total: 1 })
  })

  it('awards the daily coin without a streak bonus before day 7', () => {
    expect(calculateDailyWishAward(6)).toEqual({ base: 1, streakBonus: 0, total: 1 })
  })

  it('adds the 7-day streak bonus on day 7', () => {
    expect(calculateDailyWishAward(7)).toEqual({ base: 1, streakBonus: 2, total: 3 })
  })

  it('uses the 30-day streak bonus instead of the 7-day bonus on day 30', () => {
    expect(calculateDailyWishAward(30)).toEqual({ base: 1, streakBonus: 8, total: 9 })
  })
})

describe('calculateWishBalance', () => {
  it('consumes frozen coins when a wish is spent after approval', () => {
    expect(calculateWishBalance([
      { type: 'earn', amount: 10 },
      { type: 'freeze', amount: -4 },
      { type: 'spend', amount: -4 },
    ])).toEqual({ totalEarned: 10, frozen: 0, spent: 4, available: 6 })
  })

  it('restores available coins when a frozen wish is released', () => {
    expect(calculateWishBalance([
      { type: 'earn', amount: 10 },
      { type: 'freeze', amount: -4 },
      { type: 'release', amount: 4 },
    ])).toEqual({ totalEarned: 10, frozen: 0, spent: 0, available: 10 })
  })

  it('separates earned, frozen, spent, and available coins', () => {
    expect(calculateWishBalance([
      { type: 'earn', amount: 10 },
      { type: 'freeze', amount: -4 },
      { type: 'release', amount: 4 },
      { type: 'spend', amount: -6 },
    ])).toEqual({ totalEarned: 10, frozen: 0, spent: 6, available: 4 })
  })
})

describe('getRedemptionStatusLabel', () => {
  it('returns the parent-facing Chinese label for each redemption status', () => {
    expect(getRedemptionStatusLabel('pending_parent_review')).toBe('等待爸妈确认')
    expect(getRedemptionStatusLabel('approved_pending_fulfillment')).toBe('爸妈已同意')
    expect(getRedemptionStatusLabel('fulfilled')).toBe('愿望已实现')
    expect(getRedemptionStatusLabel('rejected')).toBe('这次没有通过')
    expect(getRedemptionStatusLabel('cancelled')).toBe('已取消')
  })
})

describe('groupWishRewards', () => {
  it('groups rewards by cost using the configured group ids', () => {
    const rewards = [
      { id: 'small-reward', cost: 6 },
      { id: 'medium-reward', cost: 15 },
      { id: 'large-reward', cost: 35 },
      { id: 'dream-reward', cost: 80 },
    ]
    const groups = groupWishRewards(rewards)

    expect(groups[WISH_REWARD_GROUPS[0].id].map((item) => item.id)).toEqual(['small-reward'])
    expect(groups[WISH_REWARD_GROUPS[1].id].map((item) => item.id)).toEqual(['medium-reward'])
    expect(groups[WISH_REWARD_GROUPS[2].id].map((item) => item.id)).toEqual(['large-reward'])
    expect(groups[WISH_REWARD_GROUPS[3].id].map((item) => item.id)).toEqual(['dream-reward'])
  })
})

describe('DEFAULT_WISH_REWARDS', () => {
  it('contains the approved standard reward list across all difficulty tiers', () => {
    expect(DEFAULT_WISH_REWARDS.map((reward) => [reward.name, reward.cost])).toEqual([
      ['一张喜欢的贴纸', 3],
      ['一支新铅笔或橡皮', 5],
      ['选择今天的水果或小点心', 6],
      ['睡前多讲一个故事', 6],
      ['15 分钟亲子小游戏', 8],
      ['选择一次晚餐菜品', 10],
      ['一本喜欢的课外书', 15],
      ['30 分钟桌游时间', 16],
      ['一个预算内小玩具', 20],
      ['周末去书店或图书馆', 20],
      ['公园或博物馆小出行', 25],
      ['一套彩笔或文具盒', 30],
      ['一次亲子电影夜', 35],
      ['一个小愿望申请', 40],
      ['周末半日家庭活动', 45],
      ['一次城市探索或近郊游', 55],
      ['一个较大玩具或模型', 60],
      ['一次短途旅行计划', 80],
      ['家庭愿望日', 100],
    ])
  })

  it('uses standard rewards when the loaded reward list is empty', () => {
    expect(resolveVisibleWishRewards([])).toEqual(DEFAULT_WISH_REWARDS)
  })

  it('keeps loaded rewards when the database returns active rewards', () => {
    const loadedRewards = [{ id: 'reward-1', name: '家长自定义', cost: 12 }]

    expect(resolveVisibleWishRewards(loadedRewards)).toBe(loadedRewards)
  })
})

describe('groupParentWishRedemptions', () => {
  it('separates parent review and fulfillment queues by status', () => {
    const redemptions = [
      { id: 'pending', status: 'pending_parent_review' },
      { id: 'approved', status: 'approved_pending_fulfillment' },
      { id: 'fulfilled', status: 'fulfilled' },
      { id: 'rejected', status: 'rejected' },
      { id: 'cancelled', status: 'cancelled' },
    ] as const

    const groups = groupParentWishRedemptions(redemptions)

    expect(groups.pendingReview.map((item) => item.id)).toEqual(['pending'])
    expect(groups.pendingFulfillment.map((item) => item.id)).toEqual(['approved'])
  })
})
