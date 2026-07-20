import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { authorGrade6Chinese } from './author-grade6-chinese.mjs'
import { authorGrade6Math } from './author-grade6-math.mjs'
import { authorGrade6English } from './author-grade6-english.mjs'

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
for (const [subject, questions] of Object.entries({ chinese: authorGrade6Chinese(), math: authorGrade6Math(), english: authorGrade6English() })) {
  fs.writeFileSync(path.join(root, 'data', 'questions', `grade6-${subject}.json`), `${JSON.stringify(questions, null, 2)}\n`)
}
