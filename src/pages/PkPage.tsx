import { BookOpen, Calculator, Copy, Hash, Languages, Plus, Swords, Users } from 'lucide-react'
import type { LucideIcon } from 'lucide-react'
import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { Button } from '../components/ui/Button'
import { PageHeader } from '../components/ui/PageHeader'
import { Surface } from '../components/ui/Surface'
import { SUBJECT_LABELS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import { buildCreatorPkQuizPath } from '../lib/pkUtils'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'

function genCode(): string { return String(Math.floor(100000 + Math.random() * 900000)) }

const subjectIcons: Record<Subject, LucideIcon> = {
  math: Calculator,
  chinese: BookOpen,
  english: Languages,
}

export default function PkPage() {
  const navigate = useNavigate()
  const userId = useAuthStore(s => s.user?.id)
  const [mode, setMode] = useState<'menu' | 'create' | 'join'>('menu')
  const [subject, setSubject] = useState<Subject>('math')
  const [code, setCode] = useState('')
  const [created, setCreated] = useState('')
  const [createdChallengeId, setCreatedChallengeId] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)

  const handleCreate = async () => {
    if (!userId) return
    setLoading(true)
    setError('')
    try {
      const newCode = genCode()
      const { data, error: err } = await supabase.from('pk_challenges')
        .insert({ creator_id: userId, code: newCode, subject })
        .select('id')
        .single()
      if (err || !data) { setError('挑战创建失败，请稍后重试。'); return }
      setCreated(newCode)
      setCreatedChallengeId(data.id)
    } catch {
      setError('网络连接失败，请检查后重试。')
    } finally {
      setLoading(false)
    }
  }

  const handleJoin = async () => {
    if (!code.trim()) { setError('请输入 6 位挑战码。'); return }
    if (!userId) return
    setLoading(true)
    setError('')
    try {
      const { data, error: err } = await supabase.from('pk_challenges').select('*').eq('code', code.trim()).eq('status', 'waiting').maybeSingle()
      if (err || !data) { setError('挑战码无效或已过期。'); return }
      if (data.creator_id === userId) { setError('不能加入自己创建的挑战。'); return }
      navigate(`/pk/quiz?challenge=${data.id}&subject=${data.subject}`)
    } catch {
      setError('网络连接失败，请检查后重试。')
    } finally {
      setLoading(false)
    }
  }

  const startCreatorQuiz = () => {
    if (!createdChallengeId) {
      setError('挑战还没有准备好，请重新生成。')
      return
    }
    navigate(buildCreatorPkQuizPath({ challengeId: createdChallengeId, subject }))
  }

  const returnToMenu = () => {
    setMode('menu')
    setError('')
  }

  return (
    <div className="page-stack">
      <PageHeader eyebrow="好友竞技场" title="好友对战" subtitle="创建挑战码或加入好友的房间，完成同一组题目比拼成绩。" trailing={<Swords aria-hidden="true" className="h-7 w-7 text-orange-500" />} />

      {error && <p role="alert" className="rounded-[16px] border border-red-200 bg-adventure-danger-soft p-4 text-sm font-bold text-red-700">{error}</p>}

      {mode === 'menu' && (
        <div className="grid gap-4 md:grid-cols-2">
          <button type="button" onClick={() => setMode('create')} className="group rounded-[22px] border border-orange-200 bg-gradient-to-br from-orange-50 to-amber-50 p-6 text-left transition hover:-translate-y-1 hover:shadow-xl hover:shadow-orange-100">
            <span className="grid h-12 w-12 place-items-center rounded-[16px] bg-white text-orange-600"><Plus aria-hidden="true" className="h-6 w-6" /></span>
            <h2 className="mt-4 text-lg font-black text-adventure-text">创建挑战</h2>
            <p className="mt-1 text-sm leading-6 text-adventure-muted">选择科目并生成挑战码，发给好友一起答题。</p>
          </button>
          <button type="button" onClick={() => setMode('join')} className="group rounded-[22px] border border-sky-200 bg-gradient-to-br from-sky-50 to-cyan-50 p-6 text-left transition hover:-translate-y-1 hover:shadow-xl hover:shadow-sky-100">
            <span className="grid h-12 w-12 place-items-center rounded-[16px] bg-white text-sky-600"><Users aria-hidden="true" className="h-6 w-6" /></span>
            <h2 className="mt-4 text-lg font-black text-adventure-text">加入挑战</h2>
            <p className="mt-1 text-sm leading-6 text-adventure-muted">输入好友发来的 6 位挑战码，立即开始对战。</p>
          </button>
        </div>
      )}

      {mode === 'create' && (
        <div className="space-y-4">
          <Surface>
            <h2 className="section-title mb-3">选择对战科目</h2>
            <div className="grid grid-cols-3 gap-3">
              {(['math', 'chinese', 'english'] as Subject[]).map(value => {
                const Icon = subjectIcons[value]
                return (
                  <button key={value} type="button" onClick={() => setSubject(value)} aria-pressed={subject === value} className={`min-h-20 rounded-[16px] border-2 p-3 font-bold transition ${subject === value ? 'border-adventure-primary bg-adventure-primary-soft text-adventure-primary' : 'border-adventure-border bg-white text-adventure-text'}`}>
                    <Icon aria-hidden="true" className="mx-auto h-5 w-5" />
                    <span className="mt-1 block text-xs">{SUBJECT_LABELS[value]}</span>
                  </button>
                )
              })}
            </div>
          </Surface>

          {created ? (
            <Surface tone="soft" className="text-center">
              <p className="font-extrabold text-adventure-text">挑战已创建</p>
              <p className="my-3 tracking-[0.18em] text-4xl font-black text-adventure-primary" aria-label={`挑战码 ${created}`}>{created}</p>
              <p className="mb-4 text-xs font-semibold text-adventure-muted">把挑战码发给好友，你可以先开始答题。</p>
              <div className="grid gap-3 sm:grid-cols-2">
                <Button variant="ghost" icon={<Copy aria-hidden="true" className="h-4 w-4" />} onClick={() => void navigator.clipboard?.writeText(created)}>复制挑战码</Button>
                <Button icon={<Swords aria-hidden="true" className="h-4 w-4" />} onClick={startCreatorQuiz}>我先答题</Button>
              </div>
            </Surface>
          ) : (
            <Button onClick={handleCreate} loading={loading} className="w-full">{loading ? '创建中' : '生成挑战码'}</Button>
          )}
          <Button variant="ghost" onClick={returnToMenu} className="w-full">返回选择</Button>
        </div>
      )}

      {mode === 'join' && (
        <Surface>
          <label htmlFor="challenge-code" className="block text-sm font-extrabold text-adventure-text">6 位挑战码</label>
          <div className="relative mt-2">
            <Hash aria-hidden="true" className="absolute left-4 top-1/2 h-5 w-5 -translate-y-1/2 text-adventure-muted" />
            <input id="challenge-code" type="text" value={code} onChange={event => { setCode(event.target.value.replace(/\D/g, '')); setError('') }} placeholder="例如 123456" inputMode="numeric" maxLength={6} className="min-h-14 w-full rounded-[16px] border-2 border-adventure-border bg-white pl-12 pr-4 text-center text-2xl font-black tracking-[0.2em] outline-none transition focus:border-adventure-primary" />
          </div>
          <div className="mt-4 grid gap-3 sm:grid-cols-2">
            <Button variant="ghost" onClick={returnToMenu}>返回选择</Button>
            <Button onClick={handleJoin} loading={loading}>{loading ? '加入中' : '加入挑战'}</Button>
          </div>
        </Surface>
      )}
    </div>
  )
}
