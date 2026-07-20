import { writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { authorGrade4Math } from './author-grade4-math.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

export function main() {
  const questions = authorGrade4Math()
  writeFileSync(join(root, 'data/questions/grade4-math.json'), `${JSON.stringify(questions, null, 2)}\n`, 'utf8')
}

if (process.argv[1] === fileURLToPath(import.meta.url)) main()
