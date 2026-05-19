import { motion } from 'framer-motion'
import { SUBJECT_EMOJIS } from '../../lib/constants'
import type { Subject } from '../../lib/constants'

interface Props {
  subject: Subject; subjectLabel: string; correctCount: number
  totalQuestions: number; pointsEarned: number; maxCombo: number
}

export function QuizResultPanel({ subject, subjectLabel, correctCount, totalQuestions, pointsEarned, maxCombo }: Props) {
  const pct = Math.round((correctCount / totalQuestions) * 100)

  return (
    <motion.div initial={{ scale: 0.5, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} className="card text-center w-full max-w-sm">
      <span className="text-5xl">{SUBJECT_EMOJIS[subject]}</span>
      <h2 className="text-2xl font-bold mt-2">{subjectLabel}答题完成!</h2>
      <div className="my-4"><span className="text-5xl font-bold text-kid-primary">{pct}分</span></div>
      <div className="grid grid-cols-2 gap-3 text-sm">
        <div className="bg-gray-50 rounded-xl p-3">
          <p className="text-gray-400">正确</p>
          <p className="text-xl font-bold text-kid-success">{correctCount}/{totalQuestions}</p>
        </div>
        <div className="bg-gray-50 rounded-xl p-3">
          <p className="text-gray-400">最高连击</p>
          <p className="text-xl font-bold text-kid-warning">{maxCombo}🔥</p>
        </div>
        <div className="bg-gray-50 rounded-xl p-3 col-span-2">
          <p className="text-gray-400">获得积分</p>
          <p className="text-2xl font-bold text-kid-primary">{pointsEarned} ⭐</p>
        </div>
      </div>
    </motion.div>
  )
}
