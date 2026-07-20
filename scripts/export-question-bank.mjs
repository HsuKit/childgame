import { mkdirSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { createClient } from '@supabase/supabase-js'
import { normalizeText } from './lib/question-schema.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

function environment(...names) {
  for (const name of names) if (process.env[name]) return process.env[name]
  throw new Error(`${names.join(' or ')} is required for read-only export.`)
}

export async function createReadOnlyClient() {
  const url = environment('SUPABASE_URL', 'VITE_SUPABASE_URL')
  const anonKey = environment('SUPABASE_ANON_KEY', 'VITE_SUPABASE_ANON_KEY')
  const supabase = createClient(url, anonKey, { auth: { persistSession: false, autoRefreshToken: false } })
  const { error: authError } = await supabase.auth.signInAnonymously()
  if (authError) throw authError
  return {
    async queryQuestions({ grade, from, to }) {
      const { data, error } = await supabase.from('questions').select('*').eq('grade', grade).range(from, to)
      if (error) throw error
      return data ?? []
    },
  }
}

function stripDatabaseFields(row) {
  const { created_at: _createdAt, ...content } = row
  return content
}

export async function exportGradeQuestions(grade, client) {
  const pageSize = 1000
  const rows = []
  for (let from = 0; ; from += pageSize) {
    const page = await client.queryQuestions({ grade, from, to: from + pageSize - 1 })
    rows.push(...page.map(stripDatabaseFields))
    if (page.length < pageSize) break
  }
  return rows
}

function increment(target, key) {
  target[key] = (target[key] ?? 0) + 1
}

export function summarizeQuestions(rows) {
  const subjects = {}
  const stemGroups = new Map()
  for (const row of rows) {
    const subject = subjects[row.subject] ??= { total: 0, types: {}, difficulties: {}, answerPositions: {} }
    subject.total += 1
    increment(subject.types, row.type)
    increment(subject.difficulties, String(row.difficulty))
    if (row.type === 'choice' && Number.isInteger(row.content?.answer)) {
      increment(subject.answerPositions, 'ABCD'[row.content.answer] ?? 'invalid')
    }
    const stem = normalizeText(row.content?.stem)
    if (!stemGroups.has(stem)) stemGroups.set(stem, [])
    stemGroups.get(stem).push(row.id)
  }
  const duplicateStems = [...stemGroups.entries()]
    .filter(([stem, ids]) => stem && ids.length > 1)
    .map(([stem, ids]) => ({ stem, ids }))
  return { grade: rows[0]?.grade ?? null, total: rows.length, subjects, duplicateStems }
}

export async function main(argv = process.argv.slice(2)) {
  const grade = Number(argv[0] ?? 2)
  if (!Number.isInteger(grade) || grade < 1 || grade > 6) throw new Error('Grade must be an integer from 1 to 6.')
  const client = await createReadOnlyClient()
  const rows = await exportGradeQuestions(grade, client)
  const sourceDirectory = join(root, 'data/question-candidates/source')
  const auditDirectory = join(root, 'data/question-audits')
  mkdirSync(sourceDirectory, { recursive: true })
  mkdirSync(auditDirectory, { recursive: true })
  writeFileSync(join(sourceDirectory, `grade${grade}-source.json`), `${JSON.stringify(rows, null, 2)}\n`, 'utf8')
  writeFileSync(join(auditDirectory, `grade${grade}-source-summary.json`), `${JSON.stringify(summarizeQuestions(rows), null, 2)}\n`, 'utf8')
  return rows.length
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  main().then(count => console.log(`Exported ${count} grade questions without remote writes.`)).catch(error => {
    console.error(error instanceof Error ? error.message : error)
    process.exitCode = 1
  })
}
