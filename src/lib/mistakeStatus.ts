import type { MistakeStatus } from './database.types'

export interface MistakeStatusState {
  status: MistakeStatus
  wrong_count: number
  correct_review_count: number
  last_wrong_at: string
  last_reviewed_at: string | null
  mastered_at: string | null
}

export function applyWrongAnswer(
  current: MistakeStatusState | null,
  nowIso: string,
  options: { incrementWrongCount?: boolean } = {},
): MistakeStatusState {
  const incrementWrongCount = options.incrementWrongCount ?? true
  return {
    status: 'needs_correction',
    wrong_count: current ? current.wrong_count + (incrementWrongCount ? 1 : 0) : 1,
    correct_review_count: current?.correct_review_count ?? 0,
    last_wrong_at: nowIso,
    last_reviewed_at: current?.last_reviewed_at ?? null,
    mastered_at: null,
  }
}

export function applyMistakeReview(
  current: MistakeStatusState,
  isCorrect: boolean,
  nowIso: string,
): MistakeStatusState {
  if (!isCorrect) {
    return {
      ...current,
      status: 'needs_correction',
      wrong_count: current.wrong_count + 1,
      last_wrong_at: nowIso,
      last_reviewed_at: nowIso,
      mastered_at: null,
    }
  }

  const nextStatus: MistakeStatus = current.status === 'needs_correction' ? 'reinforcing' : 'mastered'
  return {
    ...current,
    status: nextStatus,
    correct_review_count: current.correct_review_count + 1,
    last_reviewed_at: nowIso,
    mastered_at: nextStatus === 'mastered' ? nowIso : null,
  }
}
