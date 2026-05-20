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

export function GridPuzzleCard({ question, questionNumber, totalQuestions, onAnswer }: Props) {
  const content = question.content as {
    stem: string
    grid: (number | null)[][]   // 4x4 grid, null = blank to fill
    solution: number[][]         // complete solution
    explanation: string
  }

  const [userGrid, setUserGrid] = useState<(number | null)[][]>(
    content.grid.map(row => [...row])
  )
  const [submitted, setSubmitted] = useState(false)
  const [result, setResult] = useState<'correct' | 'wrong' | null>(null)

  const emptyCells: Array<[number, number]> = []
  content.grid.forEach((row, r) => row.forEach((cell, c) => {
    if (cell === null) emptyCells.push([r, c])
  }))

  const handleCellClick = (r: number, c: number) => {
    if (submitted || content.grid[r][c] !== null) return
    const next = ((userGrid[r][c] || 0) % 4) + 1
    const newGrid = userGrid.map(row => [...row])
    newGrid[r][c] = next
    setUserGrid(newGrid)
  }

  const checkAllFilled = () => emptyCells.every(([r, c]) => userGrid[r][c] !== null)

  const handleSubmit = () => {
    if (!checkAllFilled()) return
    setSubmitted(true)
    let allCorrect = true
    for (let r = 0; r < 4; r++) {
      for (let c = 0; c < 4; c++) {
        if (userGrid[r]?.[c] !== content.solution[r]?.[c]) { allCorrect = false; break }
      }
    }
    setResult(allCorrect ? 'correct' : 'wrong')
    onAnswer(question.id, allCorrect ? 'correct' : 'wrong')
  }

  return (
    <div className="px-4 py-6">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="card mt-4">
        <p className="text-lg font-bold mb-2">{content.stem}</p>
        <p className="text-xs text-gray-400 mb-4">每行、每列、每个2×2宫格都要有1-4各一个！点击空格填入数字</p>

        <div className="grid grid-cols-4 gap-0.5 bg-gray-300 rounded-xl overflow-hidden w-64 h-64 mx-auto">
          {userGrid.map((row, r) =>
            row.map((cell, c) => {
              const isGiven = content.grid[r][c] !== null
              const isCorrect = submitted && content.solution[r][c] === cell
              const isWrong = submitted && !isCorrect && cell !== null
              return (
                <button
                  key={`${r}-${c}`}
                  onClick={() => handleCellClick(r, c)}
                  disabled={submitted}
                  className={`text-xl font-bold transition-all
                    ${isGiven ? 'bg-purple-100 text-kid-primary' : 'bg-white hover:bg-purple-50'}
                    ${isCorrect ? 'bg-green-100 text-green-600' : ''}
                    ${isWrong ? 'bg-red-100 text-red-500' : ''}
                    ${r === 1 ? 'border-b-2 border-gray-400' : ''}
                    ${c === 1 ? 'border-r-2 border-gray-400' : ''}
                  `}>
                  {cell || ''}
                </button>
              )
            })
          )}
        </div>

        {!submitted && (
          <button onClick={handleSubmit} disabled={!checkAllFilled()}
            className="btn-primary w-full mt-4">提交答案</button>
        )}

        {result && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }}
            className={`mt-4 p-3 rounded-xl text-sm ${result === 'correct' ? 'bg-green-50 text-green-700' : 'bg-red-50 text-red-700'}`}>
            {result === 'correct' ? '全部填对了! 太厉害了!' : '有些格子不对哦，看看答案吧!'}
            <p className="mt-1">{content.explanation}</p>
          </motion.div>
        )}
      </motion.div>
    </div>
  )
}
