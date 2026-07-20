import test from 'node:test'
import assert from 'node:assert/strict'
import { contentHash, renderQuestionMigration } from '../lib/question-sql.mjs'

const question = {
  id: 'g2-math-multiplication-001', subject: 'math', grade: 2, difficulty: 2,
  type: 'choice', knowledgePoint: '表内乘法', skill: 'apply', tags: ['生活情境'],
  content: { stem: "小明有3盒彩笔，每盒6支，共有多少支？", options: ['9', '12', '18', '24'], answer: 2, explanation: '6×3=18。' },
  reviewStatus: 'approved', version: 1,
}

test('hash is stable across object key order and formatting-only whitespace', () => {
  const reordered = {
    ...question,
    content: { explanation: '6×3=18。', answer: 2, options: ['9', '12', '18', '24'], stem: ' 小明有3盒彩笔，每盒6支，共有多少支？ ' },
  }
  assert.equal(contentHash(question), contentHash(reordered))
})

test('hash changes when the answer changes', () => {
  const changed = { ...question, content: { ...question.content, answer: 3 } }
  assert.notEqual(contentHash(question), contentHash(changed))
})

test('renders approved questions as escaped idempotent upserts', () => {
  const sql = renderQuestionMigration([
    question,
    { ...question, id: 'g2-math-draft-001', reviewStatus: 'draft', content: { ...question.content, stem: "It's a draft" } },
  ])
  assert.match(sql, /insert into public\.questions/i)
  assert.match(sql, /on conflict \(external_id\) do update/i)
  assert.match(sql, /g2-math-multiplication-001/)
  assert.doesNotMatch(sql, /g2-math-draft-001/)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
  assert.doesNotMatch(sql, /eyJhbGci/)
})

test('escapes quotes and renders tags as a PostgreSQL text array', () => {
  const sql = renderQuestionMigration([{
    ...question,
    tags: ["儿童's生活", '两步'],
    content: { ...question.content, stem: "Tom's pencils: how many?" },
  }])
  assert.match(sql, /Tom''s pencils/)
  assert.match(sql, /array\['儿童''s生活', '两步'\]::text\[\]/)
})
