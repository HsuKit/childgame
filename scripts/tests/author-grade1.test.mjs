import test from 'node:test'
import assert from 'node:assert/strict'
import fs from 'node:fs'
import { auditQuestionSet } from '../lib/question-audit.mjs'
import { validateQuestion } from '../lib/question-schema.mjs'
import { authorGrade1Chinese } from '../author-grade1-chinese.mjs'
import { authorGrade1Math } from '../author-grade1-math.mjs'
import { authorGrade1English } from '../author-grade1-english.mjs'

const config = JSON.parse(fs.readFileSync(new URL('../../data/question-blueprint.json', import.meta.url)))
for (const [subject, author] of Object.entries({ chinese: authorGrade1Chinese, math: authorGrade1Math, english: authorGrade1English })) {
  test(`authors a clean grade-1 ${subject} collection`, () => {
    const questions = author()
    assert.equal(questions.length, 140)
    assert.deepEqual(questions.flatMap(validateQuestion), [])
    const report = auditQuestionSet(questions, { ...config.defaults, knowledgePoints: config.grades['1'][subject] })
    assert.deepEqual(report.errors, [])
    assert.deepEqual(report.warnings, [])
    assert.ok(questions.every(question => question.grade === 1 && question.subject === subject && question.reviewStatus === 'reviewed'))
  })
}
