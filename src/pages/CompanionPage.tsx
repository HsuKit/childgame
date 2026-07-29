import { useState } from 'react'
import { motion } from 'framer-motion'
import { useCompanionStore } from '../stores/companionStore'
import { usePointsStore } from '../stores/pointsStore'
import { CompanionStats } from '../components/companion/CompanionStats'
import { InteractiveCompanion } from '../components/companion/InteractiveCompanion'
import { SpeechBubble } from '../components/companion/SpeechBubble'
import { SwitchConfirmDialog } from '../components/companion/SwitchConfirmDialog'
import { COMPANION_TYPES } from '../data/companionTypes'
import { Link } from 'react-router-dom'
import { CheckCircle2, LockKeyhole, RefreshCw, Shirt, Star } from 'lucide-react'
import { PageHeader } from '../components/ui/PageHeader'
import { Surface } from '../components/ui/Surface'
import { StatePanel } from '../components/ui/StatePanel'
import { Button } from '../components/ui/Button'

const SWITCH_COST = 500

export default function CompanionPage() {
  const { companion, switchCompanion, equipItem } = useCompanionStore()
  const { balance, spendPoints } = usePointsStore()
  const [switchTarget, setSwitchTarget] = useState<string | null>(null)

  if (!companion) {
    return <StatePanel tone="empty" title="还没有伙伴" message="先选择一位伙伴，一起开始冒险。" />
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
  const currentTypeDef = COMPANION_TYPES.find(t => t.id === currentType)
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
    <div className="page-stack">
      <PageHeader
        eyebrow="伙伴营地"
        title="我的冒险伙伴"
        subtitle="陪伴、成长、收集外观，一起解锁更多冒险。"
        trailing={<span className="inline-flex min-h-11 items-center gap-1.5 rounded-[14px] bg-adventure-warning-soft px-3 font-extrabold text-amber-700"><Star aria-hidden="true" className="h-4 w-4 fill-current" />{balance}</span>}
      />
      {/* Current Companion */}
      <Surface tone="soft" className="overflow-hidden bg-gradient-to-br from-indigo-50 via-white to-rose-50 text-center">
        <SpeechBubble />
        <InteractiveCompanion size="large" />
        <h2 className="mt-3 text-2xl font-extrabold text-adventure-text">{companion.name}</h2>
        <span className="mt-1 inline-flex rounded-full bg-adventure-primary px-3 py-1 text-xs font-bold text-white">
          Lv.{companion.level}
        </span>
      </Surface>

      {/* Stats */}
      <Surface>
        <h2 className="section-title">成长状态</h2>
        <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
      </Surface>

      {/* Equipped */}
      {(() => {
        const displayItems = equipped
          .filter((i: string) => !i.startsWith('owned_') && i !== 'weapon_purchased')
          .map((i: string) => {
            if (i === 'weapon_sword') return '⚔️ 武器'
            if (i.startsWith('outfit_')) {
              const variant = i.replace('outfit_', '')
              const outfitIdx = currentTypeDef?.outfitVariants.indexOf(variant) ?? -1
              const labels = ['默认', '进阶', '传说']
              return `👗 ${labels[outfitIdx] || '外观'}`
            }
            return null
          }).filter(Boolean) as string[]
        if (displayItems.length === 0) return null
        return (
          <Surface>
            <h2 className="section-title">当前装备</h2>
            <div className="flex gap-2 flex-wrap">
              {displayItems.map((label, i) => (
                <span key={i} className="rounded-full bg-adventure-primary-soft px-3 py-1 text-sm font-bold text-adventure-primary">
                  {label}
                </span>
              ))}
            </div>
          </Surface>
        )
      })()}

      {/* Switch Companion */}
      <section>
        <div className="mb-3 flex items-center justify-between gap-3">
          <h2 className="section-title flex items-center gap-2"><RefreshCw aria-hidden="true" className="h-5 w-5 text-adventure-primary" />伙伴收藏</h2>
          <Link to="/shop"><Button variant="secondary" icon={<Shirt aria-hidden="true" className="h-4 w-4" />}>打开衣柜</Button></Link>
        </div>
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3">
          {unlockedTypes.map(type => {
            const isActive = type.id === currentType
            return (
              <motion.button
                key={type.id}
                whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}
                onClick={() => !isActive && handleSwitch(type.id)}
                aria-pressed={isActive}
                className={`relative rounded-[18px] border-2 p-3 text-center transition-all ${
                  isActive
                    ? 'border-adventure-primary bg-adventure-primary-soft shadow-lg shadow-indigo-100'
                    : 'border-adventure-border bg-white hover:border-adventure-primary/40'
                }`}
              >
                <div className="w-16 h-16 mx-auto mb-1">
                  <img src={`/assets/companions/${type.baseVariant}/blink/0_${type.baseVariant.replace(/_\d+$/, '')}_Idle_Blinking_000.png`}
                    alt={type.name} className="w-full h-full object-contain" />
                </div>
                <p className="text-xs font-bold text-adventure-text">{type.name}</p>
                {isActive && (
                  <span className="mt-1 inline-flex items-center gap-1 rounded-full bg-adventure-primary px-2 py-0.5 text-xs font-bold text-white">
                    <CheckCircle2 aria-hidden="true" className="h-3 w-3" />当前
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
          <div className="mt-4 rounded-[18px] border border-amber-200 bg-adventure-warning-soft p-4">
            <p className="mb-3 flex items-center justify-center gap-2 text-center text-sm font-extrabold text-amber-800">
              <LockKeyhole aria-hidden="true" className="h-4 w-4" />继续积累积分，解锁隐藏伙伴
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
                  <p className="mt-1 text-xs font-bold text-adventure-muted">{type.name}</p>
                  {(UNLOCK_CHAIN.indexOf(type.id) > 0 && !hasAllOutfits(UNLOCK_CHAIN[UNLOCK_CHAIN.indexOf(type.id) - 1]))
                    ? <p className="text-xs text-red-400 font-bold">需解锁上一伙伴所有外观</p>
                    : <p className="text-xs text-amber-600 font-bold">⭐{type.unlockCost}</p>
                  }
                </div>
              ))}
            </div>
          </div>
        )}
      </section>

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
