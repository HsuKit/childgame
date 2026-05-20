import { useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { motion } from 'framer-motion'
import { useQuizStore } from '../stores/quizStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCompanionStore } from '../stores/companionStore'
import { PointsFlyAnimation } from '../components/common/PointsFlyAnimation'

export default function ChallengeResultPage() {
  const navigate = useNavigate()
  const session = useQuizStore(s => s.challengeSession)
  const addPoints = usePointsStore(s => s.addPoints)
  const addExp = useCompanionStore(s => s.addExp)
  const saveChallengeRecords = useQuizStore(s => s.saveChallengeRecords)

  useEffect(() => {
    if (!session || !session.isComplete) { navigate('/'); return }
    saveChallengeRecords()
    if (session.pointsEarned > 0) {
      addPoints(session.pointsEarned, 'challenge_reward', session.questions[0]?.id ?? null)
      addExp(session.pointsEarned * 2)
    }
    if (session.passed) {
      addPoints(100, 'challenge_bonus')
      const markChallengeDone = async () => {
        const { supabase } = await import('../lib/supabase')
        const { useAuthStore } = await import('../stores/authStore')
        const userId = useAuthStore.getState().user?.id
        if (!userId) return
        const today = new Date().toISOString().slice(0, 10)
        await supabase.from('check_ins').update({ challenge_done: true }).eq('user_id', userId).eq('date', today)
      }
      markChallengeDone()
    }
  }, [])

  if (!session) return null

  const passed = session.passed
  const bonusPoints = passed ? 100 : 0

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-6">
      <PointsFlyAnimation amount={session.pointsEarned + bonusPoints} />

      <motion.div initial={{ scale: 0.5, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} className="card text-center w-full max-w-sm">
        <span className="text-6xl">{passed ? '🏆' : '💪'}</span>
        <h2 className="text-2xl font-bold mt-2">{passed ? '恭喜通关!' : '继续加油!'}</h2>

        <div className="my-4">
          <span className="text-5xl font-bold text-kid-primary">{session.correctCount}/10</span>
        </div>

        <div className="grid grid-cols-2 gap-3 text-sm">
          <div className="bg-gray-50 rounded-xl p-3">
            <p className="text-gray-400">正确</p>
            <p className="text-xl font-bold text-kid-success">{session.correctCount}</p>
          </div>
          <div className="bg-gray-50 rounded-xl p-3">
            <p className="text-gray-400">最高连击</p>
            <p className="text-xl font-bold text-kid-warning">{session.comboCount}🔥</p>
          </div>
          <div className="bg-gray-50 rounded-xl p-3">
            <p className="text-gray-400">答题积分</p>
            <p className="text-2xl font-bold text-kid-primary">{session.pointsEarned} ⭐</p>
          </div>
          <div className={`bg-gray-50 rounded-xl p-3 ${passed ? 'bg-yellow-50' : ''}`}>
            <p className="text-gray-400">{passed ? '通关奖励' : '通关所需'}</p>
            <p className="text-2xl font-bold text-kid-warning">
              {passed ? `+${bonusPoints} ⭐` : `${8 - session.correctCount}题`}
            </p>
          </div>
        </div>
      </motion.div>

      <div className="flex gap-4 mt-6">
        <button onClick={() => navigate('/')} className="btn-primary">返回首页</button>
      </div>
    </div>
  )
}
