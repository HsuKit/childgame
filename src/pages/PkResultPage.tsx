import { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { motion } from 'framer-motion'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'

export default function PkResultPage() {
  const [params] = useSearchParams()
  const navigate = useNavigate()
  const challengeId = params.get('challenge')
  const userId = useAuthStore(s => s.user?.id)
  const [data, setData] = useState<any>(null)

  useEffect(() => {
    if (!challengeId) { navigate('/pk'); return }
    supabase.from('pk_challenges').select('*').eq('id', challengeId).single()
      .then(({ data }) => setData(data))
  }, [challengeId, navigate])

  if (!data) return <div className="p-6 text-center animate-pulse text-4xl">⚔️</div>

  const isCreator = data.creator_id === userId
  const myScore = isCreator ? data.creator_score : data.opponent_score
  const oppScore = isCreator ? data.opponent_score : data.creator_score
  const oppDone = data.opponent_score !== null
  const iWon = oppDone && myScore !== null && oppScore !== null && myScore > oppScore
  const tie = oppDone && myScore === oppScore

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-6">
      <motion.div initial={{ scale: 0.5, opacity: 0 }} animate={{ scale: 1, opacity: 1 }}
        className="card text-center w-full max-w-sm">
        <span className="text-6xl">{iWon ? '🏆' : tie ? '🤝' : oppDone ? '💪' : '⏳'}</span>
        <h2 className="text-2xl font-extrabold mt-3">
          {!oppDone ? '等待对手中...' : iWon ? '你赢了!' : tie ? '平局!' : '继续加油!'}
        </h2>

        <div className="grid grid-cols-2 gap-4 mt-6">
          <div className="bg-purple-50 rounded-2xl p-4">
            <p className="text-xs text-gray-400">我的分数</p>
            <p className="text-3xl font-extrabold text-kid-primary">{myScore ?? '?'}/10</p>
          </div>
          <div className="bg-gray-50 rounded-2xl p-4">
            <p className="text-xs text-gray-400">对手分数</p>
            <p className="text-3xl font-extrabold text-gray-500">{oppScore ?? '?'}/10</p>
          </div>
        </div>

        {!oppDone && (
          <div className="mt-4 p-4 bg-amber-50 rounded-2xl">
            <p className="font-bold text-amber-700">📋 等待对手完成答题...</p>
            <p className="text-xs text-amber-600 mt-1">挑战码已发给好友，等对方完成后刷新</p>
          </div>
        )}
      </motion.div>

      <button onClick={() => navigate('/pk')} className="btn-primary mt-6">返回对战</button>
    </div>
  )
}
