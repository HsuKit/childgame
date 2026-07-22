import { describe, expect, it } from 'vitest'
import { buildExplanationContent } from './explanationContent'

describe('buildExplanationContent', () => {
  it('explains a Chinese fill answer with answer, reason, and a reusable tip', () => {
    const feedback = buildExplanationContent({
      questionType: 'fill',
      subject: 'chinese',
      result: 'correct',
      content: {
        stem: '阅读：“小军捡到钱包后交给老师。”小军做的事是___。',
        answer: '把钱包交给老师',
        explanation: '结合题意，填“把钱包交给老师”后语意完整、表达准确。',
      },
    })

    expect(feedback.title).toBe('太棒了，思路对了!')
    expect(feedback.correctAnswer).toBe('把钱包交给老师')
    expect(feedback.reason).toContain('回到题目里的句子')
    expect(feedback.reason).toContain('小军')
    expect(feedback.reason).toContain('把钱包交给老师')
    expect(feedback.tip).toContain('先找“谁”')
  })

  it('explains an English polite request by pointing out the polite pattern', () => {
    const feedback = buildExplanationContent({
      questionType: 'choice',
      subject: 'english',
      result: 'wrong',
      selectedAnswer: 'I never need the storybook.',
      content: {
        stem: 'Grace needs the storybook, but a classmate is using it. What is the most polite request?',
        options: [
          'Give me the storybook now!',
          'I never need the storybook.',
          'What colour is Monday?',
          'May I use the storybook after you?',
        ],
        answer: 3,
        explanation: '“May I...?” is a polite request and “after you” respects the classmate who is using it.',
      },
    })

    expect(feedback.title).toBe('没关系，我们再看一步')
    expect(feedback.correctAnswer).toBe('May I use the storybook after you?')
    expect(feedback.reason).toContain('May I')
    expect(feedback.reason).toContain('after you')
    expect(feedback.tip).toContain('polite request')
  })

  it('uses a type-aware fallback when explanation is missing', () => {
    const feedback = buildExplanationContent({
      questionType: 'choice',
      subject: 'math',
      result: 'wrong',
      content: {
        stem: '2 + 3 = ?',
        options: ['4', '5', '6', '7'],
        answer: 1,
      },
    })

    expect(feedback.correctAnswer).toBe('5')
    expect(feedback.reason).toContain('把题目条件再读一遍')
    expect(feedback.tip).toContain('选项')
  })
})
