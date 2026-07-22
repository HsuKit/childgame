import { describe, expect, it } from 'vitest'
import { normalizeQuestionContent } from './questionContent'

describe('normalizeQuestionContent', () => {
  const rhetoricalQuestion = {
    stem: '“雨点像珍珠一样落下来。”主要使用了哪种修辞手法?',
    options: ['排比', '反问', '拟人', '比喻'],
    explanation: '句子把一种事物比作另一种事物，是比喻。',
  }

  it('maps exact option-text answers to their option index', () => {
    expect(normalizeQuestionContent('choice', { ...rhetoricalQuestion, answer: '比喻' })?.answer).toBe(3)
  })

  it('maps numeric strings and choice letters to their option index', () => {
    expect(normalizeQuestionContent('choice', { ...rhetoricalQuestion, answer: '3' })?.answer).toBe(3)
    expect(normalizeQuestionContent('choice', { ...rhetoricalQuestion, answer: 'D' })?.answer).toBe(3)
  })

  it('keeps already-canonical numeric choice answers', () => {
    expect(normalizeQuestionContent('choice', { ...rhetoricalQuestion, answer: 3 })?.answer).toBe(3)
  })

  it('rejects invalid choice answer formats', () => {
    expect(normalizeQuestionContent('choice', { ...rhetoricalQuestion, answer: '没有这个选项' })).toBeNull()
  })
})
