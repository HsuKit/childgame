import { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'
import { SUBJECT_LABELS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import { FocusQuizHeader } from '../components/quiz/FocusQuizHeader'
import { Button } from '../components/ui/Button'
import { StatePanel } from '../components/ui/StatePanel'

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
      <div className="mx-auto max-w-2xl px-4 py-10">
        <StatePanel tone="error" title="题目加载失败" message={sessionError || '请检查网络后重试'} actionLabel="返回冒险地图" onAction={() => { setError(false); navigate('/') }} />
      </div>
    )
  }

  if (!session || session.questions.length === 0) {
    return <div className="mx-auto max-w-2xl px-4 py-10"><StatePanel tone="loading" title="正在准备题目" message="马上就能进入今天的学习关卡。" /></div>
  }

  if (session.isComplete) return null

  const q = session.questions[session.currentIndex]
  if (!q) {
    return <div className="mx-auto max-w-2xl px-4 py-10"><StatePanel tone="error" title="题目数据异常" message="这道题暂时无法显示。" actionLabel="返回冒险地图" onAction={() => navigate('/')} /></div>
  }
  const hasAnsweredCurrentQuestion = session.records.some(record => record.question_id === q.id)
  const title = `${SUBJECT_LABELS[subject]}关卡`

  return (
    <div className="min-h-dvh bg-adventure-bg">
      <FocusQuizHeader title={title} current={session.currentIndex + 1} total={session.questions.length} onExit={() => navigate('/')} />
      <main className="mx-auto max-w-2xl pb-8">
        <QuizCard key={q.id} question={q} questionNumber={session.currentIndex + 1}
          totalQuestions={session.questions.length} onAnswer={answerQuestion} />
        <div className="px-4">
          <Button
            onClick={session.currentIndex < session.questions.length - 1
              ? nextQuestion
              : () => { nextQuestion(); navigate(`/quiz/result?subject=${subject}`) }}
            disabled={!hasAnsweredCurrentQuestion}
            className="w-full"
          >
            {!hasAnsweredCurrentQuestion
              ? '先完成这道题'
              : session.currentIndex < session.questions.length - 1 ? '继续下一题' : '查看闯关结果'}
          </Button>
        </div>
      </main>
    </div>
  )
}
