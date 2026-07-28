import { existsSync, readFileSync, readdirSync, writeFileSync } from 'node:fs'
import { dirname, isAbsolute, join, relative, resolve, sep } from 'node:path'
import { fileURLToPath } from 'node:url'
import { validateQuestion } from './lib/question-schema.mjs'
import { auditQuestionSet } from './lib/question-audit.mjs'
import { renderQuestionMigration } from './lib/question-sql.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')
const migrationDirectory = join(root, 'supabase/migrations')

export function argumentsFrom(argv) {
  const outputIndex = argv.indexOf('--output')
  const manifestIndex = argv.indexOf('--manifest')
  if (outputIndex < 0) throw new Error('--output is required; pass --output <path>.')
  const outputValue = argv[outputIndex + 1]
  if (!outputValue || outputValue.startsWith('--')) throw new Error('--output requires a path.')
  return {
    force: argv.includes('--force'),
    output: resolve(outputValue),
    manifest: manifestIndex >= 0 ? resolve(argv[manifestIndex + 1]) : undefined,
  }
}

export function isMigrationPath(output) {
  const relativePath = relative(migrationDirectory, resolve(output))
  return relativePath === ''
    || (!isAbsolute(relativePath) && relativePath !== '..' && !relativePath.startsWith(`..${sep}`))
}

function existingMigrationError(output) {
  return new Error(`Refusing to overwrite existing migration ${output}; create a new migration with the next available number.`)
}

export function assertSafeOutput(output, force = false) {
  if (!existsSync(output)) return

  if (isMigrationPath(output)) {
    throw existingMigrationError(output)
  }
  if (!force) {
    throw new Error(`Refusing to overwrite ${output}; pass --force to replace it.`)
  }
}

export function writeGeneratedSql(output, contents, force = false) {
  const migration = isMigrationPath(output)
  const flag = force && !migration ? 'w' : 'wx'
  try {
    writeFileSync(output, contents, { encoding: 'utf8', flag })
  } catch (error) {
    if (error && typeof error === 'object' && error.code === 'EEXIST') {
      if (migration) throw existingMigrationError(output)
      throw new Error(`Refusing to overwrite ${output}; pass --force to replace it.`)
    }
    throw error
  }
}

function blueprintFor(config, grade, subject) {
  return {
    ...config.defaults,
    knowledgePoints: config.grades[String(grade)]?.[subject] ?? [],
  }
}

export function loadAndValidateQuestions(questionDirectory = join(root, 'data/questions'), options = {}) {
  const blueprint = JSON.parse(readFileSync(join(root, 'data/question-blueprint.json'), 'utf8'))
  const questions = []
  const errors = []
  const warnings = []
  const filenames = options.files ?? readdirSync(questionDirectory).filter(name => name.endsWith('.json')).sort()
  for (const filename of filenames) {
    const rows = JSON.parse(readFileSync(join(questionDirectory, filename), 'utf8'))
    rows.forEach((question, index) => {
      const itemErrors = validateQuestion(question)
      errors.push(...itemErrors.map(error => `${filename}:${index + 1} ${error}`))
      questions.push(question)
    })
  }
  if (errors.length === 0) {
    const groups = options.groups ?? Array.from({ length: 6 }, (_, index) => index + 1)
      .flatMap(grade => ['chinese', 'math', 'english'].map(subject => ({ grade, subject })))
    for (const { grade, subject } of groups) {
      const group = questions.filter(question => question.grade === grade && question.subject === subject)
      const report = auditQuestionSet(group, blueprintFor(blueprint, grade, subject))
      errors.push(...report.errors.map(error => `grade${grade}-${subject}: ${error}`))
      warnings.push(...report.warnings.map(warning => `grade${grade}-${subject}: ${warning}`))
    }
  }
  return { questions, errors, warnings }
}

export function main(argv = process.argv.slice(2)) {
  const options = argumentsFrom(argv)
  assertSafeOutput(options.output, options.force)
  const manifest = options.manifest
    ? JSON.parse(readFileSync(options.manifest, 'utf8'))
    : undefined
  const result = loadAndValidateQuestions(undefined, manifest)
  if (result.errors.length || result.warnings.length) {
    const messages = [...result.errors, ...result.warnings]
    throw new Error(`Question bank is not publishable:\n${messages.join('\n')}`)
  }
  const approvedCount = result.questions.filter(question => question.reviewStatus === 'approved').length
  if (manifest?.expectedApproved !== undefined && approvedCount !== manifest.expectedApproved) {
    throw new Error(`Release ${manifest.name ?? options.manifest} expected ${manifest.expectedApproved} approved questions, found ${approvedCount}.`)
  }
  writeGeneratedSql(options.output, renderQuestionMigration(result.questions), options.force)
  return { output: options.output, count: approvedCount }
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
