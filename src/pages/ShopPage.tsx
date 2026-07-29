import { useState, useEffect } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { useCompanionStore } from '../stores/companionStore'
import { usePointsStore } from '../stores/pointsStore'
import { COMPANION_TYPES } from '../data/companionTypes'
import { Hand, Shirt, Star, Sword, X } from 'lucide-react'
import { PageHeader } from '../components/ui/PageHeader'
import { StatePanel } from '../components/ui/StatePanel'

export default function ShopPage() {
  const { companion, equipOutfit, equipWeapon, unequipWeapon } = useCompanionStore()
  const { balance, spendPoints } = usePointsStore()
  const [message, setMessage] = useState<string | null>(null)
  const [previewAnim, setPreviewAnim] = useState<string | null>(null)

  if (!companion) return <StatePanel tone="empty" title="请先选择伙伴" message="有伙伴之后，才能为它挑选外观和装备。" />

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
      setMessage('外观已更换')
    } else {
      const ok = await spendPoints(cost, 'buy_outfit')
      if (ok) {
        await equipOutfit(variant, `outfit_${variant}`)
        setMessage('外观已解锁并更换')
      } else setMessage('积分不足')
    }
    setTimeout(() => setMessage(null), 2000)
  }

  const toggleWeapon = async () => {
    setPreviewAnim(hasWeapon ? 'throw' : 'attack')
    if (hasWeapon) {
      await unequipWeapon(); setMessage('已卸下武器')
    } else if (weaponBought) {
      await equipWeapon(); setMessage('已装备武器')
    } else {
      const ok = await spendPoints(200, 'buy_weapon')
      if (ok) { await equipWeapon(true); setMessage('已装备武器') }
      else { setMessage('积分不足'); setPreviewAnim(null); return }
    }
    setTimeout(() => { setMessage(null); setPreviewAnim(null) }, 2500)
  }

  return (
    <div className="page-stack">
      <PageHeader
        eyebrow="伙伴装备"
        title={`${currentType?.name}的衣柜`}
        subtitle="解锁外观与武器，打造独一无二的冒险伙伴。"
        trailing={<span className="inline-flex min-h-11 items-center gap-1.5 rounded-[14px] bg-adventure-warning-soft px-3 font-extrabold text-amber-700"><Star aria-hidden="true" className="h-4 w-4 fill-current" />{balance}</span>}
      />

      {message && (
        <motion.div initial={{ opacity: 0, y: -10 }} animate={{ opacity: 1, y: 0 }}
          role="status"
          className="rounded-[16px] border border-indigo-200 bg-adventure-primary-soft p-4 text-center font-extrabold text-adventure-primary">
          {message}
        </motion.div>
      )}

      {/* Action Preview Modal */}
      <AnimatePresence>
        {previewAnim && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/50 p-4"
            onClick={() => setPreviewAnim(null)}>
            <motion.div initial={{ scale: 0.5 }} animate={{ scale: 1 }}
              role="dialog" aria-modal="true" aria-label="武器动作预览"
              className="relative rounded-[22px] bg-white p-6 text-center shadow-2xl"
              onClick={e => e.stopPropagation()}>
              <button type="button" onClick={() => setPreviewAnim(null)} aria-label="关闭预览" className="absolute right-3 top-3 grid h-11 w-11 place-items-center rounded-[14px] text-adventure-muted"><X aria-hidden="true" className="h-5 w-5" /></button>
              <p className="mb-4 flex items-center justify-center gap-2 text-xl font-extrabold text-adventure-text">
                {previewAnim === 'attack' ? <Sword aria-hidden="true" className="h-5 w-5" /> : <Hand aria-hidden="true" className="h-5 w-5" />}
                {previewAnim === 'attack' ? '武器攻击' : '空手投掷'}
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
        <h2 className="section-title mb-3 flex items-center gap-2"><Shirt aria-hidden="true" className="h-5 w-5 text-adventure-primary" />外观套装</h2>
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3">
          {outfits.map((variant, i) => {
            const cost = i === 0 ? 0 : 100 * (i + 1)
            const isActive = variant === currentOutfit
            const label = i === 0 ? '默认' : i === 1 ? '进阶' : '传说'
            const bg = i === 0 ? 'from-gray-100 to-gray-200' : i === 1 ? 'from-blue-100 to-cyan-100' : 'from-purple-100 to-pink-100'
            return (
              <motion.button key={variant} whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}
                onClick={() => buyOutfit(variant, cost)}
                aria-pressed={isActive}
                className={`rounded-[18px] border-2 bg-gradient-to-br p-3 text-center transition-all ${bg} ${
                  isActive ? 'border-adventure-primary shadow-lg shadow-indigo-100' : 'border-adventure-border'
                }`}>
                <div className="w-16 h-16 mx-auto mb-2 flex items-center justify-center">
                  <img src={`/assets/companions/${variant}/Body.png`} alt={label} className="w-full h-full object-contain opacity-70" />
                </div>
                <p className="text-xs font-bold">{label}外观</p>
                {isActive
                  ? <span className="text-xs font-bold text-adventure-primary">使用中</span>
                  : <span className="text-xs font-bold text-amber-700">{cost === 0 ? '免费' : `${cost} 积分`}</span>}
              </motion.button>
            )
          })}
        </div>
      </div>

      {/* Weapon */}
      <div>
        <h2 className="section-title mb-3 flex items-center gap-2"><Sword aria-hidden="true" className="h-5 w-5 text-adventure-primary" />武器</h2>
        <motion.button
          whileHover={{ scale: 1.03 }} whileTap={{ scale: 0.97 }}
          onClick={toggleWeapon}
          aria-pressed={hasWeapon}
          className={`w-full rounded-[18px] border-2 p-5 text-left transition-all ${
            hasWeapon ? 'border-amber-400 bg-adventure-warning-soft'
                      : 'border-adventure-border bg-white'
          }`}>
          <div className="flex items-center gap-4">
            <div className="flex h-14 w-14 items-center justify-center rounded-[16px] bg-white text-adventure-primary shadow-sm">
              {hasWeapon ? <Sword aria-hidden="true" className="h-7 w-7" /> : <Hand aria-hidden="true" className="h-7 w-7" />}
            </div>
            <div className="flex-1">
              <p className="text-base font-extrabold text-adventure-text">{hasWeapon ? '已装备武器' : '空手'}</p>
              <p className="mt-1 text-xs leading-5 text-adventure-muted">
                {hasWeapon ? '点击卸下武器，恢复空手攻击' : '解锁武器，装备后点击伙伴可发动攻击'}
              </p>
            </div>
            <div className="text-right">
              {!hasWeapon && <span className="text-sm font-extrabold text-amber-700">200 积分</span>}
              {hasWeapon && <span className="text-xs text-adventure-muted">点击卸下</span>}
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
