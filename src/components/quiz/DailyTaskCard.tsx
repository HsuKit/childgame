import { motion } from 'framer-motion'
import { useNavigate } from 'react-router-dom'
import { SUBJECT_LABELS, SUBJECT_EMOJIS } from '../../lib/constants'
import type { Subject } from '../../lib/constants'

interface Props { subject: Subject; completed: number; total: number }

const subjectColors: Record<Subject, string> = {
  chinese: 'from-red-50 to-rose-50 border-red-200',
  math: 'from-blue-50 to-sky-50 border-blue-200',
  english: 'from-green-50 to-emerald-50 border-green-200',
}

const subjectBarColors: Record<Subject, string> = {
  chinese: 'bg-gradient-to-r from-red-400 to-rose-400',
  math: 'bg-gradient-to-r from-blue-400 to-sky-400',
  english: 'bg-gradient-to-r from-green-400 to-emerald-400',
}

export function DailyTaskCard({ subject, completed, total }: Props) {
  const navigate = useNavigate()
  const isDone = completed >= total
  const pct = Math.min(100, Math.round((completed / total) * 100))

  return (
    <motion.button
      whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.97 }}
      onClick={() => navigate(`/quiz?subject=${subject}`)}
      className={`bg-gradient-to-r ${subjectColors[subject]} border rounded-3xl p-4 shadow-sm text-left ${isDone ? 'opacity-50' : ''}`}
    >
      <div className="flex items-center gap-4">
        <div className="w-12 h-12 rounded-2xl bg-white flex items-center justify-center text-2xl shadow-sm">
          {SUBJECT_EMOJIS[subject]}
        </div>
        <div className="flex-1">
          <p className="font-extrabold text-kid-text">{SUBJECT_LABELS[subject]}</p>
          <p className="text-xs text-gray-500 mt-0.5">
            {isDone ? `🎉 已完成 ${completed} 题` : `今日进度 ${completed}/${total}`}
          </p>
          <div className="mt-2 h-2 bg-white/60 rounded-full overflow-hidden">
            <div className={`h-full ${subjectBarColors[subject]} rounded-full transition-all duration-500`}
              style={{ width: `${pct}%` }} />
          </div>
        </div>
        {isDone ? (
          <span className="text-3xl">✅</span>
        ) : (
          <span className="bg-white text-kid-primary font-bold text-xs px-3 py-1.5 rounded-full shadow-sm">
            去答题 →
          </span>
        )}
      </div>
    </motion.button>
  )
}
