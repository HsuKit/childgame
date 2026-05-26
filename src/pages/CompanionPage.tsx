import { useState } from 'react'
import { motion } from 'framer-motion'
import { useCompanionStore } from '../stores/companionStore'
import { usePointsStore } from '../stores/pointsStore'
import { CompanionStats } from '../components/companion/CompanionStats'
import { InteractiveCompanion } from '../components/companion/InteractiveCompanion'
import { SpeechBubble } from '../components/companion/SpeechBubble'
import { SwitchConfirmDialog } from '../components/companion/SwitchConfirmDialog'
import { COMPANION_TYPES } from '../data/companionTypes'

const SWITCH_COST = 500

export default function CompanionPage() {
  const { companion, switchCompanion, equipItem } = useCompanionStore()
  const { balance, spendPoints } = usePointsStore()
  const [switchTarget, setSwitchTarget] = useState<string | null>(null)

  if (!companion) {
    return <div className="p-6 text-center"><p className="text-5xl mb-4">🥚</p><p className="text-gray-400 font-bold">还没有伙伴</p></div>
  }

  const handleSwitch = async (typeId: string) => {
    const target = COMPANION_TYPES.find(t => t.id === typeId)
    if (!target || typeId === companion.companion_type) return
    // Already owned: switch for free
    if (isOwned(typeId)) {
      await switchCompanion(typeId)
      return
    }
    // All switches cost points (only initial 3-choose-1 is free)
    setSwitchTarget(typeId)
  }

  const confirmSwitch = async () => {
    if (!switchTarget) return
    const ok = await spendPoints(SWITCH_COST, 'switch_companion')
    if (ok) {
      await switchCompanion(switchTarget)
      // Mark as owned so switching back is free
      await equipItem(`owned_${switchTarget}`)
    }
    setSwitchTarget(null)
  }

  const currentType = companion.companion_type
  const equipped = (companion.equipped_items as string[]) || []
  const allItems = (companion.equipped_items as string[]) || []

  // Previously owned/paid companions are permanently available
  const isOwned = (typeId: string) => allItems.includes(`owned_${typeId}`)

  // Check if a companion type has all 3 outfits purchased
  const hasAllOutfits = (typeId: string) => {
    const def = COMPANION_TYPES.find(t => t.id === typeId)
    if (!def) return false
    return def.outfitVariants.every(v => allItems.includes(`outfit_${v}`))
  }

  // Unlock chain: previous companion must have all outfits
  const UNLOCK_CHAIN = ['minotaur', 'valkyrie', 'golem', 'reaper', 'angel']
  const canUnlock = (typeId: string) => {
    const idx = UNLOCK_CHAIN.indexOf(typeId)
    if (idx === -1) return true
    if (idx === 0) return true
    return hasAllOutfits(UNLOCK_CHAIN[idx - 1])
  }

  const unlockedTypes = COMPANION_TYPES.filter(t => {
    if (t.unlockCost === 0) return true  // starters
    if (isOwned(t.id)) return true       // already unlocked
    if (balance < t.unlockCost) return false
    return canUnlock(t.id)
  })
  const lockedTypes = COMPANION_TYPES.filter(t => t.unlockCost > 0 && !unlockedTypes.find(u => u.id === t.id))

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
                onClick={() => !isActive && handleSwitch(type.id)}
                className={`rounded-2xl p-3 text-center transition-all ${
                  isActive
                    ? 'bg-gradient-to-br from-purple-100 to-pink-100 border-2 border-purple-400 shadow-md'
                    : 'bg-white border-2 border-gray-100 hover:border-gray-300'
                }`}
              >
                <div className="w-16 h-16 mx-auto mb-1">
                  <img src={`/assets/companions/${type.baseVariant}/blink/0_${type.baseVariant.replace(/_\d+$/, '')}_Idle_Blinking_000.png`}
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

        {/* Locked companions teaser */}
        {lockedTypes.length > 0 && (
          <div className="mt-4 bg-gradient-to-r from-amber-50 via-orange-50 to-yellow-50 rounded-2xl p-4 border border-amber-200">
            <p className="text-sm font-extrabold text-amber-700 mb-3 text-center">
              🔒 获取更多积分解锁隐藏款伙伴!
            </p>
            <div className="flex gap-3 justify-center">
              {lockedTypes.map(type => (
                <div key={type.id} className="text-center relative">
                  <div className="w-12 h-12 rounded-xl bg-gray-900/80 flex items-center justify-center mx-auto overflow-hidden">
                    <img
                      src={`/assets/companions/${type.baseVariant}/blink/0_${type.baseVariant.replace(/_\d+$/, '')}_Idle_Blinking_000.png`}
                      alt={type.name}
                      className="w-full h-full object-contain opacity-20"
                    />
                  </div>
                  <p className="text-xs font-bold text-gray-500 mt-1">{type.name}</p>
                  {(UNLOCK_CHAIN.indexOf(type.id) > 0 && !hasAllOutfits(UNLOCK_CHAIN[UNLOCK_CHAIN.indexOf(type.id) - 1]))
                    ? <p className="text-xs text-red-400 font-bold">需解锁上一伙伴所有外观</p>
                    : <p className="text-xs text-amber-600 font-bold">⭐{type.unlockCost}</p>
                  }
                </div>
              ))}
            </div>
          </div>
        )}
      </div>

      {switchTarget && (
        <SwitchConfirmDialog
          companionName={COMPANION_TYPES.find(t => t.id === switchTarget)?.name || ''}
          cost={SWITCH_COST}
          onConfirm={confirmSwitch}
          onCancel={() => setSwitchTarget(null)}
        />
      )}
    </div>
  )
}
