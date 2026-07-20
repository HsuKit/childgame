import { readFileSync, readdirSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { validateQuestion } from './lib/question-schema.mjs'
import { auditQuestionSet } from './lib/question-audit.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

function count(rows, predicate) {
  return rows.filter(predicate).length
}

function groupSummary(rows) {
  const groups = new Map()
  for (const question of rows) {
    const key = `${question.grade}:${question.subject}`
    if (!groups.has(key)) groups.set(key, [])
    groups.get(key).push(question)
  }
  return [...groups.entries()].sort().map(([key, questions]) => {
    const [grade, subject] = key.split(':')
    return `grade ${grade} ${subject}: total=${questions.length}; choice=${count(questions, q => q.type === 'choice')}, fill=${count(questions, q => q.type === 'fill')}, match=${count(questions, q => q.type === 'match')}; difficulty 1=${count(questions, q => q.difficulty === 1)}, 2=${count(questions, q => q.difficulty === 2)}, 3=${count(questions, q => q.difficulty === 3)}`
  })
}

function blueprintFor(config, grade, subject) {
  return { ...config.defaults, knowledgePoints: config.grades[String(grade)]?.[subject] ?? [] }
}

export function validateDirectory(directory, options = {}) {
  const { auditCollections = true } = options
  const blueprint = options.blueprint ?? JSON.parse(readFileSync(join(root, 'data/question-blueprint.json'), 'utf8'))
  const questions = []
  const errors = []
  const warnings = []
  for (const filename of readdirSync(directory).filter(name => name.endsWith('.json')).sort()) {
    let rows
    try {
      rows = JSON.parse(readFileSync(join(directory, filename), 'utf8'))
    } catch (error) {
      errors.push(`${filename}: invalid JSON (${error instanceof Error ? error.message : error})`)
      continue
    }
    if (!Array.isArray(rows)) {
      errors.push(`${filename}: root must be an array`)
      continue
    }
    rows.forEach((question, index) => {
      errors.push(...validateQuestion(question).map(message => `${filename}:${index + 1} ${message}`))
      questions.push(question)
    })
  }

  if (auditCollections && errors.length === 0) {
    for (let grade = 1; grade <= 6; grade += 1) {
      for (const subject of ['chinese', 'math', 'english']) {
        const report = auditQuestionSet(
          questions.filter(question => question.grade === grade && question.subject === subject),
          blueprintFor(blueprint, grade, subject),
        )
        errors.push(...report.errors.map(error => `grade${grade}-${subject}: ${error}`))
        warnings.push(...report.warnings.map(warning => `grade${grade}-${subject}: ${warning}`))
      }
    }
  }

  const lines = [...groupSummary(questions)]
  if (errors.length) lines.push('ERRORS:', ...errors.map(error => `- ${error}`))
  if (warnings.length) lines.push('BLOCKING REVIEW:', ...warnings.map(warning => `- ${warning}`))
  if (!errors.length && !warnings.length) lines.push('Question bank is publishable.')
  return { exitCode: errors.length || warnings.length ? 1 : 0, output: lines.join('\n'), questions, errors, warnings }
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  const result = validateDirectory(join(root, 'data/questions'))
  console.log(result.output)
  process.exitCode = result.exitCode
}
