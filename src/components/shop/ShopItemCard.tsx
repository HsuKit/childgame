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
    <motion.div
      whileHover={{ scale: 1.03 }} whileTap={{ scale: 0.97 }}
      className="bg-white rounded-3xl p-4 shadow-md shadow-gray-100/50 border border-gray-100 text-center"
    >
      <div className="w-14 h-14 bg-gradient-to-br from-purple-50 to-pink-50 rounded-2xl flex items-center justify-center mx-auto mb-3">
        <span className="text-2xl">{getEmoji(item.type)}</span>
      </div>
      <p className="font-extrabold text-sm text-kid-text">{item.name}</p>
      <p className="text-xs text-gray-400 mt-1">
        {effect.hunger ? `饱腹+${effect.hunger} ` : ''}{effect.mood ? `心情+${effect.mood}` : ''}
      </p>
      <motion.button
        whileTap={{ scale: 0.9 }}
        onClick={() => onBuy(item)}
        disabled={!canAfford}
        className="mt-3 w-full py-2.5 rounded-2xl text-sm font-extrabold transition-all
          bg-gradient-to-r from-kid-warning to-kid-secondary text-white shadow-md shadow-orange-200/30
          disabled:bg-gray-200 disabled:text-gray-400 disabled:shadow-none"
      >
        ⭐ {item.cost}
      </motion.button>
    </motion.div>
  )
}
