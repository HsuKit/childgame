import { readFileSync, readdirSync } from 'fs'
import { join, dirname } from 'path'
import { fileURLToPath } from 'url'
import { createClient } from '@supabase/supabase-js'

const __dirname = dirname(fileURLToPath(import.meta.url))

const supabase = createClient(
  'https://mykculgjrlmwfsyrcroe.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im15a2N1bGdqcmxtd2ZzeXJjcm9lIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzkxNzY0OTQsImV4cCI6MjA5NDc1MjQ5NH0.aJmkrvi60kXkUrqiMmsnsU6nF1jM3dEmP9D8ULTaKPk'
)

const questionsDir = join(__dirname, '..', 'data', 'questions')

function parseFilename(name) {
  // grade1-math.json → { grade: 1, subject: 'math' }
  const match = name.match(/^grade(\d+)-(\w+)\.json$/)
  if (!match) return null
  const subjMap = { math: 'math', chinese: 'chinese', english: 'english' }
  const subject = subjMap[match[2]]
  if (!subject) return null
  return { grade: parseInt(match[1]), subject }
}

async function seed() {
  // First clear existing built-in questions (keep ai_generated ones)
  const { error: delErr } = await supabase.from('questions').delete().eq('source', 'builtin')
  if (delErr) console.error('Delete error:', delErr.message)

  const files = readdirSync(questionsDir).filter(f => f.endsWith('.json'))
  let total = 0

  for (const file of files) {
    const info = parseFilename(file)
    if (!info) { console.log(`Skipping ${file}`); continue }

    const content = JSON.parse(readFileSync(join(questionsDir, file), 'utf-8'))
    const inserts = content.map(q => ({
      subject: info.subject,
      grade: info.grade,
      difficulty: q.difficulty || 1,
      type: q.type || 'choice',
      content: q,
      source: 'builtin',
    }))

    const { error } = await supabase.from('questions').insert(inserts)
    if (error) {
      console.error(`Failed ${file}:`, error.message)
    } else {
      console.log(`Seeded ${file}: ${inserts.length} questions`)
      total += inserts.length
    }
  }

  console.log(`\nTotal seeded: ${total} questions`)
}

seed()
