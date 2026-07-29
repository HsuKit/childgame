import { useEffect, useRef, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { Gift, Star } from 'lucide-react'
import { useCompanionStore } from '../stores/companionStore'
import { useCheckinStore } from '../stores/checkinStore'
import { usePointsStore } from '../stores/pointsStore'
import { useQuizStore } from '../stores/quizStore'
import { useAuthStore } from '../stores/authStore'
import { useMistakeStore } from '../stores/mistakeStore'
import { useWishStore } from '../stores/wishStore'
import { CompanionDisplay } from '../components/companion/CompanionDisplay'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { WishBalanceBadge } from '../components/wish/WishBalanceBadge'
import { getSubjectsNeedingCompletionSync } from '../lib/quizUtils'
import type { Subject } from '../lib/constants'
import { AdventureMap } from '../components/home/AdventureMap'
import { PageHeader } from '../components/ui/PageHeader'
import { Surface } from '../components/ui/Surface'

export default function HomePage() {
  const navigate = useNavigate()
  const fetchCompanion = useCompanionStore(s => s.fetchCompanion)
  const { today, fetchToday, markSubjectDone } = useCheckinStore()
  const { balance, fetchBalance } = usePointsStore()
  const { balance: wishBalance, rewards: wishRewards, redemptions: wishRedemptions, fetchWishData } = useWishStore()
  const { getTodayStats } = useQuizStore()
  const { mistakes, fetchMistakes } = useMistakeStore()
  const profile = useAuthStore(s => s.profile)
  const userId = useAuthStore(s => s.user?.id)
  const [quizCounts, setQuizCounts] = useState<Record<Subject, number>>({ chinese: 0, math: 0, english: 0 })
  const [challengeDone, setChallengeDone] = useState(false)
  const isSyncingCompletionRef = useRef(false)

  useEffect(() => {
    void Promise.all([fetchCompanion(), fetchToday(), fetchBalance(), fetchWishData()]).catch(() => {
      // Individual sections keep their safe initial state when a request fails.
    })
  }, [fetchCompanion, fetchToday, fetchBalance, fetchWishData])

  useEffect(() => {
    if (!userId) return
    let active = true
    getTodayStats()
      .then(stats => {
        if (!active) return
        setQuizCounts({ chinese: stats.chinese, math: stats.math, english: stats.english })
        setChallengeDone(stats.challengeDone)
      })
      .catch(() => {
        // Keep the zero-value fallback so the home page remains usable offline.
      })
    return () => { active = false }
  }, [userId, getTodayStats])

  useEffect(() => {
    if (!userId) return
    fetchMistakes().catch(() => undefined)
  }, [userId, fetchMistakes])

  useEffect(() => {
    if (!userId || isSyncingCompletionRef.current) return
    const subjects = getSubjectsNeedingCompletionSync(today, quizCounts)
    if (subjects.length === 0) return

    isSyncingCompletionRef.current = true
    ;(async () => {
      try {
        for (const subject of subjects) await markSubjectDone(subject)
        await fetchToday()
      } catch (error) {
        console.error(error)
      } finally {
        isSyncingCompletionRef.current = false
      }
    })()
  }, [fetchToday, markSubjectDone, quizCounts, today, userId])

  const needsCorrectionCount = mistakes.filter(item => item.status === 'needs_correction').length
  const reinforcingCount = mistakes.filter(item => item.status === 'reinforcing').length
  const hasActiveWish = wishRedemptions.some(item => (
    item.status === 'pending_parent_review' || item.status === 'approved_pending_fulfillment'
  ))
  const lowestWishCost = wishRewards.reduce<number | null>((lowest, reward) => (
    lowest === null ? reward.cost : Math.min(lowest, reward.cost)
  ), null)
  const wishProgressText = hasActiveWish
    ? '有愿望正在等待爸妈确认'
    : lowestWishCost !== null
      ? `最近的小愿望需要 ${Math.max(0, lowestWishCost - wishBalance.available)} 枚`
      : '完成三科练习获得愿望币'

  return (
    <div className="page-stack max-w-3xl">
      <PageHeader
        eyebrow="KNOWLEDGE ADVENTURE"
        title={profile ? `${profile.nickname}，今天去哪里冒险？` : '今天去哪里冒险？'}
        subtitle="完成三科主线，和伙伴一起点亮今日地图"
        trailing={(
          <button
            type="button"
            onClick={() => navigate('/shop')}
            aria-label={`星星积分 ${balance}，打开衣柜`}
            className="inline-flex min-h-11 items-center gap-1.5 rounded-full border border-amber-200 bg-adventure-reward-soft px-3 font-black text-amber-700"
          >
            <Star aria-hidden="true" className="h-4 w-4 fill-current" />
            <span className="tabular-nums">{balance}</span>
          </button>
        )}
      />

      <div className="flex flex-wrap items-center gap-2">
        {today && <StreakBadge count={today.streak_count} />}
        <button
          type="button"
          onClick={() => navigate('/parent-report')}
          className="min-h-9 rounded-full bg-white px-3 text-xs font-bold text-adventure-muted"
        >
          查看家长报告
        </button>
      </div>

      <CompanionDisplay compact />

      <AdventureMap
        progress={quizCounts}
        challengeDone={challengeDone}
        mistakes={needsCorrectionCount}
        reinforcing={reinforcingCount}
      />

      <button type="button" onClick={() => navigate('/wish-shop')} className="w-full text-left">
        <Surface className="flex min-w-0 items-center gap-3 border-amber-100 bg-adventure-reward-soft">
          <span className="grid h-11 w-11 shrink-0 place-items-center rounded-[14px] bg-white text-amber-600">
            <Gift aria-hidden="true" className="h-5 w-5" />
          </span>
          <div className="min-w-0 flex-1">
            <p className="font-extrabold">今日成长宝箱</p>
            <p className="mt-0.5 break-words text-xs text-adventure-muted">{wishProgressText}</p>
          </div>
          <WishBalanceBadge available={wishBalance.available} frozen={wishBalance.frozen} />
        </Surface>
      </button>
    </div>
  )
}
