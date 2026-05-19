# Phase 1: 伙伴养成 + 积分系统 + 商城 + 打卡基础 实现计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the core loop: user visits → picks companion → completes daily quizzes (Chinese/Math/English) → earns points → feeds/decorates companion → maintains daily streak.

**Architecture:** React SPA with Zustand stores, Supabase backend (auth + PostgreSQL + RLS). Companion system is type-driven via `companion_types` table for future extensibility. Guest-first login with optional phone binding.

**Tech Stack:** React 18 + TypeScript + Vite + TailwindCSS + Framer Motion + Zustand + Supabase + React Router v6

---

## File Map

```
childgame/
  .env                              -- Supabase credentials
  .env.example                      -- Template without secrets
  supabase/
    migrations/
      001_initial_schema.sql        -- All tables, RLS, seed data
  src/
    main.tsx                        -- React entry
    App.tsx                         -- Router setup
    index.css                       -- Tailwind directives + global styles
    lib/
      supabase.ts                   -- Supabase client singleton
      database.types.ts             -- Generated types from schema
      constants.ts                  -- Point values, level thresholds
    stores/
      authStore.ts                  -- Auth state (guest/login/phone)
      companionStore.ts             -- Companion state + actions
      quizStore.ts                  -- Quiz session state
      pointsStore.ts                -- Points balance + history
      checkinStore.ts               -- Daily check-in state
      shopStore.ts                  -- Shop items + purchase
    data/
      companionTypes.ts             -- Seed companion type definitions
      shopItems.ts                  -- Seed shop item definitions
      sampleQuestions.ts            -- Built-in starter questions
    components/
      layout/
        AppLayout.tsx               -- Shell (nav + content + banner)
        BottomNav.tsx               -- Mobile bottom navigation
      auth/
        GuestGate.tsx               -- Auto guest login on first visit
        PhoneBindBanner.tsx         -- Top banner for phone binding
        GradeSelect.tsx             -- Grade selection modal on first visit
      companion/
        CompanionDisplay.tsx        -- Animated companion on home screen
        CompanionStats.tsx          -- Hunger/mood/exp bars
        CompanionSelect.tsx         -- Grid of starter companions to choose
        CompanionNameInput.tsx      -- Name your companion modal
        EvolutionCelebration.tsx    -- Evolution animation overlay
      quiz/
        QuizCard.tsx                -- Single question card with options
        QuizProgressBar.tsx         -- Progress through daily tasks
        QuizResultPanel.tsx         -- Post-quiz score + points breakdown
        DailyTaskCard.tsx           -- Subject task card on home (CN/MA/EN)
      shop/
        ShopGrid.tsx                -- Grid of purchasable items
        ShopItemCard.tsx            -- Individual shop item with cost
        PurchaseConfirm.tsx         -- Buy confirmation dialog
      checkin/
        StreakBadge.tsx             -- Streak count display
        CheckInCalendar.tsx         -- Monthly calendar view
      common/
        PointsFlyAnimation.tsx      -- Points flying to companion
        ConfettiOverlay.tsx         -- Celebration confetti
        ErrorBoundary.tsx           -- React error boundary
        LoadingSpinner.tsx          -- Reusable loading state
    pages/
      HomePage.tsx                  -- Companion display + today's tasks
      CompanionPage.tsx             -- Companion detail (stats, evolve, dress)
      CompanionSelectPage.tsx       -- Initial companion selection
      QuizPage.tsx                  -- Active quiz session
      QuizResultPage.tsx            -- Quiz complete summary
      ShopPage.tsx                  -- Full shop view
      CheckInPage.tsx               -- Check-in calendar + history
      ProfilePage.tsx               -- Settings, grade, phone bind
    hooks/
      useSupabaseQuery.ts           -- Generic Supabase query hook
      useSound.ts                   -- Sound effect hook (future)
```

---

### Task 1: Project Scaffolding

**Files:**
- Create: `package.json`, `vite.config.ts`, `tsconfig.json`, `tsconfig.app.json`, `tsconfig.node.json`, `tailwind.config.js`, `postcss.config.js`, `index.html`, `.env.example`, `.gitignore`
- Create: `src/main.tsx`, `src/App.tsx`, `src/index.css`

- [ ] **Step 1: Create Vite project**

Run:
```bash
cd /Users/bytedance/Documents/vibe_coding/childgame
npm create vite@latest . -- --template react-ts
```

- [ ] **Step 2: Install dependencies**

Run:
```bash
cd /Users/bytedance/Documents/vibe_coding/childgame
npm install react-router-dom zustand framer-motion @supabase/supabase-js idb
npm install -D tailwindcss @tailwindcss/vite
```

- [ ] **Step 3: Configure TailwindCSS with Vite**

Write `vite.config.ts`:
```typescript
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [react(), tailwindcss()],
})
```

- [ ] **Step 4: Set up index.css**

Write `src/index.css`:
```css
@import "tailwindcss";

@theme {
  --color-kid-primary: #6C5CE7;
  --color-kid-secondary: #FF6B6B;
  --color-kid-success: #51CF66;
  --color-kid-warning: #FFD43B;
  --color-kid-bg: #F8F9FA;
  --color-kid-text: #2D3436;
}

@layer base {
  body {
    @apply bg-kid-bg text-kid-text font-sans;
    -webkit-tap-highlight-color: transparent;
  }
}

@layer components {
  .btn-primary {
    @apply bg-kid-primary text-white px-6 py-3 rounded-2xl font-bold
           hover:opacity-90 active:scale-95 transition-all disabled:opacity-50;
  }
  .card {
    @apply bg-white rounded-3xl shadow-sm p-4;
  }
}
```

- [ ] **Step 5: Create App.tsx shell**

Write `src/App.tsx`:
```typescript
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import { AppLayout } from './components/layout/AppLayout'
import HomePage from './pages/HomePage'
import CompanionPage from './pages/CompanionPage'
import CompanionSelectPage from './pages/CompanionSelectPage'
import QuizPage from './pages/QuizPage'
import QuizResultPage from './pages/QuizResultPage'
import ShopPage from './pages/ShopPage'
import CheckInPage from './pages/CheckInPage'
import ProfilePage from './pages/ProfilePage'

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route element={<AppLayout />}>
          <Route path="/" element={<HomePage />} />
          <Route path="/companion" element={<CompanionPage />} />
          <Route path="/companion/select" element={<CompanionSelectPage />} />
          <Route path="/quiz" element={<QuizPage />} />
          <Route path="/quiz/result" element={<QuizResultPage />} />
          <Route path="/shop" element={<ShopPage />} />
          <Route path="/checkin" element={<CheckInPage />} />
          <Route path="/profile" element={<ProfilePage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  )
}
```

Write `src/main.tsx`:
```typescript
import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App'
import './index.css'

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)
```

- [ ] **Step 6: Create .env.example**

```bash
VITE_SUPABASE_URL=https://your-project.supabase.co
VITE_SUPABASE_ANON_KEY=your-anon-key
```

- [ ] **Step 7: Verify dev server starts**

Run:
```bash
npm run dev
```
Expected: Vite dev server starts, blank page at localhost:5173

- [ ] **Step 8: Commit**

```bash
git add -A
git commit -m "feat: scaffold project with Vite + React + TS + Tailwind"
```

---

### Task 2: Supabase Setup, Types, and Database Schema

**Files:**
- Create: `src/lib/supabase.ts`, `src/lib/database.types.ts`, `src/lib/constants.ts`
- Create: `supabase/migrations/001_initial_schema.sql`

- [ ] **Step 1: Create Supabase client**

Write `src/lib/supabase.ts`:
```typescript
import { createClient } from '@supabase/supabase-js'
import type { Database } from './database.types'

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing VITE_SUPABASE_URL or VITE_SUPABASE_ANON_KEY env vars')
}

export const supabase = createClient<Database>(supabaseUrl, supabaseAnonKey, {
  auth: {
    autoRefreshToken: true,
    persistSession: true,
    detectSessionInUrl: false,
  },
})
```

- [ ] **Step 2: Define database types**

Write `src/lib/database.types.ts`:
```typescript
export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[]

export interface Database {
  public: {
    Tables: {
      profiles: {
        Row: {
          id: string
          nickname: string
          avatar_url: string | null
          grade: number
          phone: string | null
          created_at: string
        }
        Insert: {
          id: string
          nickname: string
          avatar_url?: string | null
          grade: number
          phone?: string | null
        }
        Update: {
          nickname?: string
          avatar_url?: string | null
          grade?: number
          phone?: string | null
        }
      }
      companions: {
        Row: {
          id: string
          user_id: string
          companion_type: string
          name: string
          level: number
          exp: number
          hunger: number
          mood: number
          equipped_items: Json
          created_at: string
        }
        Insert: {
          id?: string
          user_id: string
          companion_type: string
          name: string
          level?: number
          exp?: number
          hunger?: number
          mood?: number
          equipped_items?: Json
        }
        Update: {
          companion_type?: string
          name?: string
          level?: number
          exp?: number
          hunger?: number
          mood?: number
          equipped_items?: Json
        }
      }
      companion_types: {
        Row: {
          id: string
          name: string
          category: string
          base_image_url: string
          image_gen_prompt: string | null
          rarity: string
          unlock_cost: number
          is_active: boolean
        }
        Insert: {
          id: string
          name: string
          category: string
          base_image_url: string
          image_gen_prompt?: string | null
          rarity?: string
          unlock_cost?: number
          is_active?: boolean
        }
        Update: {
          name?: string
          category?: string
          base_image_url?: string
          image_gen_prompt?: string | null
          rarity?: string
          unlock_cost?: number
          is_active?: boolean
        }
      }
      questions: {
        Row: {
          id: string
          subject: 'chinese' | 'math' | 'english'
          grade: number
          difficulty: number
          type: 'choice' | 'fill' | 'match'
          content: Json
          source: 'builtin' | 'ai_generated'
          created_at: string
        }
        Insert: {
          id?: string
          subject: 'chinese' | 'math' | 'english'
          grade: number
          difficulty: number
          type: 'choice' | 'fill' | 'match'
          content: Json
          source?: 'builtin' | 'ai_generated'
        }
        Update: {
          content?: Json
          source?: 'builtin' | 'ai_generated'
        }
      }
      quiz_records: {
        Row: {
          id: string
          user_id: string
          question_id: string
          subject: string
          is_correct: boolean
          points_earned: number
          answered_at: string
        }
        Insert: {
          id?: string
          user_id: string
          question_id: string
          subject: string
          is_correct: boolean
          points_earned: number
        }
        Update: {}
      }
      check_ins: {
        Row: {
          id: string
          user_id: string
          date: string
          streak_count: number
          chinese_done: boolean
          math_done: boolean
          english_done: boolean
          bonus_points: number
        }
        Insert: {
          id?: string
          user_id: string
          date: string
          streak_count?: number
          chinese_done?: boolean
          math_done?: boolean
          english_done?: boolean
          bonus_points?: number
        }
        Update: {
          chinese_done?: boolean
          math_done?: boolean
          english_done?: boolean
          bonus_points?: number
          streak_count?: number
        }
      }
      points_transactions: {
        Row: {
          id: string
          user_id: string
          amount: number
          reason: string
          reference_id: string | null
          created_at: string
        }
        Insert: {
          id?: string
          user_id: string
          amount: number
          reason: string
          reference_id?: string | null
        }
        Update: {}
      }
      shop_items: {
        Row: {
          id: string
          name: string
          type: 'food' | 'accessory' | 'skin' | 'background'
          companion_type: string | null
          image_url: string
          cost: number
          effect: Json
          is_active: boolean
        }
        Insert: {
          id?: string
          name: string
          type: 'food' | 'accessory' | 'skin' | 'background'
          companion_type?: string | null
          image_url: string
          cost: number
          effect: Json
          is_active?: boolean
        }
        Update: {
          name?: string
          cost?: number
          effect?: Json
          is_active?: boolean
        }
      }
    }
  }
}
```

