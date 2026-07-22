import { buildExplanationContent } from '../../lib/explanationContent'
import type { Subject } from '../../lib/constants'
import type { Database } from '../../lib/database.types'

type QuestionType = Database['public']['Tables']['questions']['Row']['type']

type Props = {
  result: 'correct' | 'wrong'
  questionType: QuestionType
  subject?: Subject
  content: {
    stem?: string
    options?: string[]
    answer?: string | number
    explanation?: string
  }
  selectedAnswer?: string | number
}

export function ExplanationPanel({ result, questionType, subject, content, selectedAnswer }: Props) {
  const feedback = buildExplanationContent({ result, questionType, subject, content, selectedAnswer })
  const isCorrect = result === 'correct'

  return (
    <div className={`mt-4 rounded-2xl p-4 text-sm leading-relaxed ${isCorrect ? 'bg-green-50 text-green-800' : 'bg-red-50 text-red-800'}`}>
      <p className="text-base font-extrabold">{feedback.title}</p>

      {!isCorrect && feedback.selectedAnswer && (
        <p className="mt-2">
          <span className="font-bold">你的答案：</span>{feedback.selectedAnswer}
        </p>
      )}

      {feedback.correctAnswer && (
        <p className="mt-2">
          <span className="font-bold">正确答案：</span>{feedback.correctAnswer}
        </p>
      )}

      <div className="mt-3 space-y-2">
        <p>
          <span className="font-bold">为什么：</span>{feedback.reason}
        </p>
        <p>
          <span className="font-bold">下次这样想：</span>{feedback.tip}
        </p>
      </div>
    </div>
  )
}
