import { useState } from 'react'
import { motion } from 'framer-motion'
import { QuizProgressBar } from './QuizProgressBar'
import { ExplanationPanel } from './ExplanationPanel'
import type { Subject } from '../../lib/constants'
import type { Database } from '../../lib/database.types'
import { CheckCircle2 } from 'lucide-react'

type Question = Database['public']['Tables']['questions']['Row']

interface Props {
  question: Question
  questionNumber: number
  totalQuestions: number
  onAnswer: (questionId: string, answer: string) => boolean
}

export function MatchCard({ question, questionNumber, totalQuestions, onAnswer }: Props) {
  const [selectedLeft, setSelectedLeft] = useState<number | null>(null)
  const [pairs, setPairs] = useState<Array<{ left: number; right: number; correct: boolean }>>([])
  const content = question.content as { stem: string; left: string[]; right: string[]; matches: [number, number][]; explanation: string }

  const handleLeftClick = (index: number) => {
    if (pairs.some(p => p.left === index)) return
    setSelectedLeft(index)
  }

  const handleRightClick = (index: number) => {
    if (selectedLeft === null) return
    if (pairs.some(p => p.right === index)) return
    const isMatch = content.matches.some(([l, r]) => l === selectedLeft && r === index)
    const newPairs = [...pairs, { left: selectedLeft, right: index, correct: isMatch }]
    setPairs(newPairs)
    setSelectedLeft(null)

    if (newPairs.length === content.left.length) {
      const allCorrect = newPairs.every(p => p.correct)
      onAnswer(question.id, allCorrect ? 'correct' : 'wrong')
    }
  }

  const allDone = pairs.length === content.left.length
  const getRightBg = (index: number) => {
    const pair = pairs.find(p => p.right === index)
    if (!pair) return 'border-adventure-border bg-white hover:border-adventure-primary/40'
    return pair.correct ? 'border-emerald-400 bg-adventure-success-soft' : 'border-red-400 bg-adventure-danger-soft'
  }
  const getLeftBg = (index: number) => {
    if (selectedLeft === index) return 'border-adventure-primary bg-adventure-primary-soft'
    const pair = pairs.find(p => p.left === index)
    if (!pair) return 'border-adventure-border bg-white hover:border-adventure-primary/40'
    return pair.correct ? 'border-emerald-400 bg-adventure-success-soft' : 'border-red-400 bg-adventure-danger-soft'
  }

  return (
    <div className="px-4 py-5">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <div className="mt-4 rounded-[20px] border border-adventure-border bg-white p-5 shadow-xl shadow-slate-200/40 sm:p-6">
        <p className="mb-4 text-xl font-black leading-8 text-adventure-text">{content.stem}</p>
        <p className="mb-4 text-sm font-semibold text-adventure-muted">先选择左侧项目，再选择右侧对应答案。</p>
        <div className="grid grid-cols-2 gap-3 sm:gap-4">
          <div className="space-y-2">
            {content.left.map((item, i) => (
              <button key={`l-${i}`} onClick={() => handleLeftClick(i)}
                disabled={pairs.some(p => p.left === i)}
                className={`min-h-14 w-full rounded-[14px] border-2 p-3 text-left text-sm font-bold transition ${getLeftBg(i)}`}>
                <span className="flex items-center gap-2">{pairs.some(p => p.left === i) && <CheckCircle2 aria-hidden="true" className="h-4 w-4 shrink-0 text-emerald-600" />}{item}</span>
              </button>
            ))}
          </div>
          <div className="space-y-2">
            {content.right.map((item, i) => (
              <button key={`r-${i}`} onClick={() => handleRightClick(i)}
                disabled={pairs.some(p => p.right === i)}
                className={`min-h-14 w-full rounded-[14px] border-2 p-3 text-left text-sm font-bold transition ${getRightBg(i)}`}>
                <span className="flex items-center gap-2">{pairs.some(p => p.right === i) && <CheckCircle2 aria-hidden="true" className="h-4 w-4 shrink-0 text-emerald-600" />}{item}</span>
              </button>
            ))}
          </div>
        </div>
        {allDone && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }}
            className="overflow-hidden">
            <ExplanationPanel
              result={pairs.every(p => p.correct) ? 'correct' : 'wrong'}
              questionType="match"
              subject={question.subject as Subject}
              content={content}
            />
          </motion.div>
        )}
      </div>
    </div>
  )
}
