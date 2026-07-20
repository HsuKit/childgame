import { describe, expect, it } from 'vitest'
import { calculateAnswerReward, countSubjects, isAnswerCorrect, shuffle } from './quizUtils'

describe('isAnswerCorrect', () => {
  it('compares choice answers by value', () => {
    expect(isAnswerCorrect('choice', { answer: 2 }, 2)).toBe(true)
    expect(isAnswerCorrect('choice', { answer: 2 }, 1)).toBe(false)
  })

  it('normalizes fill answers', () => {
    expect(isAnswerCorrect('fill', { answer: ' Beijing ' }, 'beijing')).toBe(true)
    expect(isAnswerCorrect('fill', {}, 'beijing')).toBe(false)
  })

  it('uses the correct sentinel for match and grid answers', () => {
    expect(isAnswerCorrect('match', {}, 'correct')).toBe(true)
    expect(isAnswerCorrect('grid', {}, 'wrong')).toBe(false)
  })
})

describe('calculateAnswerReward', () => {
  it('resets combo and awards nothing for a wrong answer', () => {
    expect(calculateAnswerReward(false, 4)).toEqual({ comboCount: 0, points: 0 })
  })

  it('applies and caps the configured combo bonuses', () => {
    expect(calculateAnswerReward(true, 0)).toEqual({ comboCount: 1, points: 10 })
    expect(calculateAnswerReward(true, 1)).toEqual({ comboCount: 2, points: 15 })
    expect(calculateAnswerReward(true, 2)).toEqual({ comboCount: 3, points: 20 })
    expect(calculateAnswerReward(true, 3)).toEqual({ comboCount: 4, points: 25 })
    expect(calculateAnswerReward(true, 8)).toEqual({ comboCount: 9, points: 25 })
  })
})

describe('shuffle', () => {
  it('uses Fisher-Yates without mutating its input', () => {
    const input = [1, 2, 3, 4]
    const randomValues = [0, 0.5, 0.25]
    let index = 0
    expect(shuffle(input, () => randomValues[index++])).toEqual([3, 4, 2, 1])
    expect(input).toEqual([1, 2, 3, 4])
  })
})

describe('countSubjects', () => {
  it('counts known subjects and ignores unknown values', () => {
    expect(countSubjects([
      { subject: 'math' },
      { subject: 'math' },
      { subject: 'chinese' },
      { subject: 'science' },
    ])).toEqual({ chinese: 1, math: 2, english: 0 })
  })
})
