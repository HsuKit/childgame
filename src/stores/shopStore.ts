import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { usePointsStore } from './pointsStore'
import { useCompanionStore } from './companionStore'
import type { Database } from '../lib/database.types'

type ShopItem = Database['public']['Tables']['shop_items']['Row']

interface ShopState {
  items: ShopItem[]
  isLoading: boolean
  fetchItems: () => Promise<void>
  purchaseItem: (item: ShopItem) => Promise<boolean>
}

export const useShopStore = create<ShopState>((set) => ({
  items: [],
  isLoading: false,

  fetchItems: async () => {
    set({ isLoading: true })
    const { data } = await supabase.from('shop_items').select('*').eq('is_active', true).order('cost')
    set({ items: data || [], isLoading: false })
  },

  purchaseItem: async (item: ShopItem) => {
    const spent = await usePointsStore.getState().spendPoints(item.cost, 'buy_item', item.id)
    if (!spent) return false
    const effect = item.effect as { hunger?: number; mood?: number }
    if (effect.hunger || effect.mood) {
      await useCompanionStore.getState().feed(effect.hunger ?? 0, effect.mood ?? 0)
    }
    if (item.type === 'accessory' || item.type === 'skin' || item.type === 'background') {
      await useCompanionStore.getState().equipItem(item.id)
    }
    return true
  },
}))