- [ ] **Step 3: Create constants file**

Write `src/lib/constants.ts`:
```typescript
export const POINTS = {
  CORRECT_ANSWER: 10,
  COMBO_BONUS: [5, 10, 15],         // 2nd, 3rd, 4th+ consecutive correct
  DAILY_ALL_COMPLETE: 50,
  STREAK_7_DAY: 100,
  STREAK_30_DAY: 500,
} as const

export const LEVEL_THRESHOLDS = [
  0, 50, 120, 210, 320, 450, 600, 780, 1000, 1300,
  1700, 2200, 2800, 3500, 4300, 5200, 6200, 7300, 8500, 10000,
]

export const DAILY_QUESTIONS_PER_SUBJECT = 5

export const SUBJECTS = ['chinese', 'math', 'english'] as const
export type Subject = typeof SUBJECTS[number]

export const SUBJECT_LABELS: Record<Subject, string> = {
  chinese: '语文',
  math: '数学',
  english: '英语',
}

export const SUBJECT_EMOJIS: Record<Subject, string> = {
  chinese: '📖',
  math: '🔢',
  english: '🔤',
}

export const COMPANION_CATEGORIES = ['animal', 'anime', 'cyberpunk', 'fantasy'] as const
```

- [ ] **Step 4: Create database migration**

Write `supabase/migrations/001_initial_schema.sql`:
```sql
-- Enable UUID generation
create extension if not exists "uuid-ossp";

-- ===== TABLES =====

create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  nickname text not null,
  avatar_url text,
  grade int not null check (grade between 1 and 6),
  phone text,
  created_at timestamptz not null default now()
);

create table public.companion_types (
  id text primary key,
  name text not null,
  category text not null check (category in ('animal', 'anime', 'cyberpunk', 'fantasy')),
  base_image_url text not null default '/companions/default.png',
  image_gen_prompt text,
  rarity text not null default 'common' check (rarity in ('common', 'rare', 'legendary')),
  unlock_cost int not null default 0,
  is_active boolean not null default true
);

create table public.companions (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  companion_type text not null references public.companion_types(id),
  name text not null,
  level int not null default 1,
  exp int not null default 0,
  hunger int not null default 100 check (hunger between 0 and 100),
  mood int not null default 100 check (mood between 0 and 100),
  equipped_items jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now()
);

create table public.questions (
  id uuid primary key default uuid_generate_v4(),
  subject text not null check (subject in ('chinese', 'math', 'english')),
  grade int not null check (grade between 1 and 6),
  difficulty int not null default 1 check (difficulty between 1 and 3),
  type text not null check (type in ('choice', 'fill', 'match')),
  content jsonb not null,
  source text not null default 'builtin' check (source in ('builtin', 'ai_generated')),
  created_at timestamptz not null default now()
);

create table public.quiz_records (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  question_id uuid not null references public.questions(id),
  subject text not null,
  is_correct boolean not null,
  points_earned int not null default 0,
  answered_at timestamptz not null default now()
);

create table public.check_ins (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  date date not null default current_date,
  streak_count int not null default 0,
  chinese_done boolean not null default false,
  math_done boolean not null default false,
  english_done boolean not null default false,
  bonus_points int not null default 0,
  unique(user_id, date)
);

create table public.points_transactions (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  amount int not null,
  reason text not null,
  reference_id uuid,
  created_at timestamptz not null default now()
);

create table public.shop_items (
  id uuid primary key default uuid_generate_v4(),
  name text not null,
  type text not null check (type in ('food', 'accessory', 'skin', 'background')),
  companion_type text references public.companion_types(id),
  image_url text not null default '/items/default.png',
  cost int not null check (cost > 0),
  effect jsonb not null default '{}'::jsonb,
  is_active boolean not null default true
);

-- ===== INDEXES =====

create index idx_companions_user on public.companions(user_id);
create index idx_questions_subject_grade on public.questions(subject, grade);
create index idx_quiz_records_user_date on public.quiz_records(user_id, answered_at);
create index idx_check_ins_user_date on public.check_ins(user_id, date);
create index idx_points_user on public.points_transactions(user_id, created_at);

-- ===== RLS POLICIES =====

alter table public.profiles enable row level security;
alter table public.companions enable row level security;
alter table public.companion_types enable row level security;
alter table public.questions enable row level security;
alter table public.quiz_records enable row level security;
alter table public.check_ins enable row level security;
alter table public.points_transactions enable row level security;
alter table public.shop_items enable row level security;

-- Profiles: users can only see/edit their own
create policy "Users can view own profile" on public.profiles
  for select using (auth.uid() = id);
create policy "Users can insert own profile" on public.profiles
  for insert with check (auth.uid() = id);
create policy "Users can update own profile" on public.profiles
  for update using (auth.uid() = id);

-- Companions: users can only see/edit their own
create policy "Users can view own companions" on public.companions
  for select using (auth.uid() = user_id);
create policy "Users can insert own companion" on public.companions
  for insert with check (auth.uid() = user_id);
create policy "Users can update own companion" on public.companions
  for update using (auth.uid() = user_id);

-- Companion types: everyone can read, no write from client
create policy "Anyone can view companion types" on public.companion_types
  for select using (true);

-- Questions: everyone authenticated can read
create policy "Authenticated users can view questions" on public.questions
  for select using (auth.role() = 'authenticated');

-- Quiz records: users can only see/edit their own
create policy "Users can view own quiz records" on public.quiz_records
  for select using (auth.uid() = user_id);
create policy "Users can insert own quiz records" on public.quiz_records
  for insert with check (auth.uid() = user_id);

-- Check-ins: users can only see/edit their own
create policy "Users can view own check-ins" on public.check_ins
  for select using (auth.uid() = user_id);
create policy "Users can insert own check-in" on public.check_ins
  for insert with check (auth.uid() = user_id);
create policy "Users can update own check-in" on public.check_ins
  for update using (auth.uid() = user_id);

-- Points: users can only view their own
create policy "Users can view own transactions" on public.points_transactions
  for select using (auth.uid() = user_id);
create policy "Users can insert own transactions" on public.points_transactions
  for insert with check (auth.uid() = user_id);

-- Shop items: everyone can read
create policy "Anyone can view shop items" on public.shop_items
  for select using (true);

-- ===== SEED DATA =====

insert into public.companion_types (id, name, category, base_image_url, rarity, unlock_cost) values
  ('cat', '小猫咪', 'animal', '/companions/cat.svg', 'common', 0),
  ('dog', '小狗狗', 'animal', '/companions/dog.svg', 'common', 0),
  ('dino', '小恐龙', 'animal', '/companions/dino.svg', 'common', 0),
  ('fox', '小狐狸', 'animal', '/companions/fox.svg', 'common', 0),
  ('phoenix', '火凤凰', 'fantasy', '/companions/phoenix.svg', 'rare', 500),
  ('cyber_cat', '赛博猫', 'cyberpunk', '/companions/cyber_cat.svg', 'rare', 800);

insert into public.shop_items (name, type, cost, effect) values
  ('面包', 'food', 20, '{"hunger": 20, "mood": 0}'),
  ('小鱼干', 'food', 30, '{"hunger": 35, "mood": 0}'),
  ('蛋糕', 'food', 50, '{"hunger": 50, "mood": 10}'),
  ('草莓冰淇淋', 'food', 80, '{"hunger": 60, "mood": 20}'),
  ('蝴蝶结', 'accessory', 100, '{"mood": 15}'),
  ('墨镜', 'accessory', 150, '{"mood": 20}'),
  ('小围巾', 'accessory', 80, '{"mood": 10}'),
  ('金色皮肤', 'skin', 300, '{"mood": 30}'),
  ('星空背景', 'background', 200, '{"mood": 25}');

-- ===== FUNCTIONS =====

create or replace function get_total_points(user_id uuid)
returns bigint as $$
  select coalesce(sum(amount), 0) from public.points_transactions where user_id = $1;
$$ language sql stable;

create or replace function get_today_quiz_count(user_id uuid, subj text, t_date date)
returns bigint as $$
  select count(*) from public.quiz_records
  where user_id = $1 and subject = $2 and answered_at::date = $3;
$$ language sql stable;
```

- [ ] **Step 5: Commit**

```bash
git add -A
git commit -m "feat: add Supabase client, types, constants, and database schema"
```

---

### Task 3: Auth Store and Login Flow

**Files:**
- Create: `src/stores/authStore.ts`
- Create: `src/components/auth/GuestGate.tsx`
- Create: `src/components/auth/PhoneBindBanner.tsx`
- Create: `src/components/auth/GradeSelect.tsx`

- [ ] **Step 1: Create auth store**

Write `src/stores/authStore.ts`:
```typescript
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
      const { data: profile } = await supabase
        .from('profiles')
        .select('*')
        .eq('id', session.user.id)
        .single()

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
    if (data.user) {
      set({ user: { id: data.user.id, isAnonymous: true }, isNewUser: true })
    }
  },

  createProfile: async (nickname: string, grade: number) => {
    const user = get().user
    if (!user) throw new Error('Not authenticated')

    const { error } = await supabase.from('profiles').insert({
      id: user.id,
      nickname,
      grade,
    })
    if (error) throw error

    const { data: profile } = await supabase
      .from('profiles')
      .select('*')
      .eq('id', user.id)
      .single()

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
```

- [ ] **Step 2: Create GuestGate component**

Write `src/components/auth/GuestGate.tsx`:
```typescript
import { useEffect } from 'react'
import { useAuthStore } from '../../stores/authStore'
import { GradeSelect } from './GradeSelect'

export function GuestGate({ children }: { children: React.ReactNode }) {
  const { user, isLoading, isNewUser, signInAnonymously, initAuth } = useAuthStore()

  useEffect(() => {
    initAuth()
  }, [initAuth])

  useEffect(() => {
    if (!isLoading && !user) {
      signInAnonymously()
    }
  }, [isLoading, user, signInAnonymously])

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="animate-bounce text-4xl">🎮</div>
      </div>
    )
  }

  if (isNewUser) {
    return <GradeSelect />
  }

  return <>{children}</>
}
```

