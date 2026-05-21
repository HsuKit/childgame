import { useState } from 'react'
import { motion } from 'framer-motion'
import { useCompanionStore } from '../stores/companionStore'
import { usePointsStore } from '../stores/pointsStore'
import { COMPANION_TYPES, ACCESSORIES } from '../data/companionTypes'

export default function ShopPage() {
  const { companion, equipOutfit, equipItem } = useCompanionStore()
  const { balance, spendPoints } = usePointsStore()
  const [message, setMessage] = useState<string | null>(null)

  if (!companion) return <div className="p-6 text-center text-gray-400 font-bold">请先选择伙伴!</div>

  const currentType = COMPANION_TYPES.find(t => t.id === companion.companion_type)
  const outfits = currentType?.outfitVariants || []
  const currentOutfit = companion.equipped_outfit

  const buyOutfit = async (variant: string, cost: number) => {
    if (variant === currentOutfit) return
    const ok = await spendPoints(cost, 'buy_outfit')
    if (ok) { await equipOutfit(variant); setMessage('🎉 外观已更换!') }
    else setMessage('😢 积分不足!')
    setTimeout(() => setMessage(null), 2000)
  }

  const buyAccessory = async (accId: string, accName: string, cost: number) => {
    const items = (companion.equipped_items as string[]) || []
    if (items.includes(accId)) { setMessage('已装备过了!'); setTimeout(() => setMessage(null), 1500); return }
    const ok = await spendPoints(cost, 'buy_accessory')
    if (ok) { await equipItem(accId); setMessage(`🎉 装备了${accName}!`) }
    else setMessage('😢 积分不足!')
    setTimeout(() => setMessage(null), 2000)
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
                  <img src={`/assets/companions/${variant}/Body.png`} alt={label}
                    className="w-full h-full object-contain opacity-70" />
                </div>
                <p className="text-xs font-bold">{label}外观</p>
                {isActive
                  ? <span className="text-xs text-purple-600 font-bold">使用中</span>
                  : <span className="text-xs text-orange-600 font-bold">{cost === 0 ? '免费' : `⭐${cost}`}</span>
                }
              </motion.button>
            )
          })}
        </div>
      </div>

      {/* Accessories */}
      <div>
        <h2 className="font-extrabold text-lg mb-3">💎 配饰</h2>
        <div className="grid grid-cols-2 gap-3">
          {ACCESSORIES.map(acc => {
            const equipped = ((companion.equipped_items as string[]) || []).includes(acc.id)
            return (
              <motion.button key={acc.id} whileHover={{ scale: 1.03 }} whileTap={{ scale: 0.95 }}
                onClick={() => buyAccessory(acc.id, acc.name, acc.cost)}
                className={`rounded-2xl p-4 text-left transition-all ${
                  equipped ? 'bg-green-50 border-2 border-green-400' : 'bg-white border border-gray-200'
                }`}>
                <div className="flex items-center gap-3">
                  <div className="w-12 h-12 rounded-xl bg-gradient-to-br from-purple-50 to-pink-50 flex items-center justify-center text-xl">
                    {acc.id === 'Bow' ? '🏹' : acc.id === 'Sword' ? '⚔️' : acc.id === 'SlashFX' ? '✨' : '🎯'}
                  </div>
                  <div>
                    <p className="font-extrabold text-sm">{acc.name}</p>
                    <p className="text-xs text-gray-400">{acc.type === 'accessory' ? '配饰' : '特效'}</p>
                  </div>
                </div>
                <div className="mt-2 text-right">
                  {equipped
                    ? <span className="text-xs text-green-600 font-bold">✅ 已装备</span>
                    : <span className="text-sm font-extrabold text-kid-warning">⭐{acc.cost}</span>
                  }
                </div>
              </motion.button>
            )
          })}
        </div>
      </div>
    </div>
  )
}
