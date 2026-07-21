import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import type { Database } from '../lib/database.types'
import { formatLocalDate, getLocalDayRange } from '../lib/dateUtils'
import { calculateAnswerReward, countSubjects, isAnswerCorrect, shuffle } from '../lib/quizUtils'
import { composeQuestions } from '../lib/questionComposer'
import { loadCompositionInputs } from '../lib/questionRepository'
import { applyWrongAnswer } from '../lib/mistakeStatus'

type Question = Database['public']['Tables']['questions']['Row']

interface QuizRecord {
  question_id: string
  subject: Subject
  is_correct: boolean
  points_earned: number
  selected_answer: string | number
}

interface QuizDependencies {
  loadInputs: typeof loadCompositionInputs
  compose: typeof composeQuestions
  random: () => number
}

const defaultQuizDependencies: QuizDependencies = {
  loadInputs: loadCompositionInputs,
  compose: composeQuestions,
  random: Math.random,
}

export class QuestionSessionError extends Error {
  constructor(public code: 'insufficient-total') {
    super('该年级题库正在准备中，请稍后再试')
    this.name = 'QuestionSessionError'
  }
}

export async function buildSubjectQuestions(
  userId: string,
  subject: Subject,
  grade: number,
  dependencies: QuizDependencies = defaultQuizDependencies,
): Promise<Question[]> {
  const { candidates, history } = await dependencies.loadInputs(userId, subject, grade)
  const result = dependencies.compose({ candidates, history, random: dependencies.random })
  if (result.questions.length !== DAILY_QUESTIONS_PER_SUBJECT) throw new QuestionSessionError('insufficient-total')
  if (result.degraded) console.warn(`Question composition used quota fallback for grade ${grade} ${subject}.`)
  return result.questions
}

export async function buildChallengeQuestions(
  userId: string,
  grade: number,
  dependencies: QuizDependencies = defaultQuizDependencies,
): Promise<Question[]> {
  const groups = await Promise.all(SUBJECTS.map(subject => buildSubjectQuestions(userId, subject, grade, dependencies)))
  return shuffle(groups.flat(), dependencies.random)
}

export function prepareQuizRecordInserts(userId: string, records: QuizRecord[]) {
  return records.map(record => ({
    user_id: userId,
    question_id: record.question_id,
    subject: record.subject,
    is_correct: record.is_correct,
    points_earned: record.points_earned,
    selected_answer: record.selected_answer,
  }))
}

export function prepareWrongQuestionIds(records: QuizRecord[]) {
  return records.filter(record => !record.is_correct).map(record => record.question_id)
}

async function syncMistakeRecords(userId: string, records: QuizRecord[]) {
  const wrongRecords = records.filter(record => !record.is_correct)
  if (wrongRecords.length === 0) return

  const nowIso = new Date().toISOString()
  const questionIds = prepareWrongQuestionIds(records)
  const { data: existing, error: existingError } = await supabase.from('mistake_records')
    .select('question_id,status,wrong_count,correct_review_count,last_wrong_at,last_reviewed_at,mastered_at')
    .eq('user_id', userId)
    .in('question_id', questionIds)
  if (existingError) throw existingError

  const existingByQuestion = new Map((existing || []).map(row => [row.question_id, row]))
  const rows = wrongRecords.map(record => {
    const current = existingByQuestion.get(record.question_id) || null
    const next = applyWrongAnswer(current, nowIso)
    return {
      user_id: userId,
      question_id: record.question_id,
      subject: record.subject,
      ...next,
      updated_at: nowIso,
    }
  })
  const { error } = await supabase.from('mistake_records').upsert(rows, { onConflict: 'user_id,question_id' })
  if (error) throw error
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
  sessionError: string | null
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
  sessionError: null,

  startSession: async (subject: Subject) => {
    set({ isLoading: true, sessionError: null })
    try {
      const profile = useAuthStore.getState().profile
      const userId = useAuthStore.getState().user?.id
      if (!profile || !userId) throw new Error('用户信息尚未准备好')
      const questions = await buildSubjectQuestions(userId, subject, profile.grade)
      const session = createEmptySession(subject, questions)
      set(state => ({ sessions: { ...state.sessions, [subject]: session } }))
    } catch (error) {
      set({ sessionError: error instanceof Error ? error.message : '题目加载失败' })
      throw error
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
      const record: QuizRecord = { question_id: questionId, subject, is_correct: isCorrect, points_earned: points, selected_answer: answer }
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
    set({ isLoading: true, sessionError: null })
    try {
      const profile = useAuthStore.getState().profile
      const userId = useAuthStore.getState().user?.id
      if (!profile || !userId) throw new Error('用户信息尚未准备好')
      const allQuestions = await buildChallengeQuestions(userId, profile.grade)
      set({
        challengeSession: { questions: allQuestions, currentIndex: 0, correctCount: 0, comboCount: 0, pointsEarned: 0, isComplete: false, passed: false, records: [] },
      })
    } catch (error) {
      set({ sessionError: error instanceof Error ? error.message : '挑战题目加载失败' })
      throw error
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
    const record: QuizRecord = { question_id: questionId, subject: question.subject, is_correct: isCorrect, points_earned: points, selected_answer: answer }
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
    if (session.records.length === 0) return
    const { error } = await supabase.from('quiz_records').insert(prepareQuizRecordInserts(userId, session.records))
    if (error) throw error
    await syncMistakeRecords(userId, session.records)
  },

  saveChallengeRecords: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const session = get().challengeSession
    if (!session || !session.isComplete) return
    if (session.records.length === 0) return
    const { error } = await supabase.from('quiz_records').insert(prepareQuizRecordInserts(userId, session.records))
    if (error) throw error
    await syncMistakeRecords(userId, session.records)
  },
}))