- [ ] **Step 3: Create GradeSelect modal**

Write `src/components/auth/GradeSelect.tsx`:
```typescript
import { useState } from 'react'
import { useAuthStore } from '../../stores/authStore'

export function GradeSelect() {
  const createProfile = useAuthStore(s => s.createProfile)
  const [grade, setGrade] = useState(0)
  const [nickname, setNickname] = useState('')

  const handleStart = async () => {
    if (grade < 1 || !nickname.trim()) return
    await createProfile(nickname.trim(), grade)
  }

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-6 bg-gradient-to-b from-purple-100 to-blue-100">
      <h1 className="text-3xl font-bold text-kid-primary mb-2">欢迎来到知识冒险!</h1>
      <p className="text-gray-500 mb-8">先告诉我你是谁吧</p>

      <input
        type="text"
        placeholder="输入你的昵称"
        value={nickname}
        onChange={e => setNickname(e.target.value)}
        maxLength={12}
        className="w-64 px-4 py-3 rounded-2xl border-2 border-purple-200
                   focus:border-kid-primary outline-none text-center mb-6"
      />

      <p className="text-gray-500 mb-4">选择你的年级</p>
      <div className="grid grid-cols-3 gap-3 mb-8">
        {[1, 2, 3, 4, 5, 6].map(g => (
          <button
            key={g}
            onClick={() => setGrade(g)}
            className={`w-20 h-20 rounded-2xl text-xl font-bold transition-all
              ${grade === g
                ? 'bg-kid-primary text-white scale-110 shadow-lg'
                : 'bg-white text-kid-text hover:bg-purple-50'}`}
          >
            {g}年级
          </button>
        ))}
      </div>

      <button
        onClick={handleStart}
        disabled={grade < 1 || !nickname.trim()}
        className="btn-primary text-xl px-12"
      >
        开始冒险!
      </button>
    </div>
  )
}
```

- [ ] **Step 4: Create PhoneBindBanner**

Write `src/components/auth/PhoneBindBanner.tsx`:
```typescript
import { useState } from 'react'
import { useAuthStore } from '../../stores/authStore'

export function PhoneBindBanner() {
  const { user, profile, bindPhone } = useAuthStore()
  const [showInput, setShowInput] = useState(false)
  const [phone, setPhone] = useState('')
  const [done, setDone] = useState(false)

  if (!user?.isAnonymous || profile?.phone || done) return null

  const handleBind = async () => {
    if (!/^1[3-9]\d{9}$/.test(phone)) return
    await bindPhone(phone)
    setDone(true)
  }

  return (
    <div className="bg-yellow-50 border-b border-yellow-200 px-4 py-2 text-sm text-center">
      {!showInput ? (
        <p>
          ⚠️ 你正在以游客身份使用，数据仅保存在本设备。
          <button
            onClick={() => setShowInput(true)}
            className="text-kid-primary underline ml-1 font-bold"
          >
            绑定手机号，永久保存数据
          </button>
        </p>
      ) : (
        <div className="flex items-center justify-center gap-2 py-1">
          <input
            type="tel"
            placeholder="请输入家长手机号"
            value={phone}
            onChange={e => setPhone(e.target.value)}
            maxLength={11}
            className="px-3 py-1 rounded-lg border text-sm"
          />
          <button onClick={handleBind} className="bg-kid-primary text-white px-3 py-1 rounded-lg text-sm">
            绑定
          </button>
          <button onClick={() => setShowInput(false)} className="text-gray-400 text-sm">
            稍后
          </button>
        </div>
      )}
    </div>
  )
}
```

- [ ] **Step 5: Create AppLayout shell**

Write `src/components/layout/AppLayout.tsx`:
```typescript
import { Outlet } from 'react-router-dom'
import { GuestGate } from '../auth/GuestGate'
import { PhoneBindBanner } from '../auth/PhoneBindBanner'
import { BottomNav } from './BottomNav'

export function AppLayout() {
  return (
    <GuestGate>
      <div className="min-h-screen flex flex-col max-w-md mx-auto bg-white shadow-lg relative">
        <PhoneBindBanner />
        <main className="flex-1 overflow-y-auto pb-20">
          <Outlet />
        </main>
        <BottomNav />
      </div>
    </GuestGate>
  )
}
```

- [ ] **Step 6: Create BottomNav**

Write `src/components/layout/BottomNav.tsx`:
```typescript
import { NavLink } from 'react-router-dom'

const links = [
  { to: '/', label: '首页', icon: '🏠' },
  { to: '/companion', label: '伙伴', icon: '🐾' },
  { to: '/quiz', label: '答题', icon: '📝' },
  { to: '/shop', label: '商城', icon: '🛍️' },
  { to: '/profile', label: '我的', icon: '👤' },
]

export function BottomNav() {
  return (
    <nav className="fixed bottom-0 left-0 right-0 max-w-md mx-auto bg-white border-t flex justify-around py-2 z-50">
      {links.map(({ to, label, icon }) => (
        <NavLink
          key={to}
          to={to}
          className={({ isActive }) =>
            `flex flex-col items-center text-xs gap-1 px-3 py-1 rounded-xl transition-colors
             ${isActive ? 'text-kid-primary font-bold' : 'text-gray-400'}`
          }
        >
          <span className="text-xl">{icon}</span>
          {label}
        </NavLink>
      ))}
    </nav>
  )
}
```

- [ ] **Step 7: Commit**

```bash
git add -A
git commit -m "feat: add auth store, guest gate, grade select, phone binding, and app layout"
```

---

### Task 4: Companion Selection and Store

**Files:**
- Create: `src/stores/companionStore.ts`
- Create: `src/data/companionTypes.ts`
- Create: `src/pages/CompanionSelectPage.tsx`
- Create: `src/components/companion/CompanionSelect.tsx`
- Create: `src/components/companion/CompanionNameInput.tsx`

- [ ] **Step 1: Create companion types seed data**

Write `src/data/companionTypes.ts`:
```typescript
export interface CompanionTypeDef {
  id: string
  name: string
  category: 'animal' | 'anime' | 'cyberpunk' | 'fantasy'
  baseImage: string
  rarity: 'common' | 'rare' | 'legendary'
  unlockCost: number
  description: string
  evolutionStages: string[]
}

export const STARTER_COMPANIONS: CompanionTypeDef[] = [
  {
    id: 'cat',
    name: '小猫咪',
    category: 'animal',
    baseImage: '/companions/cat.svg',
    rarity: 'common',
    unlockCost: 0,
    description: '一只活泼可爱的小猫咪，对世界充满好奇',
    evolutionStages: ['小猫咪', '大猫', '猫骑士', '星辰猫'],
  },
  {
    id: 'dog',
    name: '小狗狗',
    category: 'animal',
    baseImage: '/companions/dog.svg',
    rarity: 'common',
    unlockCost: 0,
    description: '忠诚又勇敢的小伙伴，永远在你身边',
    evolutionStages: ['小狗狗', '大狗', '狗将军', '烈焰犬'],
  },
  {
    id: 'dino',
    name: '小恐龙',
    category: 'animal',
    baseImage: '/companions/dino.svg',
    rarity: 'common',
    unlockCost: 0,
    description: '来自远古的小萌龙，有着无穷的力量',
    evolutionStages: ['小恐龙', '壮恐龙', '恐龙王', '雷霆龙'],
  },
  {
    id: 'fox',
    name: '小狐狸',
    category: 'animal',
    baseImage: '/companions/fox.svg',
    rarity: 'common',
    unlockCost: 0,
    description: '聪明机智的小狐狸，学习的好伙伴',
    evolutionStages: ['小狐狸', '灵狐', '九尾狐', '天狐'],
  },
]
```

- [ ] **Step 2: Create companion store**

Write `src/stores/companionStore.ts`:
```typescript
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

    const { data } = await supabase
      .from('companions')
      .select('*')
      .eq('user_id', userId)
      .maybeSingle()

    set({ companion: data, isLoading: false })
  },

  createCompanion: async (type: string, name: string) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) throw new Error('Not authenticated')

    const { data, error } = await supabase
      .from('companions')
      .insert({ user_id: userId, companion_type: type, name })
      .select()
      .single()

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
    while (newLevel < LEVEL_THRESHOLDS.length - 1 && newExp >= LEVEL_THRESHOLDS[newLevel]) {
      newLevel++
    }
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
```

- [ ] **Step 3: Create companion selection page**

Write `src/pages/CompanionSelectPage.tsx`:
```typescript
import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../stores/companionStore'
import { CompanionSelect } from '../components/companion/CompanionSelect'
import { CompanionNameInput } from '../components/companion/CompanionNameInput'
import { STARTER_COMPANIONS } from '../data/companionTypes'

export default function CompanionSelectPage() {
  const [selected, setSelected] = useState<string | null>(null)
  const [step, setStep] = useState<'select' | 'name'>('select')
  const navigate = useNavigate()
  const createCompanion = useCompanionStore(s => s.createCompanion)

  const handleConfirm = async (name: string) => {
    if (!selected) return
    await createCompanion(selected, name)
    navigate('/')
  }

  return (
    <div className="min-h-screen bg-gradient-to-b from-purple-100 to-blue-100 p-6 flex flex-col">
      <h1 className="text-2xl font-bold text-center text-kid-primary mt-8">
        {step === 'select' ? '选择你的冒险伙伴!' : '给你的伙伴取个名字!'}
      </h1>

      {step === 'select' && (
        <CompanionSelect
          companions={STARTER_COMPANIONS}
          selected={selected}
          onSelect={setSelected}
          onNext={() => selected && setStep('name')}
        />
      )}

      {step === 'name' && (
        <CompanionNameInput
          onConfirm={handleConfirm}
          onBack={() => setStep('select')}
        />
      )}
    </div>
  )
}
```

- [ ] **Step 4: Create CompanionSelect component**

Write `src/components/companion/CompanionSelect.tsx`:
```typescript
import { motion } from 'framer-motion'
import type { CompanionTypeDef } from '../../data/companionTypes'

interface Props {
  companions: CompanionTypeDef[]
  selected: string | null
  onSelect: (id: string) => void
  onNext: () => void
}

export function CompanionSelect({ companions, selected, onSelect, onNext }: Props) {
  return (
    <div className="flex-1 flex flex-col items-center justify-center gap-6">
      <div className="grid grid-cols-2 gap-4">
        {companions.map(c => (
          <motion.button
            key={c.id}
            whileHover={{ scale: 1.05 }}
            whileTap={{ scale: 0.95 }}
            onClick={() => onSelect(c.id)}
            className={`p-4 rounded-3xl border-2 transition-all
              ${selected === c.id
                ? 'border-kid-primary bg-purple-50 shadow-lg'
                : 'border-gray-200 bg-white hover:border-purple-300'}`}
          >
            <img src={c.baseImage} alt={c.name} className="w-24 h-24 mx-auto" />
            <p className="text-center font-bold mt-2">{c.name}</p>
            <p className="text-xs text-gray-400 text-center">{c.description}</p>
          </motion.button>
        ))}
      </div>

      <button
        onClick={onNext}
        disabled={!selected}
        className="btn-primary text-lg px-12"
      >
        选好了!
      </button>
    </div>
  )
}
```

