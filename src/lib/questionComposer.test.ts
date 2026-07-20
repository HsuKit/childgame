import { describe, expect, it } from 'vitest'
import { composeQuestions } from './questionComposer'
import type { Database } from './database.types'

type Question = Database['public']['Tables']['questions']['Row']

function question(index: number, type: Question['type'], difficulty: number, knowledgePoint = `知识点${index % 5}`): Question {
  return {
    id: `q-${index}`, external_id: `g2-math-item-${index}`, subject: 'math', grade: 2,
    difficulty, type, content: { stem: `题目${index}`, answer: 0 }, source: 'builtin',
    knowledge_point: knowledgePoint, skill: 'apply', tags: [], content_hash: `hash-${index}`,
    review_status: 'approved', version: 1, created_at: '2026-01-01T00:00:00.000Z',
  }
}

function balancedCandidates(): Question[] {
  const types: Question['type'][] = ['choice', 'fill', 'match']
  const result: Question[] = []
  let index = 0
  for (const type of types) {
    for (const difficulty of [1, 2, 3]) {
      for (let count = 0; count < 8; count += 1) result.push(question(index++, type, difficulty))
    }
  }
  return result
}

function counts<T extends string | number>(values: T[]) {
  return values.reduce<Record<string, number>>((result, value) => {
    result[String(value)] = (result[String(value)] ?? 0) + 1
    return result
  }, {})
}

describe('composeQuestions', () => {
  it('builds ten unique questions with exact type and difficulty quotas', () => {
    const result = composeQuestions({ candidates: balancedCandidates(), history: [], random: () => 0.5 })
    expect(result.reason).toBeNull()
    expect(result.degraded).toBe(false)
    expect(new Set(result.questions.map(item => item.id)).size).toBe(10)
    expect(counts(result.questions.map(item => item.type))).toEqual({ choice: 7, fill: 2, match: 1 })
    expect(counts(result.questions.map(item => item.difficulty))).toEqual({ 1: 5, 2: 3, 3: 2 })
    expect(new Set(result.questions.map(item => item.knowledge_point)).size).toBeGreaterThanOrEqual(4)
  })

  it('prefers unseen, then oldest answered, and avoids recent questions', () => {
    const candidates = balancedCandidates()
    const history = candidates.slice(1).map((item, index) => ({
      questionId: item.id,
      answeredAt: index === 0 ? '2025-01-01T00:00:00.000Z' : '2026-07-15T00:00:00.000Z',
    }))
    const result = composeQuestions({ candidates, history, now: new Date('2026-07-20T00:00:00.000Z'), random: () => 0.5 })
    expect(result.questions.map(item => item.id)).toContain(candidates[0].id)
    expect(result.questions.map(item => item.id)).toContain(candidates[1].id)
  })

  it('falls back from exact cells but still returns ten unique questions', () => {
    const candidates = Array.from({ length: 12 }, (_, index) => question(index, 'choice', 1, `知识点${index % 4}`))
    const result = composeQuestions({ candidates, history: [], random: () => 0.5 })
    expect(result.questions).toHaveLength(10)
    expect(new Set(result.questions.map(item => item.id)).size).toBe(10)
    expect(result.degraded).toBe(true)
    expect(result.reason).toBe('quota-fallback')
    expect(new Set(result.questions.map(item => item.knowledge_point)).size).toBe(4)
  })

  it('returns an explicit failure instead of a partial session', () => {
    const result = composeQuestions({
      candidates: Array.from({ length: 9 }, (_, index) => question(index, 'choice', 1)),
      history: [], random: () => 0.5,
    })
    expect(result).toEqual({ questions: [], degraded: true, reason: 'insufficient-total' })
  })
})
