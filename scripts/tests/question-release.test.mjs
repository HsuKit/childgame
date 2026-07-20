import test from 'node:test'
import assert from 'node:assert/strict'
import { loadAndValidateQuestions } from '../generate-seed-sql.mjs'
import { renderQuestionMigration } from '../lib/question-sql.mjs'

test('grade-1 release contains exactly 420 publishable questions', () => {
  const result = loadAndValidateQuestions(undefined, {
    files: ['grade1-chinese.json', 'grade1-math.json', 'grade1-english.json'],
    groups: [
      { grade: 1, subject: 'chinese' },
      { grade: 1, subject: 'math' },
      { grade: 1, subject: 'english' },
    ],
  })
  assert.deepEqual(result.errors, [])
  assert.deepEqual(result.warnings, [])
  assert.equal(result.questions.filter(question => question.reviewStatus === 'approved').length, 420)
  const sql = renderQuestionMigration(result.questions)
  assert.equal((sql.match(/insert into public\.questions/g) ?? []).length, 420)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})

test('grade-2 release contains exactly 420 publishable questions', () => {
  const result = loadAndValidateQuestions(undefined, {
    files: ['grade2-chinese.json', 'grade2-math.json', 'grade2-english.json'],
    groups: [
      { grade: 2, subject: 'chinese' },
      { grade: 2, subject: 'math' },
      { grade: 2, subject: 'english' },
    ],
  })
  assert.deepEqual(result.errors, [])
  assert.deepEqual(result.warnings, [])
  assert.equal(result.questions.filter(question => question.reviewStatus === 'approved').length, 420)
  const sql = renderQuestionMigration(result.questions)
  assert.equal((sql.match(/insert into public\.questions/g) ?? []).length, 420)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})

test('grade-3 release contains exactly 420 publishable questions', () => {
  const result = loadAndValidateQuestions(undefined, {
    files: ['grade3-chinese.json', 'grade3-math.json', 'grade3-english.json'],
    groups: [
      { grade: 3, subject: 'chinese' },
      { grade: 3, subject: 'math' },
      { grade: 3, subject: 'english' },
    ],
  })
  assert.deepEqual(result.errors, [])
  assert.deepEqual(result.warnings, [])
  assert.equal(result.questions.filter(question => question.reviewStatus === 'approved').length, 420)
  const sql = renderQuestionMigration(result.questions)
  assert.equal((sql.match(/insert into public\.questions/g) ?? []).length, 420)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})

test('grade-4 release contains exactly 420 publishable questions', () => {
  const result = loadAndValidateQuestions(undefined, {
    files: ['grade4-chinese.json', 'grade4-math.json', 'grade4-english.json'],
    groups: [
      { grade: 4, subject: 'chinese' },
      { grade: 4, subject: 'math' },
      { grade: 4, subject: 'english' },
    ],
  })
  assert.deepEqual(result.errors, [])
  assert.deepEqual(result.warnings, [])
  assert.equal(result.questions.filter(question => question.reviewStatus === 'approved').length, 420)
  const sql = renderQuestionMigration(result.questions)
  assert.equal((sql.match(/insert into public\.questions/g) ?? []).length, 420)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})

test('grade-5 release contains exactly 420 publishable questions', () => {
  const result = loadAndValidateQuestions(undefined, {
    files: ['grade5-chinese.json', 'grade5-math.json', 'grade5-english.json'],
    groups: [
      { grade: 5, subject: 'chinese' },
      { grade: 5, subject: 'math' },
      { grade: 5, subject: 'english' },
    ],
  })
  assert.deepEqual(result.errors, [])
  assert.deepEqual(result.warnings, [])
  assert.equal(result.questions.filter(question => question.reviewStatus === 'approved').length, 420)
  const sql = renderQuestionMigration(result.questions)
  assert.equal((sql.match(/insert into public\.questions/g) ?? []).length, 420)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})

test('grade-6 release contains exactly 420 publishable questions', () => {
  const result = loadAndValidateQuestions(undefined, {
    files: ['grade6-chinese.json', 'grade6-math.json', 'grade6-english.json'],
    groups: [
      { grade: 6, subject: 'chinese' },
      { grade: 6, subject: 'math' },
      { grade: 6, subject: 'english' },
    ],
  })
  assert.deepEqual(result.errors, [])
  assert.deepEqual(result.warnings, [])
  assert.equal(result.questions.filter(question => question.reviewStatus === 'approved').length, 420)
  const sql = renderQuestionMigration(result.questions)
  assert.equal((sql.match(/insert into public\.questions/g) ?? []).length, 420)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})

test('all six validated releases contain exactly 2520 approved questions', () => {
  const files = []
  const groups = []
  for (let grade = 1; grade <= 6; grade += 1) {
    for (const subject of ['chinese', 'math', 'english']) {
      files.push(`grade${grade}-${subject}.json`)
      groups.push({ grade, subject })
    }
  }
  const result = loadAndValidateQuestions(undefined, { files, groups })
  assert.deepEqual(result.errors, [])
  assert.deepEqual(result.warnings, [])
  assert.equal(result.questions.length, 2520)
  assert.equal(result.questions.filter(question => question.reviewStatus === 'approved').length, 2520)
  for (let grade = 1; grade <= 6; grade += 1) {
    assert.equal(result.questions.filter(question => question.grade === grade).length, 420)
    for (const subject of ['chinese', 'math', 'english']) {
      assert.equal(result.questions.filter(question => question.grade === grade && question.subject === subject).length, 140)
    }
  }
  const sql = renderQuestionMigration(result.questions)
  assert.equal((sql.match(/insert into public\.questions/g) ?? []).length, 2520)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})
