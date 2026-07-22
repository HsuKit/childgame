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

export default function QuizResultPage() {
  const [params] = useSearchParams()
  const subject = (params.get('subject') || 'math') as Subject
  const navigate = useNavigate()
  const session = useQuizStore(s => s.sessions[subject])
  const { today, fetchToday, markSubjectDone } = useCheckinStore()
  const addPoints = usePointsStore(s => s.addPoints)
  const addExp = useCompanionStore(s => s.addExp)
  const saveQuizRecords = useQuizStore(s => s.saveQuizRecords)
  const [alreadyDone, setAlreadyDone] = useState(false)
  const [wishCoinsAwarded, setWishCoinsAwarded] = useState(0)
  const awardSettledRef = useRef(false)
  const wasAlreadyDoneAtResultRef = useRef(false)

  useEffect(() => { fetchToday() }, [fetchToday])

  useEffect(() => {
    if (!session || !session.isComplete) { navigate('/'); return }
    if (!today || awardSettledRef.current) return

    let cancelled = false

    const settleAward = async () => {
      const subjDone = subject === 'chinese' ? today.chinese_done : subject === 'math' ? today.math_done : today.english_done
      const awardState = getQuizResultAwardState({
        pointsEarned: session.pointsEarned,
        subjectWasAlreadyDone: Boolean(subjDone),
        awardSettled: awardSettledRef.current,
        wasAlreadyDoneAtResult: wasAlreadyDoneAtResultRef.current,
      })

      await saveQuizRecords(subject)
      if (cancelled) return

      awardSettledRef.current = true
      wasAlreadyDoneAtResultRef.current = awardState.wasAlreadyDoneAtResult
      setAlreadyDone(awardState.shouldShowAlreadyDoneNotice)

      if (awardState.shouldAwardPoints) {
        addPoints(session.pointsEarned, 'quiz_reward', session.questions[0]?.id ?? null)
        addExp(session.pointsEarned)
        const awarded = await markSubjectDone(subject)
        if (!cancelled) setWishCoinsAwarded(awarded)
      }
    }

    void settleAward()

    return () => { cancelled = true }
  }, [addExp, addPoints, markSubjectDone, navigate, saveQuizRecords, session, subject, today])

  if (!session) return null

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-6">
      {!alreadyDone && <PointsFlyAnimation amount={session.pointsEarned} />}
      <QuizResultPanel subject={subject} subjectLabel={SUBJECT_LABELS[subject]}
        correctCount={session.correctCount} totalQuestions={session.questions.length}
        pointsEarned={alreadyDone ? 0 : session.pointsEarned} maxCombo={session.comboCount} />
      {alreadyDone && (
        <div className="bg-amber-50 border border-amber-200 rounded-2xl p-4 mt-4 text-center">
          <p className="font-bold text-amber-700">📋 今天已完成，不再获得积分</p>
          <p className="text-xs text-amber-600 mt-1">每天每科只有第一次答题能获得积分哦</p>
        </div>
      )}
      {wishCoinsAwarded > 0 && (
        <div className="bg-sky-50 border border-sky-200 rounded-2xl p-4 mt-4 text-center">
          <p className="font-bold text-sky-700">今日坚持愿望币 +{wishCoinsAwarded}</p>
          <p className="text-xs text-sky-600 mt-1">坚持每天练习，小愿望会慢慢靠近</p>
        </div>
      )}
      <div className="flex gap-4 mt-6">
        <button onClick={() => navigate('/')} className="btn-primary">返回首页</button>
      </div>
    </div>
  )
}
