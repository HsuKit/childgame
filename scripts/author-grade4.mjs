import { writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { authorGrade4Math } from './author-grade4-math.mjs'
import { authorGrade4Chinese } from './author-grade4-chinese.mjs'
import { authorGrade4English } from './author-grade4-english.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

export function main() {
  for (const [subject, questions] of [['chinese', authorGrade4Chinese()], ['math', authorGrade4Math()], ['english', authorGrade4English()]]) {
    writeFileSync(join(root, `data/questions/grade4-${subject}.json`), `${JSON.stringify(questions, null, 2)}\n`, 'utf8')
  }
}

if (process.argv[1] === fileURLToPath(import.meta.url)) main()
