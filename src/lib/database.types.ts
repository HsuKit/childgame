export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[]

export interface Database {
  public: {
    Tables: {
    Views: Record<string, never>
    Functions: Record<string, never>
    Enums: Record<string, never>
    CompositeTypes: Record<string, never>
      profiles: {
        Row: { id: string; nickname: string; avatar_url: string | null; grade: number; phone: string | null; created_at: string }
        Insert: { id: string; nickname: string; avatar_url?: string | null; grade: number; phone?: string | null }
        Update: { nickname?: string; avatar_url?: string | null; grade?: number; phone?: string | null }
      }
      companions: {
        Row: { id: string; user_id: string; companion_type: string; name: string; level: number; exp: number; hunger: number; mood: number; equipped_items: Json; created_at: string }
        Insert: { id?: string; user_id: string; companion_type: string; name: string; level?: number; exp?: number; hunger?: number; mood?: number; equipped_items?: Json }
        Update: { companion_type?: string; name?: string; level?: number; exp?: number; hunger?: number; mood?: number; equipped_items?: Json }
      }
      companion_types: {
        Row: { id: string; name: string; category: string; base_image_url: string; image_gen_prompt: string | null; rarity: string; unlock_cost: number; is_active: boolean }
        Insert: { id: string; name: string; category: string; base_image_url: string; image_gen_prompt?: string | null; rarity?: string; unlock_cost?: number; is_active?: boolean }
        Update: { name?: string; category?: string; base_image_url?: string; image_gen_prompt?: string | null; rarity?: string; unlock_cost?: number; is_active?: boolean }
      }
      questions: {
        Row: { id: string; subject: 'chinese' | 'math' | 'english'; grade: number; difficulty: number; type: 'choice' | 'fill' | 'match'; content: Json; source: 'builtin' | 'ai_generated'; created_at: string }
        Insert: { id?: string; subject: 'chinese' | 'math' | 'english'; grade: number; difficulty: number; type: 'choice' | 'fill' | 'match'; content: Json; source?: 'builtin' | 'ai_generated' }
        Update: { content?: Json; source?: 'builtin' | 'ai_generated' }
      }
      quiz_records: {
        Row: { id: string; user_id: string; question_id: string; subject: string; is_correct: boolean; points_earned: number; answered_at: string }
        Insert: { id?: string; user_id: string; question_id: string; subject: string; is_correct: boolean; points_earned: number }
        Update: Record<string, never>
      }
      check_ins: {
        Row: { id: string; user_id: string; date: string; streak_count: number; chinese_done: boolean; math_done: boolean; english_done: boolean; bonus_points: number }
        Insert: { id?: string; user_id: string; date: string; streak_count?: number; chinese_done?: boolean; math_done?: boolean; english_done?: boolean; bonus_points?: number }
        Update: { chinese_done?: boolean; math_done?: boolean; english_done?: boolean; bonus_points?: number; streak_count?: number }
      }
      points_transactions: {
        Row: { id: string; user_id: string; amount: number; reason: string; reference_id: string | null; created_at: string }
        Insert: { id?: string; user_id: string; amount: number; reason: string; reference_id?: string | null }
        Update: Record<string, never>
      }
      shop_items: {
        Row: { id: string; name: string; type: 'food' | 'accessory' | 'skin' | 'background'; companion_type: string | null; image_url: string; cost: number; effect: Json; is_active: boolean }
        Insert: { id?: string; name: string; type: 'food' | 'accessory' | 'skin' | 'background'; companion_type?: string | null; image_url: string; cost: number; effect: Json; is_active?: boolean }
        Update: { name?: string; cost?: number; effect?: Json; is_active?: boolean }
      }
    }
  }
}
