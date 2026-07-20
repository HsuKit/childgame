import test from 'node:test'
import assert from 'node:assert/strict'
import { approveQuestionSet } from '../approve-grade2.mjs'

test('marks a reviewed set approved only when every gate passes', () => {
  const questions = [{ id: 'q-1', reviewStatus: 'reviewed' }]
  const approved = approveQuestionSet(questions, { errors: [], warnings: [] }, '审核：通过')
  assert.equal(approved[0].reviewStatus, 'approved')
  assert.equal(questions[0].reviewStatus, 'reviewed')
})

test('refuses approval for audit findings or unfinished review', () => {
  assert.throws(() => approveQuestionSet([], { errors: ['bad'], warnings: [] }, '审核：通过'), /audit findings/)
  assert.throws(() => approveQuestionSet([], { errors: [], warnings: [] }, '审核：待检查'), /review is incomplete/)
})
