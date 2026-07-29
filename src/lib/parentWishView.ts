import type { WishRedemption } from '../stores/wishStore'

export interface ParentWishQueueCounts {
  pendingReview: number
  pendingFulfillment: number
  recentDiary: number
}

export function getParentWishQueueCounts(
  redemptions: readonly Pick<WishRedemption, 'status'>[],
  recentDiary: number,
): ParentWishQueueCounts {
  return {
    pendingReview: redemptions.filter(item => item.status === 'pending_parent_review').length,
    pendingFulfillment: redemptions.filter(item => item.status === 'approved_pending_fulfillment').length,
    recentDiary,
  }
}