- [ ] **Step 5: Create CompanionNameInput**

Write `src/components/companion/CompanionNameInput.tsx`:
```typescript
import { useState } from 'react'

interface Props {
  onConfirm: (name: string) => Promise<void>
  onBack: () => void
}

export function CompanionNameInput({ onConfirm, onBack }: Props) {
  const [name, setName] = useState('')
  const [saving, setSaving] = useState(false)

  const handleSubmit = async () => {
    if (!name.trim() || saving) return
    setSaving(true)
    await onConfirm(name.trim())
  }

  return (
    <div className="flex-1 flex flex-col items-center justify-center gap-6">
      <input
        type="text"
        placeholder="叫它什么名字呢？"
        value={name}
        onChange={e => setName(e.target.value)}
        maxLength={10}
        autoFocus
        className="text-2xl text-center border-b-2 border-purple-300 pb-2
                   outline-none focus:border-kid-primary w-56 bg-transparent"
        onKeyDown={e => e.key === 'Enter' && handleSubmit()}
      />
      <div className="flex gap-4">
        <button onClick={onBack} className="px-8 py-3 rounded-2xl bg-gray-100 font-bold">
          返回
        </button>
        <button
          onClick={handleSubmit}
          disabled={!name.trim() || saving}
          className="btn-primary px-8"
        >
          {saving ? '创建中...' : '确定!'}
        </button>
      </div>
    </div>
  )
}
```

- [ ] **Step 6: Commit**

```bash
git add -A
git commit -m "feat: add companion selection flow with store and UI components"
```

---

### Task 5: Quiz System (Daily Tasks)

**Files:**
- Create: `src/stores/quizStore.ts`
- Create: `src/data/sampleQuestions.ts`
- Create: `src/pages/QuizPage.tsx`
- Create: `src/pages/QuizResultPage.tsx`
- Create: `src/components/quiz/QuizCard.tsx`
- Create: `src/components/quiz/QuizProgressBar.tsx`
- Create: `src/components/quiz/DailyTaskCard.tsx`
- Create: `src/components/quiz/QuizResultPanel.tsx`

- [ ] **Step 1: Create sample questions**

Write `src/data/sampleQuestions.ts`:
```typescript
import type { Json } from '../lib/database.types'

interface QuestionSeed {
  subject: 'chinese' | 'math' | 'english'
  grade: number
  difficulty: number
  type: 'choice'
  content: {
    stem: string
    options: string[]
    answer: number
    explanation: string
  }
}

export const SAMPLE_QUESTIONS: QuestionSeed[] = [
  // === Math Grade 1 ===
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '3 + 5 = ?', options: ['6', '7', '8', '9'], answer: 2, explanation: '3加5等于8' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '10 - 4 = ?', options: ['4', '5', '6', '7'], answer: 2, explanation: '10减4等于6' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '7 + 2 = ?', options: ['8', '9', '10', '11'], answer: 1, explanation: '7加2等于9' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '5 - 3 = ?', options: ['1', '2', '3', '4'], answer: 1, explanation: '5减3等于2' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '6 + 4 = ?', options: ['8', '9', '10', '11'], answer: 2, explanation: '6加4等于10' } },

  // === Math Grade 2 ===
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '8 × 3 = ?', options: ['21', '22', '23', '24'], answer: 3, explanation: '8乘3等于24' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '36 ÷ 6 = ?', options: ['4', '5', '6', '7'], answer: 2, explanation: '36除以6等于6' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '7 × 5 = ?', options: ['30', '35', '40', '45'], answer: 1, explanation: '7乘5等于35' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '48 ÷ 8 = ?', options: ['4', '5', '6', '7'], answer: 2, explanation: '48除以8等于6' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '9 × 4 = ?', options: ['32', '34', '36', '38'], answer: 2, explanation: '9乘4等于36' } },

  // === Chinese Grade 1 ===
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '"日"字的正确拼音是？', options: ['rì', 'rè', 'yè', 'rù'], answer: 0, explanation: '"日"读作rì' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '下列哪个字和"水"有关系？', options: ['火', '水', '山', '口'], answer: 1, explanation: '"水"字本身' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '比一比，谁最大？', options: ['蚂蚁', '小鸟', '大象', '鱼'], answer: 2, explanation: '大象是陆地上最大的动物' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '"妈妈"的反义词是？', options: ['奶奶', '爸爸', '姐姐', '爷爷'], answer: 1, explanation: '妈妈的反义词是爸爸' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '春天来了，什么花会开？', options: ['梅花', '桃花', '菊花', '兰花'], answer: 1, explanation: '春天桃花盛开' } },

  // === Chinese Grade 2 ===
  { subject: 'chinese', grade: 2, difficulty: 1, type: 'choice', content: { stem: '成语"画蛇添足"的意思是什么？', options: ['多此一举', '画得很好', '蛇有脚', '添上颜色'], answer: 0, explanation: '画蛇添足比喻做了多余的事情' } },
  { subject: 'chinese', grade: 2, difficulty: 1, type: 'choice', content: { stem: '"漂亮"的近义词是？', options: ['难看', '美丽', '普通', '可爱'], answer: 1, explanation: '漂亮的近义词是美丽' } },

  // === English Grade 1 ===
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'What color is the sky?', options: ['Red', 'Blue', 'Green', 'Yellow'], answer: 1, explanation: 'The sky is blue' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'How many apples? 🍎🍎🍎', options: ['One', 'Two', 'Three', 'Four'], answer: 2, explanation: 'There are three apples' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'Which animal says "meow"?', options: ['Dog 🐕', 'Cat 🐈', 'Bird 🐦', 'Fish 🐟'], answer: 1, explanation: 'A cat says meow' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: '"Apple"的中文意思是？', options: ['香蕉', '苹果', '橘子', '葡萄'], answer: 1, explanation: 'Apple是苹果' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'Choose the correct greeting:', options: ['Goodbye', 'Hello', 'Sorry', 'Thanks'], answer: 1, explanation: 'Hello is a greeting' } },

  // === English Grade 2 ===
  { subject: 'english', grade: 2, difficulty: 1, type: 'choice', content: { stem: '"I ___ a student." Choose the correct word:', options: ['is', 'am', 'are', 'be'], answer: 1, explanation: '"I am a student" is correct' } },
  { subject: 'english', grade: 2, difficulty: 1, type: 'choice', content: { stem: 'What is the opposite of "big"?', options: ['Large', 'Small', 'Tall', 'Wide'], answer: 1, explanation: 'The opposite of big is small' } },
]
```

- [ ] **Step 2: Create quiz store**

Write `src/stores/quizStore.ts`:
```typescript
import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { POINTS, DAILY_QUESTIONS_PER_SUBJECT, SUBJECTS } from '../lib/constants'
import type { Subject } from '../lib/constants'
import type { Database } from '../lib/database.types'

type Question = Database['public']['Tables']['questions']['Row']

interface QuizSession {
  subject: Subject
  questions: Question[]
  currentIndex: number
  correctCount: number
  comboCount: number
  pointsEarned: number
  isComplete: boolean
}

interface QuizState {
  sessions: Record<Subject, QuizSession | null>
  isLoading: boolean

  startSession: (subject: Subject) => Promise<void>
  answerQuestion: (questionId: string, selectedIndex: number) => boolean
  nextQuestion: () => void
  getSession: (subject: Subject) => QuizSession | null
  getTodayQuizCount: (subject: Subject) => Promise<number>
}

function createEmptySession(subject: Subject, questions: Question[]): QuizSession {
  return {
    subject,
    questions,
    currentIndex: 0,
    correctCount: 0,
    comboCount: 0,
    pointsEarned: 0,
    isComplete: false,
  }
}

export const useQuizStore = create<QuizState>((set, get) => ({
  sessions: { chinese: null, math: null, english: null },
  isLoading: false,

  startSession: async (subject: Subject) => {
    set({ isLoading: true })
    const profile = useAuthStore.getState().profile
    if (!profile) return set({ isLoading: false })

    const { data: questions } = await supabase
      .from('questions')
      .select('*')
      .eq('subject', subject)
      .eq('grade', profile.grade)
      .limit(DAILY_QUESTIONS_PER_SUBJECT)
      .order('id')

    if (!questions || questions.length === 0) {
      set({ isLoading: false })
      return
    }

    const session = createEmptySession(subject, questions)
    set(state => ({
      sessions: { ...state.sessions, [subject]: session },
      isLoading: false,
    }))
  },

  answerQuestion: (questionId: string, selectedIndex: number) => {
    const state = get()
    let result = false

    for (const subject of SUBJECTS) {
      const session = state.sessions[subject]
      if (!session) continue
      const question = session.questions[session.currentIndex]
      if (!question || question.id !== questionId) continue

      const content = question.content as any
      const isCorrect = content.answer === selectedIndex
      const comboCount = isCorrect ? session.comboCount + 1 : 0
      let points = isCorrect ? POINTS.CORRECT_ANSWER : 0

      // Combo bonus
      if (isCorrect && comboCount >= 2) {
        const bonusIndex = Math.min(comboCount - 2, 2)
        points += POINTS.COMBO_BONUS[bonusIndex]
      }

      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: {
            ...session,
            correctCount: session.correctCount + (isCorrect ? 1 : 0),
            comboCount,
            pointsEarned: session.pointsEarned + points,
          },
        },
      }))

      result = isCorrect
      break
    }

    return result
  },

  nextQuestion: () => {
    const state = get()
    for (const subject of SUBJECTS) {
      const session = state.sessions[subject]
      if (!session || session.isComplete) continue

      const nextIndex = session.currentIndex + 1
      const isComplete = nextIndex >= session.questions.length

      set(state => ({
        sessions: {
          ...state.sessions,
          [subject]: {
            ...session,
            currentIndex: isComplete ? session.currentIndex : nextIndex,
            isComplete,
          },
        },
      }))
      break
    }
  },

  getSession: (subject: Subject) => get().sessions[subject],

  getTodayQuizCount: async (subject: Subject) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return 0
    const today = new Date().toISOString().slice(0, 10)
    const { count } = await supabase
      .from('quiz_records')
      .select('*', { count: 'exact', head: true })
      .eq('user_id', userId)
      .eq('subject', subject)
      .gte('answered_at', today)
    return count ?? 0
  },
}))
```

- [ ] **Step 3: Create QuizCard component**

