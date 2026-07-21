import { describe, expect, it } from 'vitest'
import { applyMistakeReview, applyWrongAnswer } from './mistakeStatus'

describe('applyWrongAnswer', () => {
  it('creates a new needs_correction state', () => {
    expect(applyWrongAnswer(null, '2026-07-21T10:00:00.000Z')).toEqual({
      status: 'needs_correction',
      wrong_count: 1,
      correct_review_count: 0,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: null,
      mastered_at: null,
    })
  })

  it('reactivates a mastered mistake when it is wrong again', () => {
    expect(applyWrongAnswer({
      status: 'mastered',
      wrong_count: 2,
      correct_review_count: 2,
      last_wrong_at: '2026-07-20T10:00:00.000Z',
      last_reviewed_at: '2026-07-20T11:00:00.000Z',
      mastered_at: '2026-07-20T11:00:00.000Z',
    }, '2026-07-21T10:00:00.000Z')).toMatchObject({
      status: 'needs_correction',
      wrong_count: 3,
      mastered_at: null,
    })
  })

  it('does not increment an existing mistake for a duplicate same-day save', () => {
    expect(applyWrongAnswer({
      status: 'needs_correction',
      wrong_count: 2,
      correct_review_count: 0,
      last_wrong_at: '2026-07-21T09:00:00.000Z',
      last_reviewed_at: null,
      mastered_at: null,
    }, '2026-07-21T10:00:00.000Z', { incrementWrongCount: false })).toMatchObject({
      status: 'needs_correction',
      wrong_count: 2,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
    })
  })
})

describe('applyMistakeReview', () => {
  it('moves needs_correction to reinforcing after a correct review', () => {
    expect(applyMistakeReview({
      status: 'needs_correction',
      wrong_count: 1,
      correct_review_count: 0,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: null,
      mastered_at: null,
    }, true, '2026-07-21T11:00:00.000Z')).toMatchObject({
      status: 'reinforcing',
      correct_review_count: 1,
      last_reviewed_at: '2026-07-21T11:00:00.000Z',
      mastered_at: null,
    })
  })

  it('moves reinforcing to mastered after a correct review', () => {
    expect(applyMistakeReview({
      status: 'reinforcing',
      wrong_count: 1,
      correct_review_count: 1,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: '2026-07-21T11:00:00.000Z',
      mastered_at: null,
    }, true, '2026-07-22T11:00:00.000Z')).toMatchObject({
      status: 'mastered',
      correct_review_count: 2,
      mastered_at: '2026-07-22T11:00:00.000Z',
    })
  })

  it('returns to needs_correction after a wrong review', () => {
    expect(applyMistakeReview({
      status: 'reinforcing',
      wrong_count: 1,
      correct_review_count: 1,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: '2026-07-21T11:00:00.000Z',
      mastered_at: null,
    }, false, '2026-07-22T11:00:00.000Z')).toMatchObject({
      status: 'needs_correction',
      wrong_count: 2,
      mastered_at: null,
    })
  })
})
