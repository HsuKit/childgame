import { useState, useEffect } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { useCompanionStore } from '../stores/companionStore'
import { usePointsStore } from '../stores/pointsStore'
import { COMPANION_TYPES } from '../data/companionTypes'

export default function ShopPage() {
  const { companion, equipOutfit, equipWeapon, unequipWeapon } = useCompanionStore()
  const { balance, spendPoints } = usePointsStore()
  const [message, setMessage] = useState<string | null>(null)
  const [previewAnim, setPreviewAnim] = useState<string | null>(null)

  if (!companion) return <div className="p-6 text-center text-gray-400 font-bold">请先选择伙伴!</div>

  const currentType = COMPANION_TYPES.find(t => t.id === companion.companion_type)
  const outfits = currentType?.outfitVariants || []
  const currentOutfit = companion.equipped_outfit
  const allItems = ((companion.equipped_items as string[]) || [])
  const hasWeapon = allItems.includes('weapon_sword')
  const purchasedOutfits = allItems.filter(i => (i as string).startsWith('outfit_'))
  const weaponBought = allItems.includes('weapon_purchased')

  const buyOutfit = async (variant: string, cost: number) => {
    if (variant === currentOutfit) return
    const alreadyBought = purchasedOutfits.includes(`outfit_${variant}`)
    if (alreadyBought) {
      await equipOutfit(variant)
      setMessage('外观已更换!')
    } else {
      const ok = await spendPoints(cost, 'buy_outfit')
      if (ok) {
        await equipOutfit(variant, `outfit_${variant}`)
        setMessage('外观已解锁并更换!')
      } else setMessage('积分不足!')
    }
    setTimeout(() => setMessage(null), 2000)
  }

  const toggleWeapon = async () => {
    setPreviewAnim(hasWeapon ? 'throw' : 'attack')
    if (hasWeapon) {
      await unequipWeapon(); setMessage('已卸下武器')
    } else if (weaponBought) {
      await equipWeapon(); setMessage('已装备武器! ⚔️')
    } else {
      const ok = await spendPoints(200, 'buy_weapon')
      if (ok) { await equipWeapon(true); setMessage('已装备武器! ⚔️') }
      else { setMessage('积分不足!'); setPreviewAnim(null); return }
    }
    setTimeout(() => { setMessage(null); setPreviewAnim(null) }, 2500)
  }

  return (
    <div className="p-4 space-y-5 pb-6">
      <div className="text-center">
        <h1 className="text-2xl font-extrabold bg-gradient-to-r from-kid-warning to-kid-secondary bg-clip-text text-transparent">
          🛍️ {currentType?.name}的衣柜
        </h1>
        <div className="inline-flex items-center gap-2 glass px-5 py-2 rounded-full mt-2">
          <span>⭐</span>
          <span className="font-extrabold text-kid-warning text-lg">{balance}</span>
        </div>
      </div>

      {message && (
        <motion.div initial={{ opacity: 0, y: -10 }} animate={{ opacity: 1, y: 0 }}
          className="p-4 rounded-2xl text-center font-extrabold bg-gradient-to-r from-purple-50 to-pink-50 text-kid-primary border border-purple-200">
          {message}
        </motion.div>
      )}

      {/* Action Preview Modal */}
      <AnimatePresence>
        {previewAnim && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="fixed inset-0 bg-black/50 flex items-center justify-center z-50"
            onClick={() => setPreviewAnim(null)}>
            <motion.div initial={{ scale: 0.5 }} animate={{ scale: 1 }}
              className="bg-white rounded-3xl p-6 text-center mx-4"
              onClick={e => e.stopPropagation()}>
              <p className="text-xl font-extrabold mb-4">
                {previewAnim === 'attack' ? '⚔️ 武器攻击!' : '👐 空手投掷!'}
              </p>
              <div className="w-40 h-40 mx-auto">
                <ActionPreview variant={companion.equipped_outfit || currentType?.baseVariant || 'Forest_Ranger_1'}
                  type={previewAnim as 'attack' | 'throw'} />
              </div>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* Outfits */}
      <div>
        <h2 className="font-extrabold text-lg mb-3">👗 外观套装</h2>
        <div className="grid grid-cols-3 gap-3">
          {outfits.map((variant, i) => {
            const cost = i === 0 ? 0 : 100 * (i + 1)
            const isActive = variant === currentOutfit
            const label = i === 0 ? '默认' : i === 1 ? '进阶' : '传说'
            const bg = i === 0 ? 'from-gray-100 to-gray-200' : i === 1 ? 'from-blue-100 to-cyan-100' : 'from-purple-100 to-pink-100'
            return (
              <motion.button key={variant} whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}
                onClick={() => buyOutfit(variant, cost)}
                className={`rounded-2xl p-3 text-center transition-all bg-gradient-to-br ${bg} ${
                  isActive ? 'border-2 border-purple-400 shadow-lg scale-105' : 'border border-gray-200'
                }`}>
                <div className="w-16 h-16 mx-auto mb-2 flex items-center justify-center">
                  <img src={`/assets/companions/${variant}/Body.png`} alt={label} className="w-full h-full object-contain opacity-70" />
                </div>
                <p className="text-xs font-bold">{label}外观</p>
                {isActive
                  ? <span className="text-xs text-purple-600 font-bold">使用中</span>
                  : <span className="text-xs text-orange-600 font-bold">{cost === 0 ? '免费' : `⭐${cost}`}</span>}
              </motion.button>
            )
          })}
        </div>
      </div>

      {/* Weapon */}
      <div>
        <h2 className="font-extrabold text-lg mb-3">⚔️ 武器</h2>
        <motion.button
          whileHover={{ scale: 1.03 }} whileTap={{ scale: 0.97 }}
          onClick={toggleWeapon}
          className={`w-full rounded-2xl p-5 text-left transition-all ${
            hasWeapon ? 'bg-gradient-to-r from-amber-50 to-orange-50 border-2 border-amber-400'
                      : 'bg-white border-2 border-gray-200'
          }`}>
          <div className="flex items-center gap-4">
            <div className="w-14 h-14 rounded-xl bg-gradient-to-br from-gray-50 to-amber-50 flex items-center justify-center text-2xl">
              {hasWeapon ? '⚔️' : '👐'}
            </div>
            <div className="flex-1">
              <p className="font-extrabold text-base">{hasWeapon ? '已装备武器' : '空手'}</p>
              <p className="text-xs text-gray-400 mt-1">
                {hasWeapon ? '点击卸下武器，恢复空手攻击' : '解锁武器，装备后点击伙伴可发动攻击'}
              </p>
            </div>
            <div className="text-right">
              {!hasWeapon && <span className="text-sm font-extrabold text-kid-warning">⭐200</span>}
              {hasWeapon && <span className="text-xs text-gray-400">点击卸下</span>}
            </div>
          </div>
        </motion.button>
      </div>
    </div>
  )
}

// Simple action preview using img preload and frame cycling
function ActionPreview({ variant, type }: { variant: string; type: 'attack' | 'throw' }) {
  const base = variant.replace(/_\d+$/, '')
  const [frame, setFrame] = useState(0)

  useEffect(() => {
    const interval = setInterval(() => setFrame(f => (f + 1) % 9), 100)
    return () => clearInterval(interval)
  }, [])

  const actionName = type === 'attack'
    ? ((variant === 'Forest_Ranger_1' || variant === 'Forest_Ranger_2') ? 'Shooting_in_The_Air' : 'Slashing_in_The_Air')
    : 'Throwing_in_The_Air'
  const folder = type === 'attack' ? 'attack' : 'throw'

  return (
    <img
      src={`/assets/companions/${variant}/${folder}/0_${base}_${actionName}_${String(frame).padStart(3, '0')}.png`}
      alt="" className="w-full h-full object-contain"
    />
  )
}
