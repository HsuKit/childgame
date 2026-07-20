import { useEffect, useRef, useState } from 'react'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'
import { formatLocalDate, getCalendarCells, getMonthRange, isCurrentMonth, moveMonth } from '../lib/dateUtils'

export default function CheckInPage() {
  const { today, fetchToday, isLoading } = useCheckinStore()
  const userId = useAuthStore(s => s.user?.id)
  const [monthData, setMonthData] = useState<Record<string, boolean>>({})
  const [viewDate, setViewDate] = useState(() => new Date())
  const [monthLoading, setMonthLoading] = useState(false)
  const [monthError, setMonthError] = useState<string | null>(null)
  const requestIdRef = useRef(0)
  const viewingCurrentMonth = isCurrentMonth(viewDate)

  const goMonth = (delta: number) => {
    const target = moveMonth(viewDate, delta)
    if (target > new Date()) return
    setViewDate(target)
  }

  useEffect(() => { fetchToday() }, [fetchToday])

  useEffect(() => {
    if (!userId) return
    const requestId = ++requestIdRef.current
    const { start, end } = getMonthRange(viewDate)
    setMonthLoading(true)
    setMonthError(null)
    setMonthData({})
    void (async () => {
      try {
        const { data, error } = await supabase.from('check_ins').select('date,chinese_done,math_done,english_done')
          .eq('user_id', userId).gte('date', start).lte('date', end)
        if (requestId !== requestIdRef.current) return
        if (error) {
          setMonthError('日历加载失败，请稍后重试')
          return
        }
        const map: Record<string, boolean> = {}
        data?.forEach(r => { map[r.date] = r.chinese_done && r.math_done && r.english_done })
        setMonthData(map)
      } catch {
        if (requestId === requestIdRef.current) setMonthError('日历加载失败，请稍后重试')
      } finally {
        if (requestId === requestIdRef.current) setMonthLoading(false)
      }
    })()
    return () => {
      if (requestIdRef.current === requestId) requestIdRef.current += 1
    }
  }, [userId, viewDate])

  // Build calendar grid
  const year = viewDate.getFullYear()
  const month = viewDate.getMonth()
  const todayStr = formatLocalDate(new Date())
  const cells = getCalendarCells(viewDate)

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
        <div className="flex items-center justify-between mb-3">
          <button onClick={() => goMonth(-1)} aria-label="查看上个月" className="w-8 h-8 flex items-center justify-center rounded-full hover:bg-gray-100 text-lg transition-colors">
            ←
          </button>
          <h2 className="font-extrabold text-center">
            {year}年{month + 1}月
          </h2>
          <button onClick={() => goMonth(1)}
            aria-label="查看下个月"
            className={`w-8 h-8 flex items-center justify-center rounded-full text-lg transition-colors ${viewingCurrentMonth ? 'text-gray-300 cursor-default' : 'hover:bg-gray-100'}`}
            disabled={viewingCurrentMonth}>
            →
          </button>
        </div>
        {monthLoading && <p className="text-center text-xs text-gray-400 mb-2">正在加载日历...</p>}
        {monthError && <p className="text-center text-xs text-red-500 mb-2" role="alert">{monthError}</p>}
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
