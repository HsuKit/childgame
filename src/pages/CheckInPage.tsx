import { useEffect } from 'react'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'

export default function CheckInPage() {
  const { today, fetchToday, isLoading } = useCheckinStore()

  useEffect(() => { fetchToday() }, [fetchToday])

  if (isLoading || !today) return <div className="p-6 text-center animate-bounce">📅</div>

  const subjects = [
    { key: 'chinese_done' as const, label: '语文', emoji: '📖' },
    { key: 'math_done' as const, label: '数学', emoji: '🔢' },
    { key: 'english_done' as const, label: '英语', emoji: '🔤' },
  ]
  const allDone = today.chinese_done && today.math_done && today.english_done

  return (
    <div className="p-6">
      <div className="text-center mb-6">
        <StreakBadge count={today.streak_count} />
        <h1 className="text-xl font-bold mt-4">今日打卡</h1>
        {allDone && <p className="text-kid-success font-bold mt-2">🎉 全部完成! 获得 {today.bonus_points} 积分!</p>}
      </div>
      <div className="grid gap-4">
        {subjects.map(({ key, label, emoji }) => (
          <div key={key} className={`card flex items-center gap-4 ${today[key] ? 'bg-green-50' : ''}`}>
            <span className="text-3xl">{emoji}</span>
            <span className="font-bold flex-1">{label}</span>
            <span className="text-2xl">{today[key] ? '✅' : '⏳'}</span>
          </div>
        ))}
      </div>
    </div>
  )
}
