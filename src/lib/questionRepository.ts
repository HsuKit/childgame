import { supabase } from './supabase'
import type { Database } from './database.types'
import type { Subject } from './constants'
import type { QuestionHistory } from './questionComposer'

type Question = Database['public']['Tables']['questions']['Row']
type HistoryRow = Pick<Database['public']['Tables']['quiz_records']['Row'], 'question_id' | 'answered_at'>

interface QuestionQuery {
  subject: Subject
  grade: number
  reviewStatus: 'approved' | 'reviewed'
  from: number
  to: number
}

interface HistoryQuery {
  userId: string
  questionIds: string[]
}

export interface QuestionDataClient {
  queryQuestions: (query: QuestionQuery) => Promise<Question[]>
  queryHistory: (query: HistoryQuery) => Promise<HistoryRow[]>
}

export const supabaseQuestionClient: QuestionDataClient = {
  async queryQuestions({ subject, grade, reviewStatus, from, to }) {
    const { data, error } = await supabase.from('questions').select('*')
      .eq('subject', subject)
      .eq('grade', grade)
      .eq('review_status', reviewStatus)
      .range(from, to)
    if (error) throw error
    return data ?? []
  },
  async queryHistory({ userId, questionIds }) {
    if (questionIds.length === 0) return []
    const { data, error } = await supabase.from('quiz_records')
      .select('question_id, answered_at')
      .eq('user_id', userId)
      .in('question_id', questionIds)
    if (error) throw error
    return data ?? []
  },
}

export async function loadQuestionPool(
  subject: Subject,
  grade: number,
  client: QuestionDataClient = supabaseQuestionClient,
): Promise<Question[]> {
  const approved = await loadQuestionPoolByStatus(subject, grade, 'approved', client)
  if (approved.length > 0) return approved
  return loadQuestionPoolByStatus(subject, grade, 'reviewed', client)
}

async function loadQuestionPoolByStatus(
  subject: Subject,
  grade: number,
  reviewStatus: 'approved' | 'reviewed',
  client: QuestionDataClient,
): Promise<Question[]> {
  const pageSize = 1000
  const questions: Question[] = []
  for (let from = 0; ; from += pageSize) {
    const page = await client.queryQuestions({ subject, grade, reviewStatus, from, to: from + pageSize - 1 })
    questions.push(...page)
    if (page.length < pageSize) break
  }
  return questions
}

export async function loadQuestionHistory(
  userId: string,
  questionIds: string[],
  client: QuestionDataClient = supabaseQuestionClient,
): Promise<QuestionHistory[]> {
  const latest = new Map<string, string>()
  const chunkSize = 200
  for (let offset = 0; offset < questionIds.length; offset += chunkSize) {
    const rows = await client.queryHistory({ userId, questionIds: questionIds.slice(offset, offset + chunkSize) })
    for (const row of rows) {
      const current = latest.get(row.question_id)
      if (!current || row.answered_at > current) latest.set(row.question_id, row.answered_at)
    }
  }
  return [...latest.entries()]
    .sort(([first], [second]) => first.localeCompare(second))
    .map(([questionId, answeredAt]) => ({ questionId, answeredAt }))
}

export async function loadCompositionInputs(
  userId: string,
  subject: Subject,
  grade: number,
  client: QuestionDataClient = supabaseQuestionClient,
) {
  const candidates = await loadQuestionPool(subject, grade, client)
  const history = await loadQuestionHistory(userId, candidates.map(question => question.id), client)
  return { candidates, history }
}
