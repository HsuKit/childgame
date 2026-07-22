import { describe, expect, it } from 'vitest'
import {
  WISH_REWARD_GROUPS,
  calculateDailyWishAward,
  calculateWishBalance,
  getRedemptionStatusLabel,
  groupWishRewards,
} from './wishRewards'

describe('calculateDailyWishAward', () => {
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
      { name: 'small reward', cost: 6 },
      { name: 'medium reward', cost: 15 },
      { name: 'large reward', cost: 35 },
      { name: 'dream reward', cost: 80 },
    ]

    expect(groupWishRewards(rewards).map((group) => ({
      id: group.id,
      costs: group.rewards.map((reward) => reward.cost),
    }))).toEqual(WISH_REWARD_GROUPS.map((group) => ({
      id: group.id,
      costs: [6, 15, 35, 80].filter((cost) => cost >= group.minCost && cost <= group.maxCost),
    })))
  })
})
