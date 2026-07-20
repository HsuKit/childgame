import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { createClient } from '@supabase/supabase-js'
import { validateDirectory } from './validate-questions.mjs'
import { contentHash } from './lib/question-sql.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

function requireEnvironment(name) {
  const value = process.env[name]
  if (!value) throw new Error(`${name} is required for remote question publishing.`)
  return value
}

function toDatabaseRow(question) {
  return {
    external_id: question.id,
    subject: question.subject,
    grade: question.grade,
    difficulty: question.difficulty,
    type: question.type,
    content: question.content,
    source: 'builtin',
    knowledge_point: question.knowledgePoint,
    skill: question.skill,
    tags: question.tags,
    content_hash: contentHash(question),
    review_status: question.reviewStatus,
    version: question.version,
  }
}

export async function publishQuestions(options = {}) {
  const questionDirectory = options.questionDirectory ?? join(root, 'data/questions')
  const validation = validateDirectory(questionDirectory)
  if (validation.exitCode !== 0) throw new Error(validation.output)

  const supabaseUrl = options.supabaseUrl ?? requireEnvironment('SUPABASE_URL')
  const serviceRoleKey = options.serviceRoleKey ?? requireEnvironment('SUPABASE_SERVICE_ROLE_KEY')
  const client = options.client ?? createClient(supabaseUrl, serviceRoleKey, {
    auth: { persistSession: false, autoRefreshToken: false },
  })
  const approved = validation.questions.filter(question => question.reviewStatus === 'approved')
  const batchSize = 200
  for (let offset = 0; offset < approved.length; offset += batchSize) {
    const batch = approved.slice(offset, offset + batchSize).map(toDatabaseRow)
    const { error } = await client.from('questions').upsert(batch, { onConflict: 'external_id' })
    if (error) throw new Error(`Question publish failed at row ${offset + 1}: ${error.message}`)
  }
  return approved.length
}

export async function main() {
  const count = await publishQuestions()
  console.log(`Published ${count} approved questions with idempotent upsert.`)
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  main().catch(error => {
    console.error(error instanceof Error ? error.message : error)
    process.exitCode = 1
  })
}
