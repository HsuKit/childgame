import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { motion } from 'framer-motion'
import { useCompanionStore } from '../stores/companionStore'
import { useCheckinStore } from '../stores/checkinStore'
import { usePointsStore } from '../stores/pointsStore'
import { useQuizStore } from '../stores/quizStore'
import { useAuthStore } from '../stores/authStore'
import { CompanionDisplay } from '../components/companion/CompanionDisplay'
import { DailyTaskCard } from '../components/quiz/DailyTaskCard'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Subject } from '../lib/constants'

export default function HomePage() {
  const navigate = useNavigate()
  const { companion, fetchCompanion } = useCompanionStore()
  const { today, fetchToday } = useCheckinStore()
  const { balance, fetchBalance } = usePointsStore()
  const { getTodayQuizCount, getTodayChallengeDone } = useQuizStore()
  const profile = useAuthStore(s => s.profile)
  const [quizCounts, setQuizCounts] = useState<Record<Subject, number>>({ chinese: 0, math: 0, english: 0 })
  const [challengeDone, setChallengeDone] = useState(false)

  useEffect(() => { fetchCompanion(); fetchToday(); fetchBalance() }, [fetchCompanion, fetchToday, fetchBalance])

  useEffect(() => {
    if (companion) {
      SUBJECTS.forEach(async (s) => { const count = await getTodayQuizCount(s); setQuizCounts(prev => ({ ...prev, [s]: count })) })
      getTodayChallengeDone().then(setChallengeDone)
    }
  }, [companion, getTodayQuizCount, getTodayChallengeDone])

  return (
    <div className="p-4 space-y-4">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-xl font-bold">{profile ? `Hi, ${profile.nickname}!` : '知识冒险'}</h1>
          {today && <StreakBadge count={today.streak_count} />}
        </div>
        <div className="text-right">
          <p className="text-sm text-gray-400">积分</p>
          <p className="text-lg font-bold text-kid-primary">{balance} ⭐</p>
        </div>
      </div>

      <CompanionDisplay />

      {/* Challenge Entry */}
      <motion.button
        whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.98 }}
        onClick={() => navigate('/challenge')}
        className={`w-full card flex items-center gap-4 bg-gradient-to-r from-orange-50 to-red-50 ${challengeDone ? 'opacity-60' : ''}`}>
        <span className="text-3xl">⚔️</span>
        <div className="flex-1 text-left">
          <p className="font-bold">每日挑战</p>
          <p className="text-sm text-gray-400">混合闯关 · 10题 · 通关+100积分</p>
        </div>
        {challengeDone ? <span className="text-2xl">✅</span> : <span className="text-kid-secondary font-bold text-sm">去挑战 →</span>}
      </motion.button>

      <div>
        <h2 className="font-bold mb-3">今日任务</h2>
        <div className="grid gap-3">
          {SUBJECTS.map(subject => (
            <DailyTaskCard key={subject} subject={subject} completed={quizCounts[subject]} total={DAILY_QUESTIONS_PER_SUBJECT} />
          ))}
        </div>
      </div>
    </div>
  )
}
