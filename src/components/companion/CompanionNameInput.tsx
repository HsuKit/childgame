import { useState } from 'react'
import { getErrorMessage } from '../../lib/errorMessage'
import { Button } from '../ui/Button'

interface Props {
  onConfirm: (name: string) => Promise<void>
  onBack: () => void
}

export function CompanionNameInput({ onConfirm, onBack }: Props) {
  const [name, setName] = useState('')
  const [saving, setSaving] = useState(false)
  const [error, setError] = useState<string | null>(null)

  const handleSubmit = async () => {
    if (!name.trim() || saving) return
    setSaving(true)
    setError(null)
    try {
      await onConfirm(name.trim())
    } catch (submitError) {
      console.error('Companion creation failed:', submitError)
      setError(getErrorMessage(submitError, '伙伴创建失败，请重试'))
    } finally {
      setSaving(false)
    }
  }

  return (
    <div className="flex flex-1 flex-col items-center justify-center gap-5">
      <div className="w-full max-w-sm">
      <label htmlFor="companion-name" className="mb-2 block text-sm font-extrabold text-adventure-text">伙伴名字</label>
      <input id="companion-name" type="text" placeholder="例如：小勇士" value={name}
        onChange={e => setName(e.target.value)} maxLength={10} autoFocus
        disabled={saving}
        aria-describedby={error ? 'companion-name-error' : 'companion-name-help'}
        className="min-h-14 w-full rounded-[16px] border-2 border-adventure-border bg-white px-4 text-lg font-bold outline-none transition focus:border-adventure-primary"
        onKeyDown={e => e.key === 'Enter' && handleSubmit()} />
      {!error && <p id="companion-name-help" className="mt-2 text-xs font-semibold text-adventure-muted">最多 10 个字，之后也可以继续陪它成长。</p>}
      {error && <p id="companion-name-error" className="mt-2 text-sm font-bold text-red-600" role="alert">{error}</p>}
      </div>
      <div className="grid w-full max-w-sm grid-cols-2 gap-3">
        <Button variant="ghost" onClick={onBack} disabled={saving}>返回选择</Button>
        <Button onClick={handleSubmit} disabled={!name.trim() || saving} loading={saving}>
          {saving ? '创建中' : '开始冒险'}
        </Button>
      </div>
    </div>
  )
}
