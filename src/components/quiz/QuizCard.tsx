import type { Database } from '../../lib/database.types'
import { normalizeQuestionContent } from '../../lib/questionContent'
import { useState } from 'react'
import { motion } from 'framer-motion'
import { FillInCard } from './FillInCard'
import { MatchCard } from './MatchCard'
import { GridPuzzleCard } from './GridPuzzleCard'
import { QuizProgressBar } from './QuizProgressBar'
import { ExplanationPanel } from './ExplanationPanel'
import type { Subject } from '../../lib/constants'
import { CheckCircle2, XCircle } from 'lucide-react'

type Question = Database['public']['Tables']['questions']['Row']

interface Props {
  question: Question
  questionNumber: number
  totalQuestions: number
  onAnswer: (questionId: string, selectedIndex: string | number) => boolean
}

export function QuizCard({ question, questionNumber, totalQuestions, onAnswer }: Props) {
  if (question.type === 'fill') {
    return <FillInCard question={question} questionNumber={questionNumber} totalQuestions={totalQuestions} onAnswer={onAnswer} />
  }
  if (question.type === 'match') {
    return <MatchCard question={question} questionNumber={questionNumber} totalQuestions={totalQuestions} onAnswer={onAnswer} />
  }
  if (question.type === 'grid') {
    return <GridPuzzleCard question={question} questionNumber={questionNumber} totalQuestions={totalQuestions} onAnswer={onAnswer} />
  }

  return <ChoiceCard question={question} questionNumber={questionNumber} totalQuestions={totalQuestions} onAnswer={onAnswer} />
}

function ChoiceCard({ question, questionNumber, totalQuestions, onAnswer }: {
  question: Question; questionNumber: number; totalQuestions: number
  onAnswer: (questionId: string, selectedIndex: string | number) => boolean
}) {
  const [selected, setSelected] = useState<number | null>(null)
  const [result, setResult] = useState<'correct' | 'wrong' | null>(null)
  const content = normalizeQuestionContent('choice', question.content) as { stem?: string; options: string[]; answer: number; explanation?: string } | null

  if (!content) {
    return (
      <div className="px-4 py-5">
        <QuizProgressBar current={questionNumber} total={totalQuestions} />
        <div className="mt-4 rounded-[20px] border border-adventure-border bg-white p-5 shadow-xl shadow-slate-200/40">
          <p className="text-lg font-bold text-red-600">这道题暂时不可作答，请进入下一题。</p>
        </div>
      </div>
    )
  }

  const handleSelect = (index: number) => {
    if (selected !== null) return
    setSelected(index)
    const isCorrect = onAnswer(question.id, index)
    setResult(isCorrect ? 'correct' : 'wrong')
  }

  return (
    <div className="px-4 py-5">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />
      <div className="mt-4 rounded-[20px] border border-adventure-border bg-white p-5 shadow-xl shadow-slate-200/40 sm:p-6">
        <p className="mb-6 text-xl font-black leading-8 text-adventure-text">{content.stem}</p>
        <div className="grid gap-3">
          {content.options.map((option, i) => {
            let stateClass = 'border-adventure-border bg-white hover:border-adventure-primary/40 hover:bg-adventure-primary-soft/30'
            if (selected === i) {
              stateClass = result === 'correct' ? 'border-emerald-400 bg-adventure-success-soft text-emerald-900' : 'border-red-400 bg-adventure-danger-soft text-red-900'
            } else if (selected !== null && i === content.answer) {
              stateClass = 'border-emerald-400 bg-adventure-success-soft text-emerald-900'
            }
            const isCorrectAnswer = selected !== null && i === content.answer
            const isWrongAnswer = selected === i && result === 'wrong'
            return (
              <motion.button key={i} whileTap={selected === null ? { scale: 0.97 } : {}}
                onClick={() => handleSelect(i)} disabled={selected !== null}
                className={`flex min-h-14 w-full items-center rounded-[16px] border-2 px-4 py-3 text-left font-bold transition disabled:cursor-not-allowed ${stateClass}`}>
                <span className="mr-3 grid h-8 w-8 shrink-0 place-items-center rounded-full bg-white text-sm font-black shadow-sm">
                  {String.fromCharCode(65 + i)}
                </span>
                <span className="flex-1">{option}</span>
                {isCorrectAnswer && <><CheckCircle2 aria-hidden="true" className="ml-2 h-5 w-5 shrink-0 text-emerald-600" /><span className="sr-only">正确答案</span></>}
                {isWrongAnswer && <><XCircle aria-hidden="true" className="ml-2 h-5 w-5 shrink-0 text-red-600" /><span className="sr-only">你的答案错误</span></>}
              </motion.button>
            )
          })}
        </div>
        {result && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }}
            className="overflow-hidden">
            <ExplanationPanel
              result={result}
              questionType="choice"
              subject={question.subject as Subject}
              content={content}
              selectedAnswer={selected ?? undefined}
            />
          </motion.div>
        )}
      </div>
    </div>
  )
}
