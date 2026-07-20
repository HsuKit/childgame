import { readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { validateQuestion } from './lib/question-schema.mjs'
import { auditQuestionSet } from './lib/question-audit.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

export function approveQuestionSet(questions, audit, reviewReport) {
  if (audit.errors.length || audit.warnings.length) throw new Error('Cannot approve a set with audit findings.')
  if (!reviewReport.includes('审核：通过') || reviewReport.includes('审核：待检查')) {
    throw new Error('Cannot approve while review is incomplete.')
  }
  return questions.map(question => ({ ...question, reviewStatus: 'approved' }))
}

export function main() {
  const config = JSON.parse(readFileSync(join(root, 'data/question-blueprint.json'), 'utf8'))
  const reviewReport = readFileSync(join(root, 'data/question-audits/grade2-review-sample.md'), 'utf8')
  const reviewedCount = (reviewReport.match(/- 审核：通过/g) ?? []).length
  if (reviewedCount !== 60) throw new Error(`Expected 60 passed review rows, got ${reviewedCount}.`)
  for (const subject of ['chinese', 'math', 'english']) {
    const path = join(root, `data/questions/grade2-${subject}.json`)
    const questions = JSON.parse(readFileSync(path, 'utf8'))
    const schemaErrors = questions.flatMap(validateQuestion)
    if (schemaErrors.length) throw new Error(schemaErrors.join('\n'))
    const blueprint = { ...config.defaults, knowledgePoints: config.grades['2'][subject] }
    const approved = approveQuestionSet(questions, auditQuestionSet(questions, blueprint), reviewReport)
    writeFileSync(path, `${JSON.stringify(approved, null, 2)}\n`, 'utf8')
  }
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  main()
  console.log('Approved 420 grade-2 questions after audit and stratified review.')
}
