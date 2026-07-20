import test from 'node:test'
import assert from 'node:assert/strict'
import fs from 'node:fs'
import { auditQuestionSet } from '../lib/question-audit.mjs'
import { validateQuestion } from '../lib/question-schema.mjs'
import { authorGrade5Chinese } from '../author-grade5-chinese.mjs'
import { authorGrade5Math } from '../author-grade5-math.mjs'
import { authorGrade5English } from '../author-grade5-english.mjs'

const blueprint = JSON.parse(fs.readFileSync(new URL('../../data/question-blueprint.json', import.meta.url)))

for (const [subject, author] of Object.entries({ chinese: authorGrade5Chinese, math: authorGrade5Math, english: authorGrade5English })) {
  test(`authors a clean grade-5 ${subject} collection`, () => {
    const questions = author()
    assert.equal(questions.length, 140)
    assert.ok(questions.every(question => question.grade === 5 && question.subject === subject && question.reviewStatus === 'reviewed'))
    assert.deepEqual(questions.flatMap(validateQuestion), [])
    const report = auditQuestionSet(questions, { ...blueprint.defaults, knowledgePoints: blueprint.grades['5'][subject] })
    assert.deepEqual(report.errors, [])
    assert.deepEqual(report.warnings, [])
  })
}
