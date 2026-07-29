import { useState } from 'react'
import { motion } from 'framer-motion'
import { QuizProgressBar } from './QuizProgressBar'
import { ExplanationPanel } from './ExplanationPanel'
import type { Subject } from '../../lib/constants'
import type { Database } from '../../lib/database.types'
import { Button } from '../ui/Button'

type Question = Database['public']['Tables']['questions']['Row']

interface Props {
  question: Question
  questionNumber: number
  totalQuestions: number
  onAnswer: (questionId: string, answer: string) => boolean
}

export function FillInCard({ question, questionNumber, totalQuestions, onAnswer }: Props) {
  const [input, setInput] = useState('')
  const [submitted, setSubmitted] = useState(false)
  const [result, setResult] = useState<'correct' | 'wrong' | null>(null)
  const content = question.content as { stem: string; answer: string; explanation: string }

  const handleSubmit = () => {
    if (!input.trim() || submitted) return
    setSubmitted(true)
    const isCorrect = onAnswer(question.id, input.trim())
    setResult(isCorrect ? 'correct' : 'wrong')
  }

  return (
    <div className="px-4 py-5">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <div className="mt-4 rounded-[20px] border border-adventure-border bg-white p-5 shadow-xl shadow-slate-200/40 sm:p-6">
        <p className="mb-6 text-xl font-black leading-8 text-adventure-text">{content.stem}</p>
        <input
          type="text"
          placeholder="输入你的答案..."
          value={input}
          onChange={e => !submitted && setInput(e.target.value)}
          disabled={submitted}
          onKeyDown={e => e.key === 'Enter' && handleSubmit()}
          className={`min-h-14 w-full rounded-[16px] border-2 px-4 py-4 text-center text-lg font-bold outline-none transition
            ${submitted
              ? result === 'correct' ? 'border-emerald-400 bg-adventure-success-soft' : 'border-red-400 bg-adventure-danger-soft'
              : 'border-adventure-border bg-white focus:border-adventure-primary'}`}
          autoFocus
        />
        {!submitted && (
          <Button onClick={handleSubmit} disabled={!input.trim()} className="mt-4 w-full">确认答案</Button>
        )}
        {result && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }}
            className="overflow-hidden">
            <ExplanationPanel
              result={result}
              questionType="fill"
              subject={question.subject as Subject}
              content={content}
              selectedAnswer={input.trim()}
            />
          </motion.div>
        )}
      </div>
    </div>
  )
}
