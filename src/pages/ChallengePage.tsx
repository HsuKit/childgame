import { useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'

export default function ChallengePage() {
  const navigate = useNavigate()
  const { challengeSession, startChallenge, answerChallengeQuestion, nextChallengeQuestion } = useQuizStore()

  useEffect(() => {
    if (!challengeSession) startChallenge()
  }, [challengeSession, startChallenge])

  useEffect(() => {
    if (challengeSession?.isComplete) navigate('/challenge/result')
  }, [challengeSession?.isComplete, navigate])

  if (!challengeSession || challengeSession.questions.length === 0) {
    return <div className="p-6 text-center"><div className="animate-bounce text-4xl mb-4">⚔️</div><p>正在准备挑战关卡...</p></div>
  }

  if (challengeSession.isComplete) return null

  const q = challengeSession.questions[challengeSession.currentIndex]

  return (
    <div>
      <div className="px-4 py-3 bg-gradient-to-r from-orange-100 to-red-100 border-b flex items-center justify-between">
        <button onClick={() => navigate('/')} className="text-kid-primary font-bold">← 退出</button>
        <h1 className="font-bold">⚔️ 每日挑战</h1>
        <div className="w-12" />
      </div>
      <div className="px-4 py-2 bg-yellow-50 text-center text-sm text-yellow-700">
        答对 8/10 题即通关，获得额外奖励! | 当前: {challengeSession.correctCount}/{challengeSession.currentIndex}
      </div>
      <QuizCard
        key={q.id}
        question={q}
        questionNumber={challengeSession.currentIndex + 1}
        totalQuestions={challengeSession.questions.length}
        onAnswer={answerChallengeQuestion}
      />
      {challengeSession.currentIndex < challengeSession.questions.length - 1 && (
        <div className="px-4"><button onClick={nextChallengeQuestion} className="btn-primary w-full">下一题 →</button></div>
      )}
      {challengeSession.currentIndex === challengeSession.questions.length - 1 && (
        <div className="px-4"><button onClick={() => { nextChallengeQuestion(); navigate('/challenge/result') }} className="btn-primary w-full bg-kid-success">查看结果! 🎉</button></div>
      )}
    </div>
  )
}
