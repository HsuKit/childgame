import { describe, expect, it } from 'vitest'
import { normalizeQuestionContent } from './questionContent'
import { calculateAnswerReward, countSubjects, formatChallengeScore, getQuizResultAwardState, getSubjectsNeedingCompletionSync, isAnswerCorrect, shuffle } from './quizUtils'

describe('isAnswerCorrect', () => {
  it('compares choice answers by value', () => {
    expect(isAnswerCorrect('choice', { answer: 2 }, 2)).toBe(true)
    expect(isAnswerCorrect('choice', { answer: 2 }, 1)).toBe(false)
  })

  it('accepts the screenshot rhetorical question after answer normalization', () => {
    const content = normalizeQuestionContent('choice', {
      stem: '“雨点像珍珠一样落下来。”主要使用了哪种修辞手法?',
      options: ['排比', '反问', '拟人', '比喻'],
      answer: '比喻',
      explanation: '句子把一种事物比作另一种事物，是比喻。',
    })

    expect(content).not.toBeNull()
    expect(isAnswerCorrect('choice', content, 3)).toBe(true)
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

describe('getQuizResultAwardState', () => {
  it('keeps showing the earned points after check-in state updates for this completion', () => {
    const firstRender = getQuizResultAwardState({
      pointsEarned: 80,
      subjectWasAlreadyDone: false,
      awardSettled: false,
      wasAlreadyDoneAtResult: false,
    })

    const afterMarkDoneRefresh = getQuizResultAwardState({
      pointsEarned: 80,
      subjectWasAlreadyDone: true,
      awardSettled: true,
      wasAlreadyDoneAtResult: firstRender.wasAlreadyDoneAtResult,
    })

    expect(afterMarkDoneRefresh).toEqual({
      displayPoints: 80,
      shouldAwardPoints: false,
      shouldSettleSubjectCompletion: false,
      shouldShowAlreadyDoneNotice: false,
      wasAlreadyDoneAtResult: false,
    })
  })

  it('shows zero points when the subject was already done before reaching the result page', () => {
    expect(getQuizResultAwardState({
      pointsEarned: 80,
      subjectWasAlreadyDone: true,
      awardSettled: false,
      wasAlreadyDoneAtResult: false,
    })).toEqual({
      displayPoints: 0,
      shouldAwardPoints: false,
      shouldSettleSubjectCompletion: false,
      shouldShowAlreadyDoneNotice: true,
      wasAlreadyDoneAtResult: true,
    })
  })

  it('settles first-time subject completion even when no answer points were earned', () => {
    expect(getQuizResultAwardState({
      pointsEarned: 0,
      subjectWasAlreadyDone: false,
      awardSettled: false,
      wasAlreadyDoneAtResult: false,
    })).toMatchObject({
      displayPoints: 0,
      shouldAwardPoints: false,
      shouldSettleSubjectCompletion: true,
      shouldShowAlreadyDoneNotice: false,
      wasAlreadyDoneAtResult: false,
    })
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

describe('getSubjectsNeedingCompletionSync', () => {
  it('finds subjects with enough answered questions but missing check-in completion', () => {
    expect(getSubjectsNeedingCompletionSync(
      { chinese_done: false, math_done: true, english_done: false },
      { chinese: 10, math: 10, english: 9 },
    )).toEqual(['chinese'])
  })

  it('does not request sync before today check-in exists', () => {
    expect(getSubjectsNeedingCompletionSync(null, { chinese: 10, math: 10, english: 10 })).toEqual([])
  })
})

describe('formatChallengeScore', () => {
  it('uses the actual challenge question count instead of the daily quiz count', () => {
    expect(formatChallengeScore(18, 30)).toBe('18/30')
  })
})
