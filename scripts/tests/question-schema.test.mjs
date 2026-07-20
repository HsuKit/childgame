import test from 'node:test'
import assert from 'node:assert/strict'
import { validateQuestion } from '../lib/question-schema.mjs'

const validChoice = {
  id: 'g2-math-multiplication-001',
  subject: 'math',
  grade: 2,
  difficulty: 2,
  type: 'choice',
  knowledgePoint: '表内乘法',
  skill: 'apply',
  tags: ['生活情境'],
  content: {
    stem: '每盒彩笔有6支，3盒一共有多少支？',
    options: ['9支', '12支', '18支', '24支'],
    answer: 2,
    explanation: '每盒6支，3盒就是6×3=18支。',
  },
  reviewStatus: 'approved',
  version: 1,
}

test('accepts a complete approved choice question', () => {
  assert.deepEqual(validateQuestion(validChoice), [])
})

test('rejects missing and invalid shared metadata', () => {
  const errors = validateQuestion({
    ...validChoice,
    id: 'bad-id',
    subject: 'science',
    grade: 7,
    difficulty: 0,
    knowledgePoint: '',
    skill: 'guess',
    tags: ['ok', 3],
    reviewStatus: 'published',
    version: 0,
  }).join('\n')

  assert.match(errors, /invalid stable id/)
  assert.match(errors, /invalid subject/)
  assert.match(errors, /grade must be an integer from 1 to 6/)
  assert.match(errors, /difficulty must be 1, 2, or 3/)
  assert.match(errors, /knowledgePoint is required/)
  assert.match(errors, /invalid skill/)
  assert.match(errors, /tags must contain non-empty strings/)
  assert.match(errors, /invalid reviewStatus/)
  assert.match(errors, /version must be a positive integer/)
})

test('rejects invalid choice payloads', () => {
  const errors = validateQuestion({
    ...validChoice,
    content: {
      stem: '',
      options: ['9支', '18支', '18支', '24支'],
      answer: 4,
      explanation: '',
    },
  }).join('\n')

  assert.match(errors, /stem is required/)
  assert.match(errors, /choice requires four unique options/)
  assert.match(errors, /choice answer must be an index from 0 to 3/)
  assert.match(errors, /explanation is required/)
})

test('normalizes english fill answers and rejects uppercase or padded values', () => {
  const errors = validateQuestion({
    ...validChoice,
    id: 'g2-english-greeting-001',
    subject: 'english',
    type: 'fill',
    knowledgePoint: '日常问候',
    content: {
      stem: 'Good ___!',
      answer: ' Morning ',
      explanation: 'Good morning 表示早上好。',
    },
  }).join('\n')

  assert.match(errors, /english fill answer must be trimmed lowercase/)
})

test('accepts alternative fill answers when each is normalized', () => {
  assert.deepEqual(validateQuestion({
    ...validChoice,
    id: 'g2-english-greeting-002',
    subject: 'english',
    type: 'fill',
    knowledgePoint: '日常问候',
    content: {
      stem: 'Hello, ___!',
      answer: 'tom',
      acceptableAnswers: ['tom', 'amy'],
      explanation: '空格中可以填写一个英文名字。',
    },
  }), [])
})

test('rejects incomplete and out-of-range match pairs', () => {
  const errors = validateQuestion({
    ...validChoice,
    id: 'g2-math-match-001',
    type: 'match',
    content: {
      stem: '把算式和答案连起来。',
      left: ['2×3', '4×2'],
      right: ['6', '8'],
      matches: [[0, 0], [1, 2]],
      explanation: '分别计算每一道乘法。',
    },
  }).join('\n')

  assert.match(errors, /match indexes are out of range/)
  assert.match(errors, /match must pair every item exactly once/)
})
