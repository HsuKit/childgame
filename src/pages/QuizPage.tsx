import { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'
import { SUBJECT_LABELS } from '../lib/constants'
import type { Subject } from '../lib/constants'

export default function QuizPage() {
  const [params] = useSearchParams()
  const subject = (params.get('subject') || 'math') as Subject
  const navigate = useNavigate()
  const { sessions, sessionError, startSession, answerQuestion, nextQuestion } = useQuizStore()
  const session = sessions[subject]
  const [error, setError] = useState(false)

  useEffect(() => {
    if (!session && !error) {
      startSession(subject).catch(() => setError(true))
    }
  }, [subject, session, startSession, error])

  useEffect(() => {
    if (session?.isComplete) navigate(`/quiz/result?subject=${subject}`)
  }, [session?.isComplete, subject, navigate])

  if (error) {
    return (
      <div className="p-6 text-center">
        <p className="text-4xl mb-4">😵</p>
        <p className="font-bold mb-2">题目加载失败</p>
        <p className="text-sm text-gray-500 mb-4">{sessionError || '请检查网络后重试'}</p>
        <button onClick={() => { setError(false); navigate('/') }} className="btn-primary">返回首页</button>
      </div>
    )
  }

  if (!session || session.questions.length === 0) {
    return <div className="p-6 text-center"><div className="animate-bounce text-4xl mb-4">📚</div><p>正在准备题目...</p></div>
  }

  if (session.isComplete) return null

  const q = session.questions[session.currentIndex]
  if (!q) {
    return <div className="p-6 text-center"><p className="text-4xl mb-4">❓</p><p>题目数据异常</p>
      <button onClick={() => navigate('/')} className="btn-primary mt-4">返回首页</button></div>
  }
  const hasAnsweredCurrentQuestion = session.records.some(record => record.question_id === q.id)
  const nextButtonClass = `btn-primary w-full ${hasAnsweredCurrentQuestion ? '' : 'opacity-50 cursor-not-allowed'}`

  return (
    <div>
      <div className="px-4 py-3 bg-white border-b flex items-center justify-between">
        <button onClick={() => navigate('/')} className="text-kid-primary font-bold">← 退出</button>
        <h1 className="font-bold">{SUBJECT_LABELS[subject]}答题</h1>
        <div className="w-12" />
      </div>
      <QuizCard key={q.id} question={q} questionNumber={session.currentIndex + 1}
        totalQuestions={session.questions.length} onAnswer={answerQuestion} />
      {session.currentIndex < session.questions.length - 1 && (
        <div className="px-4">
          <button onClick={nextQuestion} disabled={!hasAnsweredCurrentQuestion} className={nextButtonClass}>
            {hasAnsweredCurrentQuestion ? '下一题 →' : '先选一个答案'}
          </button>
        </div>
      )}
      {session.currentIndex === session.questions.length - 1 && (
        <div className="px-4">
          <button
            onClick={() => { nextQuestion(); navigate(`/quiz/result?subject=${subject}`) }}
            disabled={!hasAnsweredCurrentQuestion}
            className={`btn-primary w-full bg-kid-success ${hasAnsweredCurrentQuestion ? '' : 'opacity-50 cursor-not-allowed'}`}
          >
            {hasAnsweredCurrentQuestion ? '查看结果! 🎉' : '先选一个答案'}
          </button>
        </div>
      )}
    </div>
  )
}
