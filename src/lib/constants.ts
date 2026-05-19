export const POINTS = {
  CORRECT_ANSWER: 10,
  COMBO_BONUS: [5, 10, 15],
  DAILY_ALL_COMPLETE: 50,
  STREAK_7_DAY: 100,
  STREAK_30_DAY: 500,
} as const

export const LEVEL_THRESHOLDS = [
  0, 50, 120, 210, 320, 450, 600, 780, 1000, 1300,
  1700, 2200, 2800, 3500, 4300, 5200, 6200, 7300, 8500, 10000,
]

export const DAILY_QUESTIONS_PER_SUBJECT = 5

export const SUBJECTS = ['chinese', 'math', 'english'] as const
export type Subject = typeof SUBJECTS[number]

export const SUBJECT_LABELS: Record<Subject, string> = {
  chinese: '语文',
  math: '数学',
  english: '英语',
}

export const SUBJECT_EMOJIS: Record<Subject, string> = {
  chinese: '📖',
  math: '🔢',
  english: '🔤',
}

export const COMPANION_CATEGORIES = ['animal', 'anime', 'cyberpunk', 'fantasy'] as const