Write `src/components/quiz/QuizCard.tsx`:
```typescript
import { useState } from 'react'
import { motion } from 'framer-motion'
import type { Database } from '../../lib/database.types'

type Question = Database['public']['Tables']['questions']['Row']

interface Props {
  question: Question
  questionNumber: number
  totalQuestions: number
  onAnswer: (questionId: string, selectedIndex: number) => boolean
}

export function QuizCard({ question, questionNumber, totalQuestions, onAnswer }: Props) {
  const [selected, setSelected] = useState<number | null>(null)
  const [result, setResult] = useState<'correct' | 'wrong' | null>(null)
  const content = question.content as { stem: string; options: string[]; answer: number; explanation: string }

  const handleSelect = (index: number) => {
    if (selected !== null) return
    setSelected(index)
    const isCorrect = onAnswer(question.id, index)
    setResult(isCorrect ? 'correct' : 'wrong')
  }

  return (
    <div className="px-4 py-6">
      <QuizProgressBar current={questionNumber} total={totalQuestions} />

      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        className="card mt-4"
      >
        <p className="text-lg font-bold mb-6">{content.stem}</p>

        <div className="grid gap-3">
          {content.options.map((option, i) => {
            let bg = 'bg-gray-50 hover:bg-purple-50'
            if (selected === i) {
              bg = result === 'correct'
                ? 'bg-green-100 border-green-400'
                : 'bg-red-100 border-red-400'
            } else if (selected !== null && i === content.answer) {
              bg = 'bg-green-100 border-green-400'
            }

            return (
              <motion.button
                key={i}
                whileTap={selected === null ? { scale: 0.97 } : {}}
                onClick={() => handleSelect(i)}
                disabled={selected !== null}
                className={`p-4 rounded-2xl border-2 text-left font-medium transition-colors ${bg}`}
              >
                <span className="inline-block w-8 h-8 rounded-full bg-white text-center leading-8 mr-3 text-sm font-bold">
                  {String.fromCharCode(65 + i)}
                </span>
                {option}
              </motion.button>
            )
          })}
        </div>

        {result && (
          <motion.div
            initial={{ opacity: 0, height: 0 }}
            animate={{ opacity: 1, height: 'auto' }}
            className={`mt-4 p-3 rounded-xl text-sm ${result === 'correct' ? 'bg-green-50 text-green-700' : 'bg-red-50 text-red-700'}`}
          >
            {result === 'correct' ? '太棒了!' : '没关系，记住答案哦!'}
            <p className="mt-1">{content.explanation}</p>
          </motion.div>
        )}
      </motion.div>
    </div>
  )
}
```

- [ ] **Step 4: Create QuizProgressBar**

Write `src/components/quiz/QuizProgressBar.tsx`:
```typescript
export function QuizProgressBar({ current, total }: { current: number; total: number }) {
  const pct = (current / total) * 100
  return (
    <div className="flex items-center gap-2">
      <div className="flex-1 h-3 bg-gray-200 rounded-full overflow-hidden">
        <div
          className="h-full bg-kid-primary rounded-full transition-all duration-500"
          style={{ width: `${pct}%` }}
        />
      </div>
      <span className="text-sm text-gray-400 font-bold">{current}/{total}</span>
    </div>
  )
}
```

- [ ] **Step 5: Create DailyTaskCard for home page**

Write `src/components/quiz/DailyTaskCard.tsx`:
```typescript
import { motion } from 'framer-motion'
import { useNavigate } from 'react-router-dom'
import { SUBJECT_LABELS, SUBJECT_EMOJIS } from '../../lib/constants'
import type { Subject } from '../../lib/constants'

interface Props {
  subject: Subject
  completed: number
  total: number
}

export function DailyTaskCard({ subject, completed, total }: Props) {
  const navigate = useNavigate()
  const isDone = completed >= total

  return (
    <motion.button
      whileHover={{ scale: 1.02 }}
      whileTap={{ scale: 0.98 }}
      onClick={() => navigate(`/quiz?subject=${subject}`)}
      className={`card flex items-center gap-4 ${isDone ? 'opacity-60' : ''}`}
    >
      <span className="text-3xl">{SUBJECT_EMOJIS[subject]}</span>
      <div className="flex-1 text-left">
        <p className="font-bold">{SUBJECT_LABELS[subject]}</p>
        <p className="text-sm text-gray-400">
          {isDone ? '已完成' : `今日进度 ${completed}/${total}`}
        </p>
      </div>
      {isDone ? (
        <span className="text-2xl">✅</span>
      ) : (
        <span className="text-kid-primary font-bold text-sm">去答题 →</span>
      )}
    </motion.button>
  )
}
```

- [ ] **Step 6: Create QuizPage**

Write `src/pages/QuizPage.tsx`:
```typescript
import { useEffect } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { useQuizStore } from '../stores/quizStore'
import { QuizCard } from '../components/quiz/QuizCard'
import { SUBJECT_LABELS } from '../lib/constants'
import type { Subject } from '../lib/constants'

export default function QuizPage() {
  const [params] = useSearchParams()
  const subject = (params.get('subject') || 'math') as Subject
  const navigate = useNavigate()
  const { sessions, startSession, answerQuestion, nextQuestion } = useQuizStore()
  const session = sessions[subject]

  useEffect(() => {
    if (!session) {
      startSession(subject)
    }
  }, [subject, session, startSession])

  if (!session || session.questions.length === 0) {
    return (
      <div className="p-6 text-center">
        <div className="animate-bounce text-4xl mb-4">📚</div>
        <p>正在准备题目...</p>
      </div>
    )
  }

  if (session.isComplete) {
    navigate(`/quiz/result?subject=${subject}`)
    return null
  }

  const q = session.questions[session.currentIndex]

  const handleAnswer = (questionId: string, selectedIndex: number) => {
    return answerQuestion(questionId, selectedIndex)
  }

  return (
    <div>
      <div className="px-4 py-3 bg-white border-b flex items-center justify-between">
        <button onClick={() => navigate('/')} className="text-kid-primary font-bold">
          ← 退出
        </button>
        <h1 className="font-bold">{SUBJECT_LABELS[subject]}答题</h1>
        <div className="w-12" />
      </div>

      <QuizCard
        key={q.id}
        question={q}
        questionNumber={session.currentIndex + 1}
        totalQuestions={session.questions.length}
        onAnswer={handleAnswer}
      />

      {session.currentIndex < session.questions.length - 1 && (
        <div className="px-4">
          <button
            onClick={nextQuestion}
            className="btn-primary w-full"
          >
            下一题 →
          </button>
        </div>
      )}
      {session.currentIndex === session.questions.length - 1 && (
        <div className="px-4">
          <button
            onClick={() => navigate(`/quiz/result?subject=${subject}`)}
            className="btn-primary w-full bg-kid-success"
          >
            查看结果! 🎉
          </button>
        </div>
      )}
    </div>
  )
}
```

- [ ] **Step 7: Create QuizResultPage**

Write `src/pages/QuizResultPage.tsx`:
```typescript
import { useEffect } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { motion } from 'framer-motion'
import { useQuizStore } from '../stores/quizStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCompanionStore } from '../stores/companionStore'
import { useCheckinStore } from '../stores/checkinStore'
import { QuizResultPanel } from '../components/quiz/QuizResultPanel'
import { PointsFlyAnimation } from '../components/common/PointsFlyAnimation'
import { SUBJECT_LABELS } from '../lib/constants'
import type { Subject } from '../lib/constants'

export default function QuizResultPage() {
  const [params] = useSearchParams()
  const subject = (params.get('subject') || 'math') as Subject
  const navigate = useNavigate()
  const session = useQuizStore(s => s.sessions[subject])
  const addPoints = usePointsStore(s => s.addPoints)
  const addExp = useCompanionStore(s => s.addExp)
  const markSubjectDone = useCheckinStore(s => s.markSubjectDone)

  useEffect(() => {
    if (!session || !session.isComplete) {
      navigate('/')
      return
    }

    // Award points and exp
    if (session.pointsEarned > 0) {
      addPoints(session.pointsEarned, 'quiz_reward', session.questions[0]?.id ?? null)
      addExp(session.pointsEarned)
    }
    markSubjectDone(subject)
  }, [])

  if (!session) return null

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-6">
      <PointsFlyAnimation amount={session.pointsEarned} />
      <QuizResultPanel
        subject={subject}
        subjectLabel={SUBJECT_LABELS[subject]}
        correctCount={session.correctCount}
        totalQuestions={session.questions.length}
        pointsEarned={session.pointsEarned}
        maxCombo={session.comboCount}
      />
      <div className="flex gap-4 mt-6">
        <button onClick={() => navigate('/')} className="btn-primary">
          返回首页
        </button>
      </div>
    </div>
  )
}
```

- [ ] **Step 8: Create QuizResultPanel**

Write `src/components/quiz/QuizResultPanel.tsx`:
```typescript
import { motion } from 'framer-motion'
import { SUBJECT_EMOJIS } from '../../lib/constants'
import type { Subject } from '../../lib/constants'

interface Props {
  subject: Subject
  subjectLabel: string
  correctCount: number
  totalQuestions: number
  pointsEarned: number
  maxCombo: number
}

export function QuizResultPanel({ subject, subjectLabel, correctCount, totalQuestions, pointsEarned, maxCombo }: Props) {
  const pct = Math.round((correctCount / totalQuestions) * 100)

  return (
    <motion.div
      initial={{ scale: 0.5, opacity: 0 }}
      animate={{ scale: 1, opacity: 1 }}
      className="card text-center w-full max-w-sm"
    >
      <span className="text-5xl">{SUBJECT_EMOJIS[subject]}</span>
      <h2 className="text-2xl font-bold mt-2">{subjectLabel}答题完成!</h2>

      <div className="my-4">
        <span className="text-5xl font-bold text-kid-primary">{pct}分</span>
      </div>

      <div className="grid grid-cols-2 gap-3 text-sm">
        <div className="bg-gray-50 rounded-xl p-3">
          <p className="text-gray-400">正确</p>
          <p className="text-xl font-bold text-kid-success">{correctCount}/{totalQuestions}</p>
        </div>
        <div className="bg-gray-50 rounded-xl p-3">
          <p className="text-gray-400">最高连击</p>
          <p className="text-xl font-bold text-kid-warning">{maxCombo}🔥</p>
        </div>
        <div className="bg-gray-50 rounded-xl p-3 col-span-2">
          <p className="text-gray-400">获得积分</p>
          <p className="text-2xl font-bold text-kid-primary">{pointsEarned} ⭐</p>
        </div>
      </div>
    </motion.div>
  )
}
```

- [ ] **Step 9: Commit**

```bash
git add -A
git commit -m "feat: add quiz system with daily tasks, scoring, combo, and result panel"
```

---

### Task 6: Points Store and System

**Files:**
- Create: `src/stores/pointsStore.ts`
- Create: `src/components/common/PointsFlyAnimation.tsx`

- [ ] **Step 1: Create points store**

