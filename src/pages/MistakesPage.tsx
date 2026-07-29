import { ArrowRight, CheckCircle2, CircleDashed, RotateCcw } from 'lucide-react'
import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { Button } from '../components/ui/Button'
import { PageHeader } from '../components/ui/PageHeader'
import { StatePanel } from '../components/ui/StatePanel'
import type { Json, MistakeStatus } from '../lib/database.types'
import { useMistakeStore } from '../stores/mistakeStore'

const statusLabels: Record<MistakeStatus, string> = {
  needs_correction: '待订正',
  reinforcing: '巩固中',
  mastered: '已掌握',
}

const statusClasses: Record<MistakeStatus, string> = {
  needs_correction: 'border-amber-200 bg-adventure-warning-soft text-amber-700',
  reinforcing: 'border-indigo-200 bg-adventure-primary-soft text-adventure-primary',
  mastered: 'border-emerald-200 bg-adventure-success-soft text-emerald-700',
}

function getStem(content: Json) {
  return content && typeof content === 'object' && !Array.isArray(content) && typeof content.stem === 'string'
    ? content.stem
    : '题目内容'
}

export default function MistakesPage() {
  const navigate = useNavigate()
  const { mistakes, isLoading, error, fetchMistakes } = useMistakeStore()
  const [status, setStatus] = useState<'all' | MistakeStatus>('needs_correction')

  useEffect(() => { fetchMistakes().catch(() => undefined) }, [fetchMistakes])

  const filtered = useMemo(
    () => status === 'all' ? mistakes : mistakes.filter(item => item.status === status),
    [mistakes, status],
  )
  const counts = (['needs_correction', 'reinforcing', 'mastered'] as MistakeStatus[]).reduce<Record<string, number>>((result, value) => {
    result[value] = mistakes.filter(item => item.status === value).length
    return result
  }, { all: mistakes.length })

  return (
    <div className="page-stack">
      <PageHeader eyebrow="复习工坊" title="错题复习" subtitle="每次订正都会更新掌握状态，直到真正学会。" onBack={() => navigate('/')} backLabel="返回冒险地图" />

      <div className="grid grid-cols-2 gap-2 sm:grid-cols-4" role="tablist" aria-label="错题状态筛选">
        {(['needs_correction', 'reinforcing', 'mastered', 'all'] as const).map(value => (
          <button key={value} type="button" role="tab" aria-selected={status === value} onClick={() => setStatus(value)} className={`min-h-12 rounded-[14px] px-2 py-2 text-xs font-extrabold transition ${status === value ? 'bg-adventure-primary text-white shadow-lg shadow-indigo-200/50' : 'border border-adventure-border bg-white text-adventure-muted'}`}>
            {value === 'all' ? '全部' : statusLabels[value]}
            <span className={`ml-1 rounded-full px-1.5 py-0.5 ${status === value ? 'bg-white/20' : 'bg-slate-100'}`}>{counts[value] ?? 0}</span>
          </button>
        ))}
      </div>

      {isLoading && <StatePanel tone="loading" title="正在整理错题" />}
      {error && <StatePanel tone="error" title="错题加载失败" message={error} actionLabel="重新加载" onAction={() => void fetchMistakes().catch(() => undefined)} />}
      {!isLoading && !error && filtered.length === 0 && (
        <StatePanel tone="empty" title="这里暂时没有错题" message="完成答题后，做错的题会自动收进来。" actionLabel="回到冒险地图" onAction={() => navigate('/')} />
      )}

      <div className="grid gap-3">
        {filtered.map(item => (
          <button key={item.id} type="button" onClick={() => navigate(`/mistakes/${item.id}`)} className="group rounded-[18px] border border-adventure-border bg-white p-4 text-left transition hover:border-adventure-primary/35 hover:shadow-lg hover:shadow-slate-200/40">
            <div className="flex items-start gap-3">
              <span className={`grid h-10 w-10 shrink-0 place-items-center rounded-[13px] border ${statusClasses[item.status]}`}>
                {item.status === 'mastered' ? <CheckCircle2 aria-hidden="true" className="h-5 w-5" /> : item.status === 'reinforcing' ? <CircleDashed aria-hidden="true" className="h-5 w-5" /> : <RotateCcw aria-hidden="true" className="h-5 w-5" />}
              </span>
              <span className="min-w-0 flex-1">
                <span className="block text-xs font-bold text-adventure-muted">{item.question?.knowledge_point || '未分类'}</span>
                <span className="mt-1 block font-extrabold leading-6 text-adventure-text">{item.question ? getStem(item.question.content) : '题目内容'}</span>
                <span className="mt-2 block text-xs font-semibold text-adventure-muted">累计答错 {item.wrong_count} 次</span>
              </span>
              <span className="shrink-0 text-right">
                <span className={`inline-flex rounded-full border px-2.5 py-1 text-xs font-bold ${statusClasses[item.status]}`}>{statusLabels[item.status]}</span>
                <ArrowRight aria-hidden="true" className="ml-auto mt-3 h-4 w-4 text-adventure-muted transition group-hover:translate-x-1" />
              </span>
            </div>
          </button>
        ))}
      </div>

      {filtered.length > 0 && <Button variant="ghost" onClick={() => navigate('/')} className="w-full">返回冒险地图</Button>}
    </div>
  )
}
