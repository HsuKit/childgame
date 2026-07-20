import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { authorGrade3Subject } from '../author-grade3.mjs'
import { authorGrade3Chinese } from '../author-grade3-chinese.mjs'
import { authorGrade3English } from '../author-grade3-english.mjs'
import { validateQuestion } from '../lib/question-schema.mjs'
import { auditQuestionSet } from '../lib/question-audit.mjs'

const config = JSON.parse(readFileSync(new URL('../../data/question-blueprint.json', import.meta.url), 'utf8'))

for (const subject of ['math']) {
  test(`authors a clean grade-3 ${subject} collection`, () => {
    const questions = authorGrade3Subject(subject)
    const blueprint = { ...config.defaults, knowledgePoints: config.grades['3'][subject] }
    assert.deepEqual(questions.flatMap(validateQuestion), [])
    const audit = auditQuestionSet(questions, blueprint)
    assert.deepEqual(audit.errors, [])
    assert.deepEqual(audit.warnings, [])
    assert.equal(questions.every(question => question.reviewStatus === 'reviewed'), true)
  })
}

test('authors a clean grade-3 chinese collection', () => {
  const questions = authorGrade3Chinese()
  const blueprint = { ...config.defaults, knowledgePoints: config.grades['3'].chinese }
  assert.deepEqual(questions.flatMap(validateQuestion), [])
  const audit = auditQuestionSet(questions, blueprint)
  assert.deepEqual(audit.errors, [])
  assert.deepEqual(audit.warnings, [])
})

test('authors a clean grade-3 english collection', () => {
  const questions = authorGrade3English()
  const blueprint = { ...config.defaults, knowledgePoints: config.grades['3'].english }
  assert.deepEqual(questions.flatMap(validateQuestion), [])
  const audit = auditQuestionSet(questions, blueprint)
  assert.deepEqual(audit.errors, [])
  assert.deepEqual(audit.warnings, [])
})
