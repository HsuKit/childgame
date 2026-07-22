import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'

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
      <div className="p-6 text-center">
        <p className="text-4xl mb-4">😵</p>
        <p className="font-bold mb-2">挑战题目加载失败</p>
        <p className="text-sm text-gray-500 mb-4">{sessionError || '请检查网络后重试'}</p>
        <button onClick={() => navigate('/')} className="btn-primary">返回首页</button>
      </div>
    )
  }

  if (!challengeSession || challengeSession.questions.length === 0) {
    return <div className="p-6 text-center"><div className="animate-bounce text-4xl mb-4">⚔️</div><p>正在准备挑战关卡...</p></div>
  }

  if (challengeSession.isComplete) return null

  const q = challengeSession.questions[challengeSession.currentIndex]
  const answeredCount = challengeSession.records.length
  const hasAnsweredCurrentQuestion = challengeSession.records.some(record => record.question_id === q.id)

  return (
    <div>
      <div className="px-4 py-3 bg-gradient-to-r from-orange-100 to-red-100 border-b flex items-center justify-between">
        <button onClick={() => navigate('/')} className="text-kid-primary font-bold">← 退出</button>
        <h1 className="font-bold">⚔️ 每日挑战</h1>
        <div className="w-12" />
      </div>
      <div className="px-4 py-2 bg-yellow-50 text-center text-sm text-yellow-700">
        答对 24/30 题即通关，获得额外奖励! | 已答 {answeredCount}/30 · 正确 {challengeSession.correctCount}
      </div>
      <QuizCard
        key={q.id}
        question={q}
        questionNumber={challengeSession.currentIndex + 1}
        totalQuestions={challengeSession.questions.length}
        onAnswer={answerChallengeQuestion}
      />
      {challengeSession.currentIndex < challengeSession.questions.length - 1 && (
        <div className="px-4">
          <button
            onClick={nextChallengeQuestion}
            disabled={!hasAnsweredCurrentQuestion}
            className={`btn-primary w-full ${hasAnsweredCurrentQuestion ? '' : 'opacity-50 cursor-not-allowed'}`}
          >
            {hasAnsweredCurrentQuestion ? '下一题 →' : '先选一个答案'}
          </button>
        </div>
      )}
      {challengeSession.currentIndex === challengeSession.questions.length - 1 && (
        <div className="px-4">
          <button
            onClick={() => { nextChallengeQuestion(); navigate('/challenge/result') }}
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
