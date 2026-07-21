export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[]
export type MistakeStatus = 'needs_correction' | 'reinforcing' | 'mastered'

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
        Row: { id: string; user_id: string; companion_type: string; name: string; level: number; exp: number; hunger: number; mood: number; equipped_items: Json; equipped_outfit: string | null; evolution_stage: number; created_at: string }
        Insert: { id?: string; user_id: string; companion_type: string; name: string; level?: number; exp?: number; hunger?: number; mood?: number; equipped_items?: Json; equipped_outfit?: string | null; evolution_stage?: number }
        Update: { companion_type?: string; name?: string; level?: number; exp?: number; hunger?: number; mood?: number; equipped_items?: Json; equipped_outfit?: string | null; evolution_stage?: number }
      }
      companion_types: {
        Row: { id: string; name: string; category: string; base_image_url: string; image_gen_prompt: string | null; rarity: string; unlock_cost: number; is_active: boolean }
        Insert: { id: string; name: string; category: string; base_image_url: string; image_gen_prompt?: string | null; rarity?: string; unlock_cost?: number; is_active?: boolean }
        Update: { name?: string; category?: string; base_image_url?: string; image_gen_prompt?: string | null; rarity?: string; unlock_cost?: number; is_active?: boolean }
      }
      questions: {
        Row: { id: string; external_id: string; subject: 'chinese' | 'math' | 'english'; grade: number; difficulty: number; type: 'choice' | 'fill' | 'match' | 'grid'; content: Json; source: 'builtin' | 'ai_generated'; knowledge_point: string; skill: 'recall' | 'understand' | 'apply' | 'reason'; tags: string[]; content_hash: string; review_status: 'draft' | 'reviewed' | 'approved'; version: number; created_at: string }
        Insert: { id?: string; external_id: string; subject: 'chinese' | 'math' | 'english'; grade: number; difficulty: number; type: 'choice' | 'fill' | 'match' | 'grid'; content: Json; source?: 'builtin' | 'ai_generated'; knowledge_point: string; skill: 'recall' | 'understand' | 'apply' | 'reason'; tags?: string[]; content_hash: string; review_status?: 'draft' | 'reviewed' | 'approved'; version?: number }
        Update: { external_id?: string; subject?: 'chinese' | 'math' | 'english'; grade?: number; difficulty?: number; type?: 'choice' | 'fill' | 'match' | 'grid'; content?: Json; source?: 'builtin' | 'ai_generated'; knowledge_point?: string; skill?: 'recall' | 'understand' | 'apply' | 'reason'; tags?: string[]; content_hash?: string; review_status?: 'draft' | 'reviewed' | 'approved'; version?: number }
      }
      quiz_records: {
        Row: { id: string; user_id: string; question_id: string; subject: string; is_correct: boolean; points_earned: number; selected_answer: Json | null; answered_at: string }
        Insert: { id?: string; user_id: string; question_id: string; subject: string; is_correct: boolean; points_earned: number; selected_answer?: Json | null }
        Update: Record<string, never>
      }
      mistake_records: {
        Row: {
          id: string
          user_id: string
          question_id: string
          subject: 'chinese' | 'math' | 'english'
          status: MistakeStatus
          wrong_count: number
          correct_review_count: number
          last_wrong_at: string
          last_reviewed_at: string | null
          mastered_at: string | null
          created_at: string
          updated_at: string
        }
        Insert: {
          id?: string
          user_id: string
          question_id: string
          subject: 'chinese' | 'math' | 'english'
          status?: MistakeStatus
          wrong_count?: number
          correct_review_count?: number
          last_wrong_at?: string
          last_reviewed_at?: string | null
          mastered_at?: string | null
          created_at?: string
          updated_at?: string
        }
        Update: {
          status?: MistakeStatus
          wrong_count?: number
          correct_review_count?: number
          last_wrong_at?: string
          last_reviewed_at?: string | null
          mastered_at?: string | null
          updated_at?: string
        }
      }
      mistake_reviews: {
        Row: {
          id: string
          user_id: string
          mistake_id: string
          question_id: string
          selected_answer: Json | null
          is_correct: boolean
          status_before: MistakeStatus
          status_after: MistakeStatus
          reviewed_at: string
        }
        Insert: {
          id?: string
          user_id: string
          mistake_id: string
          question_id: string
          selected_answer?: Json | null
          is_correct: boolean
          status_before: MistakeStatus
          status_after: MistakeStatus
          reviewed_at?: string
        }
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
