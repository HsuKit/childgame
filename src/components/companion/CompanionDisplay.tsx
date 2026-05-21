import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../../stores/companionStore'
import { CompanionStats } from './CompanionStats'
import { InteractiveCompanion } from './InteractiveCompanion'
import { SpeechBubble } from './SpeechBubble'

export function CompanionDisplay() {
  const { companion, isLoading } = useCompanionStore()
  const navigate = useNavigate()

  if (isLoading) return <div className="animate-pulse h-64 bg-white/50 rounded-3xl" />

  if (!companion) {
    return (
      <div className="card-gradient text-center py-10">
        <p className="text-5xl mb-4">🥚</p>
        <p className="font-extrabold text-lg mb-3 text-kid-text">还没有伙伴!</p>
        <button onClick={() => navigate('/companion/select')} className="btn-play">选一个伙伴吧 →</button>
      </div>
    )
  }

  return (
    <div className="card-gradient cursor-pointer" onClick={() => navigate('/companion')}>
      <SpeechBubble />
      <InteractiveCompanion />
      <div className="flex items-center gap-2 justify-center mt-2">
        <h2 className="text-lg font-extrabold text-kid-text">{companion.name}</h2>
        <span className="text-xs bg-gradient-to-r from-kid-primary to-kid-primary-light text-white px-2.5 py-0.5 rounded-full font-bold shadow-sm">
          Lv.{companion.level}
        </span>
      </div>
      <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
    </div>
  )
}
