import { useEffect, useMemo, useState } from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import { useMistakeStore } from '../stores/mistakeStore'
import { isAnswerCorrect } from '../lib/quizUtils'
import type { Json } from '../lib/database.types'

interface QuestionContent {
  stem: string
  options?: string[]
  answer?: string | number
  explanation?: string
}

function parseContent(content: Json): QuestionContent {
  if (!content || typeof content !== 'object' || Array.isArray(content)) {
    return { stem: '题目内容' }
  }
  return {
    stem: typeof content.stem === 'string' ? content.stem : '题目内容',
    options: Array.isArray(content.options) ? content.options.filter((item): item is string => typeof item === 'string') : undefined,
    answer: typeof content.answer === 'string' || typeof content.answer === 'number' ? content.answer : undefined,
    explanation: typeof content.explanation === 'string' ? content.explanation : undefined,
  }
}

export default function MistakeDetailPage() {
  const { id } = useParams()
  const navigate = useNavigate()
  const { mistakes, fetchMistakes, submitReview } = useMistakeStore()
  const [answer, setAnswer] = useState<string | number>('')
  const [result, setResult] = useState<'correct' | 'wrong' | null>(null)
  const [isSubmitting, setIsSubmitting] = useState(false)

  useEffect(() => { fetchMistakes().catch(() => undefined) }, [fetchMistakes])
  const mistake = useMemo(() => mistakes.find(item => item.id === id), [mistakes, id])
  const question = mistake?.question
  const content = question ? parseContent(question.content) : null

  if (!mistake || !question || !content) {
    return <div className="p-6 text-center"><p>正在加载错题...</p></div>
  }

  const submit = async (selected: string | number) => {
    if (isSubmitting) return
    setIsSubmitting(true)
    const correct = isAnswerCorrect(question.type, question.content, selected)
    setAnswer(selected)
    setResult(correct ? 'correct' : 'wrong')
    try {
      await submitReview(mistake, selected, correct)
    } finally {
      setIsSubmitting(false)
    }
  }

  return (
    <div className="p-4 space-y-4">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/mistakes')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold">错题订正</h1>
        <div className="w-12" />
      </div>

      <div className="card">
        <p className="text-xs text-gray-400">{question.knowledge_point}</p>
        <p className="text-lg font-extrabold mt-2">{content.stem}</p>
        <p className="text-xs text-gray-500 mt-2">当前状态：{mistake.status === 'needs_correction' ? '待订正' : mistake.status === 'reinforcing' ? '巩固中' : '已掌握'} · 错了 {mistake.wrong_count} 次</p>

        {question.type === 'choice' && content.options && (
          <div className="grid gap-3 mt-4">
            {content.options.map((option, index) => (
              <button key={`${option}-${index}`} disabled={result !== null || isSubmitting} onClick={() => submit(index)}
                className="rounded-2xl border-2 border-gray-100 bg-gray-50 p-4 text-left font-bold disabled:opacity-70">
                {String.fromCharCode(65 + index)}. {option}
              </button>
            ))}
          </div>
        )}

        {question.type === 'fill' && (
          <div className="mt-4 space-y-3">
            <input className="w-full rounded-2xl border-2 border-gray-100 p-4 outline-none"
              value={answer} onChange={event => setAnswer(event.target.value)} placeholder="输入答案" />
            <button className="btn-primary w-full" disabled={isSubmitting} onClick={() => submit(answer)}>提交订正</button>
          </div>
        )}

        {(question.type === 'match' || question.type === 'grid') && (
          <button className="btn-primary w-full mt-4" disabled={isSubmitting} onClick={() => submit('correct')}>我看懂了</button>
        )}

        {result && (
          <div className={`mt-4 rounded-2xl p-4 text-sm ${result === 'correct' ? 'bg-green-50 text-green-700' : 'bg-red-50 text-red-700'}`}>
            <p className="font-bold">{result === 'correct' ? '订正成功' : '再看一遍解析吧'}</p>
            <p className="mt-1">{content.explanation || '这道题暂时没有解析。'}</p>
          </div>
        )}
      </div>
    </div>
  )
}
