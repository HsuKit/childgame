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

test('all grade-3 authored questions carry diverse bounded template tags', () => {
  for (const subject of ['chinese', 'math', 'english']) {
    const questions = authorGrade3Subject(subject)
    const templates = questions.map(question => question.tags.filter(tag => tag.startsWith('模板:')))
    assert.equal(templates.every(tags => tags.length === 1), true, `${subject} must have exactly one template tag`)
    const counts = new Map()
    templates.flat().forEach(tag => counts.set(tag, (counts.get(tag) ?? 0) + 1))
    assert.ok(counts.size >= 10, `${subject} must have at least ten templates`)
    assert.ok(Math.max(...counts.values()) <= 21, `${subject} template share must stay at or below 15%`)
  }
})

test('grade-3 low-level choices vary the prompt structure instead of only swapping values', () => {
  const mathPrompts = authorGrade3Subject('math')
    .filter(question => question.type === 'choice' && question.difficulty === 1 && question.knowledgePoint === '乘法')
    .map(question => question.content.stem)
    .join('\n')
  assert.match(mathPrompts, /彩纸/)
  assert.match(mathPrompts, /座位/)
  assert.match(mathPrompts, /贴纸/)

  const englishPrompts = authorGrade3English()
    .filter(question => question.type === 'choice' && question.difficulty === 1 && question.knowledgePoint === '句子阅读')
    .map(question => question.content.stem)
    .join('\n')
  assert.match(englishPrompts, /What does/)
  assert.match(englishPrompts, /Who has/)
  assert.match(englishPrompts, /Which sentence is true/)
})
