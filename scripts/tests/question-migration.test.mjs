import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'

const migrationPath = new URL('../../supabase/migrations/005_question_bank_metadata.sql', import.meta.url)

test('metadata migration is additive, constrained and indexed', () => {
  const sql = readFileSync(migrationPath, 'utf8')
  for (const column of ['external_id', 'knowledge_point', 'skill', 'tags', 'content_hash', 'review_status', 'version']) {
    assert.match(sql, new RegExp(`add column if not exists ${column}`, 'i'))
  }
  assert.match(sql, /check \(skill in \('recall', 'understand', 'apply', 'reason'\)\)/i)
  assert.match(sql, /check \(review_status in \('draft', 'reviewed', 'approved'\)\)/i)
  assert.match(sql, /unique index[^;]+external_id/is)
  assert.match(sql, /index[^;]+content_hash/is)
  assert.match(sql, /index[^;]+grade[^;]+subject[^;]+review_status[^;]+type[^;]+difficulty/is)
  assert.doesNotMatch(sql, /delete\s+from\s+public\.questions/i)
  assert.doesNotMatch(sql, /drop\s+table/i)
})
