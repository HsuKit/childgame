import { CheckCircle2, Compass } from 'lucide-react'
import { useState } from 'react'
import { getErrorMessage } from '../../lib/errorMessage'
import { useAuthStore } from '../../stores/authStore'
import { Button } from '../ui/Button'
import { Surface } from '../ui/Surface'

export function GradeSelect() {
  const createProfile = useAuthStore(s => s.createProfile)
  const [grade, setGrade] = useState(0)
  const [nickname, setNickname] = useState('')
  const [saving, setSaving] = useState(false)
  const [error, setError] = useState<string | null>(null)

  const handleStart = async () => {
    if (grade < 1 || !nickname.trim() || saving) return
    setSaving(true)
    setError(null)
    try {
      await createProfile(nickname.trim(), grade)
    } catch (submitError) {
      console.error('Profile creation failed:', submitError)
      setError(getErrorMessage(submitError, '创建学习档案失败，请重试'))
    } finally {
      setSaving(false)
    }
  }

  return (
    <div className="min-h-dvh bg-adventure-bg px-4 py-8 sm:px-6">
      <main className="mx-auto flex min-h-[calc(100dvh-4rem)] w-full max-w-xl items-center">
        <Surface tone="elevated" className="w-full p-5 sm:p-8">
          <span className="mx-auto grid h-14 w-14 place-items-center rounded-[18px] bg-adventure-primary-soft text-adventure-primary"><Compass aria-hidden="true" className="h-7 w-7" /></span>
          <p className="eyebrow mt-4 text-center">欢迎加入</p>
          <h1 className="mt-1 text-center text-3xl font-black tracking-[-0.03em] text-adventure-text">创建冒险档案</h1>
          <p className="mt-2 text-center text-sm leading-6 text-adventure-muted">告诉我们你的昵称和年级，题目会自动匹配学习阶段。</p>

          <div className="mt-6">
            <label htmlFor="profile-nickname" className="mb-2 block text-sm font-extrabold text-adventure-text">昵称</label>
            <input id="profile-nickname" type="text" placeholder="输入你的昵称" value={nickname} onChange={event => setNickname(event.target.value)} maxLength={12} disabled={saving} className="min-h-14 w-full rounded-[16px] border-2 border-adventure-border bg-white px-4 font-bold outline-none transition focus:border-adventure-primary" />
          </div>

          <fieldset className="mt-5">
            <legend className="mb-2 text-sm font-extrabold text-adventure-text">选择年级</legend>
            <div className="grid grid-cols-3 gap-3 sm:grid-cols-6">
              {[1, 2, 3, 4, 5, 6].map(value => (
                <button key={value} type="button" aria-label={`选择 ${value} 年级`} aria-pressed={grade === value} onClick={() => setGrade(value)} disabled={saving} className={`relative min-h-14 rounded-[14px] border-2 px-2 py-3 text-sm font-extrabold transition ${grade === value ? 'border-adventure-primary bg-adventure-primary-soft text-adventure-primary' : 'border-adventure-border bg-white text-adventure-text hover:border-adventure-primary/40'}`}>
                  {grade === value && <CheckCircle2 aria-hidden="true" className="absolute right-1.5 top-1.5 h-3.5 w-3.5" />}
                  {value} 年级
                </button>
              ))}
            </div>
          </fieldset>

          {error && <p className="mt-4 rounded-[14px] bg-adventure-danger-soft p-3 text-sm font-bold text-red-700" role="alert">{error}</p>}
          <Button onClick={handleStart} disabled={grade < 1 || !nickname.trim() || saving} loading={saving} className="mt-6 w-full">
            {saving ? '正在创建' : '开始冒险'}
          </Button>
        </Surface>
      </main>
    </div>
  )
}
