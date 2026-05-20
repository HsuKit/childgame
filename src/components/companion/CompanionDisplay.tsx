import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../../stores/companionStore'
import { CompanionStats } from './CompanionStats'
import { InteractiveCompanion } from './InteractiveCompanion'
import { SpeechBubble } from './SpeechBubble'

export function CompanionDisplay() {
  const { companion, isLoading } = useCompanionStore()
  const navigate = useNavigate()

  if (isLoading) return <div className="animate-pulse h-64 bg-gray-100 rounded-3xl" />

  if (!companion) {
    return (
      <div className="card text-center py-12">
        <p className="text-4xl mb-4">🐣</p>
        <p className="font-bold mb-4">你还没有伙伴!</p>
        <button onClick={() => navigate('/companion/select')} className="btn-primary">选择一个伙伴</button>
      </div>
    )
  }

  return (
    <div className="card cursor-pointer" onClick={() => navigate('/companion')}>
      <SpeechBubble />
      <InteractiveCompanion />
      <div className="flex items-center gap-2 justify-center mt-3">
        <h2 className="text-lg font-bold">{companion.name}</h2>
        <span className="text-xs bg-purple-100 text-kid-primary px-2 py-1 rounded-full">Lv.{companion.level}</span>
      </div>
      <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
    </div>
  )
}
