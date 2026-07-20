import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'
import { validateQuestion } from './lib/question-schema.mjs'
import { auditQuestionSet } from './lib/question-audit.mjs'
import { renderQuestionMigration } from './lib/question-sql.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

function argumentsFrom(argv) {
  const outputIndex = argv.indexOf('--output')
  return {
    force: argv.includes('--force'),
    output: outputIndex >= 0 ? resolve(argv[outputIndex + 1]) : join(root, 'supabase/migrations/006_seed_validated_questions.sql'),
  }
}

function blueprintFor(config, grade, subject) {
  return {
    ...config.defaults,
    knowledgePoints: config.grades[String(grade)]?.[subject] ?? [],
  }
}

export function loadAndValidateQuestions(questionDirectory = join(root, 'data/questions')) {
  const blueprint = JSON.parse(readFileSync(join(root, 'data/question-blueprint.json'), 'utf8'))
  const questions = []
  const errors = []
  const warnings = []
  for (const filename of readdirSync(questionDirectory).filter(name => name.endsWith('.json')).sort()) {
    const rows = JSON.parse(readFileSync(join(questionDirectory, filename), 'utf8'))
    rows.forEach((question, index) => {
      const itemErrors = validateQuestion(question)
      errors.push(...itemErrors.map(error => `${filename}:${index + 1} ${error}`))
      questions.push(question)
    })
  }
  if (errors.length === 0) {
    for (let grade = 1; grade <= 6; grade += 1) {
      for (const subject of ['chinese', 'math', 'english']) {
        const group = questions.filter(question => question.grade === grade && question.subject === subject)
        const report = auditQuestionSet(group, blueprintFor(blueprint, grade, subject))
        errors.push(...report.errors.map(error => `grade${grade}-${subject}: ${error}`))
        warnings.push(...report.warnings.map(warning => `grade${grade}-${subject}: ${warning}`))
      }
    }
  }
  return { questions, errors, warnings }
}

export function main(argv = process.argv.slice(2)) {
  const options = argumentsFrom(argv)
  if (!options.output) throw new Error('--output requires a path')
  if (existsSync(options.output) && !options.force) {
    throw new Error(`Refusing to overwrite ${options.output}; pass --force to replace it.`)
  }
  const result = loadAndValidateQuestions()
  if (result.errors.length || result.warnings.length) {
    const messages = [...result.errors, ...result.warnings]
    throw new Error(`Question bank is not publishable:\n${messages.join('\n')}`)
  }
  writeFileSync(options.output, renderQuestionMigration(result.questions), 'utf8')
  return { output: options.output, count: result.questions.filter(question => question.reviewStatus === 'approved').length }
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  try {
    const result = main()
    console.log(`Generated ${result.output} with ${result.count} approved questions.`)
  } catch (error) {
    console.error(error instanceof Error ? error.message : error)
    process.exitCode = 1
  }
}
