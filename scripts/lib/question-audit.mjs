import { normalizeText } from './question-schema.mjs'

function countBy(items, key) {
  return items.reduce((counts, item) => {
    const value = String(item[key])
    counts[value] = (counts[value] ?? 0) + 1
    return counts
  }, {})
}

function bigrams(value) {
  const normalized = normalizeText(value).replace(/[\s，。！？、,.!?：:；;“”"'（）()]/g, '')
  const result = []
  for (let index = 0; index < normalized.length - 1; index += 1) {
    result.push(normalized.slice(index, index + 2))
  }
  return result
}

function diceSimilarity(first, second) {
  const left = bigrams(first)
  const right = bigrams(second)
  if (left.length < 8 || right.length < 8) return 0
  const remaining = [...right]
  let overlap = 0
  for (const pair of left) {
    const index = remaining.indexOf(pair)
    if (index >= 0) {
      overlap += 1
      remaining.splice(index, 1)
    }
  }
  return (2 * overlap) / (left.length + right.length)
}

function pairKey(first, second) {
  return [first, second].sort().join('|')
}

function questionSignature(question) {
  const content = question.content ?? {}
  const normalizedOptions = Array.isArray(content.options) ? content.options.map(normalizeText) : undefined
  const normalizedAnswer = normalizedOptions && Number.isInteger(content.answer)
    ? normalizedOptions[content.answer]
    : typeof content.answer === 'string' ? normalizeText(content.answer) : content.answer
  return JSON.stringify({
    stem: normalizeText(content.stem),
    options: normalizedOptions?.sort(),
    answer: normalizedAnswer,
    left: Array.isArray(content.left) ? content.left.map(normalizeText) : undefined,
    right: Array.isArray(content.right) ? content.right.map(normalizeText) : undefined,
    matches: content.matches,
  })
}

export function auditQuestionSet(questions, blueprint) {
  const errors = []
  const warnings = []
  const typeCounts = countBy(questions, 'type')
  const difficultyCounts = countBy(questions, 'difficulty')
  const knowledgeCounts = countBy(questions, 'knowledgePoint')
  const expectedTotal = blueprint.total

  if (questions.length !== expectedTotal) errors.push(`total expected ${expectedTotal} got ${questions.length}`)
  for (const [type, expected] of Object.entries(blueprint.types)) {
    const actual = typeCounts[type] ?? 0
    if (actual !== expected) errors.push(`${type} expected ${expected} got ${actual}`)
  }
  for (const [difficulty, expected] of Object.entries(blueprint.difficulties)) {
    const actual = difficultyCounts[difficulty] ?? 0
    if (actual !== expected) errors.push(`difficulty ${difficulty} expected ${expected} got ${actual}`)
  }

  const allowedKnowledge = new Set(blueprint.knowledgePoints)
  for (const [knowledgePoint, count] of Object.entries(knowledgeCounts)) {
    if (!allowedKnowledge.has(knowledgePoint)) errors.push(`unknown knowledge point ${knowledgePoint}`)
    if (count / expectedTotal > blueprint.maxKnowledgePointShare) {
      errors.push(`${knowledgePoint} exceeds ${blueprint.maxKnowledgePointShare * 100}%`)
    }
  }
  for (const knowledgePoint of allowedKnowledge) {
    if (!knowledgeCounts[knowledgePoint]) errors.push(`knowledge point ${knowledgePoint} has no questions`)
  }

  const seenIds = new Set()
  const seenStems = new Map()
  for (const question of questions) {
    if (seenIds.has(question.id)) errors.push(`duplicate id ${question.id}`)
    seenIds.add(question.id)
    const signature = questionSignature(question)
    if (seenStems.has(signature)) errors.push(`duplicate normalized question ${question.id} and ${seenStems.get(signature)}`)
    else seenStems.set(signature, question.id)
  }

  const choices = questions.filter(question => question.type === 'choice')
  const answerCounts = [0, 1, 2, 3].map(position => choices.filter(question => question.content?.answer === position).length)
  const expectedPerPosition = choices.length / 4
  answerCounts.forEach((count, position) => {
    if (Math.abs(count - expectedPerPosition) > 3) {
      errors.push(`choice answer position ${'ABCD'[position]} deviates by more than 3`)
    }
  })

  const exceptions = new Set(blueprint.reviewedSimilarityExceptions ?? [])
  for (let left = 0; left < questions.length; left += 1) {
    for (let right = left + 1; right < questions.length; right += 1) {
      const first = questions[left]
      const second = questions[right]
      if (normalizeText(first.content?.stem) === normalizeText(second.content?.stem)) continue
      if (diceSimilarity(first.content?.stem, second.content?.stem) >= 0.86
        && !exceptions.has(pairKey(first.id, second.id))) {
        warnings.push(`near-duplicate stems ${first.id} and ${second.id}`)
      }
    }
  }

  return {
    errors,
    warnings,
    publishable: errors.length === 0 && warnings.length === 0,
    stats: { total: questions.length, types: typeCounts, difficulties: difficultyCounts, knowledgePoints: knowledgeCounts, answerPositions: answerCounts },
  }
}
