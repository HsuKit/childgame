import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCompanionStore } from '../stores/companionStore'
import { PointsFlyAnimation } from '../components/common/PointsFlyAnimation'
import { formatChallengeScore } from '../lib/quizUtils'
import { ResultHero, type SettlementStatus } from '../components/results/ResultHero'
import { QuizResultPanel } from '../components/quiz/QuizResultPanel'
import { Button } from '../components/ui/Button'

export default function ChallengeResultPage() {
  const navigate = useNavigate()
  const session = useQuizStore(s => s.challengeSession)
  const addPoints = usePointsStore(s => s.addPoints)
  const addExp = useCompanionStore(s => s.addExp)
  const saveChallengeRecords = useQuizStore(s => s.saveChallengeRecords)
  const challengeDone = useQuizStore(s => s.getTodayChallengeDone)
  const [alreadyDone, setAlreadyDone] = useState(false)
  const [settlementStatus, setSettlementStatus] = useState<SettlementStatus>('settling')
  const [settlementAttempt, setSettlementAttempt] = useState(0)

  useEffect(() => {
    if (!session || !session.isComplete) { navigate('/'); return }
    let active = true
    const settle = async () => {
      setSettlementStatus('settling')
      try {
        const done = await challengeDone()
        if (done) {
          if (active) {
            setAlreadyDone(true)
            setSettlementStatus('success')
          }
          return
        }
        await saveChallengeRecords()
        if (session.pointsEarned > 0) {
          await addPoints(session.pointsEarned, 'challenge_reward', session.questions[0]?.id ?? null)
          await addExp(session.pointsEarned * 2)
        }
        if (session.passed) {
          await addPoints(200, 'challenge_bonus')
          const { supabase } = await import('../lib/supabase')
          const { useAuthStore } = await import('../stores/authStore')
          const userId = useAuthStore.getState().user?.id
          if (userId) {
            const today = new Date().toISOString().slice(0, 10)
            await supabase.from('check_ins').update({ challenge_done: true }).eq('user_id', userId).eq('date', today)
          }
        }
        if (active) setSettlementStatus('success')
      } catch (error) {
        console.error(error)
        if (active) setSettlementStatus('error')
      }
    }
    void settle()
    return () => { active = false }
  }, [addExp, addPoints, challengeDone, navigate, saveChallengeRecords, session, settlementAttempt])

  if (!session) return null

  const passed = session.passed
  const bonusPoints = passed ? 200 : 0

  return (
    <div className="min-h-dvh bg-adventure-bg px-4 py-8 sm:py-12">
      {!alreadyDone && settlementStatus === 'success' && <PointsFlyAnimation amount={session.pointsEarned + bonusPoints} />}
      <main className="mx-auto w-full max-w-lg space-y-4">
      <ResultHero
        score={session.correctCount}
        total={session.questions.length}
        status={settlementStatus}
        points={alreadyDone ? 0 : session.pointsEarned + bonusPoints}
        experience={alreadyDone ? 0 : session.pointsEarned * 2}
        title={passed ? '每日挑战通关' : '挑战完成，继续前进'}
        subtitle={passed ? '你已达到 24 题通关目标。' : `本次还差 ${Math.max(0, 24 - session.correctCount)} 题通关。`}
        onRetry={() => setSettlementAttempt(value => value + 1)}
      />
      <QuizResultPanel subject="math" subjectLabel="每日挑战" correctCount={session.correctCount}
        totalQuestions={session.questions.length} pointsEarned={alreadyDone ? 0 : session.pointsEarned + bonusPoints}
        maxCombo={session.comboCount} />
      <p className="sr-only">{formatChallengeScore(session.correctCount, session.questions.length)}</p>

      {alreadyDone && (
        <div className="rounded-[16px] border border-amber-200 bg-adventure-warning-soft p-4 text-center">
          <p className="font-extrabold text-amber-800">今天已完成挑战，本次不重复获得积分</p>
        </div>
      )}

      <div className="grid gap-3 pt-2 sm:grid-cols-2">
        <Button onClick={() => navigate('/')}>返回冒险地图</Button>
        <Button variant="ghost" onClick={() => navigate('/challenge')}>再次挑战</Button>
      </div>
      </main>
    </div>
  )
}
