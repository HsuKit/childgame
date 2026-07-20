import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { authorGrade4Math } from '../author-grade4-math.mjs'
import { authorGrade4Chinese } from '../author-grade4-chinese.mjs'
import { validateQuestion } from '../lib/question-schema.mjs'
import { auditQuestionSet } from '../lib/question-audit.mjs'

const config = JSON.parse(readFileSync(new URL('../../data/question-blueprint.json', import.meta.url), 'utf8'))

test('authors a clean grade-4 math collection', () => {
  const questions = authorGrade4Math()
  const blueprint = { ...config.defaults, knowledgePoints: config.grades['4'].math }
  assert.deepEqual(questions.flatMap(validateQuestion), [])
  const audit = auditQuestionSet(questions, blueprint)
  assert.deepEqual(audit.errors, [])
  assert.deepEqual(audit.warnings, [])
  assert.equal(questions.every(question => question.reviewStatus === 'reviewed'), true)
})

test('authors a clean grade-4 chinese collection', () => {
  const questions = authorGrade4Chinese()
  const blueprint = { ...config.defaults, knowledgePoints: config.grades['4'].chinese }
  assert.deepEqual(questions.flatMap(validateQuestion), [])
  const audit = auditQuestionSet(questions, blueprint)
  assert.deepEqual(audit.errors, [])
  assert.deepEqual(audit.warnings, [])
})
