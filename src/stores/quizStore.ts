import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { POINTS, DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import type { Database } from '../lib/database.types'

type Question = Database['public']['Tables']['questions']['Row']

interface QuizSession {
  subject: Subject
  questions: Question[]
  currentIndex: number
  correctCount: number
  comboCount: number
  pointsEarned: number
  isComplete: boolean
}

interface QuizState {
  sessions: Record<Subject, QuizSession | null>
  isLoading: boolean
  startSession: (subject: Subject) => Promise<void>
  answerQuestion: (questionId: string, selectedIndex: number) => boolean
  nextQuestion: () => void
  getSession: (subject: Subject) => QuizSession | null
  getTodayQuizCount: (subject: Subject) => Promise<number>
}

function createEmptySession(subject: Subject, questions: Question[]): QuizSession {
  return { subject, questions, currentIndex: 0, correctCount: 0, comboCount: 0, pointsEarned: 0, isComplete: false }
}

export const useQuizStore = create<QuizState>((set, get) => ({
  sessions: { chinese: null, math: null, english: null },
  isLoading: false,

  startSession: async (subject: Subject) => {
    set({ isLoading: true })
    const profile = useAuthStore.getState().profile
    if (!profile) return set({ isLoading: false })
    const { data: questions } = await supabase.from('questions').select('*').eq('subject', subject).eq('grade', profile.grade).limit(DAILY_QUESTIONS_PER_SUBJECT).order('id')
    if (!questions || questions.length === 0) { set({ isLoading: false }); return }
    const session = createEmptySession(subject, questions)
    set(state => ({ sessions: { ...state.sessions, [subject]: session }, isLoading: false }))
  },

  answerQuestion: (questionId: string, selectedIndex: number) => {
    const state = get()
    let result = false
    for (const subject of SUBJECTS) {
      const session = state.sessions[subject]
      if (!session) continue
      const question = session.questions[session.currentIndex]
      if (!question || question.id !== questionId) continue
      const content = question.content as any
      const isCorrect = content.answer === selectedIndex
      const comboCount = isCorrect ? session.comboCount + 1 : 0
      let points = isCorrect ? POINTS.CORRECT_ANSWER : 0
      if (isCorrect && comboCount >= 2) {
        const bonusIndex = Math.min(comboCount - 2, 2)
        points += POINTS.COMBO_BONUS[bonusIndex]
      }
      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: {
            ...session,
            correctCount: session.correctCount + (isCorrect ? 1 : 0),
            comboCount,
            pointsEarned: session.pointsEarned + points,
          },
        },
      }))
      result = isCorrect
      break
    }
    return result
  },

  nextQuestion: () => {
    const state = get()
    for (const subject of SUBJECTS) {
      const session = state.sessions[subject]
      if (!session || session.isComplete) continue
      const nextIndex = session.currentIndex + 1
      const isComplete = nextIndex >= session.questions.length
      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: { ...session, currentIndex: isComplete ? session.currentIndex : nextIndex, isComplete },
        },
      }))
      break
    }
  },

  getSession: (subject: Subject) => get().sessions[subject],

  getTodayQuizCount: async (subject: Subject) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return 0
    const today = new Date().toISOString().slice(0, 10)
    const { count } = await supabase.from('quiz_records').select('*', { count: 'exact', head: true }).eq('user_id', userId).eq('subject', subject).gte('answered_at', today)
    return count ?? 0
  },
}))
