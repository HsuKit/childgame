import { useEffect } from 'react'
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
  const addPoints = usePointsStore(s => s.addPoints)
  const addExp = useCompanionStore(s => s.addExp)
  const markSubjectDone = useCheckinStore(s => s.markSubjectDone)

  useEffect(() => {
    if (!session || !session.isComplete) { navigate('/'); return }
    if (session.pointsEarned > 0) {
      addPoints(session.pointsEarned, 'quiz_reward', session.questions[0]?.id ?? null)
      addExp(session.pointsEarned)
    }
    markSubjectDone(subject)
  }, [])

  if (!session) return null

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-6">
      <PointsFlyAnimation amount={session.pointsEarned} />
      <QuizResultPanel subject={subject} subjectLabel={SUBJECT_LABELS[subject]}
        correctCount={session.correctCount} totalQuestions={session.questions.length}
        pointsEarned={session.pointsEarned} maxCombo={session.comboCount} />
      <div className="flex gap-4 mt-6">
        <button onClick={() => navigate('/')} className="btn-primary">返回首页</button>
      </div>
    </div>
  )
}
