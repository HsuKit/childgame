import { useEffect, useRef, useState } from 'react'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'
import { formatLocalDate, getCalendarCells, getMonthRange, isCurrentMonth, moveMonth } from '../lib/dateUtils'
import { BookOpen, Calculator, Check, ChevronLeft, ChevronRight, Clock3, Languages } from 'lucide-react'
import type { LucideIcon } from 'lucide-react'
import { PageHeader } from '../components/ui/PageHeader'
import { StatePanel } from '../components/ui/StatePanel'
import { Surface } from '../components/ui/Surface'

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

  if (isLoading || !today) return <StatePanel tone="loading" title="正在加载打卡记录" />

  const subjects: Array<{ key: 'chinese_done' | 'math_done' | 'english_done'; label: string; icon: LucideIcon }> = [
    { key: 'chinese_done', label: '语文', icon: BookOpen },
    { key: 'math_done', label: '数学', icon: Calculator },
    { key: 'english_done', label: '英语', icon: Languages },
  ]
  const allDone = today.chinese_done && today.math_done && today.english_done

  return (
    <div className="page-stack">
      <PageHeader eyebrow="学习记录" title="打卡日历" subtitle={allDone ? '今日三科已全部完成，继续保持！' : '完成三科练习，点亮今天的冒险记录。'} trailing={<StreakBadge count={today.streak_count} />} />

      {/* Calendar */}
      <Surface>
        <div className="flex items-center justify-between mb-3">
          <button onClick={() => goMonth(-1)} aria-label="查看上个月" className="grid min-h-11 min-w-11 place-items-center rounded-[14px] hover:bg-slate-100">
            <ChevronLeft aria-hidden="true" className="h-5 w-5" />
          </button>
          <h2 className="font-extrabold text-center">
            {year}年{month + 1}月
          </h2>
          <button onClick={() => goMonth(1)}
            aria-label="查看下个月"
            className={`grid min-h-11 min-w-11 place-items-center rounded-[14px] transition-colors ${viewingCurrentMonth ? 'cursor-default text-slate-300' : 'hover:bg-slate-100'}`}
            disabled={viewingCurrentMonth}>
            <ChevronRight aria-hidden="true" className="h-5 w-5" />
          </button>
        </div>
        {monthLoading && <p className="mb-2 text-center text-xs font-bold text-adventure-muted">正在加载日历...</p>}
        {monthError && <p className="mb-2 text-center text-xs font-bold text-red-600" role="alert">{monthError}</p>}
        <div className="grid grid-cols-7 gap-1 text-center text-xs">
          {['日', '一', '二', '三', '四', '五', '六'].map(d => (
            <div key={d} className="py-1 font-bold text-adventure-muted">{d}</div>
          ))}
          {cells.map((day, i) => {
            if (day === null) return <div key={`e${i}`} />
            const dateStr = `${year}-${String(month + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`
            const done = monthData[dateStr]
            const isToday = dateStr === todayStr
            return (
              <div key={day} aria-label={`${dateStr}${done ? '，已完成' : isToday ? '，今天未完成' : '，未打卡'}`}
                className={`flex aspect-square flex-col items-center justify-center rounded-[12px] text-sm font-bold transition-all
                  ${done ? 'bg-adventure-success-soft text-emerald-700' :
                    isToday ? 'bg-adventure-primary-soft text-adventure-primary ring-2 ring-adventure-primary/30' :
                    'bg-slate-50 text-adventure-muted'}`}>
                <span>{day}</span>
                {done && <Check aria-hidden="true" className="h-3.5 w-3.5" />}
              </div>
            )
          })}
        </div>
        <div className="mt-4 flex flex-wrap justify-center gap-4 text-xs font-semibold text-adventure-muted">
          <span className="flex items-center gap-1"><Check aria-hidden="true" className="h-3.5 w-3.5 text-emerald-600" />已完成</span>
          <span className="flex items-center gap-1"><span aria-hidden="true" className="h-2.5 w-2.5 rounded-full bg-adventure-primary" />今天</span>
          <span className="flex items-center gap-1"><span aria-hidden="true" className="h-2.5 w-2.5 rounded-full bg-slate-200" />未打卡</span>
        </div>
      </Surface>

      {/* Today Status */}
      <section>
        <h2 className="section-title mb-3">今日三科</h2>
      <div className="grid gap-3 md:grid-cols-3">
        {subjects.map(({ key, label, icon: Icon }) => (
          <Surface key={key} className={`flex items-center gap-3 p-4 ${today[key] ? 'border-emerald-200 bg-adventure-success-soft' : ''}`}>
            <Icon aria-hidden="true" className={`h-6 w-6 ${today[key] ? 'text-emerald-600' : 'text-adventure-primary'}`} />
            <span className="flex-1 font-bold text-adventure-text">{label}</span>
            {today[key] ? <Check aria-hidden="true" className="h-5 w-5 text-emerald-600" /> : <Clock3 aria-hidden="true" className="h-5 w-5 text-adventure-muted" />}
            <span className="sr-only">{today[key] ? '已完成' : '待完成'}</span>
          </Surface>
        ))}
      </div>
      </section>
    </div>
  )
}
