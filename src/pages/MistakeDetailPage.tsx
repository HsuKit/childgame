import { useEffect, useMemo, useState } from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import { useMistakeStore } from '../stores/mistakeStore'
import { normalizeQuestionContent } from '../lib/questionContent'
import { isAnswerCorrect } from '../lib/quizUtils'
import { ExplanationPanel } from '../components/quiz/ExplanationPanel'
import type { Subject } from '../lib/constants'
import type { Json } from '../lib/database.types'
import { CheckCircle2, XCircle } from 'lucide-react'
import { FocusQuizHeader } from '../components/quiz/FocusQuizHeader'
import { Button } from '../components/ui/Button'
import { StatePanel } from '../components/ui/StatePanel'

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
  const [submitError, setSubmitError] = useState<string | null>(null)

  useEffect(() => { fetchMistakes().catch(() => undefined) }, [fetchMistakes])
  const mistake = useMemo(() => mistakes.find(item => item.id === id), [mistakes, id])
  const question = mistake?.question
  const normalizedContent = question ? normalizeQuestionContent(question.type, question.content) : null
  const content = question ? parseContent((normalizedContent ?? question.content) as Json) : null

  if (!mistake || !question || !content) {
    return <div className="mx-auto max-w-2xl px-4 py-10"><StatePanel tone="loading" title="正在加载错题" /></div>
  }

  const submit = async (selected: string | number) => {
    if (isSubmitting) return
    setIsSubmitting(true)
    setSubmitError(null)
    const correct = isAnswerCorrect(question.type, normalizedContent ?? question.content, selected)
    setAnswer(selected)
    setResult(correct ? 'correct' : 'wrong')
    try {
      await submitReview(mistake, selected, correct)
    } catch {
      setSubmitError('订正记录暂时没有保存成功，请稍后重试。')
    } finally {
      setIsSubmitting(false)
    }
  }

  return (
    <div className="min-h-dvh bg-adventure-bg">
      <FocusQuizHeader title="错题订正" current={1} total={1} onExit={() => navigate('/mistakes')} detail={`${question.knowledge_point || '未分类'} · 当前${mistake.status === 'needs_correction' ? '待订正' : mistake.status === 'reinforcing' ? '巩固中' : '已掌握'}`} />
      <main className="mx-auto max-w-2xl px-4 py-5">
      <section className="rounded-[20px] border border-adventure-border bg-white p-5 shadow-xl shadow-slate-200/40 sm:p-6">
        <p className="eyebrow">{question.knowledge_point}</p>
        <h2 className="mt-2 text-xl font-black leading-8 text-adventure-text">{content.stem}</h2>
        <p className="mt-2 text-xs font-semibold text-adventure-muted">累计答错 {mistake.wrong_count} 次</p>

        {question.type === 'choice' && content.options && (
          <div className="grid gap-3 mt-4">
            {content.options.map((option, index) => {
              const correctAnswer = result !== null && index === Number(content.answer)
              const wrongAnswer = result === 'wrong' && answer === index
              return (
                <button key={`${option}-${index}`} disabled={result !== null || isSubmitting} onClick={() => submit(index)}
                  className={`flex min-h-14 items-center rounded-[16px] border-2 p-4 text-left font-bold transition disabled:cursor-not-allowed ${
                    correctAnswer ? 'border-emerald-400 bg-adventure-success-soft text-emerald-900' :
                    wrongAnswer ? 'border-red-400 bg-adventure-danger-soft text-red-900' :
                    'border-adventure-border bg-white hover:border-adventure-primary/40'
                  }`}>
                  <span className="mr-3 grid h-8 w-8 shrink-0 place-items-center rounded-full bg-slate-50 text-sm font-black">{String.fromCharCode(65 + index)}</span>
                  <span className="flex-1">{option}</span>
                  {correctAnswer && <><CheckCircle2 aria-hidden="true" className="h-5 w-5 text-emerald-600" /><span className="sr-only">正确答案</span></>}
                  {wrongAnswer && <><XCircle aria-hidden="true" className="h-5 w-5 text-red-600" /><span className="sr-only">你的答案错误</span></>}
                </button>
              )
            })}
          </div>
        )}

        {question.type === 'fill' && (
          <div className="mt-4 space-y-3">
            <label htmlFor="mistake-answer" className="text-sm font-extrabold text-adventure-text">你的答案</label>
            <input id="mistake-answer" className="min-h-14 w-full rounded-[16px] border-2 border-adventure-border p-4 font-bold outline-none focus:border-adventure-primary"
              value={answer} onChange={event => setAnswer(event.target.value)} placeholder="输入答案" disabled={result !== null} />
            {!result && <Button className="w-full" disabled={isSubmitting || !String(answer).trim()} loading={isSubmitting} onClick={() => submit(answer)}>提交订正</Button>}
          </div>
        )}

        {(question.type === 'match' || question.type === 'grid') && (
          !result && <Button className="mt-4 w-full" disabled={isSubmitting} loading={isSubmitting} onClick={() => submit('correct')}>我看懂了</Button>
        )}

        {result && (
          <ExplanationPanel
            result={result}
            questionType={question.type}
            subject={question.subject as Subject}
            content={content}
            selectedAnswer={answer}
          />
        )}
        {submitError && <p role="alert" className="mt-4 rounded-[14px] bg-adventure-danger-soft p-3 text-sm font-bold text-red-700">{submitError}</p>}
        {result && <Button onClick={() => navigate('/mistakes')} className="mt-5 w-full">返回错题列表</Button>}
      </section>
      </main>
    </div>
  )
}
