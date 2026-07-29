import { useState } from 'react'
import { motion } from 'framer-motion'
import { QuizProgressBar } from './QuizProgressBar'
import type { Database } from '../../lib/database.types'
import { Button } from '../ui/Button'
import { CheckCircle2, XCircle } from 'lucide-react'

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

  function isValidSudoku(grid: (number | null)[][]): boolean {
    // Check all cells filled
    for (let r = 0; r < 4; r++)
      for (let c = 0; c < 4; c++)
        if (grid[r][c] == null) return false
    // Check rows
    for (let r = 0; r < 4; r++) {
      const s = new Set(grid[r])
      if (s.size !== 4 || [...s].some(n => n! < 1 || n! > 4)) return false
    }
    // Check columns
    for (let c = 0; c < 4; c++) {
      const s = new Set([grid[0][c], grid[1][c], grid[2][c], grid[3][c]])
      if (s.size !== 4) return false
    }
    // Check 2x2 blocks
    for (let br = 0; br < 2; br++) {
      for (let bc = 0; bc < 2; bc++) {
        const s = new Set([
          grid[br*2][bc*2], grid[br*2][bc*2+1],
          grid[br*2+1][bc*2], grid[br*2+1][bc*2+1],
        ])
        if (s.size !== 4) return false
      }
    }
    return true
  }

  const handleSubmit = () => {
    if (!checkAllFilled()) return
    setSubmitted(true)
    const correct = isValidSudoku(userGrid)
    setResult(correct ? 'correct' : 'wrong')
    onAnswer(question.id, correct ? 'correct' : 'wrong')
  }

  return (
    <div className="px-4 py-5">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <div className="mt-4 rounded-[20px] border border-adventure-border bg-white p-5 shadow-xl shadow-slate-200/40 sm:p-6">
        <p className="mb-2 text-xl font-black leading-8 text-adventure-text">{content.stem}</p>
        <p className="mb-4 text-sm font-semibold leading-6 text-adventure-muted">每行、每列、每个 2×2 宫格都要有 1–4 各一个。点击空格切换数字。</p>

        <div className="grid grid-cols-4 gap-0.5 bg-gray-300 rounded-xl overflow-hidden w-64 h-64 mx-auto">
          {userGrid.map((row, r) =>
            row.map((cell, c) => {
              const isGiven = content.grid[r][c] !== null
              const isCorrect = submitted && result === 'correct'
              const isWrong = submitted && result === 'wrong' && !isGiven && cell !== null
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
          <Button onClick={handleSubmit} disabled={!checkAllFilled()} className="mt-4 w-full">提交答案</Button>
        )}

        {result && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }}
            className={`mt-4 rounded-[16px] border p-4 text-sm ${result === 'correct' ? 'border-emerald-200 bg-adventure-success-soft text-emerald-800' : 'border-red-200 bg-adventure-danger-soft text-red-800'}`}>
            <p className="flex items-center gap-2 font-extrabold">
              {result === 'correct' ? <CheckCircle2 aria-hidden="true" className="h-5 w-5" /> : <XCircle aria-hidden="true" className="h-5 w-5" />}
              {result === 'correct' ? '全部填对了，太厉害了！' : '有些格子不对，看看答案吧。'}
            </p>
            <p className="mt-1">{content.explanation}</p>
          </motion.div>
        )}
      </div>
    </div>
  )
}
