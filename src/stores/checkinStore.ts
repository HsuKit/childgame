import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { usePointsStore } from './pointsStore'
import { POINTS } from '../lib/constants'
import type { Subject } from '../lib/constants'

interface CheckInState {
  today: {
    chinese_done: boolean
    math_done: boolean
    english_done: boolean
    streak_count: number
    bonus_points: number
  } | null
  isLoading: boolean
  fetchToday: () => Promise<void>
  markSubjectDone: (subject: Subject) => Promise<void>
}

export const useCheckinStore = create<CheckInState>((set, get) => ({
  today: null,
  isLoading: false,

  fetchToday: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    set({ isLoading: true })
    const todayStr = new Date().toISOString().slice(0, 10)
    let { data } = await supabase.from('check_ins').select('*').eq('user_id', userId).eq('date', todayStr).maybeSingle()
    if (!data) {
      const yesterday = new Date(Date.now() - 86400000).toISOString().slice(0, 10)
      const { data: yesterdayData } = await supabase.from('check_ins').select('streak_count').eq('user_id', userId).eq('date', yesterday).maybeSingle()
      const streakCount = yesterdayData ? yesterdayData.streak_count : 0
      const { data: newRecord } = await supabase.from('check_ins').insert({ user_id: userId, date: todayStr, streak_count: streakCount }).select().single()
      data = newRecord
    }
    set({
      today: data ? { chinese_done: data.chinese_done, math_done: data.math_done, english_done: data.english_done, streak_count: data.streak_count, bonus_points: data.bonus_points } : null,
      isLoading: false,
    })
  },

  markSubjectDone: async (subject: Subject) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const todayStr = new Date().toISOString().slice(0, 10)
    const field = `${subject}_done` as 'chinese_done' | 'math_done' | 'english_done'
    const { data } = await supabase.from('check_ins').update({ [field]: true }).eq('user_id', userId).eq('date', todayStr).select().single()
    if (!data) return
    const allDone = data.chinese_done && data.math_done && data.english_done
    if (allDone && data.bonus_points === 0) {
      const newStreak = data.streak_count + 1
      let bonus = POINTS.DAILY_ALL_COMPLETE
      if (newStreak % 30 === 0) bonus += POINTS.STREAK_30_DAY
      else if (newStreak % 7 === 0) bonus += POINTS.STREAK_7_DAY
      await supabase.from('check_ins').update({ bonus_points: bonus, streak_count: newStreak }).eq('id', data.id)
      usePointsStore.getState().addPoints(bonus, 'checkin_bonus')
      set(state => ({
        today: state.today ? { ...data, bonus_points: bonus, streak_count: newStreak } : null,
      }))
    } else {
      set(state => ({ today: state.today ? { ...state.today, [field]: true } : null }))
    }
  },
}))
