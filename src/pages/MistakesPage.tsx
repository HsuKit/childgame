import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useMistakeStore } from '../stores/mistakeStore'
import type { Json, MistakeStatus } from '../lib/database.types'

const statusLabels: Record<MistakeStatus, string> = {
  needs_correction: '待订正',
  reinforcing: '巩固中',
  mastered: '已掌握',
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

  return (
    <div className="p-4 space-y-4">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold text-kid-text">错题复习</h1>
        <div className="w-12" />
      </div>

      <div className="grid grid-cols-4 gap-2">
        {(['needs_correction', 'reinforcing', 'mastered', 'all'] as const).map(value => (
          <button key={value} onClick={() => setStatus(value)}
            className={`rounded-2xl px-2 py-2 text-xs font-bold ${status === value ? 'bg-kid-primary text-white' : 'bg-gray-100 text-gray-500'}`}>
            {value === 'all' ? '全部' : statusLabels[value]}
          </button>
        ))}
      </div>

      {isLoading && <p className="text-center text-gray-400 py-8">正在整理错题...</p>}
      {error && <p className="text-center text-red-400 py-8">{error}</p>}
      {!isLoading && filtered.length === 0 && (
        <div className="card text-center py-8">
          <p className="text-4xl mb-2">✅</p>
          <p className="font-bold text-kid-text">这里暂时没有错题</p>
          <p className="text-xs text-gray-400 mt-1">答题后出现的错题会自动收进来</p>
        </div>
      )}

      <div className="grid gap-3">
        {filtered.map(item => (
          <button key={item.id} onClick={() => navigate(`/mistakes/${item.id}`)}
            className="card text-left">
            <div className="flex items-center justify-between gap-3">
              <div className="min-w-0">
                <p className="text-xs text-gray-400">{item.question?.knowledge_point || '未分类'}</p>
                <p className="font-extrabold text-kid-text mt-1">{item.question ? getStem(item.question.content) : '题目内容'}</p>
                <p className="text-xs text-gray-500 mt-2">错了 {item.wrong_count} 次</p>
              </div>
              <span className="shrink-0 rounded-full bg-amber-50 px-3 py-1 text-xs font-bold text-amber-600">
                {statusLabels[item.status]}
              </span>
            </div>
          </button>
        ))}
      </div>
    </div>
  )
}
