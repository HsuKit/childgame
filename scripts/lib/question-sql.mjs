import { createHash } from 'node:crypto'
import { normalizeText } from './question-schema.mjs'

function canonicalize(value) {
  if (Array.isArray(value)) return value.map(canonicalize)
  if (value && typeof value === 'object') {
    return Object.fromEntries(Object.keys(value).sort().map(key => [key, canonicalize(value[key])]))
  }
  return typeof value === 'string' ? normalizeText(value) : value
}

export function contentHash(question) {
  const identity = {
    subject: question.subject,
    grade: question.grade,
    type: question.type,
    content: question.content,
    knowledgePoint: question.knowledgePoint,
    skill: question.skill,
  }
  return createHash('sha256').update(JSON.stringify(canonicalize(identity))).digest('hex')
}

function quote(value) {
  return `'${String(value).replaceAll("'", "''")}'`
}

function renderTags(tags) {
  if (!tags.length) return `array[]::text[]`
  return `array[${tags.map(quote).join(', ')}]::text[]`
}

export function renderQuestionMigration(questions) {
  const approved = questions
    .filter(question => question.reviewStatus === 'approved')
    .sort((first, second) => first.id.localeCompare(second.id))
  const header = [
    '-- Auto-generated from validated canonical question JSON.',
    '-- Safe to run repeatedly: rows are upserted by external_id.',
    'begin;',
    '',
  ]
  const statements = approved.map(question => {
    const values = [
      quote(question.id), quote(question.subject), question.grade, question.difficulty,
      quote(question.type), `${quote(JSON.stringify(question.content))}::jsonb`, quote('builtin'),
      quote(question.knowledgePoint), quote(question.skill), renderTags(question.tags),
      quote(contentHash(question)), quote(question.reviewStatus), question.version,
    ].join(', ')
    return `insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)\nvalues (${values})\non conflict (external_id) do update set\n  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,\n  type = excluded.type, content = excluded.content, source = excluded.source,\n  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,\n  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;`
  })
  return [...header, ...statements, '', 'commit;', ''].join('\n')
}
