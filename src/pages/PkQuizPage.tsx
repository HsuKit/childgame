import { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'
import { SUBJECT_LABELS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import { FocusQuizHeader } from '../components/quiz/FocusQuizHeader'
import { Button } from '../components/ui/Button'
import { StatePanel } from '../components/ui/StatePanel'

export default function PkQuizPage() {
  const [params] = useSearchParams()
  const navigate = useNavigate()
  const challengeId = params.get('challenge')
  const subject = (params.get('subject') || 'math') as Subject
  const { sessions, startSession, answerQuestion, nextQuestion } = useQuizStore()
  const session = sessions[subject]
  const userId = useAuthStore(s => s.user?.id)
  const [finished, setFinished] = useState(false)

  useEffect(() => {
    if (!session && !finished) startSession(subject)
  }, [subject, session, startSession, finished])

  useEffect(() => {
    if (!session?.isComplete || finished) return
    setFinished(true)
    // Save score to challenge
    const save = async () => {
      if (!challengeId || !userId) return
      const { data: ch } = await supabase.from('pk_challenges').select('*').eq('id', challengeId).single()
      if (!ch) return
      const isCreator = ch.creator_id === userId
      const update = isCreator
        ? { creator_score: session.correctCount, status: ch.opponent_id ? 'completed' : 'waiting' }
        : { opponent_score: session.correctCount, status: 'completed', opponent_id: userId }
      await supabase.from('pk_challenges').update(update).eq('id', challengeId)
      navigate(`/pk/result?challenge=${challengeId}`)
    }
    save()
  }, [session?.isComplete, finished])

  if (!session || session.questions.length === 0) {
    return <div className="mx-auto max-w-2xl px-4 py-10"><StatePanel tone="loading" title="正在准备对战题目" message="保持专注，发挥你的最佳水平。" /></div>
  }

  if (session.isComplete) return null

  const q = session.questions[session.currentIndex]
  const hasAnsweredCurrentQuestion = session.records.some(record => record.question_id === q.id)

  return (
    <div className="min-h-dvh bg-adventure-bg">
      <FocusQuizHeader title={`${SUBJECT_LABELS[subject]}对战`} current={session.currentIndex + 1} total={session.questions.length} onExit={() => navigate('/pk')} detail="对战成绩将在完成后自动结算" />
      <main className="mx-auto max-w-2xl pb-8">
        <QuizCard key={q.id} question={q} questionNumber={session.currentIndex + 1}
          totalQuestions={session.questions.length} onAnswer={answerQuestion} />
        <div className="px-4">
          <Button
            onClick={() => nextQuestion()}
            disabled={!hasAnsweredCurrentQuestion}
            className="w-full"
          >
            {!hasAnsweredCurrentQuestion
              ? '先完成这道题'
              : session.currentIndex < session.questions.length - 1 ? '继续下一题' : '提交对战成绩'}
          </Button>
        </div>
      </main>
    </div>
  )
}
