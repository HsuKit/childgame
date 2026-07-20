import test from 'node:test'
import assert from 'node:assert/strict'
import fs from 'node:fs'
import { auditQuestionSet } from '../lib/question-audit.mjs'
import { validateQuestion } from '../lib/question-schema.mjs'
import { authorGrade6Chinese } from '../author-grade6-chinese.mjs'
import { authorGrade6Math } from '../author-grade6-math.mjs'
import { authorGrade6English } from '../author-grade6-english.mjs'

const config = JSON.parse(fs.readFileSync(new URL('../../data/question-blueprint.json', import.meta.url)))
for (const [subject, author] of Object.entries({ chinese: authorGrade6Chinese, math: authorGrade6Math, english: authorGrade6English })) {
  test(`authors a clean grade-6 ${subject} collection`, () => {
    const questions = author()
    assert.equal(questions.length, 140)
    assert.deepEqual(questions.flatMap(validateQuestion), [])
    const report = auditQuestionSet(questions, { ...config.defaults, knowledgePoints: config.grades['6'][subject] })
    assert.deepEqual(report.errors, [])
    assert.deepEqual(report.warnings, [])
    assert.ok(questions.every(question => question.grade === 6 && question.subject === subject && question.reviewStatus === 'reviewed'))
  })
}
