import { DAILY_QUESTIONS_PER_SUBJECT, POINTS, SUBJECTS } from './constants'
import type { Subject } from './constants'

type QuestionType = 'choice' | 'fill' | 'match' | 'grid'

export function isAnswerCorrect(
  type: QuestionType,
  content: unknown,
  answer: string | number,
): boolean {
  if (type === 'match' || type === 'grid') return answer === 'correct'
  if (!content || typeof content !== 'object' || !('answer' in content)) return false
  const expected = (content as { answer: unknown }).answer
  if (type === 'fill') {
    return typeof expected === 'string'
      && typeof answer === 'string'
      && expected.trim().toLowerCase() === answer.trim().toLowerCase()
  }
  return expected === answer
}

export function calculateAnswerReward(
  isCorrect: boolean,
  currentCombo: number,
): { comboCount: number; points: number } {
  if (!isCorrect) return { comboCount: 0, points: 0 }
  const comboCount = currentCombo + 1
  const bonus = comboCount >= 2
    ? POINTS.COMBO_BONUS[Math.min(comboCount - 2, POINTS.COMBO_BONUS.length - 1)]
    : 0
  return { comboCount, points: POINTS.CORRECT_ANSWER + bonus }
}

export function getQuizResultAwardState({
  pointsEarned,
  subjectWasAlreadyDone,
  awardSettled,
  wasAlreadyDoneAtResult,
}: {
  pointsEarned: number
  subjectWasAlreadyDone: boolean
  awardSettled: boolean
  wasAlreadyDoneAtResult: boolean
}): {
  displayPoints: number
  shouldAwardPoints: boolean
  shouldSettleSubjectCompletion: boolean
  shouldShowAlreadyDoneNotice: boolean
  wasAlreadyDoneAtResult: boolean
} {
  const alreadyDoneAtResult = awardSettled ? wasAlreadyDoneAtResult : subjectWasAlreadyDone

  return {
    displayPoints: alreadyDoneAtResult ? 0 : pointsEarned,
    shouldAwardPoints: !awardSettled && !alreadyDoneAtResult && pointsEarned > 0,
    shouldSettleSubjectCompletion: !awardSettled && !alreadyDoneAtResult,
    shouldShowAlreadyDoneNotice: alreadyDoneAtResult,
    wasAlreadyDoneAtResult: alreadyDoneAtResult,
  }
}

export function formatChallengeScore(correctCount: number, totalQuestions: number): string {
  return `${correctCount}/${totalQuestions}`
}

export function shuffle<T>(items: readonly T[], random = Math.random): T[] {
  const result = [...items]
  for (let index = result.length - 1; index > 0; index--) {
    const swapIndex = Math.floor(random() * (index + 1))
    ;[result[index], result[swapIndex]] = [result[swapIndex], result[index]]
  }
  return result
}

export function countSubjects(rows: Array<{ subject: string }>): Record<Subject, number> {
  const counts: Record<Subject, number> = { chinese: 0, math: 0, english: 0 }
  rows.forEach(({ subject }) => {
    if (SUBJECTS.includes(subject as Subject)) counts[subject as Subject] += 1
  })
  return counts
}

export function getSubjectsNeedingCompletionSync(
  today: { chinese_done: boolean; math_done: boolean; english_done: boolean } | null,
  quizCounts: Record<Subject, number>,
): Subject[] {
  if (!today) return []
  return SUBJECTS.filter(subject => {
    const field = `${subject}_done` as 'chinese_done' | 'math_done' | 'english_done'
    return !today[field] && quizCounts[subject] >= DAILY_QUESTIONS_PER_SUBJECT
  })
}
