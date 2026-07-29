import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'
import { FocusQuizHeader } from '../components/quiz/FocusQuizHeader'
import { Button } from '../components/ui/Button'
import { StatePanel } from '../components/ui/StatePanel'

export default function ChallengePage() {
  const navigate = useNavigate()
  const { challengeSession, sessionError, startChallenge, answerChallengeQuestion, nextChallengeQuestion } = useQuizStore()
  const [error, setError] = useState(false)

  useEffect(() => {
    if (!challengeSession && !error) startChallenge().catch(() => setError(true))
  }, [challengeSession, startChallenge, error])

  useEffect(() => {
    if (challengeSession?.isComplete) navigate('/challenge/result')
  }, [challengeSession?.isComplete, navigate])

  if (error) {
    return (
      <div className="mx-auto max-w-2xl px-4 py-10">
        <StatePanel tone="error" title="挑战题目加载失败" message={sessionError || '请检查网络后重试'} actionLabel="返回冒险地图" onAction={() => navigate('/')} />
      </div>
    )
  }

  if (!challengeSession || challengeSession.questions.length === 0) {
    return <div className="mx-auto max-w-2xl px-4 py-10"><StatePanel tone="loading" title="正在准备挑战关卡" message="30 道混合题正在集结。" /></div>
  }

  if (challengeSession.isComplete) return null

  const q = challengeSession.questions[challengeSession.currentIndex]
  const answeredCount = challengeSession.records.length
  const hasAnsweredCurrentQuestion = challengeSession.records.some(record => record.question_id === q.id)

  return (
    <div className="min-h-dvh bg-adventure-bg">
      <FocusQuizHeader
        title="每日挑战"
        current={challengeSession.currentIndex + 1}
        total={challengeSession.questions.length}
        onExit={() => navigate('/')}
        detail={`通关目标 24 题 · 已答 ${answeredCount} 题 · 答对 ${challengeSession.correctCount} 题`}
      />
      <main className="mx-auto max-w-2xl pb-8">
        <QuizCard key={q.id} question={q} questionNumber={challengeSession.currentIndex + 1}
          totalQuestions={challengeSession.questions.length} onAnswer={answerChallengeQuestion} />
        <div className="px-4">
          <Button
            onClick={challengeSession.currentIndex < challengeSession.questions.length - 1
              ? nextChallengeQuestion
              : () => { nextChallengeQuestion(); navigate('/challenge/result') }}
            disabled={!hasAnsweredCurrentQuestion}
            className="w-full"
          >
            {!hasAnsweredCurrentQuestion
              ? '先完成这道题'
              : challengeSession.currentIndex < challengeSession.questions.length - 1 ? '继续下一题' : '查看挑战结果'}
          </Button>
        </div>
      </main>
    </div>
  )
}
