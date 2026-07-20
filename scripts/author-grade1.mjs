import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { authorGrade1Chinese } from './author-grade1-chinese.mjs'
import { authorGrade1Math } from './author-grade1-math.mjs'
import { authorGrade1English } from './author-grade1-english.mjs'

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
for (const [subject, questions] of Object.entries({ chinese: authorGrade1Chinese(), math: authorGrade1Math(), english: authorGrade1English() })) {
  fs.writeFileSync(path.join(root, 'data', 'questions', `grade1-${subject}.json`), `${JSON.stringify(questions, null, 2)}\n`)
}
