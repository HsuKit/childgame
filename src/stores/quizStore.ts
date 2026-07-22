import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import type { Database } from '../lib/database.types'
import { formatLocalDate, getLocalDayRange } from '../lib/dateUtils'
import { calculateAnswerReward, isAnswerCorrect, shuffle } from '../lib/quizUtils'
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
  const { start, end } = getLocalDayRange()
  const wrongByQuestion = new Map<string, QuizRecord>()
  wrongRecords.forEach(record => {
    if (!wrongByQuestion.has(record.question_id)) wrongByQuestion.set(record.question_id, record)
  })
  const uniqueWrongRecords = Array.from(wrongByQuestion.values())
  const questionIds = uniqueWrongRecords.map(record => record.question_id)
  const [existingRes, todayWrongRes] = await Promise.all([
    supabase.from('mistake_records')
      .select('question_id,status,wrong_count,correct_review_count,last_wrong_at,last_reviewed_at,mastered_at')
      .eq('user_id', userId)
      .in('question_id', questionIds),
    supabase.from('quiz_records')
      .select('question_id')
      .eq('user_id', userId)
      .eq('is_correct', false)
      .gte('answered_at', start)
      .lt('answered_at', end)
      .in('question_id', questionIds),
  ])
  if (existingRes.error) throw existingRes.error
  if (todayWrongRes.error) throw todayWrongRes.error

  const existingByQuestion = new Map((existingRes.data || []).map(row => [row.question_id, row]))
  const todayWrongCountByQuestion = new Map<string, number>()
  ;(todayWrongRes.data || []).forEach(row => {
    todayWrongCountByQuestion.set(row.question_id, (todayWrongCountByQuestion.get(row.question_id) || 0) + 1)
  })
  const rows = uniqueWrongRecords.map(record => {
    const current = existingByQuestion.get(record.question_id) || null
    const next = applyWrongAnswer(current, nowIso, {
      incrementWrongCount: (todayWrongCountByQuestion.get(record.question_id) || 0) <= 1,
    })
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
  recordsSaving: boolean
  recordsSaved: boolean
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
  recordsSaving: boolean
  recordsSaved: boolean
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
  return { subject, questions, currentIndex: 0, correctCount: 0, comboCount: 0, pointsEarned: 0, isComplete: false, records: [], recordsSaving: false, recordsSaved: false }
}

function hasAnsweredCurrentQuestion(session: Pick<QuizSession | ChallengeSession, 'questions' | 'currentIndex' | 'records'>) {
  const question = session.questions[session.currentIndex]
  return Boolean(question && session.records.some(record => record.question_id === question.id))
}

export function countUniqueSubjectQuestions(rows: Array<{ subject: string; question_id?: string | null }>) {
  const questionIdsBySubject: Record<Subject, Set<string>> = { chinese: new Set(), math: new Set(), english: new Set() }
  rows.forEach((row, index) => {
    if (!SUBJECTS.includes(row.subject as Subject)) return
    const subject = row.subject as Subject
    questionIdsBySubject[subject].add(row.question_id || `row-${index}`)
  })
  return SUBJECTS.reduce((counts, subject) => ({
    ...counts,
    [subject]: Math.min(questionIdsBySubject[subject].size, DAILY_QUESTIONS_PER_SUBJECT),
  }), { chinese: 0, math: 0, english: 0 } as Record<Subject, number>)
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
      if (session.records.some(record => record.question_id === questionId)) return result
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
      if (!hasAnsweredCurrentQuestion(session)) continue
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
    const { data, error } = await supabase.from('quiz_records').select('subject,question_id')
      .eq('user_id', userId).eq('subject', subject).gte('answered_at', start).lt('answered_at', end)
    if (error) throw error
    return countUniqueSubjectQuestions(data || [])[subject]
  },

  getTodayStats: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return { chinese: 0, math: 0, english: 0, challengeDone: false }
    const { start, end } = getLocalDayRange()
    const today = formatLocalDate(new Date())
    const [quizRes, checkinRes] = await Promise.all([
      supabase.from('quiz_records').select('subject,question_id').eq('user_id', userId).gte('answered_at', start).lt('answered_at', end),
      supabase.from('check_ins').select('challenge_done').eq('user_id', userId).eq('date', today).maybeSingle(),
    ])
    if (quizRes.error) throw quizRes.error
    if (checkinRes.error) throw checkinRes.error
    const counts = countUniqueSubjectQuestions(quizRes.data || [])
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
        challengeSession: { questions: allQuestions, currentIndex: 0, correctCount: 0, comboCount: 0, pointsEarned: 0, isComplete: false, passed: false, records: [], recordsSaving: false, recordsSaved: false },
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
    if (session.records.some(record => record.question_id === questionId)) return false
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
    if (!hasAnsweredCurrentQuestion(session)) return
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
    if (!session || !session.isComplete || session.recordsSaving || session.recordsSaved) return
    if (session.records.length === 0) return
    set(state => ({
      sessions: {
        ...state.sessions,
        [subject]: state.sessions[subject] ? { ...state.sessions[subject]!, recordsSaving: true } : null,
      },
    }))
    const { error } = await supabase.from('quiz_records').insert(prepareQuizRecordInserts(userId, session.records))
    if (error) {
      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: state.sessions[subject] ? { ...state.sessions[subject]!, recordsSaving: false } : null,
        },
      }))
      throw error
    }
    try {
      await syncMistakeRecords(userId, session.records)
      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: state.sessions[subject] ? { ...state.sessions[subject]!, recordsSaving: false, recordsSaved: true } : null,
        },
      }))
    } catch (error) {
      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: state.sessions[subject] ? { ...state.sessions[subject]!, recordsSaving: false } : null,
        },
      }))
      throw error
    }
  },

  saveChallengeRecords: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const session = get().challengeSession
    if (!session || !session.isComplete || session.recordsSaving || session.recordsSaved) return
    if (session.records.length === 0) return
    set(state => ({
      challengeSession: state.challengeSession ? { ...state.challengeSession, recordsSaving: true } : null,
    }))
    const { error } = await supabase.from('quiz_records').insert(prepareQuizRecordInserts(userId, session.records))
    if (error) {
      set(state => ({
        challengeSession: state.challengeSession ? { ...state.challengeSession, recordsSaving: false } : null,
      }))
      throw error
    }
    try {
      await syncMistakeRecords(userId, session.records)
      set(state => ({
        challengeSession: state.challengeSession ? { ...state.challengeSession, recordsSaving: false, recordsSaved: true } : null,
      }))
    } catch (error) {
      set(state => ({
        challengeSession: state.challengeSession ? { ...state.challengeSession, recordsSaving: false } : null,
      }))
      throw error
    }
  },
}))
