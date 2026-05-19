import { useState } from 'react'
import { useAuthStore } from '../../stores/authStore'

export function PhoneBindBanner() {
  const { user, profile, bindPhone } = useAuthStore()
  const [showInput, setShowInput] = useState(false)
  const [phone, setPhone] = useState('')
  const [done, setDone] = useState(false)

  if (!user?.isAnonymous || profile?.phone || done) return null

  const handleBind = async () => {
    if (!/^1[3-9]\d{9}$/.test(phone)) return
    await bindPhone(phone)
    setDone(true)
  }

  return (
    <div className="bg-yellow-50 border-b border-yellow-200 px-4 py-2 text-sm text-center">
      {!showInput ? (
        <p>
          ⚠️ 你正在以游客身份使用，数据仅保存在本设备。
          <button onClick={() => setShowInput(true)} className="text-kid-primary underline ml-1 font-bold">绑定手机号，永久保存数据</button>
        </p>
      ) : (
        <div className="flex items-center justify-center gap-2 py-1">
          <input type="tel" placeholder="请输入家长手机号" value={phone} onChange={e => setPhone(e.target.value)} maxLength={11} className="px-3 py-1 rounded-lg border text-sm" />
          <button onClick={handleBind} className="bg-kid-primary text-white px-3 py-1 rounded-lg text-sm">绑定</button>
          <button onClick={() => setShowInput(false)} className="text-gray-400 text-sm">稍后</button>
        </div>
      )}
    </div>
  )
}
