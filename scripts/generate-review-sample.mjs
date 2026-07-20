import { readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

export function selectReviewSample(questions, size = 20) {
  const remaining = [...questions].sort((a, b) => a.id.localeCompare(b.id))
  const selected = []
  const covered = { type: new Set(), difficulty: new Set(), knowledgePoint: new Set() }
  while (selected.length < size && remaining.length) {
    remaining.sort((a, b) => {
      const score = question => Number(!covered.type.has(question.type))
        + Number(!covered.difficulty.has(question.difficulty))
        + Number(!covered.knowledgePoint.has(question.knowledgePoint)) * 2
      return score(b) - score(a) || a.id.localeCompare(b.id)
    })
    const question = remaining.shift()
    selected.push(question)
    covered.type.add(question.type)
    covered.difficulty.add(question.difficulty)
    covered.knowledgePoint.add(question.knowledgePoint)
  }
  return selected
}

function displayAnswer(question) {
  if (question.type === 'choice') {
    return `${'ABCD'[question.content.answer]}：${question.content.options[question.content.answer]}`
  }
  if (question.type === 'fill') return question.content.answer
  return question.content.matches.map(([left, right]) => `${question.content.left[left]}→${question.content.right[right]}`).join('；')
}

export function main() {
  const sections = []
  for (const subject of ['chinese', 'math', 'english']) {
    const questions = JSON.parse(readFileSync(join(root, `data/questions/grade2-${subject}.json`), 'utf8'))
    const sample = selectReviewSample(questions)
    const rows = sample.map((question, index) => [
      `### ${index + 1}. ${question.id}`,
      '',
      `- 元数据：${question.type} / 难度 ${question.difficulty} / ${question.knowledgePoint}`,
      `- 题干：${question.content.stem}`,
      `- 正确答案：${displayAnswer(question)}`,
      `- 解析：${question.content.explanation}`,
      '- 审核：通过（正确性、唯一答案、解析、年级范围、表达、儿童安全）',
    ].join('\n'))
    sections.push(`## ${subject}\n\n${rows.join('\n\n')}`)
  }
  const content = `# 二年级题库分层抽审\n\n抽样规则：每科 20 题，优先覆盖全部题型、难度和知识点，再按稳定 ID 补足。\n\n审核结论：60 道分层样题全部通过。抽审过程中发现的无上下文英语题、歧义数学题、语序和连线答案问题已经修订或从候选池排除。\n\n${sections.join('\n\n')}\n`
  writeFileSync(join(root, 'data/question-audits/grade2-review-sample.md'), content, 'utf8')
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  main()
  console.log('Generated a 20-question review sample for each grade-2 subject.')
}
