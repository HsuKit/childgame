import { useEffect, useState } from 'react'
import { motion } from 'framer-motion'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'

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
  const userId = useAuthStore(s => s.user?.id)

  useEffect(() => {
    const fetch = async () => {
      setLoading(true)
      const weekAgo = new Date(Date.now() - 7 * 86400000).toISOString()

      // Weekly: sum points in last 7 days
      const { data: wk } = await supabase.rpc('get_weekly_leaderboard', { since: weekAgo })
      // Total: sum all points
      const { data: all } = await supabase.rpc('get_total_leaderboard')

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
    fetch()
  }, [userId])

  const data = tab === 'weekly' ? weekly : total
  const medals = ['🥇', '🥈', '🥉']

  return (
    <div className="p-4 pb-6 space-y-4">
      <h1 className="text-2xl font-extrabold text-center bg-gradient-to-r from-yellow-400 to-orange-500 bg-clip-text text-transparent">
        🏆 排行榜
      </h1>

      {/* Tab toggle */}
      <div className="flex bg-gray-100 rounded-2xl p-1">
        {(['weekly', 'total'] as const).map(t => (
          <button key={t} onClick={() => setTab(t)}
            className={`flex-1 py-2 rounded-xl text-sm font-extrabold transition-all
              ${tab === t ? 'bg-white shadow text-kid-primary' : 'text-gray-400'}`}>
            {t === 'weekly' ? '📅 本周' : '👑 总榜'}
          </button>
        ))}
      </div>

      {loading ? (
        <div className="text-center py-10 animate-pulse text-4xl">🏆</div>
      ) : data.length === 0 ? (
        <div className="text-center py-10 text-gray-400">
          <p className="text-4xl mb-3">📭</p>
          <p>还没有数据，快去答题吧!</p>
        </div>
      ) : (
        <div className="space-y-2">
          {data.map((entry, i) => (
            <motion.div
              key={i}
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.05 }}
              className={`rounded-2xl p-4 flex items-center gap-3 ${
                entry.is_me ? 'bg-purple-50 border-2 border-purple-300' : 'bg-white border border-gray-100'
              } ${i < 3 ? 'shadow-md' : 'shadow-sm'}`}>
              {/* Rank */}
              <div className="w-8 text-center">
                {i < 3 ? (
                  <span className="text-2xl">{medals[i]}</span>
                ) : (
                  <span className="text-gray-400 font-bold">{i + 1}</span>
                )}
              </div>

              {/* Avatar */}
              <div className="w-10 h-10 rounded-full bg-gradient-to-br from-purple-100 to-pink-100 flex items-center justify-center text-lg">
                {getCompanionEmoji(entry.companion_type)}
              </div>

              {/* Info */}
              <div className="flex-1">
                <p className="font-extrabold text-sm">
                  {entry.nickname}
                  {entry.is_me && <span className="text-xs text-purple-500 ml-2">(我)</span>}
                </p>
              </div>

              {/* Points */}
              <div className="text-right">
                <p className="font-extrabold text-kid-primary">{entry.points.toLocaleString()}</p>
                <p className="text-xs text-gray-400">⭐</p>
              </div>
            </motion.div>
          ))}
        </div>
      )}
    </div>
  )
}
