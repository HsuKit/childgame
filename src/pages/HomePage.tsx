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
    <div className="p-4 space-y-5 pb-2">
      {/* Header */}
      <div className="flex items-center justify-between px-1">
        <div>
          <h1 className="text-2xl font-extrabold bg-gradient-to-r from-kid-primary to-kid-pink bg-clip-text text-transparent">
            {profile ? `Hi, ${profile.nickname}! 👋` : '知识冒险'}
          </h1>
          <div className="flex items-center gap-2 mt-1">
            {today && <StreakBadge count={today.streak_count} />}
          </div>
        </div>
        <motion.div
          whileTap={{ scale: 0.95 }}
          onClick={() => navigate('/shop')}
          className="flex items-center gap-2 glass px-4 py-2 rounded-full cursor-pointer"
        >
          <span className="text-xl">⭐</span>
          <span className="font-extrabold text-kid-primary text-lg">{balance}</span>
        </motion.div>
      </div>

      {/* Companion */}
      <CompanionDisplay />

      {/* Challenge */}
      {!challengeDone && (
        <motion.button
          whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.97 }}
          onClick={() => navigate('/challenge')}
          className="w-full bg-gradient-to-r from-orange-400 via-red-400 to-pink-400 rounded-3xl p-5 shadow-lg shadow-orange-200/40 text-white text-left"
        >
          <div className="flex items-center gap-4">
            <span className="text-4xl">⚔️</span>
            <div>
              <p className="font-extrabold text-lg">每日挑战</p>
              <p className="text-sm text-white/80">30题混合闯关 · 通关+100积分</p>
            </div>
            <span className="ml-auto text-2xl">→</span>
          </div>
        </motion.button>
      )}
      {challengeDone && (
        <div className="card bg-green-50 border border-green-100 text-center py-4">
          <p className="text-green-600 font-bold">✅ 今日挑战已完成! 明天再来!</p>
        </div>
      )}

      {/* Daily Tasks */}
      {/* PK Entry */}
      <motion.button
        whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.97 }}
        onClick={() => navigate('/pk')}
        className="w-full bg-gradient-to-r from-blue-400 to-cyan-400 rounded-3xl p-4 shadow-lg shadow-blue-200/40 text-white text-left">
        <div className="flex items-center gap-3">
          <span className="text-3xl">⚔️</span>
          <div>
            <p className="font-extrabold">好友对战</p>
            <p className="text-xs text-white/80">创建挑战码，和朋友一决高下</p>
          </div>
          <span className="ml-auto text-xl">→</span>
        </div>
      </motion.button>

      <div>
        <h2 className="font-extrabold text-lg mb-3 px-1">📝 今日任务</h2>
        <div className="grid gap-3">
          {SUBJECTS.map(subject => (
            <DailyTaskCard key={subject} subject={subject} completed={quizCounts[subject]} total={DAILY_QUESTIONS_PER_SUBJECT} />
          ))}
        </div>
      </div>
    </div>
  )
}
