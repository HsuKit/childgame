import { motion } from 'framer-motion'
import { useNavigate } from 'react-router-dom'
import { SUBJECT_LABELS, SUBJECT_EMOJIS } from '../../lib/constants'
import type { Subject } from '../../lib/constants'

interface Props { subject: Subject; completed: number; total: number }

export function DailyTaskCard({ subject, completed, total }: Props) {
  const navigate = useNavigate()
  const isDone = completed >= total

  return (
    <motion.button whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.98 }}
      onClick={() => navigate(`/quiz?subject=${subject}`)}
      className={`card flex items-center gap-4 ${isDone ? 'opacity-60' : ''}`}>
      <span className="text-3xl">{SUBJECT_EMOJIS[subject]}</span>
      <div className="flex-1 text-left">
        <p className="font-bold">{SUBJECT_LABELS[subject]}</p>
        <p className="text-sm text-gray-400">{isDone ? '已完成' : `今日进度 ${completed}/${total}`}</p>
      </div>
      {isDone ? <span className="text-2xl">✅</span> : <span className="text-kid-primary font-bold text-sm">去答题 →</span>}
    </motion.button>
  )
}
