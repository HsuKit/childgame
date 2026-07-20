import test from 'node:test'
import assert from 'node:assert/strict'
import { selectReviewSample } from '../generate-review-sample.mjs'

function questions() {
  return Array.from({ length: 60 }, (_, index) => ({
    id: `q-${String(index).padStart(2, '0')}`,
    type: ['choice', 'fill', 'match'][index % 3],
    difficulty: (index % 3) + 1,
    knowledgePoint: `知识点${index % 8}`,
  }))
}

test('selects a deterministic unique sample covering metadata values', () => {
  const first = selectReviewSample(questions(), 20)
  const second = selectReviewSample(questions(), 20)
  assert.deepEqual(first, second)
  assert.equal(first.length, 20)
  assert.equal(new Set(first.map(question => question.id)).size, 20)
  assert.deepEqual(new Set(first.map(question => question.type)), new Set(['choice', 'fill', 'match']))
  assert.deepEqual(new Set(first.map(question => question.difficulty)), new Set([1, 2, 3]))
  assert.equal(new Set(first.map(question => question.knowledgePoint)).size, 8)
})
