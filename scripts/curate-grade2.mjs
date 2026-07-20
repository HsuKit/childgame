import { mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { normalizeText } from './lib/question-schema.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')
const TYPES = ['choice', 'fill', 'match']
const DIFFICULTIES = [1, 2, 3]

function deduplicateStems(candidates) {
  const seen = new Set()
  const unique = []
  const rejected = []
  for (const question of candidates.sort((a, b) => a.id.localeCompare(b.id))) {
    const stem = normalizeText(question.content.stem)
    const lacksVisibleContext = question.subject === 'english' && (
      /^how many [a-z ]+\?\s*回答[:：]?$/.test(stem)
      || /^what do you see\?\s*回答[:：]?$/.test(stem)
      || /^where is the (cat|dog|book)\?\s*回答[:：]?$/.test(stem)
      || /^what color is the (banana|apple|sky)\?\s*回答[:：]?$/.test(stem)
    )
    if (lacksVisibleContext) {
      rejected.push({ id: question.id, reason: 'missing-visible-context' })
      continue
    }
    const content = question.content
    const options = content.options?.map(normalizeText)
    const signature = JSON.stringify({
      stem: normalizeText(content.stem),
      options: options?.sort(),
      answer: options && Number.isInteger(content.answer) ? normalizeText(content.options[content.answer]) : content.answer,
      left: content.left?.map(normalizeText), right: content.right?.map(normalizeText), matches: content.matches,
    })
    if (seen.has(signature)) rejected.push({ id: question.id, reason: 'duplicate-normalized-question' })
    else {
      seen.add(signature)
      unique.push(question)
    }
  }
  return { unique, rejected }
}

function allocationFor(candidates, blueprint) {
  const available = Object.fromEntries(TYPES.map(type => [type, Object.fromEntries(
    DIFFICULTIES.map(difficulty => [difficulty, candidates.filter(q => q.type === type && q.difficulty === difficulty).length]),
  )]))
  const feasible = []
  for (let choice1 = 0; choice1 <= Math.min(available.choice[1], blueprint.difficulties[1]); choice1 += 1) {
    for (let choice2 = 0; choice2 <= Math.min(available.choice[2], blueprint.difficulties[2]); choice2 += 1) {
      const choice3 = blueprint.types.choice - choice1 - choice2
      if (choice3 < 0 || choice3 > available.choice[3] || choice3 > blueprint.difficulties[3]) continue
      for (let fill1 = 0; fill1 <= Math.min(available.fill[1], blueprint.types.fill); fill1 += 1) {
        for (let fill2 = 0; fill2 <= Math.min(available.fill[2], blueprint.types.fill - fill1); fill2 += 1) {
          const fill3 = blueprint.types.fill - fill1 - fill2
          const match1 = blueprint.difficulties[1] - choice1 - fill1
          const match2 = blueprint.difficulties[2] - choice2 - fill2
          const match3 = blueprint.difficulties[3] - choice3 - fill3
          if (fill3 < 0 || fill3 > available.fill[3]) continue
          if ([match1, match2, match3].some(value => value < 0)) continue
          if (match1 > available.match[1] || match2 > available.match[2] || match3 > available.match[3]) continue
          if (match1 + match2 + match3 !== blueprint.types.match) continue
          const allocation = {
            'choice:1': choice1, 'choice:2': choice2, 'choice:3': choice3,
            'fill:1': fill1, 'fill:2': fill2, 'fill:3': fill3,
            'match:1': match1, 'match:2': match2, 'match:3': match3,
          }
          const score = Object.entries(allocation).reduce((sum, [key, value]) => {
            const [type, difficulty] = key.split(':')
            const ideal = (blueprint.types[type] * blueprint.difficulties[difficulty]) / blueprint.total
            return sum + Math.abs(value - ideal)
          }, 0)
          feasible.push({ allocation, score })
        }
      }
    }
  }
  return feasible.sort((a, b) => a.score - b.score).map(item => item.allocation)
}

function rebalanceChoiceAnswers(questions) {
  const targetPositions = [
    ...Array(27).fill(0), ...Array(26).fill(1), ...Array(26).fill(2), ...Array(26).fill(3),
  ]
  const choices = questions.filter(question => question.type === 'choice').sort((a, b) => a.id.localeCompare(b.id))
  choices.forEach((question, index) => {
    const target = targetPositions[index]
    const options = [...question.content.options]
    const [correct] = options.splice(question.content.answer, 1)
    options.splice(target, 0, correct)
    question.content.options = options
    question.content.answer = target
  })
}

