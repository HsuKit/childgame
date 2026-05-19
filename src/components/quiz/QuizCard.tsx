import { useState } from 'react'
import { motion } from 'framer-motion'
import { QuizProgressBar } from './QuizProgressBar'
import type { Database } from '../../lib/database.types'

type Question = Database['public']['Tables']['questions']['Row']

interface Props {
  question: Question
  questionNumber: number
  totalQuestions: number
  onAnswer: (questionId: string, selectedIndex: number) => boolean
}

export function QuizCard({ question, questionNumber, totalQuestions, onAnswer }: Props) {
  const [selected, setSelected] = useState<number | null>(null)
  const [result, setResult] = useState<'correct' | 'wrong' | null>(null)
  const content = question.content as { stem: string; options: string[]; answer: number; explanation: string }

  const handleSelect = (index: number) => {
    if (selected !== null) return
    setSelected(index)
    const isCorrect = onAnswer(question.id, index)
    setResult(isCorrect ? 'correct' : 'wrong')
  }

  return (
    <div className="px-4 py-6">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="card mt-4">
        <p className="text-lg font-bold mb-6">{content.stem}</p>
        <div className="grid gap-3">
          {content.options.map((option, i) => {
            let bg = 'bg-gray-50 hover:bg-purple-50'
            if (selected === i) {
              bg = result === 'correct' ? 'bg-green-100 border-green-400' : 'bg-red-100 border-red-400'
            } else if (selected !== null && i === content.answer) {
              bg = 'bg-green-100 border-green-400'
            }
            return (
              <motion.button key={i} whileTap={selected === null ? { scale: 0.97 } : {}}
                onClick={() => handleSelect(i)} disabled={selected !== null}
                className={`p-4 rounded-2xl border-2 text-left font-medium transition-colors ${bg}`}>
                <span className="inline-block w-8 h-8 rounded-full bg-white text-center leading-8 mr-3 text-sm font-bold">
                  {String.fromCharCode(65 + i)}
                </span>
                {option}
              </motion.button>
            )
          })}
        </div>
        {result && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }}
            className={`mt-4 p-3 rounded-xl text-sm ${result === 'correct' ? 'bg-green-50 text-green-700' : 'bg-red-50 text-red-700'}`}>
            {result === 'correct' ? '太棒了!' : '没关系，记住答案哦!'}
            <p className="mt-1">{content.explanation}</p>
          </motion.div>
        )}
      </motion.div>
    </div>
  )
}
