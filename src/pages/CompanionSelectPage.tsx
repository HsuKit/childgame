import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../stores/companionStore'
import { CompanionSelect } from '../components/companion/CompanionSelect'
import { CompanionNameInput } from '../components/companion/CompanionNameInput'
import { COMPANION_TYPES } from '../data/companionTypes'
import { ProgressBar } from '../components/ui/ProgressBar'

const FREE_COMPANIONS = COMPANION_TYPES.filter(c => c.unlockCost === 0)

export default function CompanionSelectPage() {
  const [selected, setSelected] = useState<string | null>(null)
  const [step, setStep] = useState<'select' | 'name'>('select')
  const navigate = useNavigate()
  const createCompanion = useCompanionStore(s => s.createCompanion)

  const handleConfirm = async (name: string) => {
    if (!selected) return
    await createCompanion(selected, name)
    navigate('/')
  }

  return (
    <div className="min-h-dvh bg-adventure-bg px-4 py-8 sm:px-6">
      <main className="mx-auto flex min-h-[calc(100dvh-4rem)] w-full max-w-2xl flex-col">
      <div className="mx-auto mb-6 w-full max-w-sm">
        <div className="mb-2 flex justify-between text-xs font-extrabold text-adventure-muted">
          <span className={step === 'select' ? 'text-adventure-primary' : ''}>1 选择伙伴</span>
          <span className={step === 'name' ? 'text-adventure-primary' : ''}>2 取名字</span>
        </div>
        <ProgressBar value={step === 'select' ? 1 : 2} max={2} label="伙伴创建进度" />
      </div>
      <p className="eyebrow text-center">冒险启程</p>
      <h1 className="mt-1 text-center text-2xl font-black text-adventure-text sm:text-3xl">
        {step === 'select' ? '选择你的冒险伙伴!' : '给你的伙伴取个名字!'}
      </h1>
      {step === 'select' && <CompanionSelect companions={FREE_COMPANIONS} selected={selected} onSelect={setSelected} onNext={() => selected && setStep('name')} />}
      {step === 'name' && <CompanionNameInput onConfirm={handleConfirm} onBack={() => setStep('select')} />}
      </main>
    </div>
  )
}
