import type { Database, Json } from './database.types'

type Question = Database['public']['Tables']['questions']['Row']
type QuestionType = Question['type']
type JsonObject = { [key: string]: Json | undefined }

function isPlainObject(value: unknown): value is JsonObject {
  return Boolean(value) && typeof value === 'object' && !Array.isArray(value)
}

function normalizeChoiceAnswer(answer: unknown, options: string[]): number | null {
  if (typeof answer === 'number' && Number.isInteger(answer)) {
    return answer >= 0 && answer < options.length ? answer : null
  }

  if (typeof answer !== 'string') return null
  const normalized = answer.trim()
  if (!normalized) return null

  if (/^\d+$/.test(normalized)) {
    const index = Number(normalized)
    return index >= 0 && index < options.length ? index : null
  }

  if (/^[A-D]$/i.test(normalized)) {
    const index = normalized.toUpperCase().charCodeAt(0) - 65
    return index < options.length ? index : null
  }

  const matches = options
    .map((option, index) => ({ option: option.trim(), index }))
    .filter(item => item.option === normalized)

  return matches.length === 1 ? matches[0].index : null
}

export function normalizeQuestionContent(type: QuestionType, content: unknown): JsonObject | null {
  if (type !== 'choice') return isPlainObject(content) ? content : null
  if (!isPlainObject(content) || !Array.isArray(content.options)) return null

  const options = content.options.filter((option): option is string => typeof option === 'string')
  if (options.length === 0 || options.length !== content.options.length) return null

  const answer = normalizeChoiceAnswer(content.answer, options)
  if (answer === null) return null

  return { ...content, options, answer }
}

export function normalizeQuestion(question: Question): Question | null {
  const content = normalizeQuestionContent(question.type, question.content)
  return content ? { ...question, content } : null
}
