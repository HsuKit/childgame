import { motion } from 'framer-motion'
import type { Database } from '../../lib/database.types'

type ShopItem = Database['public']['Tables']['shop_items']['Row']

interface Props { item: ShopItem; canAfford: boolean; onBuy: (item: ShopItem) => void }

function getEmoji(type: string): string {
  switch (type) { case 'food': return '🍎'; case 'accessory': return '💍'; case 'skin': return '🎨'; case 'background': return '🖼️'; default: return '📦' }
}

export function ShopItemCard({ item, canAfford, onBuy }: Props) {
  const effect = item.effect as { hunger?: number; mood?: number }

  return (
    <motion.div whileHover={{ scale: 1.03 }} className="card flex flex-col items-center text-center">
      <p className="text-3xl mb-2">{getEmoji(item.type)}</p>
      <p className="font-bold text-sm">{item.name}</p>
      <p className="text-xs text-gray-400 mt-1">
        {effect.hunger ? `饱腹+${effect.hunger} ` : ''}{effect.mood ? `心情+${effect.mood}` : ''}
      </p>
      <button onClick={() => onBuy(item)} disabled={!canAfford}
        className="mt-3 px-4 py-2 rounded-xl text-sm font-bold transition-all
                   bg-kid-primary text-white disabled:bg-gray-200 disabled:text-gray-400">
        ⭐ {item.cost}
      </button>
    </motion.div>
  )
}
