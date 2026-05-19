import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import type { Database } from '../lib/database.types'

type Profile = Database['public']['Tables']['profiles']['Row']

interface AuthState {
  user: { id: string; isAnonymous: boolean } | null
  profile: Profile | null
  isLoading: boolean
  isNewUser: boolean
  initAuth: () => Promise<void>
  signInAnonymously: () => Promise<void>
  bindPhone: (phone: string) => Promise<void>
  updateGrade: (grade: number) => Promise<void>
  updateNickname: (nickname: string) => Promise<void>
  createProfile: (nickname: string, grade: number) => Promise<void>
  signOut: () => Promise<void>
}

export const useAuthStore = create<AuthState>((set, get) => ({
  user: null,
  profile: null,
  isLoading: true,
  isNewUser: false,

  initAuth: async () => {
    set({ isLoading: true })
    const { data: { session } } = await supabase.auth.getSession()
    if (session?.user) {
      set({ user: { id: session.user.id, isAnonymous: session.user.is_anonymous ?? false } })
      const { data: profile } = await supabase.from('profiles').select('*').eq('id', session.user.id).single()
      if (profile) {
        set({ profile, isNewUser: false, isLoading: false })
      } else {
        set({ isNewUser: true, isLoading: false })
      }
    } else {
      set({ isLoading: false })
    }
  },

  signInAnonymously: async () => {
    const { data, error } = await supabase.auth.signInAnonymously()
    if (error) throw error
    if (data.user) set({ user: { id: data.user.id, isAnonymous: true }, isNewUser: true })
  },

  createProfile: async (nickname: string, grade: number) => {
    const user = get().user
    if (!user) throw new Error('Not authenticated')
    const { error } = await supabase.from('profiles').insert({ id: user.id, nickname, grade })
    if (error) throw error
    const { data: profile } = await supabase.from('profiles').select('*').eq('id', user.id).single()
    set({ profile, isNewUser: false })
  },

  bindPhone: async (phone: string) => {
    const { error } = await supabase.from('profiles').update({ phone }).eq('id', get().user!.id)
    if (error) throw error
    set({ profile: get().profile ? { ...get().profile!, phone } : null })
  },

  updateGrade: async (grade: number) => {
    const { error } = await supabase.from('profiles').update({ grade }).eq('id', get().user!.id)
    if (error) throw error
    set({ profile: get().profile ? { ...get().profile!, grade } : null })
  },

  updateNickname: async (nickname: string) => {
    const { error } = await supabase.from('profiles').update({ nickname }).eq('id', get().user!.id)
    if (error) throw error
    set({ profile: get().profile ? { ...get().profile!, nickname } : null })
  },

  signOut: async () => {
    await supabase.auth.signOut()
    set({ user: null, profile: null, isNewUser: false })
  },
}))
