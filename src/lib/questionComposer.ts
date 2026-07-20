import type { Database } from './database.types'

type Question = Database['public']['Tables']['questions']['Row']
type ComposableType = 'choice' | 'fill' | 'match'

export interface QuestionHistory {
  questionId: string
  answeredAt: string
}

interface ComposeOptions {
  candidates: Question[]
  history: QuestionHistory[]
  size?: number
  now?: Date
  random?: () => number
}

export interface CompositionResult {
  questions: Question[]
  degraded: boolean
  reason: 'insufficient-total' | 'quota-fallback' | null
}

const DEFAULT_SLOTS: Array<{ type: ComposableType; difficulty: number }> = [
  { type: 'choice', difficulty: 1 }, { type: 'choice', difficulty: 1 },
  { type: 'choice', difficulty: 1 }, { type: 'choice', difficulty: 1 },
  { type: 'choice', difficulty: 2 }, { type: 'choice', difficulty: 2 },
  { type: 'choice', difficulty: 3 }, { type: 'fill', difficulty: 1 },
  { type: 'fill', difficulty: 2 }, { type: 'match', difficulty: 3 },
]

function latestHistory(rows: QuestionHistory[]) {
  const result = new Map<string, number>()
  for (const row of rows) {
    const timestamp = new Date(row.answeredAt).getTime()
    const current = result.get(row.questionId)
    if (Number.isFinite(timestamp) && (current === undefined || timestamp > current)) {
      result.set(row.questionId, timestamp)
    }
  }
  return result
}

function historyTier(lastSeen: number | undefined, recentBoundary: number) {
  if (lastSeen === undefined) return 0
  return lastSeen < recentBoundary ? 1 : 2
}

function orderedCandidates(
  candidates: Question[],
  usedKnowledge: Set<string>,
  history: Map<string, number>,
  recentBoundary: number,
  random: () => number,
) {
  return candidates
    .map(question => ({ question, tie: random(), lastSeen: history.get(question.id) }))
    .sort((left, right) => {
      const leftCovered = usedKnowledge.has(left.question.knowledge_point) ? 1 : 0
      const rightCovered = usedKnowledge.has(right.question.knowledge_point) ? 1 : 0
      if (leftCovered !== rightCovered) return leftCovered - rightCovered
      const leftTier = historyTier(left.lastSeen, recentBoundary)
      const rightTier = historyTier(right.lastSeen, recentBoundary)
      if (leftTier !== rightTier) return leftTier - rightTier
      if (left.lastSeen !== right.lastSeen) return (left.lastSeen ?? 0) - (right.lastSeen ?? 0)
      return left.tie - right.tie
    })
    .map(item => item.question)
}

function slotsForSize(size: number) {
  if (size === 10) return DEFAULT_SLOTS
  return DEFAULT_SLOTS.slice(0, size)
}

export function composeQuestions({
  candidates,
  history,
  size = 10,
  now = new Date(),
  random = Math.random,
}: ComposeOptions): CompositionResult {
  const unique = [...new Map(
    candidates
      .filter(question => ['choice', 'fill', 'match'].includes(question.type))
      .map(question => [question.id, question]),
  ).values()]
  if (unique.length < size) return { questions: [], degraded: true, reason: 'insufficient-total' }

  const selected: Question[] = []
  const selectedIds = new Set<string>()
  const usedKnowledge = new Set<string>()
  const answerHistory = latestHistory(history)
  const recentBoundary = now.getTime() - 30 * 24 * 60 * 60 * 1000
  let degraded = false

  for (const slot of slotsForSize(size)) {
    const remaining = unique.filter(question => !selectedIds.has(question.id))
    const exact = remaining.filter(question => question.type === slot.type && question.difficulty === slot.difficulty)
    const sameType = remaining.filter(question => question.type === slot.type)
      .sort((a, b) => Math.abs(a.difficulty - slot.difficulty) - Math.abs(b.difficulty - slot.difficulty))
    const sameDifficulty = remaining.filter(question => question.difficulty === slot.difficulty)
    const pool = exact.length ? exact : sameType.length ? sameType : sameDifficulty.length ? sameDifficulty : remaining
    if (!exact.length) degraded = true
    const chosen = orderedCandidates(pool, usedKnowledge, answerHistory, recentBoundary, random)[0]
    if (!chosen) return { questions: [], degraded: true, reason: 'insufficient-total' }
    selected.push(chosen)
    selectedIds.add(chosen.id)
    usedKnowledge.add(chosen.knowledge_point)
  }

  const shuffled = [...selected]
  for (let index = shuffled.length - 1; index > 0; index -= 1) {
    const swap = Math.floor(random() * (index + 1))
    ;[shuffled[index], shuffled[swap]] = [shuffled[swap], shuffled[index]]
  }
  return { questions: shuffled, degraded, reason: degraded ? 'quota-fallback' : null }
}
