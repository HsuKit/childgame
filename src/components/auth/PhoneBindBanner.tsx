import { Phone, ShieldCheck, X } from 'lucide-react'
import { useState } from 'react'
import { useAuthStore } from '../../stores/authStore'
import { Button } from '../ui/Button'

export function PhoneBindBanner() {
  const { user, profile, bindPhone } = useAuthStore()
  const [showInput, setShowInput] = useState(false)
  const [phone, setPhone] = useState('')
  const [done, setDone] = useState(false)
  const [saving, setSaving] = useState(false)
  const [error, setError] = useState('')

  if (!user?.isAnonymous || profile?.phone || done) return null

  const handleBind = async () => {
    if (!/^1[3-9]\d{9}$/.test(phone)) { setError('请输入正确的 11 位手机号。'); return }
    setSaving(true)
    setError('')
    try {
      await bindPhone(phone)
      setDone(true)
    } catch {
      setError('绑定暂时没有成功，请稍后重试。')
    } finally {
      setSaving(false)
    }
  }

  return (
    <aside className="border-b border-amber-200 bg-adventure-warning-soft px-4 py-2.5 text-sm" aria-label="游客账号提示">
      <div className="mx-auto max-w-6xl">
        {!showInput ? (
          <div className="flex items-center gap-3">
            <ShieldCheck aria-hidden="true" className="h-5 w-5 shrink-0 text-amber-700" />
            <p className="min-w-0 flex-1 text-xs font-semibold leading-5 text-amber-900">当前为游客模式，绑定手机号可在更换设备后继续保留学习数据。</p>
            <button type="button" onClick={() => setShowInput(true)} aria-label="绑定手机号以保存学习数据" className="min-h-11 shrink-0 rounded-[12px] px-3 text-xs font-extrabold text-adventure-primary hover:bg-white/70">去绑定</button>
          </div>
        ) : (
          <div>
            <div className="flex items-end gap-2">
              <div className="min-w-0 flex-1">
                <label htmlFor="phone-bind-input" className="mb-1 block text-xs font-extrabold text-amber-900">家长手机号</label>
                <div className="relative">
                  <Phone aria-hidden="true" className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-adventure-muted" />
                  <input id="phone-bind-input" type="tel" placeholder="请输入 11 位手机号" value={phone} onChange={event => setPhone(event.target.value.replace(/\D/g, ''))} maxLength={11} className="min-h-11 w-full rounded-[12px] border border-amber-200 bg-white pl-9 pr-3 text-sm outline-none focus:border-adventure-primary" />
                </div>
              </div>
              <Button onClick={handleBind} loading={saving} className="min-h-11 py-2">绑定</Button>
              <button type="button" onClick={() => { setShowInput(false); setError('') }} aria-label="稍后绑定手机号" className="grid min-h-11 min-w-11 place-items-center rounded-[12px] text-adventure-muted"><X aria-hidden="true" className="h-5 w-5" /></button>
            </div>
            {error && <p role="alert" className="mt-1 text-xs font-bold text-red-700">{error}</p>}
          </div>
        )}
      </div>
    </aside>
  )
}
