import { describe, expect, it, vi } from 'vitest'
import { buildChallengeQuestions, buildSubjectQuestions, prepareQuizRecordInserts, prepareWrongQuestionIds } from './quizStore'
import type { Database } from '../lib/database.types'

type Question = Database['public']['Tables']['questions']['Row']

function question(id: string, subject: Question['subject'] = 'math'): Question {
  return {
    id, external_id: `g2-${subject}-${id}`, subject, grade: 2, difficulty: 1,
    type: 'choice', content: {}, source: 'builtin', knowledge_point: `知识点${id}`,
    skill: 'apply', tags: [], content_hash: `hash-${id}`, review_status: 'approved',
    version: 1, created_at: '2026-01-01T00:00:00.000Z',
  }
}

describe('quiz session builders', () => {
  it('builds a daily session entirely from database-backed composed questions', async () => {
    const questions = Array.from({ length: 10 }, (_, index) => question(`q-${index}`))
    const loadInputs = vi.fn().mockResolvedValue({ candidates: questions, history: [] })
    const compose = vi.fn().mockReturnValue({ questions, degraded: false, reason: null })
    const result = await buildSubjectQuestions('user-1', 'math', 2, { loadInputs, compose, random: () => 0.5 })
    expect(result).toEqual(questions)
    expect(result.every(item => !item.id.startsWith('gen_'))).toBe(true)
    expect(loadInputs).toHaveBeenCalledWith('user-1', 'math', 2)
  })

  it('throws a typed error instead of creating a partial daily session', async () => {
    const loadInputs = vi.fn().mockResolvedValue({ candidates: [], history: [] })
    const compose = vi.fn().mockReturnValue({ questions: [], degraded: true, reason: 'insufficient-total' })
    await expect(buildSubjectQuestions('user-1', 'math', 2, { loadInputs, compose, random: () => 0.5 }))
      .rejects.toMatchObject({ code: 'insufficient-total' })
  })

  it('builds a thirty-question challenge with ten questions per subject', async () => {
    const loadInputs = vi.fn(async (_userId: string, subject: Question['subject']) => ({
      candidates: Array.from({ length: 10 }, (_, index) => question(`${subject}-${index}`, subject)),
      history: [],
    }))
    const compose = vi.fn(({ candidates }) => ({ questions: candidates, degraded: false, reason: null }))
    const result = await buildChallengeQuestions('user-1', 2, { loadInputs, compose, random: () => 0.5 })
    expect(result).toHaveLength(30)
    expect(result.filter(item => item.subject === 'math')).toHaveLength(10)
    expect(result.filter(item => item.subject === 'chinese')).toHaveLength(10)
    expect(result.filter(item => item.subject === 'english')).toHaveLength(10)
  })
})

describe('prepareQuizRecordInserts', () => {
  it('keeps completed records with selected answers', () => {
    const records = Array.from({ length: 10 }, (_, index) => ({
      question_id: `q-${index}`,
      subject: 'math' as const,
      is_correct: index !== 0,
      points_earned: index === 0 ? 0 : 10,
      selected_answer: index,
    }))
    expect(prepareQuizRecordInserts('user-1', records)[0]).toMatchObject({
      user_id: 'user-1',
      question_id: 'q-0',
      selected_answer: 0,
      is_correct: false,
    })
  })

  it('extracts only wrong question ids for mistake sync', () => {
    expect(prepareWrongQuestionIds([
      { question_id: 'q-1', subject: 'math', is_correct: true, points_earned: 10, selected_answer: 1 },
      { question_id: 'q-2', subject: 'math', is_correct: false, points_earned: 0, selected_answer: 0 },
    ])).toEqual(['q-2'])
  })
})
