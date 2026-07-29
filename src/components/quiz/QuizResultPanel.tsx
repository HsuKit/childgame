import type { Subject } from '../../lib/constants'
import { Flame, Star, Target } from 'lucide-react'
import { Surface } from '../ui/Surface'

interface Props {
  subject: Subject; subjectLabel: string; correctCount: number
  totalQuestions: number; pointsEarned: number; maxCombo: number
}

export function QuizResultPanel({ subject, subjectLabel, correctCount, totalQuestions, pointsEarned, maxCombo }: Props) {
  void subject
  void subjectLabel

  return (
    <div className="grid grid-cols-3 gap-2 sm:gap-3">
      <Surface className="p-3 text-center sm:p-4">
        <Target aria-hidden="true" className="mx-auto h-5 w-5 text-emerald-600" />
        <p className="mt-1 text-xs font-bold text-adventure-muted">答对</p>
        <p className="mt-1 text-lg font-black text-adventure-text">{correctCount}/{totalQuestions}</p>
      </Surface>
      <Surface className="p-3 text-center sm:p-4">
        <Flame aria-hidden="true" className="mx-auto h-5 w-5 text-orange-500" />
        <p className="mt-1 text-xs font-bold text-adventure-muted">最高连击</p>
        <p className="mt-1 text-lg font-black text-adventure-text">{maxCombo}</p>
      </Surface>
      <Surface className="p-3 text-center sm:p-4">
        <Star aria-hidden="true" className="mx-auto h-5 w-5 text-amber-500" />
        <p className="mt-1 text-xs font-bold text-adventure-muted">本次积分</p>
        <p className="mt-1 text-lg font-black text-adventure-text">{pointsEarned}</p>
      </Surface>
    </div>
  )
}
