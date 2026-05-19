import { useEffect, useState } from 'react'
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
  const { companion, fetchCompanion } = useCompanionStore()
  const { today, fetchToday } = useCheckinStore()
  const { balance, fetchBalance } = usePointsStore()
  const { getTodayQuizCount } = useQuizStore()
  const profile = useAuthStore(s => s.profile)
  const [quizCounts, setQuizCounts] = useState<Record<Subject, number>>({ chinese: 0, math: 0, english: 0 })

  useEffect(() => { fetchCompanion(); fetchToday(); fetchBalance() }, [fetchCompanion, fetchToday, fetchBalance])

  useEffect(() => {
    if (companion) {
      SUBJECTS.forEach(async (s) => { const count = await getTodayQuizCount(s); setQuizCounts(prev => ({ ...prev, [s]: count })) })
    }
  }, [companion, getTodayQuizCount])

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
