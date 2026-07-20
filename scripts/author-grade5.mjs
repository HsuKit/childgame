import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { authorGrade5Chinese } from './author-grade5-chinese.mjs'
import { authorGrade5Math } from './author-grade5-math.mjs'
import { authorGrade5English } from './author-grade5-english.mjs'

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
for (const [subject, questions] of Object.entries({ chinese: authorGrade5Chinese(), math: authorGrade5Math(), english: authorGrade5English() })) {
  fs.writeFileSync(path.join(root, 'data', 'questions', `grade5-${subject}.json`), `${JSON.stringify(questions, null, 2)}\n`)
}
