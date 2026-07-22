export const DAILY_WISH_COIN = 1
export const STREAK_7_WISH_BONUS = 2
export const STREAK_30_WISH_BONUS = 8

export type WishTransactionType = 'earn' | 'freeze' | 'release' | 'spend'
export type WishRewardType = 'item' | 'companionship' | 'experience' | 'open_wish'
export type WishRedemptionStatus =
  | 'pending_parent_review'
  | 'approved_pending_fulfillment'
  | 'fulfilled'
  | 'rejected'
  | 'cancelled'

export interface WishTransactionLike {
  type: WishTransactionType
  amount: number
}

export interface WishBalance {
  totalEarned: number
  frozen: number
  spent: number
  available: number
}

export interface WishAward {
  base: number
  streakBonus: number
  total: number
}

export interface WishRewardGroup {
  id: 'small' | 'medium' | 'large' | 'dream'
  label: string
  min: number
  max: number
}

export const WISH_REWARD_GROUPS: WishRewardGroup[] = [
  { id: 'small', label: '小小愿望', min: 0, max: 8 },
  { id: 'medium', label: '中等愿望', min: 9, max: 20 },
  { id: 'large', label: '大愿望', min: 21, max: 45 },
  { id: 'dream', label: '梦想愿望', min: 46, max: Infinity },
]

const REDEMPTION_STATUS_LABELS: Record<WishRedemptionStatus, string> = {
  pending_parent_review: '等待爸妈确认',
  approved_pending_fulfillment: '爸妈已同意',
  fulfilled: '愿望已实现',
  rejected: '这次没有通过',
  cancelled: '已取消',
}

export function calculateDailyWishAward(streakCount: number): WishAward {
  const streakBonus = streakCount > 0 && streakCount % 30 === 0
    ? STREAK_30_WISH_BONUS
    : streakCount > 0 && streakCount % 7 === 0
      ? STREAK_7_WISH_BONUS
      : 0

  return {
    base: DAILY_WISH_COIN,
    streakBonus,
    total: DAILY_WISH_COIN + streakBonus,
  }
}

export function calculateWishBalance(transactions: WishTransactionLike[]): WishBalance {
  const balance = transactions.reduce((current, transaction) => {
    const amount = Math.abs(transaction.amount)

    if (transaction.type === 'earn') {
      return { ...current, totalEarned: current.totalEarned + amount }
    }

    if (transaction.type === 'freeze') {
      return { ...current, frozen: current.frozen + amount }
    }

    if (transaction.type === 'release') {
      return { ...current, frozen: Math.max(0, current.frozen - amount) }
    }

    return {
      ...current,
      frozen: Math.max(0, current.frozen - amount),
      spent: current.spent + amount,
    }
  }, { totalEarned: 0, frozen: 0, spent: 0 })

  return {
    ...balance,
    available: balance.totalEarned - balance.frozen - balance.spent,
  }
}

export function getRedemptionStatusLabel(status: WishRedemptionStatus): string {
  return REDEMPTION_STATUS_LABELS[status]
}

export function groupWishRewards<T extends { cost: number }>(rewards: T[]): Record<WishRewardGroup['id'], T[]> {
  return WISH_REWARD_GROUPS.reduce<Record<WishRewardGroup['id'], T[]>>((groups, group) => {
    groups[group.id] = rewards.filter((reward) => reward.cost >= group.min && reward.cost <= group.max)
    return groups
  }, { small: [], medium: [], large: [], dream: [] })
}
