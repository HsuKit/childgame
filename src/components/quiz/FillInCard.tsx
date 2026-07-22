import { useState } from 'react'
import { motion } from 'framer-motion'
import { QuizProgressBar } from './QuizProgressBar'
import { ExplanationPanel } from './ExplanationPanel'
import type { Subject } from '../../lib/constants'
import type { Database } from '../../lib/database.types'

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
    <div className="px-4 py-6">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="card mt-4">
        <p className="text-lg font-bold mb-6">{content.stem}</p>
        <input
          type="text"
          placeholder="输入你的答案..."
          value={input}
          onChange={e => !submitted && setInput(e.target.value)}
          disabled={submitted}
          onKeyDown={e => e.key === 'Enter' && handleSubmit()}
          className={`w-full px-4 py-4 rounded-2xl border-2 text-lg text-center outline-none
            ${submitted
              ? result === 'correct' ? 'border-green-400 bg-green-50' : 'border-red-400 bg-red-50'
              : 'border-purple-200 focus:border-kid-primary'}`}
          autoFocus
        />
        {!submitted && (
          <button onClick={handleSubmit} disabled={!input.trim()}
            className="btn-primary w-full mt-4">确认答案</button>
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
      </motion.div>
    </div>
  )
}
