import { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCompanionStore } from '../stores/companionStore'
import { useCheckinStore } from '../stores/checkinStore'
import { QuizResultPanel } from '../components/quiz/QuizResultPanel'
import { PointsFlyAnimation } from '../components/common/PointsFlyAnimation'
import { SUBJECT_LABELS } from '../lib/constants'
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

  useEffect(() => { fetchToday() }, [fetchToday])

  useEffect(() => {
    if (!session || !session.isComplete) { navigate('/'); return }
    saveQuizRecords(subject)
    const subjDone = subject === 'chinese' ? today?.chinese_done : subject === 'math' ? today?.math_done : today?.english_done
    if (subjDone) {
      setAlreadyDone(true)
      // Still mark and save, but no points
    } else {
      if (session.pointsEarned > 0) {
        addPoints(session.pointsEarned, 'quiz_reward', session.questions[0]?.id ?? null)
        addExp(session.pointsEarned)
      }
      markSubjectDone(subject)
    }
  }, [today])

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
      <div className="flex gap-4 mt-6">
        <button onClick={() => navigate('/')} className="btn-primary">返回首页</button>
      </div>
    </div>
  )
}
