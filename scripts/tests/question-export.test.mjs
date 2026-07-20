import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'
import { exportGradeQuestions, summarizeQuestions } from '../export-question-bank.mjs'

test('exports grade questions through paginated read-only queries', async () => {
  const calls = []
  const client = {
    queryQuestions: async args => {
      calls.push(args)
      return args.from === 0
        ? Array.from({ length: 1000 }, (_, index) => ({ id: `q-${index}`, subject: 'math', grade: 2, created_at: 'now' }))
        : [{ id: 'q-1000', subject: 'math', grade: 2, created_at: 'now' }]
    },
  }
  const rows = await exportGradeQuestions(2, client)
  assert.equal(rows.length, 1001)
  assert.equal('created_at' in rows[0], false)
  assert.deepEqual(calls, [{ grade: 2, from: 0, to: 999 }, { grade: 2, from: 1000, to: 1999 }])
})

test('summarizes subjects, types, difficulties and answer positions', () => {
  const summary = summarizeQuestions([
    { id: '1', subject: 'math', grade: 2, type: 'choice', difficulty: 1, content: { stem: '一', answer: 0 } },
    { id: '2', subject: 'math', grade: 2, type: 'fill', difficulty: 2, content: { stem: '二', answer: '2' } },
  ])
  assert.deepEqual(summary.subjects.math.types, { choice: 1, fill: 1 })
  assert.deepEqual(summary.subjects.math.difficulties, { 1: 1, 2: 1 })
  assert.deepEqual(summary.subjects.math.answerPositions, { A: 1 })
})

test('export source contains no mutation methods or embedded credentials', () => {
  const source = readFileSync(new URL('../export-question-bank.mjs', import.meta.url), 'utf8')
  assert.doesNotMatch(source, /\.(insert|upsert|update|delete)\s*\(/)
  assert.doesNotMatch(source, /eyJhbGci|https:\/\/[a-z]+\.supabase\.co/)
  assert.match(source, /SUPABASE_URL|VITE_SUPABASE_URL/)
  assert.match(source, /SUPABASE_ANON_KEY|VITE_SUPABASE_ANON_KEY/)
})
