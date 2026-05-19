import { useEffect, useState } from 'react'
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
    setMessage(success ? `成功购买${item.name}! 🎉` : '积分不足! 😢')
    setTimeout(() => setMessage(null), 2000)
  }

  return (
    <div className="p-6">
      <div className="text-center mb-6">
        <h1 className="text-xl font-bold">积分商城</h1>
        <p className="text-sm text-gray-400 mt-1">当前积分: <span className="text-kid-primary font-bold">{balance} ⭐</span></p>
      </div>
      {message && <div className="mb-4 p-3 rounded-xl text-center font-bold bg-purple-50 text-kid-primary">{message}</div>}
      <div className="grid grid-cols-3 gap-3">
        {items.map(item => (
          <ShopItemCard key={item.id} item={item} canAfford={balance >= item.cost} onBuy={handleBuy} />
        ))}
      </div>
    </div>
  )
}
