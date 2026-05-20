import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { POINTS, DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import type { Database } from '../lib/database.types'

type Question = Database['public']['Tables']['questions']['Row']

interface QuizRecord {
  question_id: string
  subject: string
  is_correct: boolean
  points_earned: number
}

interface QuizSession {
  subject: Subject
  questions: Question[]
  currentIndex: number
  correctCount: number
  comboCount: number
  pointsEarned: number
  isComplete: boolean
  records: QuizRecord[]
}

interface ChallengeSession {
  questions: Question[]
  currentIndex: number
  correctCount: number
  comboCount: number
  pointsEarned: number
  isComplete: boolean
  passed: boolean
  records: QuizRecord[]
}

interface QuizState {
  sessions: Record<Subject, QuizSession | null>
  challengeSession: ChallengeSession | null
  isLoading: boolean
  startSession: (subject: Subject) => Promise<void>
  startChallenge: () => Promise<void>
  answerQuestion: (questionId: string, selectedIndex: number) => boolean
  answerChallengeQuestion: (questionId: string, selectedIndex: number) => boolean
  nextQuestion: () => void
  nextChallengeQuestion: () => void
  getSession: (subject: Subject) => QuizSession | null
  getTodayQuizCount: (subject: Subject) => Promise<number>
  getTodayChallengeDone: () => Promise<boolean>
  saveQuizRecords: (subject: Subject) => Promise<void>
  saveChallengeRecords: () => Promise<void>
}

function createEmptySession(subject: Subject, questions: Question[]): QuizSession {
  return { subject, questions, currentIndex: 0, correctCount: 0, comboCount: 0, pointsEarned: 0, isComplete: false, records: [] }
}

export const useQuizStore = create<QuizState>((set, get) => ({
  sessions: { chinese: null, math: null, english: null },
  challengeSession: null,
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
      const record: QuizRecord = { question_id: questionId, subject, is_correct: isCorrect, points_earned: points }
      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: {
            ...session,
            correctCount: session.correctCount + (isCorrect ? 1 : 0),
            comboCount,
            pointsEarned: session.pointsEarned + points,
            records: [...session.records, record],
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

  startChallenge: async () => {
    set({ isLoading: true })
    const profile = useAuthStore.getState().profile
    if (!profile) return set({ isLoading: false })
    // Fetch 4 math + 3 chinese + 3 english questions for the user's grade
    const [mathQ, chineseQ, englishQ] = await Promise.all([
      supabase.from('questions').select('*').eq('subject', 'math').eq('grade', profile.grade).limit(4),
      supabase.from('questions').select('*').eq('subject', 'chinese').eq('grade', profile.grade).limit(3),
      supabase.from('questions').select('*').eq('subject', 'english').eq('grade', profile.grade).limit(3),
    ])
    const allQuestions = [...(mathQ.data || []), ...(chineseQ.data || []), ...(englishQ.data || [])]
    // Shuffle
    for (let i = allQuestions.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [allQuestions[i], allQuestions[j]] = [allQuestions[j], allQuestions[i]]
    }
    if (allQuestions.length === 0) { set({ isLoading: false }); return }
    set({
      challengeSession: { questions: allQuestions, currentIndex: 0, correctCount: 0, comboCount: 0, pointsEarned: 0, isComplete: false, passed: false, records: [] },
      isLoading: false,
    })
  },

  answerChallengeQuestion: (questionId: string, selectedIndex: number) => {
    const session = get().challengeSession
    if (!session) return false
    const question = session.questions[session.currentIndex]
    if (!question || question.id !== questionId) return false
    const content = question.content as any
    const isCorrect = content.answer === selectedIndex
    const comboCount = isCorrect ? session.comboCount + 1 : 0
    let points = isCorrect ? POINTS.CORRECT_ANSWER : 0
    if (isCorrect && comboCount >= 2) {
      const bonusIndex = Math.min(comboCount - 2, 2)
      points += POINTS.COMBO_BONUS[bonusIndex]
    }
    const record: QuizRecord = { question_id: questionId, subject: question.subject, is_correct: isCorrect, points_earned: points }
    set(state => ({
      challengeSession: state.challengeSession ? {
        ...state.challengeSession,
        correctCount: state.challengeSession.correctCount + (isCorrect ? 1 : 0),
        comboCount,
        pointsEarned: state.challengeSession.pointsEarned + points,
        records: [...state.challengeSession.records, record],
      } : null,
    }))
    return isCorrect
  },

  nextChallengeQuestion: () => {
    const session = get().challengeSession
    if (!session || session.isComplete) return
    const nextIndex = session.currentIndex + 1
    const isComplete = nextIndex >= session.questions.length
    const passed = session.correctCount >= 8
    set(state => ({
      challengeSession: state.challengeSession ? {
        ...state.challengeSession,
        currentIndex: isComplete ? state.challengeSession.currentIndex : nextIndex,
        isComplete,
        passed: isComplete ? passed : false,
      } : null,
    }))
  },

  getTodayChallengeDone: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return false
    const today = new Date().toISOString().slice(0, 10)
    const { data } = await supabase.from('check_ins').select('challenge_done').eq('user_id', userId).eq('date', today).maybeSingle()
    return data?.challenge_done ?? false
  },

  saveQuizRecords: async (subject: Subject) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const session = get().sessions[subject]
    if (!session || !session.isComplete) return
    for (const r of session.records) {
      await supabase.from('quiz_records').insert({
        user_id: userId, question_id: r.question_id, subject: r.subject,
        is_correct: r.is_correct, points_earned: r.points_earned,
      })
    }
  },

  saveChallengeRecords: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const session = get().challengeSession
    if (!session || !session.isComplete) return
    for (const r of session.records) {
      await supabase.from('quiz_records').insert({
        user_id: userId, question_id: r.question_id, subject: r.subject,
        is_correct: r.is_correct, points_earned: r.points_earned,
      })
    }
  },
}))
