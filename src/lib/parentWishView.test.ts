import { describe, expect, it } from 'vitest'
import type { WishRedemption } from '../stores/wishStore'
import { getParentWishQueueCounts } from './parentWishView'

describe('getParentWishQueueCounts', () => {
  it('maps review, fulfillment, and diary counts for the parent overview', () => {
    const redemptions = [
      { status: 'pending_parent_review' },
      { status: 'pending_parent_review' },
      { status: 'approved_pending_fulfillment' },
      { status: 'fulfilled' },
    ] as WishRedemption[]

    expect(getParentWishQueueCounts(redemptions, 3)).toEqual({
      pendingReview: 2,
      pendingFulfillment: 1,
      recentDiary: 3,
    })
  })
})
