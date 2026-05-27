import { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'
import { SUBJECT_LABELS } from '../lib/constants'
import type { Subject } from '../lib/constants'

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
    return <div className="p-6 text-center"><div className="animate-bounce text-4xl mb-4">⚔️</div><p>准备对战题目...</p></div>
  }

  if (session.isComplete) return null

  const q = session.questions[session.currentIndex]

  return (
    <div>
      <div className="px-4 py-3 bg-gradient-to-r from-red-100 to-orange-100 border-b flex items-center justify-between">
        <button onClick={() => navigate('/pk')} className="text-kid-primary font-bold">← 退出</button>
        <h1 className="font-bold">⚔️ {SUBJECT_LABELS[subject]}对战</h1>
        <div className="w-12" />
      </div>
      <QuizCard key={q.id} question={q} questionNumber={session.currentIndex + 1}
        totalQuestions={session.questions.length} onAnswer={answerQuestion} />
      {session.currentIndex < session.questions.length - 1 && (
        <div className="px-4"><button onClick={nextQuestion} className="btn-primary w-full">下一题 →</button></div>
      )}
      {session.currentIndex === session.questions.length - 1 && (
        <div className="px-4"><button onClick={() => { nextQuestion() }} className="btn-primary w-full bg-kid-success">查看结果! 🎉</button></div>
      )}
    </div>
  )
}
