import { useEffect, useState } from 'react'
import { motion } from 'framer-motion'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'
import { CalendarDays, Crown, Medal, Star, Trophy } from 'lucide-react'
import { PageHeader } from '../components/ui/PageHeader'
import { StatePanel } from '../components/ui/StatePanel'

interface RankEntry {
  nickname: string
  points: number
  companion_type: string
  is_me: boolean
}

function getCompanionEmoji(type: string): string {
  if (!type) return '🐣'
  if (type.includes('ranger') || type.includes('Ranger')) return '🏹'
  if (type.includes('warrior') || type.includes('Warrior')) return '⚔️'
  if (type.includes('mage') || type.includes('Oracle')) return '🔮'
  if (type.includes('minotaur') || type.includes('Minotaur')) return '🐂'
  if (type.includes('reaper') || type.includes('Reaper')) return '💀'
  if (type.includes('valkyrie') || type.includes('Valkyrie')) return '👼'
  if (type.includes('golem') || type.includes('Golem')) return '🪨'
  if (type.includes('angel') || type.includes('Angel')) return '😇'
  return '🐾'
}

export default function LeaderboardPage() {
  const [weekly, setWeekly] = useState<RankEntry[]>([])
  const [total, setTotal] = useState<RankEntry[]>([])
  const [tab, setTab] = useState<'weekly' | 'total'>('weekly')
  const [loading, setLoading] = useState(true)
  const [loadError, setLoadError] = useState<string | null>(null)
  const userId = useAuthStore(s => s.user?.id)

  useEffect(() => {
    const fetch = async () => {
      setLoading(true)
      setLoadError(null)
      const weekAgo = new Date(Date.now() - 7 * 86400000).toISOString()

      // Weekly: sum points in last 7 days
      const { data: wk, error: weeklyError } = await supabase.rpc('get_weekly_leaderboard', { since: weekAgo })
      // Total: sum all points
      const { data: all, error: totalError } = await supabase.rpc('get_total_leaderboard')

      if (weeklyError || totalError) {
        setLoadError('排行榜暂时无法加载，请稍后重试。')
        setLoading(false)
        return
      }

      const map = (rows: any[] | null) => (rows || []).map((r: any) => ({
        nickname: r.nickname || '神秘冒险者',
        points: Number(r.points) || 0,
        companion_type: r.companion_type || '',
        is_me: r.user_id === userId,
      }))

      setWeekly(map(wk))
      setTotal(map(all))
      setLoading(false)
    }
    void fetch()
  }, [userId])

  const data = tab === 'weekly' ? weekly : total
  const medalStyles = ['bg-amber-100 text-amber-700', 'bg-slate-200 text-slate-700', 'bg-orange-100 text-orange-700']

  return (
    <div className="page-stack">
      <PageHeader eyebrow="荣誉大厅" title="学习排行榜" subtitle="看看本周和累计冒险积分，找到下一次前进的目标。" trailing={<Trophy aria-hidden="true" className="h-7 w-7 text-amber-500" />} />

      {/* Tab toggle */}
      <div className="flex rounded-[16px] bg-slate-100 p-1" role="tablist" aria-label="排行榜范围">
        {(['weekly', 'total'] as const).map(t => (
          <button key={t} onClick={() => setTab(t)} role="tab" aria-selected={tab === t}
            className={`flex min-h-11 flex-1 items-center justify-center gap-2 rounded-[13px] py-2 text-sm font-extrabold transition-all
              ${tab === t ? 'bg-white text-adventure-primary shadow' : 'text-adventure-muted'}`}>
            {t === 'weekly' ? <CalendarDays aria-hidden="true" className="h-4 w-4" /> : <Crown aria-hidden="true" className="h-4 w-4" />}
            {t === 'weekly' ? '本周' : '总榜'}
          </button>
        ))}
      </div>

      {loading ? (
        <StatePanel tone="loading" title="正在加载排行榜" />
      ) : loadError ? (
        <StatePanel tone="error" title="排行榜加载失败" message={loadError} />
      ) : data.length === 0 ? (
        <StatePanel tone="empty" title="还没有排行数据" message="完成一次答题后，你的冒险积分会出现在这里。" />
      ) : (
        <div className="space-y-2" role="list" aria-label={tab === 'weekly' ? '本周排行榜' : '总排行榜'}>
          {data.map((entry, i) => (
            <motion.div
              key={i}
              role="listitem"
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.05 }}
              className={`flex items-center gap-3 rounded-[18px] p-4 ${
                entry.is_me ? 'border-2 border-adventure-primary bg-adventure-primary-soft' : 'border border-adventure-border bg-white'
              } ${i < 3 ? 'shadow-lg shadow-slate-200/40' : 'shadow-sm'}`}>
              {/* Rank */}
              <div className="w-8 text-center">
                {i < 3 ? (
                  <span className={`mx-auto grid h-8 w-8 place-items-center rounded-full ${medalStyles[i]}`}>
                    <Medal aria-hidden="true" className="h-4 w-4" />
                    <span className="sr-only">第 {i + 1} 名</span>
                  </span>
                ) : (
                  <span className="text-gray-400 font-bold">{i + 1}</span>
                )}
              </div>

              {/* Avatar */}
              <div className="flex h-10 w-10 items-center justify-center rounded-full bg-gradient-to-br from-purple-100 to-pink-100 text-lg" aria-hidden="true">
                {getCompanionEmoji(entry.companion_type)}
              </div>

              {/* Info */}
              <div className="flex-1">
                <p className="text-sm font-extrabold text-adventure-text">
                  {entry.nickname}
                  {entry.is_me && <span className="ml-2 rounded-full bg-white px-2 py-0.5 text-xs text-adventure-primary">我</span>}
                </p>
              </div>

              {/* Points */}
              <div className="text-right">
                <p className="font-extrabold text-adventure-primary">{entry.points.toLocaleString()}</p>
                <p className="flex items-center justify-end gap-1 text-xs text-adventure-muted"><Star aria-hidden="true" className="h-3 w-3" />积分</p>
              </div>
            </motion.div>
          ))}
        </div>
      )}
    </div>
  )
}
