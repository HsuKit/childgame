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

export interface DefaultWishReward {
  id: string
  user_id: null
  name: string
  description: string
  type: WishRewardType
  cost: number
  is_preset: true
  is_active: true
  availability_note: string | null
  created_at: string
}

export const WISH_REWARD_GROUPS: WishRewardGroup[] = [
  { id: 'small', label: '小小愿望', min: 0, max: 8 },
  { id: 'medium', label: '中等愿望', min: 9, max: 20 },
  { id: 'large', label: '大愿望', min: 21, max: 45 },
  { id: 'dream', label: '梦想愿望', min: 46, max: Infinity },
]

export const DEFAULT_WISH_REWARDS: DefaultWishReward[] = [
  { id: 'standard-sticker', user_id: null, name: '一张喜欢的贴纸', description: '选一张喜欢的贴纸，贴在本子、奖励册或文具上。', type: 'item', cost: 3, is_preset: true, is_active: true, availability_note: '小小愿望，适合当天兑现', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-pencil-eraser', user_id: null, name: '一支新铅笔或橡皮', description: '挑一支顺手的新铅笔，或一块喜欢的橡皮。', type: 'item', cost: 5, is_preset: true, is_active: true, availability_note: '家长可替换成同价文具', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-snack', user_id: null, name: '选择今天的水果或小点心', description: '在爸妈给出的范围里，选择一份水果或小点心。', type: 'item', cost: 6, is_preset: true, is_active: true, availability_note: '建议保持健康小份量', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-extra-story', user_id: null, name: '睡前多讲一个故事', description: '睡前请爸妈多讲一个故事，给今天一个温柔结尾。', type: 'companionship', cost: 6, is_preset: true, is_active: true, availability_note: '适合睡前兑现', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-mini-game', user_id: null, name: '15 分钟亲子小游戏', description: '和爸妈玩 15 分钟小游戏，可以是猜谜、积木或桌面小游戏。', type: 'companionship', cost: 8, is_preset: true, is_active: true, availability_note: '需要约定时间', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-dinner-choice', user_id: null, name: '选择一次晚餐菜品', description: '在家庭菜单范围里，选择一道今天想吃的菜。', type: 'companionship', cost: 10, is_preset: true, is_active: true, availability_note: '爸妈确认可准备的范围', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-book', user_id: null, name: '一本喜欢的课外书', description: '选择一本适合年龄、自己真正想读的课外书。', type: 'item', cost: 15, is_preset: true, is_active: true, availability_note: '建议周末购买或借阅', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-board-game', user_id: null, name: '30 分钟桌游时间', description: '和爸妈一起玩 30 分钟桌游或亲子游戏。', type: 'companionship', cost: 16, is_preset: true, is_active: true, availability_note: '适合晚饭后或周末', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-small-toy', user_id: null, name: '一个预算内小玩具', description: '选择一个提前约定预算内的小玩具。', type: 'item', cost: 20, is_preset: true, is_active: true, availability_note: '家长设置预算范围', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-library', user_id: null, name: '周末去书店或图书馆', description: '周末安排一次书店或图书馆小行程。', type: 'experience', cost: 20, is_preset: true, is_active: true, availability_note: '适合周末兑现', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-park-museum', user_id: null, name: '公园或博物馆小出行', description: '去附近公园、博物馆或展览空间走一走。', type: 'experience', cost: 25, is_preset: true, is_active: true, availability_note: '需要爸妈确认天气和时间', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-stationery-set', user_id: null, name: '一套彩笔或文具盒', description: '选择一套彩笔、文具盒或同等价位学习用品。', type: 'item', cost: 30, is_preset: true, is_active: true, availability_note: '适合阶段性目标', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-movie-night', user_id: null, name: '一次亲子电影夜', description: '和家人一起选一部适合观看的电影，安排电影夜。', type: 'companionship', cost: 35, is_preset: true, is_active: true, availability_note: '爸妈确认片单和时间', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-open-small-wish', user_id: null, name: '一个小愿望申请', description: '提出一个小愿望，由爸妈一起判断是否合适。', type: 'open_wish', cost: 40, is_preset: true, is_active: true, availability_note: '需要爸妈审核内容', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-half-day-family', user_id: null, name: '周末半日家庭活动', description: '安排半天家庭活动，比如运动、手工、逛展或户外探索。', type: 'experience', cost: 45, is_preset: true, is_active: true, availability_note: '适合提前计划', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-city-trip', user_id: null, name: '一次城市探索或近郊游', description: '去一个城市里没去过的地方，或安排一次近郊小探索。', type: 'experience', cost: 55, is_preset: true, is_active: true, availability_note: '长期目标，需要排期', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-bigger-toy', user_id: null, name: '一个较大玩具或模型', description: '选择一个提前约定预算内的较大玩具、模型或拼装套装。', type: 'item', cost: 60, is_preset: true, is_active: true, availability_note: '家长设置预算上限', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-short-trip', user_id: null, name: '一次短途旅行计划', description: '和家人一起计划一次短途旅行或城市周边游。', type: 'experience', cost: 80, is_preset: true, is_active: true, availability_note: '梦想愿望，需要提前安排', created_at: '2026-07-22T00:00:00.000Z' },
  { id: 'standard-family-wish-day', user_id: null, name: '家庭愿望日', description: '设计一个由孩子参与规划的家庭愿望日，包含活动、餐食和小惊喜。', type: 'open_wish', cost: 100, is_preset: true, is_active: true, availability_note: '超长期目标，全家一起确认', created_at: '2026-07-22T00:00:00.000Z' },
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

export function resolveVisibleWishRewards<T>(rewards: T[]): T[] | DefaultWishReward[] {
  return rewards.length > 0 ? rewards : DEFAULT_WISH_REWARDS
}

export function groupParentWishRedemptions<T extends { status: WishRedemptionStatus }>(redemptions: readonly T[]) {
  return {
    pendingReview: redemptions.filter((redemption) => redemption.status === 'pending_parent_review'),
    pendingFulfillment: redemptions.filter((redemption) => redemption.status === 'approved_pending_fulfillment'),
  }
}