Write `src/stores/pointsStore.ts`:
```typescript
import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'

interface PointsState {
  balance: number
  todayEarned: number
  isLoading: boolean

  fetchBalance: () => Promise<void>
  addPoints: (amount: number, reason: string, referenceId?: string | null) => Promise<void>
  spendPoints: (amount: number, reason: string, referenceId?: string | null) => Promise<boolean>
}

export const usePointsStore = create<PointsState>((set, get) => ({
  balance: 0,
  todayEarned: 0,
  isLoading: false,

  fetchBalance: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return

    set({ isLoading: true })

    const { data } = await supabase.rpc('get_total_points', { user_id: userId })
    const balance = data ?? 0

    const today = new Date().toISOString().slice(0, 10)
    const { data: todayData } = await supabase
      .from('points_transactions')
      .select('amount')
      .eq('user_id', userId)
      .gte('created_at', today)
      .gt('amount', 0)

    const todayEarned = todayData?.reduce((sum, t) => sum + t.amount, 0) ?? 0

    set({ balance, todayEarned, isLoading: false })
  },

  addPoints: async (amount: number, reason: string, referenceId: string | null = null) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId || amount <= 0) return

    await supabase.from('points_transactions').insert({
      user_id: userId,
      amount,
      reason,
      reference_id: referenceId,
    })

    set(state => ({
      balance: state.balance + amount,
      todayEarned: state.todayEarned + amount,
    }))
  },

  spendPoints: async (amount: number, reason: string, referenceId: string | null = null) => {
    const { balance } = get()
    if (balance < amount) return false

    const userId = useAuthStore.getState().user?.id
    if (!userId) return false

    await supabase.from('points_transactions').insert({
      user_id: userId,
      amount: -amount,
      reason,
      reference_id: referenceId,
    })

    set(state => ({ balance: state.balance - amount }))
    return true
  },
}))
```

- [ ] **Step 2: Create PointsFlyAnimation**

Write `src/components/common/PointsFlyAnimation.tsx`:
```typescript
import { useEffect, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'

export function PointsFlyAnimation({ amount }: { amount: number }) {
  const [show, setShow] = useState(true)

  useEffect(() => {
    const timer = setTimeout(() => setShow(false), 2000)
    return () => clearTimeout(timer)
  }, [])

  return (
    <AnimatePresence>
      {show && (
        <motion.div
          initial={{ opacity: 0, scale: 0.3, y: 50 }}
          animate={{ opacity: 1, scale: 1, y: 0 }}
          exit={{ opacity: 0, scale: 1.5, y: -100 }}
          className="fixed inset-0 flex items-center justify-center z-50 pointer-events-none"
        >
          <div className="text-center">
            <motion.div
              animate={{ rotate: [0, -10, 10, -10, 0] }}
              transition={{ duration: 0.5 }}
              className="text-6xl"
            >
              ⭐
            </motion.div>
            <p className="text-3xl font-bold text-kid-primary mt-2">+{amount}</p>
          </div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
```

- [ ] **Step 3: Commit**

```bash
git add -A
git commit -m "feat: add points store with balance tracking and fly animation"
```

---

### Task 7: Check-in System and Streak Tracking

**Files:**
- Create: `src/stores/checkinStore.ts`
- Create: `src/pages/CheckInPage.tsx`
- Create: `src/components/checkin/StreakBadge.tsx`

- [ ] **Step 1: Create check-in store**

Write `src/stores/checkinStore.ts`:
```typescript
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

    let { data } = await supabase
      .from('check_ins')
      .select('*')
      .eq('user_id', userId)
      .eq('date', todayStr)
      .maybeSingle()

    if (!data) {
      // Get yesterday's streak to continue
      const yesterday = new Date(Date.now() - 86400000).toISOString().slice(0, 10)
      const { data: yesterdayData } = await supabase
        .from('check_ins')
        .select('streak_count')
        .eq('user_id', userId)
        .eq('date', yesterday)
        .maybeSingle()

      const streakCount = yesterdayData ? yesterdayData.streak_count : 0

      const { data: newRecord } = await supabase
        .from('check_ins')
        .insert({
          user_id: userId,
          date: todayStr,
          streak_count: streakCount,
        })
        .select()
        .single()

      data = newRecord
    }

    set({
      today: data ? {
        chinese_done: data.chinese_done,
        math_done: data.math_done,
        english_done: data.english_done,
        streak_count: data.streak_count,
        bonus_points: data.bonus_points,
      } : null,
      isLoading: false,
    })
  },

  markSubjectDone: async (subject: Subject) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return

    const todayStr = new Date().toISOString().slice(0, 10)
    const field = `${subject}_done` as 'chinese_done' | 'math_done' | 'english_done'

    const { data } = await supabase
      .from('check_ins')
      .update({ [field]: true })
      .eq('user_id', userId)
      .eq('date', todayStr)
      .select()
      .single()

    if (!data) return

    // Check if all three are done
    const allDone = data.chinese_done && data.math_done && data.english_done

    if (allDone && data.bonus_points === 0) {
      const newStreak = data.streak_count + 1
      let bonus = POINTS.DAILY_ALL_COMPLETE

      if (newStreak % 30 === 0) bonus += POINTS.STREAK_30_DAY
      else if (newStreak % 7 === 0) bonus += POINTS.STREAK_7_DAY

      await supabase
        .from('check_ins')
        .update({ bonus_points: bonus, streak_count: newStreak })
        .eq('id', data.id)

      // Award bonus points via cross-store getState
      usePointsStore.getState().addPoints(bonus, 'checkin_bonus')

      set(state => ({
        today: state.today ? {
          ...data,
          bonus_points: bonus,
          streak_count: newStreak,
        } : null,
      }))
    } else {
      set(state => ({
        today: state.today ? { ...state.today, [field]: true } : null,
      }))
    }
  },
}))
```

- [ ] **Step 2: Create StreakBadge**

Write `src/components/checkin/StreakBadge.tsx`:
```typescript
import { motion } from 'framer-motion'

export function StreakBadge({ count }: { count: number }) {
  const emoji = count >= 30 ? '🔥🔥🔥' : count >= 7 ? '🔥🔥' : count >= 3 ? '🔥' : '⭐'

  return (
    <motion.div
      animate={{ scale: [1, 1.1, 1] }}
      transition={{ repeat: Infinity, duration: 2 }}
      className="inline-flex items-center gap-2 bg-gradient-to-r from-orange-100 to-yellow-100 px-4 py-2 rounded-full"
    >
      <span>{emoji}</span>
      <span className="font-bold text-orange-500">连续{count}天</span>
    </motion.div>
  )
}
```

- [ ] **Step 3: Create CheckInPage**

Write `src/pages/CheckInPage.tsx`:
```typescript
import { useEffect } from 'react'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'

export default function CheckInPage() {
  const { today, fetchToday, isLoading } = useCheckinStore()

  useEffect(() => {
    fetchToday()
  }, [fetchToday])

  if (isLoading || !today) {
    return <div className="p-6 text-center animate-bounce">📅</div>
  }

  const subjects = [
    { key: 'chinese_done' as const, label: '语文', emoji: '📖' },
    { key: 'math_done' as const, label: '数学', emoji: '🔢' },
    { key: 'english_done' as const, label: '英语', emoji: '🔤' },
  ]

  const allDone = today.chinese_done && today.math_done && today.english_done

  return (
    <div className="p-6">
      <div className="text-center mb-6">
        <StreakBadge count={today.streak_count} />
        <h1 className="text-xl font-bold mt-4">今日打卡</h1>
        {allDone && (
          <p className="text-kid-success font-bold mt-2">
            🎉 全部完成! 获得 {today.bonus_points} 积分!
          </p>
        )}
      </div>

      <div className="grid gap-4">
        {subjects.map(({ key, label, emoji }) => (
          <div
            key={key}
            className={`card flex items-center gap-4 ${today[key] ? 'bg-green-50' : ''}`}
          >
            <span className="text-3xl">{emoji}</span>
            <span className="font-bold flex-1">{label}</span>
            <span className="text-2xl">{today[key] ? '✅' : '⏳'}</span>
          </div>
        ))}
      </div>
    </div>
  )
}
```

- [ ] **Step 4: Commit**

```bash
git add -A
git commit -m "feat: add check-in system with daily streak tracking and calendar page"
```

---

### Task 8: Shop System

**Files:**
- Create: `src/stores/shopStore.ts`
- Create: `src/data/shopItems.ts`
- Create: `src/pages/ShopPage.tsx`
- Create: `src/components/shop/ShopGrid.tsx`
- Create: `src/components/shop/ShopItemCard.tsx`

- [ ] **Step 1: Create shop items seed data**

Write `src/data/shopItems.ts`:
```typescript
export interface ShopItemDef {
  id: string
  name: string
  type: 'food' | 'accessory' | 'skin' | 'background'
  emoji: string
  cost: number
  effect: { hunger?: number; mood?: number }
  description: string
}

export const SHOP_ITEMS: ShopItemDef[] = [
  { id: 'bread', name: '面包', type: 'food', emoji: '🍞', cost: 20, effect: { hunger: 20 }, description: '恢复20饱腹度' },
  { id: 'fish', name: '小鱼干', type: 'food', emoji: '🐟', cost: 30, effect: { hunger: 35 }, description: '恢复35饱腹度' },
  { id: 'cake', name: '蛋糕', type: 'food', emoji: '🎂', cost: 50, effect: { hunger: 50, mood: 10 }, description: '恢复50饱腹度，提升10心情' },
  { id: 'icecream', name: '冰淇淋', type: 'food', emoji: '🍦', cost: 80, effect: { hunger: 60, mood: 20 }, description: '恢复60饱腹度，提升20心情' },
  { id: 'bow', name: '蝴蝶结', type: 'accessory', emoji: '🎀', cost: 100, effect: { mood: 15 }, description: '提升15心情' },
  { id: 'sunglasses', name: '墨镜', type: 'accessory', emoji: '🕶️', cost: 150, effect: { mood: 20 }, description: '提升20心情，超酷!' },
  { id: 'scarf', name: '小围巾', type: 'accessory', emoji: '🧣', cost: 80, effect: { mood: 10 }, description: '提升10心情' },
  { id: 'goldskin', name: '金色皮肤', type: 'skin', emoji: '✨', cost: 300, effect: { mood: 30 }, description: '让你的伙伴闪闪发光' },
]
```

- [ ] **Step 2: Create shop store**

Write `src/stores/shopStore.ts`:
```typescript
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

export const useShopStore = create<ShopState>((set, get) => ({
  items: [],
  isLoading: false,

  fetchItems: async () => {
    set({ isLoading: true })
    const { data } = await supabase
      .from('shop_items')
      .select('*')
      .eq('is_active', true)
      .order('cost')
    set({ items: data || [], isLoading: false })
  },

  purchaseItem: async (item: ShopItem) => {
    const spent = await usePointsStore.getState().spendPoints(item.cost, 'buy_item', item.id)
    if (!spent) return false

    const effect = item.effect as { hunger?: number; mood?: number }
    if (effect.hunger || effect.mood) {
      await useCompanionStore.getState().feed(
        effect.hunger ?? 0,
        effect.mood ?? 0,
      )
    }

    if (item.type === 'accessory' || item.type === 'skin' || item.type === 'background') {
      await useCompanionStore.getState().equipItem(item.id)
    }

    return true
  },
}))
```

- [ ] **Step 3: Create ShopItemCard**