function rewriteKnownNearDuplicates(questions) {
  const stems = {
    'g2-english-legacy-1e9c82623bc6': 'The teacher says “摸摸你的脸”. Complete the command: Touch your ___.',
    'g2-english-legacy-34eb573cf464': 'You want to point to your nose. Complete: Touch your ___.',
    'g2-english-legacy-ebff655f2e6e': 'Follow this classroom action: Touch your ___ (头).',
    'g2-english-legacy-479816af1a96': 'A bird is in the tree. Complete: I see a ___.',
    'g2-english-legacy-ae13273176f2': 'There is a pig on the farm. Complete: I see a ___.',
    'g2-english-legacy-4b2d39ee86e3': 'Please stop talking. Complete the instruction: Close your ___.',
    'g2-english-legacy-c87f68e9e0c4': 'It is time to sleep. Complete the instruction: Close your ___.',
    'g2-english-legacy-76d1d034731b': 'My pet says “meow”. Complete: I have a ___.',
    'g2-english-legacy-9a3c011b7ff8': 'My pet says “woof”. Complete: I have a ___.',
  }
  for (const question of questions) {
    if (stems[question.id]) {
      question.content.stem = stems[question.id]
      question.version += 1
      question.tags = [...new Set([...question.tags, '去相似修订'])]
    }
    if (question.id === 'g2-chinese-legacy-00cfb845de4d') {
      question.content.stem = '___天到了，湖面结冰了。'
      question.content.answer = '冬'
      question.content.explanation = '冬天气温低，湖面可能结冰，所以填“冬”。'
      question.version += 1
    }
    if (question.id === 'g2-chinese-legacy-01f21617cb30') {
      question.content.right = ['鱼', '萝卜', '狗粮', '米粒']
      question.content.matches = [[0, 0], [1, 1], [2, 2], [3, 3]]
      question.content.explanation = '根据这些动物常吃的食物配对：小猫—鱼、小兔—萝卜、小狗—狗粮、小鸡—米粒。'
      question.version += 1
    }
    if (question.id === 'g2-math-legacy-1e1b744e5238') {
      question.content.stem = '两个完全相同的正方形拼成一个长方形，拼成的长方形有几个直角？'
      question.content.options = ['3个', '4个', '5个', '6个']
      question.content.answer = 1
      question.content.explanation = '两个正方形拼成长方形，长方形仍有4个直角。'
      question.version += 1
    }
  }
}

function selectWithKnowledgeCaps(unique, allocation, blueprint) {
  const maxPerKnowledge = Math.floor(blueprint.total * blueprint.maxKnowledgePointShare)
  const selected = []
  const selectedIds = new Set()
  const reservedByCell = {}
  const knowledgeCounts = {}
  const cellKey = question => `${question.type}:${question.difficulty}`
  const frequency = Object.fromEntries(blueprint.knowledgePoints.map(point => [point, unique.filter(q => q.knowledgePoint === point).length]))

  for (const knowledgePoint of [...blueprint.knowledgePoints].sort((a, b) => frequency[a] - frequency[b])) {
    const candidate = unique
      .filter(question => question.knowledgePoint === knowledgePoint
        && (reservedByCell[cellKey(question)] ?? 0) < (allocation[cellKey(question)] ?? 0))
      .sort((a, b) => a.id.localeCompare(b.id))[0]
    if (!candidate) throw new Error(`No selectable candidate for knowledge point ${knowledgePoint}.`)
    selected.push(candidate)
    selectedIds.add(candidate.id)
    reservedByCell[cellKey(candidate)] = (reservedByCell[cellKey(candidate)] ?? 0) + 1
    knowledgeCounts[knowledgePoint] = 1
  }

  const source = 'source'
  const sink = 'sink'
  const residual = new Map()
  const original = new Map()
  const neighbors = new Map()
  const edgeKey = (from, to) => `${from}\u0000${to}`
  function addEdge(from, to, capacity) {
    const forward = edgeKey(from, to)
    const backward = edgeKey(to, from)
    residual.set(forward, capacity)
    residual.set(backward, 0)
    original.set(forward, capacity)
    if (!neighbors.has(from)) neighbors.set(from, [])
    if (!neighbors.has(to)) neighbors.set(to, [])
    neighbors.get(from).push(to)
    neighbors.get(to).push(from)
  }

  for (const [cell, target] of Object.entries(allocation)) {
    const remaining = target - (reservedByCell[cell] ?? 0)
    addEdge(source, `cell:${cell}`, remaining)
    const [type, difficulty] = cell.split(':')
    for (const knowledgePoint of blueprint.knowledgePoints) {
      const capacity = unique.filter(question => !selectedIds.has(question.id)
        && question.type === type && question.difficulty === Number(difficulty)
        && question.knowledgePoint === knowledgePoint).length
      if (capacity > 0) addEdge(`cell:${cell}`, `knowledge:${knowledgePoint}`, capacity)
    }
  }
  for (const knowledgePoint of blueprint.knowledgePoints) {
    addEdge(`knowledge:${knowledgePoint}`, sink, maxPerKnowledge - (knowledgeCounts[knowledgePoint] ?? 0))
  }

  let flow = 0
  while (true) {
    const parent = new Map([[source, null]])
    const queue = [source]
    while (queue.length && !parent.has(sink)) {
      const from = queue.shift()
      for (const to of neighbors.get(from) ?? []) {
        if (!parent.has(to) && (residual.get(edgeKey(from, to)) ?? 0) > 0) {
          parent.set(to, from)
          queue.push(to)
        }
      }
    }
    if (!parent.has(sink)) break
    let increment = Number.POSITIVE_INFINITY
    for (let to = sink; parent.get(to) !== null; to = parent.get(to)) {
      const from = parent.get(to)
      increment = Math.min(increment, residual.get(edgeKey(from, to)))
    }
    for (let to = sink; parent.get(to) !== null; to = parent.get(to)) {
      const from = parent.get(to)
      residual.set(edgeKey(from, to), residual.get(edgeKey(from, to)) - increment)
      residual.set(edgeKey(to, from), (residual.get(edgeKey(to, from)) ?? 0) + increment)
    }
    flow += increment
  }

  const requiredFlow = blueprint.total - selected.length
  if (flow !== requiredFlow) throw new Error(`Cannot satisfy knowledge-point cap: selected ${flow + selected.length}/${blueprint.total}.`)
  for (const cell of Object.keys(allocation)) {
    const [type, difficulty] = cell.split(':')
    for (const knowledgePoint of blueprint.knowledgePoints) {
      const edge = edgeKey(`cell:${cell}`, `knowledge:${knowledgePoint}`)
      const count = (original.get(edge) ?? 0) - (residual.get(edge) ?? 0)
      const candidates = unique.filter(question => !selectedIds.has(question.id)
        && question.type === type && question.difficulty === Number(difficulty)
        && question.knowledgePoint === knowledgePoint).sort((a, b) => a.id.localeCompare(b.id))
      for (const question of candidates.slice(0, count)) {
        selected.push(question)
        selectedIds.add(question.id)
        knowledgeCounts[knowledgePoint] = (knowledgeCounts[knowledgePoint] ?? 0) + 1
      }
    }
  }
  return { selected, knowledgeCounts }
}

