import { motion } from 'framer-motion'
import { useCompanionStore } from '../stores/companionStore'
import { usePointsStore } from '../stores/pointsStore'
import { CompanionStats } from '../components/companion/CompanionStats'
import { InteractiveCompanion } from '../components/companion/InteractiveCompanion'
import { SpeechBubble } from '../components/companion/SpeechBubble'
import { COMPANION_TYPES } from '../data/companionTypes'

export default function CompanionPage() {
  const { companion, switchCompanion } = useCompanionStore()
  const { balance } = usePointsStore()

  if (!companion) {
    return <div className="p-6 text-center"><p className="text-5xl mb-4">🥚</p><p className="text-gray-400 font-bold">还没有伙伴</p></div>
  }

  const currentType = companion.companion_type
  const equipped = (companion.equipped_items as string[]) || []
  const unlockedTypes = COMPANION_TYPES.filter(t => t.unlockCost === 0 || t.unlockCost <= balance)

  return (
    <div className="p-4 space-y-5 pb-6">
      {/* Current Companion */}
      <div className="card-gradient text-center">
        <SpeechBubble />
        <InteractiveCompanion size="large" />
        <h1 className="text-2xl font-extrabold mt-3 text-kid-text">{companion.name}</h1>
        <span className="text-xs bg-gradient-to-r from-kid-primary to-kid-primary-light text-white px-2.5 py-0.5 rounded-full font-bold">
          Lv.{companion.level}
        </span>
      </div>

      {/* Stats */}
      <div className="card">
        <h2 className="font-bold mb-3">📊 状态</h2>
        <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
      </div>

      {/* Equipped */}
      {equipped.length > 0 && (
        <div className="card">
          <h2 className="font-bold mb-3">🎒 已装备</h2>
          <div className="flex gap-2 flex-wrap">
            {equipped.map((itemId, i) => (
              <span key={i} className="bg-purple-50 text-purple-600 px-3 py-1 rounded-full text-sm font-bold">
                {itemId}
              </span>
            ))}
          </div>
        </div>
      )}

      {/* Switch Companion */}
      <div>
        <h2 className="font-extrabold text-lg mb-3 px-1">🔄 我的伙伴</h2>
        <div className="grid grid-cols-3 gap-3">
          {unlockedTypes.map(type => {
            const isActive = type.id === currentType
            return (
              <motion.button
                key={type.id}
                whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}
                onClick={() => !isActive && switchCompanion(type.id)}
                className={`rounded-2xl p-3 text-center transition-all ${
                  isActive
                    ? 'bg-gradient-to-br from-purple-100 to-pink-100 border-2 border-purple-400 shadow-md'
                    : 'bg-white border-2 border-gray-100 hover:border-gray-300'
                }`}
              >
                <div className="w-16 h-16 mx-auto mb-1">
                  <img src={`/assets/companions/${type.baseVariant}/blink/0_${type.baseVariant.replace(/_\\d+$/, '')}_Idle%20Blinking_000.png`}
                    alt={type.name} className="w-full h-full object-contain" />
                </div>
                <p className="text-xs font-bold text-kid-text">{type.name}</p>
                {isActive && (
                  <span className="text-xs bg-purple-500 text-white px-2 py-0.5 rounded-full mt-1 inline-block">
                    当前
                  </span>
                )}
                {!isActive && type.unlockCost > balance && (
                  <p className="text-xs text-orange-500 mt-1">⭐{type.unlockCost}</p>
                )}
              </motion.button>
            )
          })}
        </div>
      </div>
    </div>
  )
}
