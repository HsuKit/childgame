import { useEffect, useRef, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCompanionStore } from '../stores/companionStore'
import { useCheckinStore } from '../stores/checkinStore'
import { QuizResultPanel } from '../components/quiz/QuizResultPanel'
import { PointsFlyAnimation } from '../components/common/PointsFlyAnimation'
import { SUBJECT_LABELS } from '../lib/constants'
import { getQuizResultAwardState } from '../lib/quizUtils'
import type { Subject } from '../lib/constants'
import { ResultHero, type SettlementStatus } from '../components/results/ResultHero'
import { Button } from '../components/ui/Button'

export default function QuizResultPage() {
  const [params] = useSearchParams()
  const subject = (params.get('subject') || 'math') as Subject
  const navigate = useNavigate()
  const session = useQuizStore(s => s.sessions[subject])
  const { today, fetchToday, markSubjectDone } = useCheckinStore()
  const addPoints = usePointsStore(s => s.addPoints)
  const addExp = useCompanionStore(s => s.addExp)
  const saveQuizRecords = useQuizStore(s => s.saveQuizRecords)
  const startSession = useQuizStore(s => s.startSession)
  const [alreadyDone, setAlreadyDone] = useState(false)
  const [wishCoinsAwarded, setWishCoinsAwarded] = useState(0)
  const [settlementStatus, setSettlementStatus] = useState<SettlementStatus>('settling')
  const [settlementAttempt, setSettlementAttempt] = useState(0)
  const [isRestarting, setIsRestarting] = useState(false)
  const [restartError, setRestartError] = useState<string | null>(null)
  const awardSettledRef = useRef(false)
  const wasAlreadyDoneAtResultRef = useRef(false)
  const mountedRef = useRef(true)

  useEffect(() => { fetchToday() }, [fetchToday])

  useEffect(() => () => { mountedRef.current = false }, [])

  useEffect(() => {
    if (!session || !session.isComplete) { navigate('/'); return }
    if (!today || awardSettledRef.current) return

    awardSettledRef.current = true

    const settleAward = async () => {
      setSettlementStatus('settling')
      const subjDone = subject === 'chinese' ? today.chinese_done : subject === 'math' ? today.math_done : today.english_done
      const awardState = getQuizResultAwardState({
        pointsEarned: session.pointsEarned,
        subjectWasAlreadyDone: Boolean(subjDone),
        awardSettled: false,
        wasAlreadyDoneAtResult: wasAlreadyDoneAtResultRef.current,
      })
      wasAlreadyDoneAtResultRef.current = awardState.wasAlreadyDoneAtResult

      try {
        await saveQuizRecords(subject)

        if (mountedRef.current) setAlreadyDone(awardState.shouldShowAlreadyDoneNotice)
        if (awardState.shouldAwardPoints) {
          await addPoints(session.pointsEarned, 'quiz_reward', session.questions[0]?.id ?? null)
          await addExp(session.pointsEarned)
        }

        if (awardState.shouldSettleSubjectCompletion) {
          const awarded = await markSubjectDone(subject)
          if (mountedRef.current) setWishCoinsAwarded(awarded)
        }
        if (mountedRef.current) setSettlementStatus('success')
      } catch (error) {
        console.error(error)
        awardSettledRef.current = false
        if (mountedRef.current) setSettlementStatus('error')
      }
    }

    void settleAward()
  }, [addExp, addPoints, markSubjectDone, navigate, saveQuizRecords, session, settlementAttempt, subject, today])

  if (!session) return null

  const restartPractice = async () => {
    if (settlementStatus !== 'success' || isRestarting) return
    setIsRestarting(true)
    setRestartError(null)
    try {
      await startSession(subject)
      navigate(`/quiz?subject=${subject}`)
    } catch (error) {
      console.error(error)
      if (mountedRef.current) setRestartError('新题组加载失败，请检查网络后重试。')
    } finally {
      if (mountedRef.current) setIsRestarting(false)
    }
  }

  return (
    <div className="min-h-dvh bg-adventure-bg px-4 py-8 sm:py-12">
      {!alreadyDone && settlementStatus === 'success' && <PointsFlyAnimation amount={session.pointsEarned} />}
      <main className="mx-auto w-full max-w-lg space-y-4">
      <ResultHero
        score={session.correctCount}
        total={session.questions.length}
        status={settlementStatus}
        points={alreadyDone ? 0 : session.pointsEarned}
        experience={alreadyDone ? 0 : session.pointsEarned}
        title={`${SUBJECT_LABELS[subject]}关卡完成`}
        subtitle="每一次认真作答，都会让冒险地图更明亮。"
        onRetry={() => setSettlementAttempt(value => value + 1)}
      />
      <QuizResultPanel subject={subject} subjectLabel={SUBJECT_LABELS[subject]}
        correctCount={session.correctCount} totalQuestions={session.questions.length}
        pointsEarned={alreadyDone ? 0 : session.pointsEarned} maxCombo={session.comboCount} />
      {alreadyDone && (
        <div className="rounded-[16px] border border-amber-200 bg-adventure-warning-soft p-4 text-center">
          <p className="font-extrabold text-amber-800">今天已完成，本次不重复获得积分</p>
          <p className="mt-1 text-xs font-semibold text-amber-700">每天每科第一次完成可获得奖励。</p>
        </div>
      )}
      {wishCoinsAwarded > 0 && (
        <div className="rounded-[16px] border border-sky-200 bg-sky-50 p-4 text-center">
          <p className="font-extrabold text-sky-800">今日坚持愿望币 +{wishCoinsAwarded}</p>
          <p className="mt-1 text-xs font-semibold text-sky-700">坚持每天练习，小愿望会慢慢靠近。</p>
        </div>
      )}
      <div className="grid gap-3 pt-2 sm:grid-cols-2">
        <Button onClick={() => navigate('/')}>返回冒险地图</Button>
        <Button
          variant="ghost"
          onClick={() => { void restartPractice() }}
          loading={isRestarting}
          disabled={settlementStatus !== 'success'}
        >
          再练一组
        </Button>
      </div>
      {restartError && <p role="alert" className="text-center text-sm font-bold text-red-700">{restartError}</p>}
      </main>
    </div>
  )
}
