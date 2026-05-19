import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../stores/companionStore'
import { CompanionSelect } from '../components/companion/CompanionSelect'
import { CompanionNameInput } from '../components/companion/CompanionNameInput'
import { STARTER_COMPANIONS } from '../data/companionTypes'

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
    <div className="min-h-screen bg-gradient-to-b from-purple-100 to-blue-100 p-6 flex flex-col">
      <h1 className="text-2xl font-bold text-center text-kid-primary mt-8">
        {step === 'select' ? '选择你的冒险伙伴!' : '给你的伙伴取个名字!'}
      </h1>
      {step === 'select' && <CompanionSelect companions={STARTER_COMPANIONS} selected={selected} onSelect={setSelected} onNext={() => selected && setStep('name')} />}
      {step === 'name' && <CompanionNameInput onConfirm={handleConfirm} onBack={() => setStep('select')} />}
    </div>
  )
}
