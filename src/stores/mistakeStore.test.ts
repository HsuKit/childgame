import { describe, expect, it } from 'vitest'
import { summarizeParentReport } from './mistakeStore'

describe('summarizeParentReport', () => {
  it('computes today totals and subject counts', () => {
    expect(summarizeParentReport([
      { subject: 'math', is_correct: true },
      { subject: 'math', is_correct: false },
      { subject: 'chinese', is_correct: true },
    ], [])).toMatchObject({
      totalAnswered: 3,
      correctAnswered: 2,
      accuracy: 67,
      subjectCounts: { chinese: 1, math: 2, english: 0 },
    })
  })

  it('deduplicates repeated quiz records before computing parent totals', () => {
    const rows = Array.from({ length: 4 }).flatMap(() =>
      Array.from({ length: 10 }, (_, index) => ({
        subject: 'chinese',
        question_id: `q-${index}`,
        is_correct: index === 0,
      })),
    )
    expect(summarizeParentReport(rows, [])).toMatchObject({
      totalAnswered: 10,
      correctAnswered: 1,
      accuracy: 10,
      subjectCounts: { chinese: 10, math: 0, english: 0 },
    })
  })

  it('groups active mistakes by knowledge point', () => {
    const report = summarizeParentReport([], [
      { status: 'needs_correction', wrong_count: 3, question: { knowledge_point: '退位减法' } },
      { status: 'reinforcing', wrong_count: 1, question: { knowledge_point: '退位减法' } },
      { status: 'mastered', wrong_count: 5, question: { knowledge_point: '拼音' } },
    ])
    expect(report.weakKnowledgePoints).toEqual([
      { knowledgePoint: '退位减法', activeCount: 2, wrongCount: 4 },
    ])
    expect(report.reviewProgress).toEqual({ needsCorrection: 1, reinforcing: 1, mastered: 1 })
  })
})
