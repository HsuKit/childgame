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

function authoredPool(): Question[] {
  const cells: Array<[Question['type'], number, number]> = [
    ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
    ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
    ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
  ]
  let index = 0
  return cells.flatMap(([type, difficulty, count]) => Array.from({ length: count }, () => {
    const item = question(index, type, difficulty, `知识点${index % 9}`)
    item.tags = [`模板:${type}-${index % 18}`]
    index += 1
    return item
  }))
}

function balancedCandidates(): Question[] {
  const types: Question['type'][] = ['choice', 'fill', 'match']
  const result: Question[] = []
  let index = 0
  for (const type of types) {
    for (const difficulty of [1, 2, 3]) {
      for (let count = 0; count < 8; count += 1) {
        result.push(question(index, type, difficulty, `知识点${index % 8}`))
        index += 1
      }
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
    expect(new Set(result.questions.map(item => item.knowledge_point)).size).toBeGreaterThanOrEqual(6)
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

  it('uses one hundred unique question ids across the first ten rounds when the type pool is sufficient', () => {
    const candidates = authoredPool()
    const history: Array<{ questionId: string; answeredAt: string }> = []
    const selectedIds: string[] = []

    for (let round = 0; round < 10; round += 1) {
      const result = composeQuestions({
        candidates,
        history,
        now: new Date('2026-07-30T00:00:00.000Z'),
        random: () => 0.5,
      })
      expect(result.questions).toHaveLength(10)
      expect(new Set(result.questions.map(item => item.knowledge_point)).size).toBeGreaterThanOrEqual(6)
      expect(new Set(result.questions.map(item => item.tags.find(tag => tag.startsWith('模板:')))).size).toBeGreaterThanOrEqual(8)
      selectedIds.push(...result.questions.map(item => item.id))
      history.push(...result.questions.map(item => ({
        questionId: item.id,
        answeredAt: `2026-07-${String(round + 1).padStart(2, '0')}T00:00:00.000Z`,
      })))
    }

    expect(new Set(selectedIds).size).toBe(100)
  })

  it('chooses an unseen same-type question before a recently seen exact-difficulty question', () => {
    const seenExact = question(1, 'match', 3, '知识点一')
    const unseenNearby = question(2, 'match', 2, '知识点二')
    const fillers = Array.from({ length: 20 }, (_, index) => question(index + 10, 'choice', 1, `知识点${index + 3}`))
    const result = composeQuestions({
      candidates: [seenExact, unseenNearby, ...fillers],
      history: [{ questionId: seenExact.id, answeredAt: '2026-07-29T00:00:00.000Z' }],
      now: new Date('2026-07-30T00:00:00.000Z'),
      random: () => 0.5,
    })

    expect(result.questions.map(item => item.id)).toContain(unseenNearby.id)
    expect(result.questions.map(item => item.id)).not.toContain(seenExact.id)
  })

  it('prefers at least eight templates and uses no template more than twice', () => {
    const candidates = balancedCandidates().map((item, index) => ({
      ...item,
      knowledge_point: `知识点${index % 10}`,
      tags: [`模板:${index < 18 ? '重复模板' : `模板-${index}`}`],
    }))
    const result = composeQuestions({ candidates, history: [], random: () => 0.5 })
    const templates = result.questions.map(item => item.tags.find(tag => tag.startsWith('模板:')))
    const countsByTemplate = counts(templates.filter((item): item is string => Boolean(item)))

    expect(new Set(templates).size).toBeGreaterThanOrEqual(8)
    expect(Math.max(...Object.values(countsByTemplate))).toBeLessThanOrEqual(2)
  })

  it('rotates to a never-seen template before another unseen question from a recently used template', () => {
    const recentSibling = question(1, 'choice', 1, '知识点一')
    recentSibling.tags = ['模板:recent-family']
    const unseenSameFamily = question(2, 'choice', 1, '知识点二')
    unseenSameFamily.tags = ['模板:recent-family']
    const unseenFreshFamily = question(3, 'choice', 1, '知识点二')
    unseenFreshFamily.tags = ['模板:fresh-family']
    const fillers = balancedCandidates().map((item, index) => ({
      ...item,
      id: `filler-${index}`,
      tags: [`模板:filler-${index}`],
    }))
    const result = composeQuestions({
      candidates: [unseenSameFamily, unseenFreshFamily, recentSibling, ...fillers],
      history: [{ questionId: recentSibling.id, answeredAt: '2026-07-29T00:00:00.000Z' }],
      size: 1,
      now: new Date('2026-07-30T00:00:00.000Z'),
      random: () => 0.5,
    })

    expect(result.questions[0]?.id).toBe(unseenFreshFamily.id)
  })
})
