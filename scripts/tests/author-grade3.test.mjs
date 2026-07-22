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

test('grade-3 chinese fill explanations teach the thinking path', () => {
  const questions = authorGrade3Chinese()
  const fill = questions.find(question => question.id === 'g3-chinese-authored-110')
  assert.equal(fill?.content.answer, '把钱包交给老师')
  assert.match(fill.content.explanation, /先找人物|动作/)
  assert.match(fill.content.explanation, /下次/)
})

test('grade-3 english polite request explanations teach the polite pattern', () => {
  const questions = authorGrade3English()
  const politeRequest = questions.find(question => question.content.stem.includes('most polite request'))
  assert.ok(politeRequest)
  assert.match(politeRequest.content.explanation, /May I/)
  assert.match(politeRequest.content.explanation, /after you/)
  assert.match(politeRequest.content.explanation, /Tip|Next time/)
})
