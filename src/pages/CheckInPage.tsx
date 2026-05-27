import { useEffect, useState } from 'react'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'

export default function CheckInPage() {
  const { today, fetchToday, isLoading } = useCheckinStore()
  const userId = useAuthStore(s => s.user?.id)
  const [monthData, setMonthData] = useState<Record<string, boolean>>({})
  const [viewDate] = useState(() => new Date())

  useEffect(() => { fetchToday() }, [fetchToday])

  useEffect(() => {
    if (!userId) return
    const year = viewDate.getFullYear()
    const month = viewDate.getMonth()
    const start = new Date(year, month, 1).toISOString().slice(0, 10)
    const end = new Date(year, month + 1, 0).toISOString().slice(0, 10)
    supabase.from('check_ins').select('date,chinese_done,math_done,english_done')
      .eq('user_id', userId).gte('date', start).lte('date', end)
      .then(({ data }) => {
        if (!data) return
        const map: Record<string, boolean> = {}
        data.forEach(r => { map[r.date] = r.chinese_done && r.math_done && r.english_done })
        setMonthData(map)
      })
  }, [userId, viewDate.getMonth()])

  // Build calendar grid
  const year = viewDate.getFullYear()
  const month = viewDate.getMonth()
  const firstDay = new Date(year, month, 1).getDay()
  const daysInMonth = new Date(year, month + 1, 0).getDate()
  const todayStr = new Date().toISOString().slice(0, 10)
  const cells: (number | null)[] = Array.from({ length: firstDay }, () => null)
  for (let d = 1; d <= daysInMonth; d++) cells.push(d)

  if (isLoading || !today) return <div className="p-6 text-center animate-bounce text-4xl">📅</div>

  const subjects = [
    { key: 'chinese_done' as const, label: '语文', emoji: '📖' },
    { key: 'math_done' as const, label: '数学', emoji: '🔢' },
    { key: 'english_done' as const, label: '英语', emoji: '🔤' },
  ]
  const allDone = today.chinese_done && today.math_done && today.english_done

  return (
    <div className="p-4 space-y-5 pb-6">
      {/* Header */}
      <div className="text-center">
        <StreakBadge count={today.streak_count} />
        <h1 className="text-xl font-extrabold mt-3">打卡日历</h1>
        {allDone && <p className="text-kid-success font-bold mt-1">🎉 今日全部完成!</p>}
      </div>

      {/* Calendar */}
      <div className="card">
        <h2 className="font-extrabold text-center mb-3">
          {year}年{month + 1}月
        </h2>
        <div className="grid grid-cols-7 gap-1 text-center text-xs">
          {['日', '一', '二', '三', '四', '五', '六'].map(d => (
            <div key={d} className="font-bold text-gray-400 py-1">{d}</div>
          ))}
          {cells.map((day, i) => {
            if (day === null) return <div key={`e${i}`} />
            const dateStr = `${year}-${String(month + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`
            const done = monthData[dateStr]
            const isToday = dateStr === todayStr
            return (
              <div key={day}
                className={`aspect-square rounded-xl flex flex-col items-center justify-center font-bold text-sm transition-all
                  ${done ? 'bg-green-100 text-green-600' :
                    isToday ? 'bg-purple-100 text-purple-600 ring-2 ring-purple-300' :
                    'bg-gray-50 text-gray-400'}`}>
                <span>{day}</span>
                {done && <span className="text-xs">✅</span>}
              </div>
            )
          })}
        </div>
        <div className="flex justify-center gap-6 mt-4 text-xs text-gray-400">
          <span>✅ 已完成</span>
          <span>🟣 今天</span>
          <span>⬜ 未打卡</span>
        </div>
      </div>

      {/* Today Status */}
      <div className="grid gap-3">
        {subjects.map(({ key, label, emoji }) => (
          <div key={key} className={`card flex items-center gap-4 ${today[key] ? 'bg-green-50 border border-green-200' : ''}`}>
            <span className="text-3xl">{emoji}</span>
            <span className="font-bold flex-1">{label}</span>
            <span className="text-2xl">{today[key] ? '✅' : '⏳'}</span>
          </div>
        ))}
      </div>
    </div>
  )
}
