export const QUESTION_TYPES = ['choice', 'fill', 'match']
export const QUESTION_SKILLS = ['recall', 'understand', 'apply', 'reason']
export const REVIEW_STATUSES = ['draft', 'reviewed', 'approved']
const SUBJECTS = ['chinese', 'math', 'english']

export function normalizeText(value) {
  return typeof value === 'string'
    ? value.normalize('NFKC').trim().replace(/\s+/g, ' ').toLowerCase()
    : ''
}

function hasText(value) {
  return typeof value === 'string' && value.trim().length > 0
}

function validateContentBase(content, errors) {
  if (!content || typeof content !== 'object' || Array.isArray(content)) {
    errors.push('content must be an object')
    return false
  }
  if (!hasText(content.stem)) errors.push('stem is required')
  if (!hasText(content.explanation)) errors.push('explanation is required')
  return true
}

function validateChoice(content, errors) {
  const options = content.options
  const unique = Array.isArray(options)
    ? new Set(options.filter(hasText).map(normalizeText))
    : new Set()
  if (!Array.isArray(options) || options.length !== 4 || unique.size !== 4) {
    errors.push('choice requires four unique options')
  }
  if (!Number.isInteger(content.answer) || content.answer < 0 || content.answer > 3) {
    errors.push('choice answer must be an index from 0 to 3')
  }
}

function validateFill(question, content, errors) {
  if (!hasText(content.answer)) errors.push('fill answer is required')
  const acceptable = content.acceptableAnswers
  if (acceptable !== undefined && (
    !Array.isArray(acceptable)
    || acceptable.length === 0
    || acceptable.some(answer => !hasText(answer))
  )) {
    errors.push('acceptableAnswers must contain non-empty strings')
  }
  if (question.subject === 'english') {
    const answers = [content.answer, ...(Array.isArray(acceptable) ? acceptable : [])]
    if (answers.some(answer => answer !== normalizeText(answer))) {
      errors.push('english fill answer must be trimmed lowercase')
    }
  }
}

function validateMatch(content, errors) {
  const { left, right, matches } = content
  if (!Array.isArray(left) || !Array.isArray(right) || left.length < 2 || left.length !== right.length
    || left.some(item => !hasText(item)) || right.some(item => !hasText(item))) {
    errors.push('match requires equal non-empty left and right lists')
    return
  }
  if (!Array.isArray(matches)) {
    errors.push('match must pair every item exactly once')
    return
  }
  const validPairs = matches.every(pair => Array.isArray(pair) && pair.length === 2
    && pair.every(Number.isInteger))
  if (!validPairs || matches.some(([leftIndex, rightIndex]) => (
    leftIndex < 0 || leftIndex >= left.length || rightIndex < 0 || rightIndex >= right.length
  ))) {
    errors.push('match indexes are out of range')
  }
  const leftIndexes = new Set(matches.map(pair => pair?.[0]))
  const rightIndexes = new Set(matches.map(pair => pair?.[1]))
  const expectedIndexes = Array.from({ length: left.length }, (_, index) => index)
  if (matches.length !== left.length
    || leftIndexes.size !== left.length
    || rightIndexes.size !== right.length
    || expectedIndexes.some(index => !leftIndexes.has(index) || !rightIndexes.has(index))) {
    errors.push('match must pair every item exactly once')
  }
}

export function validateQuestion(question) {
  const errors = []
  const prefix = hasText(question?.id) ? `${question.id}: ` : ''

  if (!/^g[1-6]-(chinese|math|english)-[a-z0-9-]+$/.test(question?.id ?? '')) {
    errors.push('invalid stable id')
  }
  if (!SUBJECTS.includes(question?.subject)) errors.push('invalid subject')
  if (!Number.isInteger(question?.grade) || question.grade < 1 || question.grade > 6) {
    errors.push('grade must be an integer from 1 to 6')
  }
  if (![1, 2, 3].includes(question?.difficulty)) errors.push('difficulty must be 1, 2, or 3')
  if (!QUESTION_TYPES.includes(question?.type)) errors.push('invalid question type')
  if (!hasText(question?.knowledgePoint)) errors.push('knowledgePoint is required')
  if (!QUESTION_SKILLS.includes(question?.skill)) errors.push('invalid skill')
  if (!Array.isArray(question?.tags) || question.tags.some(tag => !hasText(tag))) {
    errors.push('tags must contain non-empty strings')
  }
  if (!REVIEW_STATUSES.includes(question?.reviewStatus)) errors.push('invalid reviewStatus')
  if (!Number.isInteger(question?.version) || question.version < 1) {
    errors.push('version must be a positive integer')
  }

  if (validateContentBase(question?.content, errors)) {
    if (question.type === 'choice') validateChoice(question.content, errors)
    if (question.type === 'fill') validateFill(question, question.content, errors)
    if (question.type === 'match') validateMatch(question.content, errors)
  }

  return errors.map(error => `${prefix}${error}`)
}