Write `src/components/shop/ShopItemCard.tsx`:
```typescript
import { motion } from 'framer-motion'
import type { Database } from '../../lib/database.types'

type ShopItem = Database['public']['Tables']['shop_items']['Row']

interface Props {
  item: ShopItem
  canAfford: boolean
  onBuy: (item: ShopItem) => void
}

export function ShopItemCard({ item, canAfford, onBuy }: Props) {
  const effect = item.effect as { hunger?: number; mood?: number }

  return (
    <motion.div
      whileHover={{ scale: 1.03 }}
      className="card flex flex-col items-center text-center"
    >
      <p className="text-3xl mb-2">{getItemEmoji(item.type)}</p>
      <p className="font-bold text-sm">{item.name}</p>
      <p className="text-xs text-gray-400 mt-1">
        {effect.hunger ? `饱腹+${effect.hunger} ` : ''}
        {effect.mood ? `心情+${effect.mood}` : ''}
      </p>
      <button
        onClick={() => onBuy(item)}
        disabled={!canAfford}
        className="mt-3 px-4 py-2 rounded-xl text-sm font-bold transition-all
                   bg-kid-primary text-white disabled:bg-gray-200 disabled:text-gray-400"
      >
        ⭐ {item.cost}
      </button>
    </motion.div>
  )
}

function getItemEmoji(type: string): string {
  switch (type) {
    case 'food': return '🍎'
    case 'accessory': return '💍'
    case 'skin': return '🎨'
    case 'background': return '🖼️'
    default: return '📦'
  }
}
```

- [ ] **Step 4: Create ShopPage**

Write `src/pages/ShopPage.tsx`:
```typescript
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

  useEffect(() => {
    fetchItems()
    fetchBalance()
  }, [fetchItems, fetchBalance])

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

      {message && (
        <div className="mb-4 p-3 rounded-xl text-center font-bold bg-purple-50 text-kid-primary">
          {message}
        </div>
      )}

      <div className="grid grid-cols-3 gap-3">
        {items.map(item => (
          <ShopItemCard
            key={item.id}
            item={item}
            canAfford={balance >= item.cost}
            onBuy={handleBuy}
          />
        ))}
      </div>
    </div>
  )
}
```

- [ ] **Step 5: Commit**

```bash
git add -A
git commit -m "feat: add shop system with items grid, purchase flow, and points deduction"
```

---

### Task 9: Home Page (Companion Display + Daily Tasks)

**Files:**
- Create: `src/pages/HomePage.tsx`
- Create: `src/components/companion/CompanionDisplay.tsx`
- Create: `src/components/companion/CompanionStats.tsx`

- [ ] **Step 1: Create CompanionDisplay**

Write `src/components/companion/CompanionDisplay.tsx`:
```typescript
import { motion } from 'framer-motion'
import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../../stores/companionStore'
import { CompanionStats } from './CompanionStats'

export function CompanionDisplay() {
  const { companion, isLoading } = useCompanionStore()
  const navigate = useNavigate()

  if (isLoading) {
    return <div className="animate-pulse h-64 bg-gray-100 rounded-3xl" />
  }

  if (!companion) {
    return (
      <div className="card text-center py-12">
        <p className="text-4xl mb-4">🐣</p>
        <p className="font-bold mb-4">你还没有伙伴!</p>
        <button
          onClick={() => navigate('/companion/select')}
          className="btn-primary"
        >
          选择一个伙伴
        </button>
      </div>
    )
  }

  return (
    <motion.div
      whileTap={{ scale: 0.98 }}
      onClick={() => navigate('/companion')}
      className="card cursor-pointer"
    >
      <div className="flex items-center gap-4">
        <motion.div
          animate={{ y: [0, -5, 0] }}
          transition={{ repeat: Infinity, duration: 2 }}
          className="w-24 h-24 bg-gradient-to-b from-purple-100 to-blue-100 rounded-full flex items-center justify-center text-5xl"
        >
          🐱
        </motion.div>
        <div className="flex-1">
          <div className="flex items-center gap-2">
            <h2 className="text-lg font-bold">{companion.name}</h2>
            <span className="text-xs bg-purple-100 text-kid-primary px-2 py-1 rounded-full">
              Lv.{companion.level}
            </span>
          </div>
          <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
        </div>
      </div>
    </motion.div>
  )
}
```

- [ ] **Step 2: Create CompanionStats**

Write `src/components/companion/CompanionStats.tsx`:
```typescript
import { LEVEL_THRESHOLDS } from '../../lib/constants'

interface Props {
  hunger: number
  mood: number
  exp: number
  level: number
}

function StatBar({ label, value, color, emoji }: { label: string; value: number; color: string; emoji: string }) {
  return (
    <div className="flex items-center gap-1 text-xs">
      <span>{emoji}</span>
      <div className="flex-1 h-2 bg-gray-200 rounded-full overflow-hidden">
        <div
          className={`h-full ${color} rounded-full transition-all duration-500`}
          style={{ width: `${value}%` }}
        />
      </div>
      <span className="text-gray-400 w-8 text-right">{value}</span>
    </div>
  )
}

export function CompanionStats({ hunger, mood, exp, level }: Props) {
  const currentLevelExp = LEVEL_THRESHOLDS[level - 1] || 0
  const nextLevelExp = LEVEL_THRESHOLDS[level] || currentLevelExp
  const expPct = nextLevelExp > currentLevelExp
    ? ((exp - currentLevelExp) / (nextLevelExp - currentLevelExp)) * 100
    : 100

  return (
    <div className="space-y-1 mt-2">
      <StatBar label="饱腹" value={hunger} color="bg-orange-400" emoji="🍖" />
      <StatBar label="心情" value={mood} color="bg-pink-400" emoji="💖" />
      <StatBar label="经验" value={expPct} color="bg-kid-primary" emoji="✨" />
    </div>
  )
}
```

- [ ] **Step 3: Create HomePage**

Write `src/pages/HomePage.tsx`:
```typescript
import { useEffect } from 'react'
import { useCompanionStore } from '../stores/companionStore'
import { useCheckinStore } from '../stores/checkinStore'
import { usePointsStore } from '../stores/pointsStore'
import { useQuizStore } from '../stores/quizStore'
import { CompanionDisplay } from '../components/companion/CompanionDisplay'
import { DailyTaskCard } from '../components/quiz/DailyTaskCard'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { useAuthStore } from '../stores/authStore'
import { DAILY_QUESTIONS_PER_SUBJECT } from '../lib/constants'
import type { Subject } from '../lib/constants'
import { SUBJECTS } from '../lib/constants'

export default function HomePage() {
  const { companion, fetchCompanion } = useCompanionStore()
  const { today, fetchToday } = useCheckinStore()
  const { balance, fetchBalance } = usePointsStore()
  const { getTodayQuizCount } = useQuizStore()
  const profile = useAuthStore(s => s.profile)
  const [quizCounts, setQuizCounts] = useState<Record<Subject, number>>({
    chinese: 0, math: 0, english: 0,
  })

  useEffect(() => {
    fetchCompanion()
    fetchToday()
    fetchBalance()
  }, [fetchCompanion, fetchToday, fetchBalance])

  useEffect(() => {
    if (companion) {
      SUBJECTS.forEach(async (s) => {
        const count = await getTodayQuizCount(s)
        setQuizCounts(prev => ({ ...prev, [s]: count }))
      })
    }
  }, [companion, getTodayQuizCount])

  return (
    <div className="p-4 space-y-4">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-xl font-bold">
            {profile ? `Hi, ${profile.nickname}!` : '知识冒险'}
          </h1>
          {today && <StreakBadge count={today.streak_count} />}
        </div>
        <div className="text-right">
          <p className="text-sm text-gray-400">积分</p>
          <p className="text-lg font-bold text-kid-primary">{balance} ⭐</p>
        </div>
      </div>

      {/* Companion */}
      <CompanionDisplay />

      {/* Daily Tasks */}
      <div>
        <h2 className="font-bold mb-3">今日任务</h2>
        <div className="grid gap-3">
          {SUBJECTS.map(subject => (
            <DailyTaskCard
              key={subject}
              subject={subject}
              completed={quizCounts[subject]}
              total={DAILY_QUESTIONS_PER_SUBJECT}
            />
          ))}
        </div>
      </div>
    </div>
  )
}
```

Wait, I need to import useState in HomePage. Let me fix that:

Edit HomePage:
```typescript
import { useEffect, useState } from 'react'
```

- [ ] **Step 4: Commit**

```bash
git add -A
git commit -m "feat: add home page with companion display, stats, and daily task cards"
```

---

### Task 10: Companion Detail Page, Profile Page, and Integration

**Files:**
- Create: `src/pages/CompanionPage.tsx`
- Create: `src/pages/ProfilePage.tsx`
- Create: `src/components/companion/EvolutionCelebration.tsx`
- Create: `src/components/common/ConfettiOverlay.tsx`
- Create: `src/components/common/ErrorBoundary.tsx`

- [ ] **Step 1: Create EvolutionCelebration**

Write `src/components/companion/EvolutionCelebration.tsx`:
```typescript
import { motion, AnimatePresence } from 'framer-motion'
import { useEffect, useState } from 'react'

interface Props {
  oldLevel: number
  newLevel: number
  companionName: string
}

export function EvolutionCelebration({ oldLevel, newLevel, companionName }: Props) {
  const [show, setShow] = useState(true)

  useEffect(() => {
    const timer = setTimeout(() => setShow(false), 3500)
    return () => clearTimeout(timer)
  }, [])

  return (
    <AnimatePresence>
      {show && (
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          className="fixed inset-0 bg-black/50 flex items-center justify-center z-50"
        >
          <motion.div
            initial={{ scale: 0 }}
            animate={{ scale: 1, rotate: [0, -5, 5, 0] }}
            transition={{ type: 'spring', duration: 0.8 }}
            className="bg-white rounded-3xl p-8 text-center mx-4"
          >
            <p className="text-5xl mb-4">🎉</p>
            <h2 className="text-2xl font-bold text-kid-primary">{companionName}</h2>
            <p className="text-lg mt-2">进化了!</p>
            <p className="text-gray-400 mt-1">Lv.{oldLevel} → Lv.{newLevel}</p>
          </motion.div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
```

- [ ] **Step 2: Create ConfettiOverlay**

