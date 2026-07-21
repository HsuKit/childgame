import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { getLocalDayRange } from '../lib/dateUtils'
import { countSubjects } from '../lib/quizUtils'
import { applyMistakeReview } from '../lib/mistakeStatus'
import { DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Database, MistakeStatus } from '../lib/database.types'

type Question = Database['public']['Tables']['questions']['Row']
type MistakeRecord = Database['public']['Tables']['mistake_records']['Row']
type MistakeWithQuestion = MistakeRecord & { question: Question | null }

type ReportQuizRow = { subject: string; is_correct: boolean; question_id?: string | null }
type ReportMistakeRow = {
  status: MistakeStatus
  wrong_count: number
  question: Pick<Question, 'knowledge_point'> | null
}

export function summarizeParentReport(quizRows: ReportQuizRow[], mistakeRows: ReportMistakeRow[]) {
  const uniqueQuizRows = dedupeQuizRows(quizRows)
  const rawSubjectCounts = countSubjects(uniqueQuizRows)
  const subjectCounts = SUBJECTS.reduce((counts, subject) => ({
    ...counts,
    [subject]: Math.min(rawSubjectCounts[subject], DAILY_QUESTIONS_PER_SUBJECT),
  }), rawSubjectCounts)
  const totalAnswered = SUBJECTS.reduce((sum, subject) => sum + subjectCounts[subject], 0)
  const correctAnswered = Math.min(uniqueQuizRows.filter(row => row.is_correct).length, totalAnswered)
  const activeMistakes = mistakeRows.filter(row => row.status !== 'mastered')
  const weakMap = new Map<string, { knowledgePoint: string; activeCount: number; wrongCount: number }>()
  activeMistakes.forEach(row => {
    const knowledgePoint = row.question?.knowledge_point || '未分类'
    const current = weakMap.get(knowledgePoint) || { knowledgePoint, activeCount: 0, wrongCount: 0 }
    current.activeCount += 1
    current.wrongCount += row.wrong_count
    weakMap.set(knowledgePoint, current)
  })

  return {
    totalAnswered,
    correctAnswered,
    accuracy: totalAnswered === 0 ? 0 : Math.round((correctAnswered / totalAnswered) * 100),
    subjectCounts,
    reviewProgress: {
      needsCorrection: mistakeRows.filter(row => row.status === 'needs_correction').length,
      reinforcing: mistakeRows.filter(row => row.status === 'reinforcing').length,
      mastered: mistakeRows.filter(row => row.status === 'mastered').length,
    },
    weakKnowledgePoints: Array.from(weakMap.values())
      .sort((left, right) => right.activeCount - left.activeCount || right.wrongCount - left.wrongCount)
      .slice(0, 5),
  }
}

function dedupeQuizRows(quizRows: ReportQuizRow[]) {
  const seen = new Set<string>()
  return quizRows.filter((row, index) => {
    const key = row.question_id ? `${row.subject}:${row.question_id}` : `${row.subject}:row-${index}`
    if (seen.has(key)) return false
    seen.add(key)
    return true
  })
}

interface MistakeState {
  isLoading: boolean
  error: string | null
  mistakes: MistakeWithQuestion[]
  report: ReturnType<typeof summarizeParentReport> | null
  fetchMistakes: () => Promise<void>
  fetchParentReport: () => Promise<void>
  submitReview: (mistake: MistakeWithQuestion, selectedAnswer: string | number, isCorrect: boolean) => Promise<void>
}

export const useMistakeStore = create<MistakeState>((set, get) => ({
  isLoading: false,
  error: null,
  mistakes: [],
  report: null,

  fetchMistakes: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    set({ isLoading: true, error: null })
    const { data, error } = await supabase.from('mistake_records')
      .select('*, question:questions(*)')
      .eq('user_id', userId)
      .order('updated_at', { ascending: false })
    set({
      isLoading: false,
      mistakes: (data || []) as unknown as MistakeWithQuestion[],
      error: error?.message || null,
    })
    if (error) throw error
  },

  fetchParentReport: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    set({ isLoading: true, error: null })
    const { start, end } = getLocalDayRange()
    const [quizRes, mistakeRes] = await Promise.all([
      supabase.from('quiz_records').select('subject,is_correct,question_id').eq('user_id', userId).gte('answered_at', start).lt('answered_at', end),
      supabase.from('mistake_records').select('status,wrong_count,question:questions(knowledge_point)').eq('user_id', userId),
    ])
    if (quizRes.error || mistakeRes.error) {
      const message = quizRes.error?.message || mistakeRes.error?.message || '报告加载失败'
      set({ isLoading: false, error: message })
      throw new Error(message)
    }
    set({
      isLoading: false,
      report: summarizeParentReport(
        quizRes.data || [],
        (mistakeRes.data || []) as unknown as ReportMistakeRow[],
      ),
    })
  },

  submitReview: async (mistake, selectedAnswer, isCorrect) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const nowIso = new Date().toISOString()
    const statusBefore = mistake.status
    const next = applyMistakeReview(mistake, isCorrect, nowIso)
    const { error: reviewError } = await supabase.from('mistake_reviews').insert({
      user_id: userId,
      mistake_id: mistake.id,
      question_id: mistake.question_id,
      selected_answer: selectedAnswer,
      is_correct: isCorrect,
      status_before: statusBefore,
      status_after: next.status,
    })
    if (reviewError) throw reviewError

    const { error: updateError } = await supabase.from('mistake_records').update({
      status: next.status,
      wrong_count: next.wrong_count,
      correct_review_count: next.correct_review_count,
      last_wrong_at: next.last_wrong_at,
      last_reviewed_at: next.last_reviewed_at,
      mastered_at: next.mastered_at,
      updated_at: nowIso,
    }).eq('id', mistake.id).eq('user_id', userId)
    if (updateError) throw updateError
    await get().fetchMistakes()
  },
}))
