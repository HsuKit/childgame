import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import type { Database } from '../lib/database.types'
import { formatLocalDate, getLocalDayRange } from '../lib/dateUtils'
import { calculateAnswerReward, countSubjects, isAnswerCorrect, shuffle } from '../lib/quizUtils'

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
  answerQuestion: (questionId: string, answer: string | number) => boolean
  answerChallengeQuestion: (questionId: string, answer: string | number) => boolean
  nextQuestion: () => void
  nextChallengeQuestion: () => void
  getSession: (subject: Subject) => QuizSession | null
  getTodayQuizCount: (subject: Subject) => Promise<number>
  getTodayStats: () => Promise<{ chinese: number; math: number; english: number; challengeDone: boolean }>
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
    try {
      const profile = useAuthStore.getState().profile
      if (!profile) return

      const { data: all, error } = await supabase.from('questions').select('*').eq('subject', subject).eq('grade', profile.grade)
      if (error) throw error

      if (subject === 'math') {
        // Mix 8 choice from DB + 2 generated Sudoku
        const { generateSudoku } = await import('../lib/sudokuGenerator')
        const choiceQs = shuffle(all || []).slice(0, 8)
        const gridQs = Array.from({ length: 2 }, (_, i) => ({
          id: `gen_sudoku_${Date.now()}_${i}`,
          subject: 'math' as const, grade: profile.grade, difficulty: 2, type: 'grid' as const,
          content: generateSudoku() as any, source: 'builtin' as const, created_at: new Date().toISOString(),
        }))
        const questions = shuffle([...choiceQs, ...gridQs])
        if (questions.length === 0) return
        const session = createEmptySession(subject, questions)
        set(state => ({ sessions: { ...state.sessions, [subject]: session } }))
        return
      }

      if (!all || all.length === 0) return
      const questions = shuffle(all).slice(0, Math.min(DAILY_QUESTIONS_PER_SUBJECT, all.length))
      const session = createEmptySession(subject, questions)
      set(state => ({ sessions: { ...state.sessions, [subject]: session } }))
    } finally {
      set({ isLoading: false })
    }
  },

  answerQuestion: (questionId: string, answer: string | number) => {
    const state = get()
    let result = false
    for (const subject of SUBJECTS) {
      const session = state.sessions[subject]
      if (!session) continue
      const question = session.questions[session.currentIndex]
      if (!question || question.id !== questionId) continue
      const isCorrect = isAnswerCorrect(question.type, question.content, answer)
      const { comboCount, points } = calculateAnswerReward(isCorrect, session.comboCount)
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
    const { start, end } = getLocalDayRange()
    const { count, error } = await supabase.from('quiz_records').select('*', { count: 'exact', head: true })
      .eq('user_id', userId).eq('subject', subject).gte('answered_at', start).lt('answered_at', end)
    if (error) throw error
    return count ?? 0
  },

  getTodayStats: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return { chinese: 0, math: 0, english: 0, challengeDone: false }
    const { start, end } = getLocalDayRange()
    const today = formatLocalDate(new Date())
    const [quizRes, checkinRes] = await Promise.all([
      supabase.from('quiz_records').select('subject').eq('user_id', userId).gte('answered_at', start).lt('answered_at', end),
      supabase.from('check_ins').select('challenge_done').eq('user_id', userId).eq('date', today).maybeSingle(),
    ])
    if (quizRes.error) throw quizRes.error
    if (checkinRes.error) throw checkinRes.error
    const counts = countSubjects(quizRes.data || [])
    return { ...counts, challengeDone: checkinRes.data?.challenge_done ?? false }
  },

  startChallenge: async () => {
    set({ isLoading: true })
    try {
      const profile = useAuthStore.getState().profile
      if (!profile) return

      const { generateSudoku } = await import('../lib/sudokuGenerator')
      const [mathQ, chineseQ, englishQ] = await Promise.all([
        supabase.from('questions').select('*').eq('subject', 'math').eq('grade', profile.grade),
        supabase.from('questions').select('*').eq('subject', 'chinese').eq('grade', profile.grade),
        supabase.from('questions').select('*').eq('subject', 'english').eq('grade', profile.grade),
      ])
      if (mathQ.error) throw mathQ.error
      if (chineseQ.error) throw chineseQ.error
      if (englishQ.error) throw englishQ.error
      const pick = (arr: Question[], count: number) => shuffle(arr).slice(0, count)
      const gridQs = Array.from({ length: 3 }, (_, i) => ({
        id: `gen_ch_sudoku_${Date.now()}_${i}`,
        subject: 'math' as const, grade: profile.grade, difficulty: 2, type: 'grid' as const,
        content: generateSudoku() as any, source: 'builtin' as const, created_at: new Date().toISOString(),
      }))
      const allQuestions = shuffle([...pick(mathQ.data || [], 7), ...gridQs, ...pick(chineseQ.data || [], 10), ...pick(englishQ.data || [], 10)])
      if (allQuestions.length === 0) return
      set({
        challengeSession: { questions: allQuestions, currentIndex: 0, correctCount: 0, comboCount: 0, pointsEarned: 0, isComplete: false, passed: false, records: [] },
      })
    } finally {
      set({ isLoading: false })
    }
  },

  answerChallengeQuestion: (questionId: string, answer: string | number) => {
    const session = get().challengeSession
    if (!session) return false
    const question = session.questions[session.currentIndex]
    if (!question || question.id !== questionId) return false
    const isCorrect = isAnswerCorrect(question.type, question.content, answer)
    const { comboCount, points } = calculateAnswerReward(isCorrect, session.comboCount)
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
    const passed = session.correctCount >= 24
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
    const today = formatLocalDate(new Date())
    const { data, error } = await supabase.from('check_ins').select('challenge_done').eq('user_id', userId).eq('date', today).maybeSingle()
    if (error) throw error
    return data?.challenge_done ?? false
  },

  saveQuizRecords: async (subject: Subject) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const session = get().sessions[subject]
    if (!session || !session.isComplete) return
    const records = session.records
      .filter(r => !r.question_id.startsWith('gen_'))
      .map(r => ({
        user_id: userId, question_id: r.question_id, subject: r.subject,
        is_correct: r.is_correct, points_earned: r.points_earned,
      }))
    if (records.length === 0) return
    const { error } = await supabase.from('quiz_records').insert(records)
    if (error) throw error
  },

  saveChallengeRecords: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const session = get().challengeSession
    if (!session || !session.isComplete) return
    const records = session.records
      .filter(r => !r.question_id.startsWith('gen_'))
      .map(r => ({
        user_id: userId, question_id: r.question_id, subject: r.subject,
        is_correct: r.is_correct, points_earned: r.points_earned,
      }))
    if (records.length === 0) return
    const { error } = await supabase.from('quiz_records').insert(records)
    if (error) throw error
  },
}))
