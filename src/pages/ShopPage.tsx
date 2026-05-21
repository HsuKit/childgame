import { useEffect, useState } from 'react'
import { motion } from 'framer-motion'
import { useShopStore } from '../stores/shopStore'
import { usePointsStore } from '../stores/pointsStore'
import { ShopItemCard } from '../components/shop/ShopItemCard'
import type { Database } from '../lib/database.types'

type ShopItem = Database['public']['Tables']['shop_items']['Row']

export default function ShopPage() {
  const { items, fetchItems, purchaseItem } = useShopStore()
  const { balance, fetchBalance } = usePointsStore()
  const [message, setMessage] = useState<string | null>(null)

  useEffect(() => { fetchItems(); fetchBalance() }, [fetchItems, fetchBalance])

  const handleBuy = async (item: ShopItem) => {
    const success = await purchaseItem(item)
    setMessage(success ? `🎉 成功购买${item.name}!` : '😢 积分不足!')
    setTimeout(() => setMessage(null), 2000)
  }

  return (
    <div className="p-4 space-y-4">
      {/* Header */}
      <div className="text-center">
        <h1 className="text-2xl font-extrabold bg-gradient-to-r from-kid-warning to-kid-secondary bg-clip-text text-transparent">
          🛍️ 积分商城
        </h1>
        <motion.div
          whileTap={{ scale: 0.95 }}
          className="inline-flex items-center gap-2 glass px-5 py-2 rounded-full mt-2"
        >
          <span className="text-lg">⭐</span>
          <span className="font-extrabold text-kid-warning text-lg">{balance}</span>
        </motion.div>
      </div>

      {message && (
        <motion.div
          initial={{ opacity: 0, y: -10 }} animate={{ opacity: 1, y: 0 }}
          className="p-4 rounded-2xl text-center font-extrabold bg-gradient-to-r from-purple-50 to-pink-50 text-kid-primary border border-purple-200"
        >
          {message}
        </motion.div>
      )}

      <div className="grid grid-cols-2 gap-3">
        {items.map(item => (
          <ShopItemCard key={item.id} item={item} canAfford={balance >= item.cost} onBuy={handleBuy} />
        ))}
      </div>
    </div>
  )
}
