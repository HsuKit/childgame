import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { getErrorMessage } from '../lib/errorMessage'
import type { Database } from '../lib/database.types'

type Profile = Database['public']['Tables']['profiles']['Row']

interface AuthState {
  user: { id: string; isAnonymous: boolean } | null
  profile: Profile | null
  isLoading: boolean
  isNewUser: boolean
  authError: string | null
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
  authError: null,

  initAuth: async () => {
    set({ isLoading: true, authError: null })
    try {
      const { data: sessionData, error: sessionError } = await supabase.auth.getSession()
      if (sessionError) throw sessionError

      let authUser = sessionData.session?.user
      if (!authUser) {
        const { data, error } = await supabase.auth.signInAnonymously()
        if (error) throw error
        if (!data.user) throw new Error('Anonymous sign-in returned no user')
        authUser = data.user
      }

      const user = { id: authUser.id, isAnonymous: authUser.is_anonymous ?? false }
      const { data: profile, error: profileError } = await supabase.from('profiles').select('*').eq('id', authUser.id).maybeSingle()
      if (profileError) throw profileError
      set({ user, profile, isNewUser: !profile, authError: null })
    } catch (error) {
      console.error('Authentication bootstrap failed:', error)
      set({
        user: null,
        profile: null,
        isNewUser: false,
        authError: getErrorMessage(error, '登录服务暂时不可用，请稍后重试'),
      })
    } finally {
      set({ isLoading: false })
    }
  },

  signInAnonymously: async () => {
    const { data, error } = await supabase.auth.signInAnonymously()
    if (error) throw error
    if (data.user) set({ user: { id: data.user.id, isAnonymous: true }, isNewUser: true, authError: null })
  },

  createProfile: async (nickname: string, grade: number) => {
    const user = get().user
    if (!user) throw new Error('Not authenticated')
    const { error } = await supabase.from('profiles').insert({ id: user.id, nickname, grade })
    if (error) throw error
    const { data: profile, error: profileError } = await supabase.from('profiles').select('*').eq('id', user.id).single()
    if (profileError) throw profileError
    set({ profile, isNewUser: false, authError: null })
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
    set({ user: null, profile: null, isNewUser: false, authError: null })
  },
}))
