import { ProgressBar } from '../ui/ProgressBar'

export function QuizProgressBar({ current, total }: { current: number; total: number }) {
  return (
    <ProgressBar
      value={current}
      max={total}
      label={`题目进度 ${current}/${total}`}
      className="h-2"
      barClassName="bg-adventure-primary"
    />
  )
}
