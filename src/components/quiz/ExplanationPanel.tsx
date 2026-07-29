import { buildExplanationContent } from '../../lib/explanationContent'
import type { Subject } from '../../lib/constants'
import type { Database } from '../../lib/database.types'
import { CheckCircle2, Lightbulb, XCircle } from 'lucide-react'

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
    <div
      role="status"
      className={`mt-5 rounded-[16px] border p-4 text-sm leading-relaxed ${
        isCorrect
          ? 'border-emerald-200 bg-adventure-success-soft text-emerald-900'
          : 'border-red-200 bg-adventure-danger-soft text-red-900'
      }`}
    >
      <p className="flex items-center gap-2 text-base font-extrabold">
        {isCorrect
          ? <CheckCircle2 aria-hidden="true" className="h-5 w-5 text-emerald-600" />
          : <XCircle aria-hidden="true" className="h-5 w-5 text-red-600" />}
        {feedback.title}
      </p>

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

      <div className="mt-3 space-y-2 border-t border-current/10 pt-3">
        <p>
          <span className="font-bold">为什么：</span>{feedback.reason}
        </p>
        <p className="flex items-start gap-1.5">
          <Lightbulb aria-hidden="true" className="mt-0.5 h-4 w-4 shrink-0" />
          <span>
          <span className="font-bold">下次这样想：</span>{feedback.tip}
          </span>
        </p>
      </div>
    </div>
  )
}
