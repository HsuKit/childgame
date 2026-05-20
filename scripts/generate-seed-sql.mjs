import { readFileSync, readdirSync, writeFileSync } from 'fs'
import { join, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))
const questionsDir = join(__dirname, '..', 'data', 'questions')

function parseFilename(name) {
  const match = name.match(/^grade(\d+)-(\w+)\.json$/)
  if (!match) return null
  const subjMap = { math: 'math', chinese: 'chinese', english: 'english' }
  const subject = subjMap[match[2]]
  if (!subject) return null
  return { grade: parseInt(match[1]), subject }
}

let sql = `-- Auto-generated seed SQL\n-- Run this in Supabase SQL Editor\n\n`
sql += `-- First clear old built-in questions\n`
sql += `delete from public.questions where source = 'builtin';\n\n`

const files = readdirSync(questionsDir).filter(f => f.endsWith('.json')).sort()
let total = 0

for (const file of files) {
  const info = parseFilename(file)
  if (!info) continue
  const questions = JSON.parse(readFileSync(join(questionsDir, file), 'utf-8'))
  if (questions.length === 0) continue

  for (const q of questions) {
    const content = JSON.stringify(q).replace(/'/g, "''")
    sql += `insert into public.questions (subject, grade, difficulty, type, content, source) values ('${info.subject}', ${info.grade}, 1, 'choice', '${content}', 'builtin');\n`
    total++
  }
}

sql += `\n-- Total seeded: ${total} questions\n`

const outPath = join(__dirname, '..', 'supabase', 'migrations', '002_seed_questions.sql')
writeFileSync(outPath, sql)
console.log(`Generated ${outPath} with ${total} questions`)