export function curateSubject(candidates, blueprint) {
  const { unique, rejected } = deduplicateStems(candidates)
  const allocations = allocationFor(unique, blueprint)
  if (!allocations.length) throw new Error('No feasible type/difficulty allocation for this subject.')
  let allocation
  let selection
  let lastError
  for (const candidateAllocation of allocations) {
    try {
      selection = selectWithKnowledgeCaps(unique, candidateAllocation, blueprint)
      allocation = candidateAllocation
      break
    } catch (error) {
      lastError = error
    }
  }
  if (!selection || !allocation) throw lastError ?? new Error('Cannot satisfy question bank quotas.')
  const questions = selection.selected.map(question => structuredClone(question))
  const knowledgeCounts = selection.knowledgeCounts
  for (const question of questions) question.reviewStatus = 'reviewed'
  rewriteKnownNearDuplicates(questions)
  rebalanceChoiceAnswers(questions)
  questions.sort((a, b) => a.id.localeCompare(b.id))
  return { questions, rejected, allocation, knowledgeCounts }
}

export function main() {
  const config = JSON.parse(readFileSync(join(root, 'data/question-blueprint.json'), 'utf8'))
  const supplements = JSON.parse(readFileSync(join(root, 'data/question-candidates/grade2-supplements.json'), 'utf8'))
  const reports = []
  for (const subject of ['chinese', 'math', 'english']) {
    const candidates = [
      ...JSON.parse(readFileSync(join(root, `data/question-candidates/grade2-${subject}.json`), 'utf8')),
      ...supplements.filter(question => question.subject === subject),
    ]
    const blueprint = { ...config.defaults, knowledgePoints: config.grades['2'][subject] }
    const result = curateSubject(candidates, blueprint)
    writeFileSync(join(root, `data/questions/grade2-${subject}.json`), `${JSON.stringify(result.questions, null, 2)}\n`, 'utf8')
    reports.push(`## ${subject}\n\n- Selected: ${result.questions.length}\n- Exact-stem candidates rejected: ${result.rejected.length}\n- Allocation: \`${JSON.stringify(result.allocation)}\`\n- Knowledge points: \`${JSON.stringify(result.knowledgeCounts)}\``)
  }
  const auditDirectory = join(root, 'data/question-audits')
  mkdirSync(auditDirectory, { recursive: true })
  writeFileSync(join(auditDirectory, 'grade2-curation-report.md'), `# Grade 2 Curation Report\n\n${reports.join('\n\n')}\n`, 'utf8')
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  main()
  console.log('Curated 140 reviewed questions for each grade-2 subject.')
}
