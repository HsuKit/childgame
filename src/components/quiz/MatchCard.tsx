import { useState } from 'react'
import { motion } from 'framer-motion'
import { QuizProgressBar } from './QuizProgressBar'
import type { Database } from '../../lib/database.types'

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
    if (!pair) return 'bg-gray-50 hover:bg-purple-50'
    return pair.correct ? 'bg-green-100 border-green-400' : 'bg-red-100 border-red-400'
  }
  const getLeftBg = (index: number) => {
    if (selectedLeft === index) return 'bg-purple-100 border-purple-400'
    const pair = pairs.find(p => p.left === index)
    if (!pair) return 'bg-gray-50 hover:bg-purple-50'
    return pair.correct ? 'bg-green-100 border-green-400' : 'bg-red-100 border-red-400'
  }

  return (
    <div className="px-4 py-6">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="card mt-4">
        <p className="text-lg font-bold mb-4">{content.stem}</p>
        <div className="grid grid-cols-2 gap-4">
          <div className="space-y-2">
            {content.left.map((item, i) => (
              <button key={`l-${i}`} onClick={() => handleLeftClick(i)}
                disabled={pairs.some(p => p.left === i)}
                className={`w-full p-3 rounded-xl border-2 text-sm font-medium transition-colors text-left ${getLeftBg(i)}`}>
                {pairs.some(p => p.left === i) ? '✅ ' : ''}{item}
              </button>
            ))}
          </div>
          <div className="space-y-2">
            {content.right.map((item, i) => (
              <button key={`r-${i}`} onClick={() => handleRightClick(i)}
                disabled={pairs.some(p => p.right === i)}
                className={`w-full p-3 rounded-xl border-2 text-sm font-medium transition-colors text-left ${getRightBg(i)}`}>
                {pairs.some(p => p.right === i) ? '✅ ' : ''}{item}
              </button>
            ))}
          </div>
        </div>
        {allDone && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }}
            className={`mt-4 p-3 rounded-xl text-sm ${pairs.every(p => p.correct) ? 'bg-green-50 text-green-700' : 'bg-red-50 text-red-700'}`}>
            {pairs.every(p => p.correct) ? '全部配对正确! 太棒了!' : '有些配对不正确哦，看看答案吧!'}
            <p className="mt-1">{content.explanation}</p>
          </motion.div>
        )}
      </motion.div>
    </div>
  )
}
