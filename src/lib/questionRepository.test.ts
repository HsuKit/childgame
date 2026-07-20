import { describe, expect, it } from 'vitest'
import { loadCompositionInputs, loadQuestionHistory, loadQuestionPool } from './questionRepository'
import type { QuestionDataClient } from './questionRepository'
import type { Database } from './database.types'

type Question = Database['public']['Tables']['questions']['Row']

function question(index: number): Question {
  return {
    id: `q-${index}`, external_id: `g2-math-item-${index}`, subject: 'math', grade: 2,
    difficulty: 1, type: 'choice', content: {}, source: 'builtin', knowledge_point: '加法与减法',
    skill: 'apply', tags: [], content_hash: `hash-${index}`, review_status: 'approved',
    version: 1, created_at: '2026-01-01T00:00:00.000Z',
  }
}

describe('questionRepository', () => {
  it('loads only the requested approved pool and paginates', async () => {
    const calls: unknown[] = []
    const client: QuestionDataClient = {
      queryQuestions: async args => {
        calls.push(args)
        return args.from === 0 ? Array.from({ length: 1000 }, (_, index) => question(index)) : [question(1000)]
      },
      queryHistory: async () => [],
    }
    const result = await loadQuestionPool('math', 2, client)
    expect(result).toHaveLength(1001)
    expect(calls).toEqual([
      { subject: 'math', grade: 2, reviewStatus: 'approved', from: 0, to: 999 },
      { subject: 'math', grade: 2, reviewStatus: 'approved', from: 1000, to: 1999 },
    ])
  })

  it('falls back to reviewed legacy questions when a subject has no approved pool', async () => {
    const calls: unknown[] = []
    const legacy = { ...question(1), review_status: 'reviewed' as const }
    const client: QuestionDataClient = {
      queryQuestions: async args => {
        calls.push(args)
        return args.reviewStatus === 'reviewed' ? [legacy] : []
      },
      queryHistory: async () => [],
    }

    await expect(loadQuestionPool('math', 3, client)).resolves.toEqual([legacy])
    expect(calls).toEqual([
      { subject: 'math', grade: 3, reviewStatus: 'approved', from: 0, to: 999 },
      { subject: 'math', grade: 3, reviewStatus: 'reviewed', from: 0, to: 999 },
    ])
  })

  it('maps multiple records to the latest answer time per question', async () => {
    const client: QuestionDataClient = {
      queryQuestions: async () => [],
      queryHistory: async () => [
        { question_id: 'q-1', answered_at: '2026-01-01T00:00:00.000Z' },
        { question_id: 'q-1', answered_at: '2026-06-01T00:00:00.000Z' },
        { question_id: 'q-2', answered_at: '2025-01-01T00:00:00.000Z' },
      ],
    }
    await expect(loadQuestionHistory('user-1', ['q-1', 'q-2'], client)).resolves.toEqual([
      { questionId: 'q-1', answeredAt: '2026-06-01T00:00:00.000Z' },
      { questionId: 'q-2', answeredAt: '2025-01-01T00:00:00.000Z' },
    ])
  })

  it('loads pool and matching history as one composition input', async () => {
    const historyCalls: unknown[] = []
    const client: QuestionDataClient = {
      queryQuestions: async () => [question(1), question(2)],
      queryHistory: async args => {
        historyCalls.push(args)
        return []
      },
    }
    const result = await loadCompositionInputs('user-1', 'math', 2, client)
    expect(result.candidates.map(item => item.id)).toEqual(['q-1', 'q-2'])
    expect(historyCalls).toEqual([{ userId: 'user-1', questionIds: ['q-1', 'q-2'] }])
  })
})