Write `src/components/common/ConfettiOverlay.tsx`:
```typescript
import { useEffect, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'

const COLORS = ['#FF6B6B', '#6C5CE7', '#51CF66', '#FFD43B', '#FF922B', '#20C997']

export function ConfettiOverlay({ trigger }: { trigger: number }) {
  const [particles, setParticles] = useState<Array<{ id: number; x: number; color: string; delay: number }>>([])

  useEffect(() => {
    if (trigger <= 0) return
    const newParticles = Array.from({ length: 30 }, (_, i) => ({
      id: Date.now() + i,
      x: Math.random() * 100,
      color: COLORS[Math.floor(Math.random() * COLORS.length)],
      delay: Math.random() * 0.5,
    }))
    setParticles(newParticles)
    const timer = setTimeout(() => setParticles([]), 3000)
    return () => clearTimeout(timer)
  }, [trigger])

  return (
    <AnimatePresence>
      {particles.map(p => (
        <motion.div
          key={p.id}
          initial={{ opacity: 1, y: -20, x: `${p.x}vw`, rotate: 0 }}
          animate={{ opacity: 0, y: '100vh', rotate: 720 }}
          exit={{ opacity: 0 }}
          transition={{ duration: 2, delay: p.delay }}
          className="fixed top-0 z-50 pointer-events-none w-3 h-3 rounded-full"
          style={{ backgroundColor: p.color, left: `${p.x}%` }}
        />
      ))}
    </AnimatePresence>
  )
}
```

- [ ] **Step 3: Create CompanionPage**

Write `src/pages/CompanionPage.tsx`:
```typescript
import { useCompanionStore } from '../stores/companionStore'
import { CompanionStats } from '../components/companion/CompanionStats'
import { LEVEL_THRESHOLDS } from '../lib/constants'

export default function CompanionPage() {
  const { companion } = useCompanionStore()

  if (!companion) {
    return (
      <div className="p-6 text-center">
        <p className="text-4xl mb-4">🐣</p>
        <p className="text-gray-400">还没有伙伴</p>
      </div>
    )
  }

  const equipped = (companion.equipped_items as string[]) || []

  return (
    <div className="p-6">
      <div className="text-center mb-6">
        <div className="w-32 h-32 bg-gradient-to-b from-purple-100 to-blue-100 rounded-full flex items-center justify-center text-6xl mx-auto">
          🐱
        </div>
        <h1 className="text-2xl font-bold mt-4">{companion.name}</h1>
        <p className="text-sm text-gray-400">Lv.{companion.level}</p>
      </div>

      <div className="card mb-4">
        <h2 className="font-bold mb-3">状态</h2>
        <CompanionStats
          hunger={companion.hunger}
          mood={companion.mood}
          exp={companion.exp}
          level={companion.level}
        />
      </div>

      <div className="card">
        <h2 className="font-bold mb-3">已装备道具</h2>
        {equipped.length === 0 ? (
          <p className="text-gray-400 text-sm">还没有装备，去商城看看吧!</p>
        ) : (
          <div className="flex gap-2 flex-wrap">
            {equipped.map((itemId, i) => (
              <span key={i} className="bg-purple-50 px-3 py-1 rounded-full text-sm">
                🎀 {itemId}
              </span>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}
```

- [ ] **Step 4: Create ProfilePage**

Write `src/pages/ProfilePage.tsx`:
```typescript
import { useAuthStore } from '../stores/authStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { useNavigate } from 'react-router-dom'

export default function ProfilePage() {
  const { profile, user, signOut } = useAuthStore()
  const { balance } = usePointsStore()
  const { today } = useCheckinStore()
  const navigate = useNavigate()

  if (!profile) {
    return <div className="p-6 text-center animate-pulse">加载中...</div>
  }

  return (
    <div className="p-6">
      <div className="text-center mb-6">
        <div className="w-20 h-20 bg-purple-100 rounded-full flex items-center justify-center text-3xl mx-auto">
          👤
        </div>
        <h1 className="text-xl font-bold mt-3">{profile.nickname}</h1>
        <p className="text-gray-400">{profile.grade}年级</p>
        {today && <StreakBadge count={today.streak_count} />}
      </div>

      <div className="card mb-4">
        <div className="flex justify-between items-center">
          <span className="font-bold">我的积分</span>
          <span className="text-xl font-bold text-kid-primary">{balance} ⭐</span>
        </div>
      </div>

      <div className="grid gap-3">
        <button
          onClick={() => navigate('/companion/select')}
          className="card text-left font-bold"
        >
          切换伙伴 →
        </button>
        <button
          onClick={() => navigate('/checkin')}
          className="card text-left font-bold"
        >
          打卡日历 →
        </button>
        {user?.isAnonymous && (
          <div className="card bg-yellow-50">
            <p className="text-sm text-yellow-700">
              ⚠️ 游客模式，数据仅在本设备。建议绑定手机号永久保存。
            </p>
          </div>
        )}
        <button
          onClick={() => signOut()}
          className="card text-left text-red-400 font-bold"
        >
          退出登录
        </button>
      </div>
    </div>
  )
}
```

- [ ] **Step 5: Create ErrorBoundary**

Write `src/components/common/ErrorBoundary.tsx`:
```typescript
import { Component, type ReactNode } from 'react'

interface Props { children: ReactNode }
interface State { hasError: boolean }

export class ErrorBoundary extends Component<Props, State> {
  state: State = { hasError: false }

  static getDerivedStateFromError() {
    return { hasError: true }
  }

  render() {
    if (this.state.hasError) {
      return (
        <div className="min-h-screen flex flex-col items-center justify-center p-6">
          <p className="text-5xl mb-4">😵</p>
          <h1 className="text-xl font-bold mb-2">哎呀，出错了!</h1>
          <button
            onClick={() => this.setState({ hasError: false })}
            className="btn-primary mt-4"
          >
            重新加载
          </button>
        </div>
      )
    }
    return this.props.children
  }
}
```

- [ ] **Step 6: Wrap App with ErrorBoundary**

Edit `src/App.tsx` — wrap Routes:
```typescript
import { ErrorBoundary } from './components/common/ErrorBoundary'

// Inside return, wrap:
<ErrorBoundary>
  <BrowserRouter>
    <Routes>
      ...
    </Routes>
  </BrowserRouter>
</ErrorBoundary>
```

- [ ] **Step 7: Commit**

```bash
git add -A
git commit -m "feat: add companion detail, profile page, evolution celebration, and error boundary"
```

---

### Task 11: Placeholder Assets and SVG Companions

**Files:**
- Create: `public/companions/cat.svg`, `public/companions/dog.svg`, `public/companions/dino.svg`, `public/companions/fox.svg`
- Create: `public/companions/default.png` (placeholder)

- [ ] **Step 1: Create placeholder SVGs for the 4 starter companions**

Write `public/companions/cat.svg`:
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120">
  <circle cx="60" cy="60" r="50" fill="#FFE0B2"/>
  <circle cx="45" cy="45" r="8" fill="#333"/><circle cx="75" cy="45" r="8" fill="#333"/>
  <circle cx="47" cy="43" r="2" fill="white"/><circle cx="77" cy="43" r="2" fill="white"/>
  <ellipse cx="60" cy="55" rx="4" ry="4" fill="#FF8A80"/>
  <path d="M60 60 Q55 70 60 75 Q65 70 60 60" fill="#FF8A80"/>
  <path d="M20 40 Q10 20 30 25" fill="#FFE0B2" stroke="#FFE0B2" stroke-width="4"/>
  <path d="M100 40 Q110 20 90 25" fill="#FFE0B2" stroke="#FFE0B2" stroke-width="4"/>
</svg>
```

Write `public/companions/dog.svg`:
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120">
  <circle cx="60" cy="55" r="45" fill="#D7CCC8"/>
  <ellipse cx="60" cy="85" rx="30" ry="15" fill="#D7CCC8"/>
  <circle cx="45" cy="42" r="7" fill="#333"/><circle cx="75" cy="42" r="7" fill="#333"/>
  <circle cx="47" cy="40" r="2" fill="white"/><circle cx="77" cy="40" r="2" fill="white"/>
  <ellipse cx="60" cy="52" rx="6" ry="4" fill="#333"/>
  <path d="M60 78 Q50 75 45 82" fill="#FF8A80" stroke="#FF8A80" stroke-width="3"/>
  <path d="M25 60 Q10 50 15 40" fill="#D7CCC8" stroke="#D7CCC8" stroke-width="5"/>
  <path d="M95 60 Q110 50 105 40" fill="#D7CCC8" stroke="#D7CCC8" stroke-width="5"/>
</svg>
```

Write `public/companions/dino.svg`:
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120">
  <ellipse cx="55" cy="60" rx="35" ry="40" fill="#81C784"/>
  <circle cx="42" cy="45" r="6" fill="#333"/><circle cx="70" cy="45" r="6" fill="#333"/>
  <circle cx="44" cy="43" r="2" fill="white"/><circle cx="72" cy="43" r="2" fill="white"/>
  <path d="M55 55 Q50 60 55 62 Q60 60 55 55" fill="#388E3C"/>
  <path d="M25 65 Q15 80 20 90 Q25 92 30 90" fill="#81C784"/>
  <circle cx="15" cy="45" r="8" fill="#66BB6A"/>
  <circle cx="15" cy="45" r="4" fill="#A5D6A7"/>
  <path d="M60 100 L55 110 L65 110 Z" fill="#81C784"/>
</svg>
```

Write `public/companions/fox.svg`:
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 120">
  <circle cx="60" cy="58" r="40" fill="#FFAB40"/>
  <polygon points="40,25 55,45 45,45" fill="#FF6D00"/>
  <polygon points="80,25 65,45 75,45" fill="#FF6D00"/>
  <circle cx="48" cy="48" r="6" fill="#333"/><circle cx="72" cy="48" r="6" fill="#333"/>
  <circle cx="50" cy="46" r="2" fill="white"/><circle cx="74" cy="46" r="2" fill="white"/>
  <ellipse cx="60" cy="58" rx="5" ry="3" fill="#333"/>
  <path d="M55 70 Q50 65 48 70" fill="#FF8A80"/>
  <ellipse cx="60" cy="98" rx="15" ry="8" fill="white"/>
</svg>
```

- [ ] **Step 2: Commit**

```bash
git add -A
git commit -m "feat: add placeholder SVG companions (cat, dog, dino, fox)"
```

---

### Task 12: Final Integration — Create Missing Placeholder Pages

**Files:**
- Update: `src/App.tsx` — add missing imports
- Update: `src/main.tsx` — format check

- [ ] **Step 1: Verify all imports and paths are consistent**

Run:
```bash
cd /Users/bytedance/Documents/vibe_coding/childgame
npx tsc --noEmit
```

- [ ] **Step 2: Fix any TypeScript errors**

Run and fix any issues from the type check.

- [ ] **Step 3: Verify the dev build works**

Run:
```bash
npm run dev
```
Expected: No errors, app loads at localhost:5173

- [ ] **Step 4: Create a basic .gitignore if not present**

Write `.gitignore`:
```
node_modules
dist
.env
*.local
```

- [ ] **Step 5: Final commit**

```bash
git add -A
git commit -m "feat: final integration, type fixes, and .gitignore"
```

---

## Phase 1 Complete

After all 12 tasks, the app should have:
- Guest login → grade select → companion pick & name → home page
- Home page: companion display with stats, daily task cards for Chinese/Math/English
- Quiz flow: answer questions → see results → earn points → feed companion
- Shop: browse items → purchase with points → equip/feed
- Check-in: daily streak tracking, bonus points for completing all subjects
- Profile: view stats, switch companion, check-in calendar
