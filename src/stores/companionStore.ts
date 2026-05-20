import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { LEVEL_THRESHOLDS } from '../lib/constants'
import type { Database } from '../lib/database.types'

type Companion = Database['public']['Tables']['companions']['Row']

interface CompanionState {
  companion: Companion | null
  isLoading: boolean
  justEvolved: boolean
  fetchCompanion: () => Promise<void>
  createCompanion: (type: string, name: string) => Promise<void>
  feed: (hungerAmount: number, moodAmount: number) => Promise<void>
  addExp: (amount: number) => Promise<void>
  equipItem: (itemId: string) => Promise<void>
  unequipItem: (itemId: string) => Promise<void>
  clearEvolved: () => void
}

function getEvolutionStage(level: number): number {
  if (level >= 20) return 4
  if (level >= 10) return 3
  if (level >= 5) return 2
  return 1
}

export const useCompanionStore = create<CompanionState>((set, get) => ({
  companion: null,
  isLoading: false,
  justEvolved: false,

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
    const oldStage = getEvolutionStage(c.level)
    const newStage = getEvolutionStage(newLevel)
    await supabase.from('companions').update({
      exp: newExp,
      level: newLevel,
      evolution_stage: newStage,
    }).eq('id', c.id)
    set({
      companion: { ...c, exp: newExp, level: newLevel, evolution_stage: newStage },
      justEvolved: newStage > oldStage,
    })
  },

  clearEvolved: () => set({ justEvolved: false }),

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
