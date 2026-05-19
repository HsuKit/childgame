import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { LEVEL_THRESHOLDS } from '../lib/constants'
import type { Database } from '../lib/database.types'

type Companion = Database['public']['Tables']['companions']['Row']

interface CompanionState {
  companion: Companion | null
  isLoading: boolean
  fetchCompanion: () => Promise<void>
  createCompanion: (type: string, name: string) => Promise<void>
  feed: (hungerAmount: number, moodAmount: number) => Promise<void>
  addExp: (amount: number) => Promise<void>
  equipItem: (itemId: string) => Promise<void>
  unequipItem: (itemId: string) => Promise<void>
}

export const useCompanionStore = create<CompanionState>((set, get) => ({
  companion: null,
  isLoading: false,

  fetchCompanion: async () => {
    set({ isLoading: true })
    const userId = useAuthStore.getState().user?.id
    if (!userId) return set({ isLoading: false })
    const { data } = await supabase.from('companions').select('*').eq('user_id', userId).maybeSingle()
    set({ companion: data, isLoading: false })
  },

  createCompanion: async (type: string, name: string) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) throw new Error('Not authenticated')
    const { data, error } = await supabase.from('companions').insert({ user_id: userId, companion_type: type, name }).select().single()
    if (error) throw error
    set({ companion: data })
  },

  feed: async (hungerAmount: number, moodAmount: number) => {
    const c = get().companion
    if (!c) return
    const newHunger = Math.min(100, c.hunger + hungerAmount)
    const newMood = Math.min(100, c.mood + moodAmount)
    await supabase.from('companions').update({ hunger: newHunger, mood: newMood }).eq('id', c.id)
    set({ companion: { ...c, hunger: newHunger, mood: newMood } })
  },

  addExp: async (amount: number) => {
    const c = get().companion
    if (!c) return
    const newExp = c.exp + amount
    let newLevel = c.level
    while (newLevel < LEVEL_THRESHOLDS.length - 1 && newExp >= LEVEL_THRESHOLDS[newLevel]) newLevel++
    await supabase.from('companions').update({ exp: newExp, level: newLevel }).eq('id', c.id)
    set({ companion: { ...c, exp: newExp, level: newLevel } })
  },

  equipItem: async (itemId: string) => {
    const c = get().companion
    if (!c) return
    const items = (c.equipped_items as string[]) || []
    if (items.includes(itemId)) return
    const newItems = [...items, itemId]
    await supabase.from('companions').update({ equipped_items: newItems }).eq('id', c.id)
    set({ companion: { ...c, equipped_items: newItems } })
  },

  unequipItem: async (itemId: string) => {
    const c = get().companion
    if (!c) return
    const items = ((c.equipped_items as string[]) || []).filter(id => id !== itemId)
    await supabase.from('companions').update({ equipped_items: items }).eq('id', c.id)
    set({ companion: { ...c, equipped_items: items } })
  },
}))
