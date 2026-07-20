import { readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { validateQuestion } from './lib/question-schema.mjs'
import { auditQuestionSet } from './lib/question-audit.mjs'
import { approveQuestionSet } from './approve-grade2.mjs'
import { assertGradeReleaseReady, buildGradeRelease } from './lib/question-release.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

export function approveGradeRelease(grade) {
  const release = buildGradeRelease(grade)
  const config = JSON.parse(readFileSync(join(root, 'data/question-blueprint.json'), 'utf8'))
  const report = readFileSync(join(root, `data/question-audits/grade${grade}-review-sample.md`), 'utf8')
  const passedReviewCount = (report.match(/- 审核：通过/g) ?? []).length
  let approvedCount = 0
  const approvedFiles = []
  for (const subject of ['chinese', 'math', 'english']) {
    const path = join(root, `data/questions/grade${grade}-${subject}.json`)
    const questions = JSON.parse(readFileSync(path, 'utf8'))
    const schemaErrors = questions.flatMap(validateQuestion)
    if (schemaErrors.length) throw new Error(schemaErrors.join('\n'))
    const blueprint = { ...config.defaults, knowledgePoints: config.grades[String(grade)][subject] }
    const approved = approveQuestionSet(questions, auditQuestionSet(questions, blueprint), report)
    approvedCount += approved.length
    approvedFiles.push([path, approved])
  }
  assertGradeReleaseReady({ approvedCount, passedReviewCount })
  for (const [path, approved] of approvedFiles) writeFileSync(path, `${JSON.stringify(approved, null, 2)}\n`, 'utf8')
  writeFileSync(join(root, `data/question-releases/${release.name}.json`), `${JSON.stringify(release, null, 2)}\n`, 'utf8')
  return release
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  const index = process.argv.indexOf('--grade')
  if (index < 0) throw new Error('--grade is required')
  const release = approveGradeRelease(Number(process.argv[index + 1]))
  console.log(`Approved ${release.expectedApproved} questions for ${release.name}.`)
}
