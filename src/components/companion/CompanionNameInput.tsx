import { useState } from 'react'
import { getErrorMessage } from '../../lib/errorMessage'

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
    <div className="flex-1 flex flex-col items-center justify-center gap-6">
      <input type="text" placeholder="叫它什么名字呢？" value={name}
        onChange={e => setName(e.target.value)} maxLength={10} autoFocus
        disabled={saving}
        className="text-2xl text-center border-b-2 border-purple-300 pb-2 outline-none focus:border-kid-primary w-56 bg-transparent"
        onKeyDown={e => e.key === 'Enter' && handleSubmit()} />
      <div className="flex gap-4">
        <button onClick={onBack} disabled={saving} className="px-8 py-3 rounded-2xl bg-gray-100 font-bold disabled:opacity-50">返回</button>
        <button onClick={handleSubmit} disabled={!name.trim() || saving} className="btn-primary px-8">
          {saving ? '创建中...' : '确定!'}
        </button>
      </div>
      {error && <p className="text-sm text-red-500 text-center" role="alert">{error}</p>}
    </div>
  )
}
