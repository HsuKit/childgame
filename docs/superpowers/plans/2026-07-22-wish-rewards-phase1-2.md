# Wish Rewards Phase 1-2 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the first working wish reward loop: daily core practice grants precious wish coins, children request real-world rewards, and parents approve, reject, and fulfill them in the same-account parent area.

**Architecture:** Keep the existing star points system unchanged and add wish rewards as a separate Supabase-backed domain. Put pure reward math in `src/lib/wishRewards.ts`, persistence and UI actions in `src/stores/wishStore.ts`, and route child/parent surfaces through dedicated pages. Daily wish coin awards are triggered from the existing `checkinStore.markSubjectDone()` all-subjects-complete branch so duplicate prevention follows the current check-in flow.

**Tech Stack:** React 18, TypeScript, Zustand, Supabase, Vite, Vitest, Tailwind CSS, Framer Motion.

---

## Scope

This plan implements Phase 1 and Phase 2 from `docs/superpowers/specs/2026-07-22-motivation-wish-companion-design.md`.

Included:

- Wish coin transactions and balance.
- Daily, 7-day, and 30-day wish coin awards from daily core practice completion.
- Seeded preset wish rewards.
- Parent-created reward records.
- Child reward request flow with frozen coins.
- Parent approval, rejection, and fulfillment.
- Reward diary entries for fulfilled wishes.
- Home, wish shop, and parent report UI integration.

Deferred to later plans:

- Companion dialogue and milestones.
- Companion animation refactor.
- Separate child and parent accounts.
- Push notifications.
- Weekly goal bonus, because the current app does not yet have a weekly goal domain.

---

## File Structure

- Create `supabase/migrations/013_wish_rewards.sql`: database schema, RLS, RPC helpers, and seeded presets.
- Create `src/lib/wishRewards.ts`: pure reward constants, balance calculation, state labels, and preset grouping helpers.
- Create `src/lib/wishRewards.test.ts`: unit coverage for wish coin bonus math, frozen balance, and labels.
- Create `src/stores/wishStore.ts`: Zustand store for balances, rewards, redemptions, diary entries, and state transitions.
- Create `src/stores/wishStore.test.ts`: dependency-injected store tests for redemption state changes.
- Modify `src/lib/database.types.ts`: add table and RPC types used by the wish domain.
- Modify `src/stores/checkinStore.ts`: award wish coins when all three daily subjects become complete.
- Create `src/pages/WishShopPage.tsx`: child-facing wish shop, active requests, and goal progress.
- Create `src/components/wish/WishRewardCard.tsx`: reusable reward card for child and parent views.
- Create `src/components/wish/WishBalanceBadge.tsx`: compact wish coin badge.
- Create `src/components/wish/WishRedemptionStatus.tsx`: child-friendly status label.
- Create `src/pages/ParentWishPage.tsx`: parent management, approval queue, fulfillment, and simple custom reward form.
- Modify `src/pages/HomePage.tsx`: fetch wish balance and show selected goal progress.
- Modify `src/pages/QuizResultPage.tsx`: show a small wish coin moment when the final subject completes the daily core practice.
- Modify `src/pages/ParentReportPage.tsx`: link to parent wish management.
- Modify `src/components/layout/BottomNav.tsx`: keep the existing shop route but relabel it as `衣柜`, then add a new wish shop route labeled `愿望`.
- Modify `src/App.tsx`: add `/wish-shop` and `/parent-wishes` routes.

---

## Task 1: Add Pure Wish Reward Rules

**Files:**

- Create: `src/lib/wishRewards.ts`
- Create: `src/lib/wishRewards.test.ts`

- [ ] **Step 1: Write failing tests for reward math and labels**

Create `src/lib/wishRewards.test.ts`:

```ts
import { describe, expect, it } from 'vitest'
import {
  calculateDailyWishAward,
  calculateWishBalance,
  getRedemptionStatusLabel,
  groupWishRewards,
  WISH_REWARD_GROUPS,
} from './wishRewards'

describe('calculateDailyWishAward', () => {
  it('awards one coin for normal daily core completion', () => {
    expect(calculateDailyWishAward(6)).toEqual({ base: 1, streakBonus: 0, total: 1 })
  })

  it('adds the seven-day bonus on seven-day streaks', () => {
    expect(calculateDailyWishAward(7)).toEqual({ base: 1, streakBonus: 2, total: 3 })
  })

  it('uses the thirty-day bonus instead of the seven-day bonus on day thirty', () => {
    expect(calculateDailyWishAward(30)).toEqual({ base: 1, streakBonus: 8, total: 9 })
  })
})

describe('calculateWishBalance', () => {
  it('separates earned, frozen, spent, and available coins', () => {
    expect(calculateWishBalance([
      { amount: 10, type: 'earn' },
      { amount: -4, type: 'freeze' },
      { amount: 4, type: 'release' },
      { amount: -6, type: 'spend' },
    ])).toEqual({ totalEarned: 10, frozen: 0, spent: 6, available: 4 })
  })
})

describe('getRedemptionStatusLabel', () => {
  it('returns child-friendly labels for all redemption states', () => {
    expect(getRedemptionStatusLabel('pending_parent_review')).toBe('等待爸妈确认')
    expect(getRedemptionStatusLabel('approved_pending_fulfillment')).toBe('爸妈已同意')
    expect(getRedemptionStatusLabel('fulfilled')).toBe('愿望已实现')
    expect(getRedemptionStatusLabel('rejected')).toBe('这次没有通过')
    expect(getRedemptionStatusLabel('cancelled')).toBe('已取消')
  })
})

describe('groupWishRewards', () => {
  it('groups rewards by configured coin ranges', () => {
    const groups = groupWishRewards([
      { id: 'small', cost: 6 },
      { id: 'medium', cost: 15 },
      { id: 'large', cost: 35 },
      { id: 'dream', cost: 80 },
    ])
    expect(groups[WISH_REWARD_GROUPS[0].id].map(item => item.id)).toEqual(['small'])
    expect(groups[WISH_REWARD_GROUPS[1].id].map(item => item.id)).toEqual(['medium'])
    expect(groups[WISH_REWARD_GROUPS[2].id].map(item => item.id)).toEqual(['large'])
    expect(groups[WISH_REWARD_GROUPS[3].id].map(item => item.id)).toEqual(['dream'])
  })
})
```

- [ ] **Step 2: Run tests to verify they fail**

Run: `npm test -- src/lib/wishRewards.test.ts`

Expected: FAIL with an import error for `./wishRewards`.

- [ ] **Step 3: Implement pure wish reward helpers**

Create `src/lib/wishRewards.ts`:

```ts
export const DAILY_WISH_COIN = 1
export const STREAK_7_WISH_BONUS = 2
export const STREAK_30_WISH_BONUS = 8

export type WishTransactionType = 'earn' | 'freeze' | 'release' | 'spend'
export type WishRewardType = 'item' | 'companionship' | 'experience' | 'open_wish'
export type WishRedemptionStatus =
  | 'pending_parent_review'
  | 'approved_pending_fulfillment'
  | 'fulfilled'
  | 'rejected'
  | 'cancelled'

export interface WishTransactionLike {
  amount: number
  type: WishTransactionType
}

export interface WishBalance {
  totalEarned: number
  frozen: number
  spent: number
  available: number
}

export interface WishAward {
  base: number
  streakBonus: number
  total: number
}

export interface WishRewardGroup {
  id: 'small' | 'medium' | 'large' | 'dream'
  label: string
  min: number
  max: number
}

export const WISH_REWARD_GROUPS: WishRewardGroup[] = [
  { id: 'small', label: '小小愿望', min: 0, max: 8 },
  { id: 'medium', label: '周末期待', min: 9, max: 20 },
  { id: 'large', label: '大一点的愿望', min: 21, max: 45 },
  { id: 'dream', label: '长期目标', min: 46, max: Number.POSITIVE_INFINITY },
]

export function calculateDailyWishAward(streakCount: number): WishAward {
  const streakBonus = streakCount > 0 && streakCount % 30 === 0
    ? STREAK_30_WISH_BONUS
    : streakCount > 0 && streakCount % 7 === 0
      ? STREAK_7_WISH_BONUS
      : 0
  return { base: DAILY_WISH_COIN, streakBonus, total: DAILY_WISH_COIN + streakBonus }
}

export function calculateWishBalance(transactions: WishTransactionLike[]): WishBalance {
  return transactions.reduce<WishBalance>((balance, transaction) => {
    if (transaction.type === 'earn') {
      return { ...balance, totalEarned: balance.totalEarned + transaction.amount, available: balance.available + transaction.amount }
    }
    if (transaction.type === 'freeze') {
      const frozenAmount = Math.abs(transaction.amount)
      return { ...balance, frozen: balance.frozen + frozenAmount, available: balance.available - frozenAmount }
    }
    if (transaction.type === 'release') {
      const releasedAmount = Math.abs(transaction.amount)
      return { ...balance, frozen: balance.frozen - releasedAmount, available: balance.available + releasedAmount }
    }
    const spentAmount = Math.abs(transaction.amount)
    return { ...balance, frozen: balance.frozen - spentAmount, spent: balance.spent + spentAmount }
  }, { totalEarned: 0, frozen: 0, spent: 0, available: 0 })
}

export function getRedemptionStatusLabel(status: WishRedemptionStatus): string {
  const labels: Record<WishRedemptionStatus, string> = {
    pending_parent_review: '等待爸妈确认',
    approved_pending_fulfillment: '爸妈已同意',
    fulfilled: '愿望已实现',
    rejected: '这次没有通过',
    cancelled: '已取消',
  }
  return labels[status]
}

export function groupWishRewards<T extends { cost: number }>(rewards: T[]) {
  return WISH_REWARD_GROUPS.reduce<Record<WishRewardGroup['id'], T[]>>((groups, group) => {
    groups[group.id] = rewards.filter(reward => reward.cost >= group.min && reward.cost <= group.max)
    return groups
  }, { small: [], medium: [], large: [], dream: [] })
}
```

- [ ] **Step 4: Run tests to verify they pass**

Run: `npm test -- src/lib/wishRewards.test.ts`

Expected: PASS for all `wishRewards` tests.

- [ ] **Step 5: Commit**

```bash
git add src/lib/wishRewards.ts src/lib/wishRewards.test.ts
git commit -m "feat: add wish reward rules"
```

---

## Task 2: Add Supabase Wish Reward Schema

**Files:**

- Create: `supabase/migrations/013_wish_rewards.sql`
- Modify: `src/lib/database.types.ts`

- [ ] **Step 1: Add migration**

Create `supabase/migrations/013_wish_rewards.sql`:

```sql
create table public.wish_coin_transactions (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  amount int not null,
  type text not null check (type in ('earn', 'freeze', 'release', 'spend')),
  reason text not null,
  reference_id uuid,
  created_at timestamptz not null default now()
);

create table public.wish_rewards (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references public.profiles(id) on delete cascade,
  name text not null,
  description text not null default '',
  type text not null check (type in ('item', 'companionship', 'experience', 'open_wish')),
  cost int not null check (cost > 0),
  is_preset boolean not null default false,
  is_active boolean not null default true,
  availability_note text,
  created_at timestamptz not null default now()
);

create table public.wish_redemptions (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  reward_id uuid references public.wish_rewards(id) on delete set null,
  reward_name text not null,
  reward_cost int not null check (reward_cost > 0),
  reward_type text not null check (reward_type in ('item', 'companionship', 'experience', 'open_wish')),
  status text not null default 'pending_parent_review' check (status in ('pending_parent_review', 'approved_pending_fulfillment', 'fulfilled', 'rejected', 'cancelled')),
  child_note text,
  parent_note text,
  requested_at timestamptz not null default now(),
  reviewed_at timestamptz,
  fulfilled_at timestamptz
);

create table public.reward_diary_entries (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  entry_type text not null check (entry_type in ('wish_fulfilled', 'streak_keepsake', 'companion_milestone')),
  title text not null,
  description text not null default '',
  reference_id uuid,
  created_at timestamptz not null default now()
);

create index idx_wish_coin_transactions_user on public.wish_coin_transactions(user_id, created_at);
create index idx_wish_rewards_user_active on public.wish_rewards(user_id, is_active);
create index idx_wish_rewards_presets on public.wish_rewards(is_preset, is_active);
create index idx_wish_redemptions_user_status on public.wish_redemptions(user_id, status, requested_at);
create index idx_reward_diary_entries_user on public.reward_diary_entries(user_id, created_at);

alter table public.wish_coin_transactions enable row level security;
alter table public.wish_rewards enable row level security;
alter table public.wish_redemptions enable row level security;
alter table public.reward_diary_entries enable row level security;

create policy "Users can view own wish coin transactions" on public.wish_coin_transactions for select using (auth.uid() = user_id);
create policy "Users can insert own wish coin transactions" on public.wish_coin_transactions for insert with check (auth.uid() = user_id);

create policy "Users can view preset or own wish rewards" on public.wish_rewards for select using (is_preset = true or auth.uid() = user_id);
create policy "Users can insert own wish rewards" on public.wish_rewards for insert with check (auth.uid() = user_id and is_preset = false);
create policy "Users can update own wish rewards" on public.wish_rewards for update using (auth.uid() = user_id and is_preset = false);

create policy "Users can view own wish redemptions" on public.wish_redemptions for select using (auth.uid() = user_id);
create policy "Users can insert own wish redemptions" on public.wish_redemptions for insert with check (auth.uid() = user_id);
create policy "Users can update own wish redemptions" on public.wish_redemptions for update using (auth.uid() = user_id);

create policy "Users can view own reward diary" on public.reward_diary_entries for select using (auth.uid() = user_id);
create policy "Users can insert own reward diary" on public.reward_diary_entries for insert with check (auth.uid() = user_id);

create or replace function public.get_wish_coin_balance(user_id uuid)
returns table(total_earned bigint, frozen bigint, spent bigint, available bigint) as $$
  select
    coalesce(sum(amount) filter (where type = 'earn'), 0) as total_earned,
    coalesce(sum(abs(amount)) filter (where type = 'freeze'), 0)
      - coalesce(sum(abs(amount)) filter (where type in ('release', 'spend')), 0) as frozen,
    coalesce(sum(abs(amount)) filter (where type = 'spend'), 0) as spent,
    coalesce(sum(amount) filter (where type = 'earn'), 0)
      - coalesce(sum(abs(amount)) filter (where type = 'freeze'), 0)
      + coalesce(sum(abs(amount)) filter (where type = 'release'), 0) as available
  from public.wish_coin_transactions
  where wish_coin_transactions.user_id = $1;
$$ language sql stable;

insert into public.wish_rewards (name, description, type, cost, is_preset, is_active, availability_note) values
  ('一盒彩色贴纸', '选一盒彩色贴纸，贴在自己的本子或奖励册里。', 'item', 5, true, true, '适合周末兑现'),
  ('新铅笔或橡皮', '挑选一支喜欢的铅笔或一块橡皮。', 'item', 6, true, true, '家长可替换成同价文具'),
  ('选择一次晚餐', '在爸妈给出的范围里选择一次晚餐。', 'companionship', 8, true, true, '需要爸妈确认时间'),
  ('一本喜欢的书', '选择一本适合年龄的新书。', 'item', 15, true, true, '建议周末购买'),
  ('亲子游戏时间', '和爸妈一起玩一次桌游或亲子游戏。', 'companionship', 18, true, true, '建议 30-60 分钟'),
  ('一个小玩具', '选择一个提前约定预算内的小玩具。', 'item', 20, true, true, '家长设置预算范围'),
  ('公园或书店之行', '安排一次附近公园、书店或博物馆的小出行。', 'experience', 35, true, true, '适合周末或假期'),
  ('一个小愿望', '孩子提出一个小愿望，由爸妈确认能否实现。', 'open_wish', 45, true, true, '需要爸妈审核内容'),
  ('一次短途旅行计划', '一起计划一次短途旅行或城市探索。', 'experience', 60, true, true, '长期目标');
```

- [ ] **Step 2: Update TypeScript database types**

Modify `src/lib/database.types.ts` inside `Database.public.Tables` and `Database.public.Functions` so the wish store can use typed rows. Add these entries after `points_transactions`:

```ts
      wish_coin_transactions: {
        Row: { id: string; user_id: string; amount: number; type: 'earn' | 'freeze' | 'release' | 'spend'; reason: string; reference_id: string | null; created_at: string }
        Insert: { id?: string; user_id: string; amount: number; type: 'earn' | 'freeze' | 'release' | 'spend'; reason: string; reference_id?: string | null }
        Update: Record<string, never>
      }
      wish_rewards: {
        Row: { id: string; user_id: string | null; name: string; description: string; type: 'item' | 'companionship' | 'experience' | 'open_wish'; cost: number; is_preset: boolean; is_active: boolean; availability_note: string | null; created_at: string }
        Insert: { id?: string; user_id?: string | null; name: string; description?: string; type: 'item' | 'companionship' | 'experience' | 'open_wish'; cost: number; is_preset?: boolean; is_active?: boolean; availability_note?: string | null }
        Update: { name?: string; description?: string; type?: 'item' | 'companionship' | 'experience' | 'open_wish'; cost?: number; is_active?: boolean; availability_note?: string | null }
      }
      wish_redemptions: {
        Row: { id: string; user_id: string; reward_id: string | null; reward_name: string; reward_cost: number; reward_type: 'item' | 'companionship' | 'experience' | 'open_wish'; status: 'pending_parent_review' | 'approved_pending_fulfillment' | 'fulfilled' | 'rejected' | 'cancelled'; child_note: string | null; parent_note: string | null; requested_at: string; reviewed_at: string | null; fulfilled_at: string | null }
        Insert: { id?: string; user_id: string; reward_id?: string | null; reward_name: string; reward_cost: number; reward_type: 'item' | 'companionship' | 'experience' | 'open_wish'; status?: 'pending_parent_review' | 'approved_pending_fulfillment' | 'fulfilled' | 'rejected' | 'cancelled'; child_note?: string | null; parent_note?: string | null; requested_at?: string; reviewed_at?: string | null; fulfilled_at?: string | null }
        Update: { status?: 'pending_parent_review' | 'approved_pending_fulfillment' | 'fulfilled' | 'rejected' | 'cancelled'; parent_note?: string | null; reviewed_at?: string | null; fulfilled_at?: string | null }
      }
      reward_diary_entries: {
        Row: { id: string; user_id: string; entry_type: 'wish_fulfilled' | 'streak_keepsake' | 'companion_milestone'; title: string; description: string; reference_id: string | null; created_at: string }
        Insert: { id?: string; user_id: string; entry_type: 'wish_fulfilled' | 'streak_keepsake' | 'companion_milestone'; title: string; description?: string; reference_id?: string | null }
        Update: Record<string, never>
      }
```

Replace the existing `Functions: Record<string, never>` line with:

```ts
    Functions: {
      get_wish_coin_balance: {
        Args: { user_id: string }
        Returns: Array<{ total_earned: number; frozen: number; spent: number; available: number }>
      }
    }
```

- [ ] **Step 3: Run typecheck**

Run: `npm run build`

Expected: PASS after the types compile. If the project has unrelated existing build warnings, the command should still exit `0`.

- [ ] **Step 4: Commit**

```bash
git add supabase/migrations/013_wish_rewards.sql src/lib/database.types.ts
git commit -m "feat: add wish reward schema"
```

---

## Task 3: Add Wish Store And Redemption Transitions

**Files:**

- Create: `src/stores/wishStore.ts`
- Create: `src/stores/wishStore.test.ts`

- [ ] **Step 1: Write store tests for redemption transitions**

Create `src/stores/wishStore.test.ts`:

```ts
import { describe, expect, it } from 'vitest'
import { createWishActionsForTest } from './wishStore'

describe('wish redemption transitions', () => {
  it('freezes coins when submitting a request', async () => {
    const calls: string[] = []
    const actions = createWishActionsForTest({
      getUserId: () => 'user-1',
      getAvailable: () => 10,
      insertTransaction: async row => { calls.push(`${row.type}:${row.amount}:${row.reason}`); return 'tx-1' },
      insertRedemption: async row => { calls.push(`redemption:${row.reward_name}:${row.reward_cost}`); return { ...row, id: 'redemption-1', requested_at: 'now', reviewed_at: null, fulfilled_at: null, parent_note: null, status: 'pending_parent_review' } },
      updateRedemption: async () => { throw new Error('not used') },
      insertDiaryEntry: async () => { throw new Error('not used') },
    })

    const result = await actions.submitRedemption({
      id: 'reward-1',
      name: '新铅笔',
      cost: 6,
      type: 'item',
    }, '我想要蓝色的')

    expect(result?.id).toBe('redemption-1')
    expect(calls).toEqual(['freeze:-6:wish_redemption_freeze', 'redemption:新铅笔:6'])
  })

  it('rejects a pending request and releases frozen coins', async () => {
    const calls: string[] = []
    const actions = createWishActionsForTest({
      getUserId: () => 'user-1',
      getAvailable: () => 0,
      insertTransaction: async row => { calls.push(`${row.type}:${row.amount}:${row.reason}:${row.reference_id}`); return 'tx-1' },
      insertRedemption: async () => { throw new Error('not used') },
      updateRedemption: async row => { calls.push(`update:${row.status}`); return { id: 'redemption-1', status: row.status } },
      insertDiaryEntry: async () => { throw new Error('not used') },
    })

    await actions.rejectRedemption({ id: 'redemption-1', reward_cost: 6 }, '这个周末不方便')

    expect(calls).toEqual([
      'release:6:wish_redemption_rejected:redemption-1',
      'update:rejected',
    ])
  })

  it('approves a pending request and spends frozen coins once', async () => {
    const calls: string[] = []
    const actions = createWishActionsForTest({
      getUserId: () => 'user-1',
      getAvailable: () => 0,
      insertTransaction: async row => { calls.push(`${row.type}:${row.amount}:${row.reason}:${row.reference_id}`); return 'tx-1' },
      insertRedemption: async () => { throw new Error('not used') },
      updateRedemption: async row => { calls.push(`update:${row.status}`); return { id: 'redemption-1', status: row.status } },
      insertDiaryEntry: async () => { throw new Error('not used') },
    })

    await actions.approveRedemption({ id: 'redemption-1', reward_cost: 6 }, '周末兑现')

    expect(calls).toEqual([
      'spend:-6:wish_redemption_approved:redemption-1',
      'update:approved_pending_fulfillment',
    ])
  })

  it('fulfills an approved request and creates a diary entry', async () => {
    const calls: string[] = []
    const actions = createWishActionsForTest({
      getUserId: () => 'user-1',
      getAvailable: () => 0,
      insertTransaction: async () => { throw new Error('not used') },
      insertRedemption: async () => { throw new Error('not used') },
      updateRedemption: async row => { calls.push(`update:${row.status}`); return { id: 'redemption-1', status: row.status } },
      insertDiaryEntry: async row => { calls.push(`diary:${row.title}`); return 'diary-1' },
    })

    await actions.fulfillRedemption({ id: 'redemption-1', reward_name: '一本书' })

    expect(calls).toEqual(['update:fulfilled', 'diary:愿望实现：一本书'])
  })
})
```

- [ ] **Step 2: Run tests to verify they fail**

Run: `npm test -- src/stores/wishStore.test.ts`

Expected: FAIL with an import error for `./wishStore`.

- [ ] **Step 3: Implement wish store**

Create `src/stores/wishStore.ts`:

```ts
import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import type { Database } from '../lib/database.types'
import type { WishBalance } from '../lib/wishRewards'

type WishReward = Database['public']['Tables']['wish_rewards']['Row']
type WishRewardInsert = Database['public']['Tables']['wish_rewards']['Insert']
type WishRedemption = Database['public']['Tables']['wish_redemptions']['Row']
type WishRedemptionInsert = Database['public']['Tables']['wish_redemptions']['Insert']
type WishRedemptionUpdate = Database['public']['Tables']['wish_redemptions']['Update']
type DiaryEntry = Database['public']['Tables']['reward_diary_entries']['Row']
type DiaryEntryInsert = Database['public']['Tables']['reward_diary_entries']['Insert']
type WishTransactionInsert = Database['public']['Tables']['wish_coin_transactions']['Insert']

const emptyBalance: WishBalance = { totalEarned: 0, frozen: 0, spent: 0, available: 0 }

interface WishActionDependencies {
  getUserId: () => string | undefined
  getAvailable: () => number
  insertTransaction: (row: WishTransactionInsert) => Promise<string>
  insertRedemption: (row: WishRedemptionInsert) => Promise<WishRedemption>
  updateRedemption: (id: string, row: WishRedemptionUpdate) => Promise<Partial<WishRedemption>>
  insertDiaryEntry: (row: DiaryEntryInsert) => Promise<string>
}

export function createWishActionsForTest(deps: WishActionDependencies) {
  return {
    submitRedemption: async (
      reward: Pick<WishReward, 'id' | 'name' | 'cost' | 'type'>,
      childNote?: string,
    ) => {
      const userId = deps.getUserId()
      if (!userId || deps.getAvailable() < reward.cost) return null
      await deps.insertTransaction({
        user_id: userId,
        amount: -reward.cost,
        type: 'freeze',
        reason: 'wish_redemption_freeze',
        reference_id: reward.id,
      })
      return deps.insertRedemption({
        user_id: userId,
        reward_id: reward.id,
        reward_name: reward.name,
        reward_cost: reward.cost,
        reward_type: reward.type,
        child_note: childNote || null,
      })
    },
    rejectRedemption: async (
      redemption: Pick<WishRedemption, 'id' | 'reward_cost'>,
      parentNote?: string,
    ) => {
      const userId = deps.getUserId()
      if (!userId) return
      await deps.insertTransaction({
        user_id: userId,
        amount: redemption.reward_cost,
        type: 'release',
        reason: 'wish_redemption_rejected',
        reference_id: redemption.id,
      })
      await deps.updateRedemption(redemption.id, {
        status: 'rejected',
        parent_note: parentNote || null,
        reviewed_at: new Date().toISOString(),
      })
    },
    approveRedemption: async (
      redemption: Pick<WishRedemption, 'id' | 'reward_cost'>,
      parentNote?: string,
    ) => {
      const userId = deps.getUserId()
      if (!userId) return
      await deps.insertTransaction({
        user_id: userId,
        amount: -redemption.reward_cost,
        type: 'spend',
        reason: 'wish_redemption_approved',
        reference_id: redemption.id,
      })
      await deps.updateRedemption(redemption.id, {
        status: 'approved_pending_fulfillment',
        parent_note: parentNote || null,
        reviewed_at: new Date().toISOString(),
      })
    },
    fulfillRedemption: async (redemption: Pick<WishRedemption, 'id' | 'reward_name'>) => {
      const userId = deps.getUserId()
      if (!userId) return
      await deps.updateRedemption(redemption.id, {
        status: 'fulfilled',
        fulfilled_at: new Date().toISOString(),
      })
      await deps.insertDiaryEntry({
        user_id: userId,
        entry_type: 'wish_fulfilled',
        title: `愿望实现：${redemption.reward_name}`,
        description: '这是坚持练习换来的真实奖励。',
        reference_id: redemption.id,
      })
    },
  }
}

interface WishState {
  balance: WishBalance
  rewards: WishReward[]
  redemptions: WishRedemption[]
  diaryEntries: DiaryEntry[]
  isLoading: boolean
  message: string | null
  fetchWishData: () => Promise<void>
  awardWishCoins: (amount: number, reason: string, referenceId?: string | null) => Promise<void>
  createReward: (input: Pick<WishRewardInsert, 'name' | 'description' | 'type' | 'cost' | 'availability_note'>) => Promise<void>
  submitRedemption: (reward: WishReward, childNote?: string) => Promise<boolean>
  approveRedemption: (redemption: WishRedemption, parentNote?: string) => Promise<void>
  rejectRedemption: (redemption: WishRedemption, parentNote?: string) => Promise<void>
  fulfillRedemption: (redemption: WishRedemption) => Promise<void>
  clearMessage: () => void
}

async function fetchBalance(userId: string): Promise<WishBalance> {
  const { data, error } = await supabase.rpc('get_wish_coin_balance', { user_id: userId })
  if (error) throw error
  const row = Array.isArray(data) ? data[0] : null
  return row ? {
    totalEarned: Number(row.total_earned || 0),
    frozen: Number(row.frozen || 0),
    spent: Number(row.spent || 0),
    available: Number(row.available || 0),
  } : emptyBalance
}

export const useWishStore = create<WishState>((set, get) => ({
  balance: emptyBalance,
  rewards: [],
  redemptions: [],
  diaryEntries: [],
  isLoading: false,
  message: null,

  fetchWishData: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    set({ isLoading: true })
    try {
      const [balance, rewardsRes, redemptionsRes, diaryRes] = await Promise.all([
        fetchBalance(userId),
        supabase.from('wish_rewards').select('*').eq('is_active', true).order('cost', { ascending: true }),
        supabase.from('wish_redemptions').select('*').eq('user_id', userId).order('requested_at', { ascending: false }),
        supabase.from('reward_diary_entries').select('*').eq('user_id', userId).order('created_at', { ascending: false }).limit(20),
      ])
      if (rewardsRes.error) throw rewardsRes.error
      if (redemptionsRes.error) throw redemptionsRes.error
      if (diaryRes.error) throw diaryRes.error
      set({ balance, rewards: rewardsRes.data || [], redemptions: redemptionsRes.data || [], diaryEntries: diaryRes.data || [] })
    } finally {
      set({ isLoading: false })
    }
  },

  awardWishCoins: async (amount, reason, referenceId = null) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId || amount <= 0) return
    const { error } = await supabase.from('wish_coin_transactions').insert({ user_id: userId, amount, type: 'earn', reason, reference_id: referenceId })
    if (error) throw error
    set(state => ({ balance: { ...state.balance, totalEarned: state.balance.totalEarned + amount, available: state.balance.available + amount } }))
  },

  createReward: async input => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const { error } = await supabase.from('wish_rewards').insert({ ...input, user_id: userId, is_preset: false, is_active: true })
    if (error) throw error
    await get().fetchWishData()
  },

  submitRedemption: async (reward, childNote) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId || get().balance.available < reward.cost) {
      set({ message: '愿望币还不够哦' })
      return false
    }
    const { error: freezeError } = await supabase.from('wish_coin_transactions').insert({ user_id: userId, amount: -reward.cost, type: 'freeze', reason: 'wish_redemption_freeze', reference_id: reward.id })
    if (freezeError) throw freezeError
    const { error: redemptionError } = await supabase.from('wish_redemptions').insert({ user_id: userId, reward_id: reward.id, reward_name: reward.name, reward_cost: reward.cost, reward_type: reward.type, child_note: childNote || null })
    if (redemptionError) throw redemptionError
    set({ message: '愿望已提交，等待爸妈确认' })
    await get().fetchWishData()
    return true
  },

  approveRedemption: async (redemption, parentNote) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const { error: spendError } = await supabase.from('wish_coin_transactions').insert({ user_id: userId, amount: -redemption.reward_cost, type: 'spend', reason: 'wish_redemption_approved', reference_id: redemption.id })
    if (spendError) throw spendError
    const { error } = await supabase.from('wish_redemptions').update({ status: 'approved_pending_fulfillment', parent_note: parentNote || null, reviewed_at: new Date().toISOString() }).eq('id', redemption.id)
    if (error) throw error
    set({ message: '已同意这个愿望' })
    await get().fetchWishData()
  },

  rejectRedemption: async (redemption, parentNote) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const { error: releaseError } = await supabase.from('wish_coin_transactions').insert({ user_id: userId, amount: redemption.reward_cost, type: 'release', reason: 'wish_redemption_rejected', reference_id: redemption.id })
    if (releaseError) throw releaseError
    const { error } = await supabase.from('wish_redemptions').update({ status: 'rejected', parent_note: parentNote || null, reviewed_at: new Date().toISOString() }).eq('id', redemption.id)
    if (error) throw error
    set({ message: '已退回这个愿望，愿望币已返还' })
    await get().fetchWishData()
  },

  fulfillRedemption: async redemption => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const { error } = await supabase.from('wish_redemptions').update({ status: 'fulfilled', fulfilled_at: new Date().toISOString() }).eq('id', redemption.id)
    if (error) throw error
    await supabase.from('reward_diary_entries').insert({ user_id: userId, entry_type: 'wish_fulfilled', title: `愿望实现：${redemption.reward_name}`, description: '这是坚持练习换来的真实奖励。', reference_id: redemption.id })
    set({ message: '已记录为愿望实现' })
    await get().fetchWishData()
  },

  clearMessage: () => set({ message: null }),
}))
```

- [ ] **Step 4: Run tests**

Run: `npm test -- src/stores/wishStore.test.ts`

Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add src/stores/wishStore.ts src/stores/wishStore.test.ts
git commit -m "feat: add wish reward store"
```

---

## Task 4: Award Wish Coins From Daily Core Completion

**Files:**

- Modify: `src/stores/checkinStore.ts`
- Modify: `src/pages/QuizResultPage.tsx`

- [ ] **Step 1: Add wish award to check-in completion**

Modify the imports in `src/stores/checkinStore.ts`:

```ts
import { calculateDailyWishAward } from '../lib/wishRewards'
import { useWishStore } from './wishStore'
```

Inside the `if (allDone && data.bonus_points === 0)` branch, immediately after `const newStreak = data.streak_count + 1`, add:

```ts
      const wishAward = calculateDailyWishAward(newStreak)
```

After `usePointsStore.getState().addPoints(bonus, 'checkin_bonus')`, add:

```ts
      await useWishStore.getState().awardWishCoins(wishAward.total, 'daily_core_complete', data.id)
```

- [ ] **Step 2: Add result-page wish coin celebration copy**

Modify `src/pages/QuizResultPage.tsx` to track whether this result completed all three subjects:

```ts
  const [wishCoinsAwarded, setWishCoinsAwarded] = useState(0)
```

Inside the `if (awardState.shouldAwardPoints)` branch, before `markSubjectDone(subject)`, calculate whether this subject is the final missing subject:

```ts
      const willCompleteAllSubjects = subject === 'chinese'
        ? today.math_done && today.english_done
        : subject === 'math'
          ? today.chinese_done && today.english_done
          : today.chinese_done && today.math_done
```

After `markSubjectDone(subject)`, add:

```ts
      if (willCompleteAllSubjects) setWishCoinsAwarded(1)
```

Render this notice below the existing already-done notice block:

```tsx
      {wishCoinsAwarded > 0 && (
        <div className="bg-sky-50 border border-sky-200 rounded-2xl p-4 mt-4 text-center">
          <p className="font-bold text-sky-700">今日坚持愿望币 +{wishCoinsAwarded}</p>
          <p className="text-xs text-sky-600 mt-1">坚持每天练习，小愿望会慢慢靠近</p>
        </div>
      )}
```

The display intentionally shows `+1` even when a 7-day or 30-day bonus is also awarded, because detailed bonus breakdown will live in the wish shop balance history.

- [ ] **Step 3: Run focused tests and typecheck**

Run: `npm test -- src/lib/wishRewards.test.ts`

Expected: PASS.

Run: `npm run build`

Expected: PASS.

- [ ] **Step 4: Commit**

```bash
git add src/stores/checkinStore.ts src/pages/QuizResultPage.tsx
git commit -m "feat: award wish coins for daily completion"
```

---

## Task 5: Build Child Wish Shop UI

**Files:**

- Create: `src/components/wish/WishBalanceBadge.tsx`
- Create: `src/components/wish/WishRedemptionStatus.tsx`
- Create: `src/components/wish/WishRewardCard.tsx`
- Create: `src/pages/WishShopPage.tsx`
- Modify: `src/App.tsx`
- Modify: `src/components/layout/BottomNav.tsx`
- Modify: `src/pages/HomePage.tsx`

- [ ] **Step 1: Create compact wish balance badge**

Create `src/components/wish/WishBalanceBadge.tsx`:

```tsx
import { motion } from 'framer-motion'

export function WishBalanceBadge({ available, frozen = 0, onClick }: { available: number; frozen?: number; onClick?: () => void }) {
  return (
    <motion.button
      type="button"
      whileTap={{ scale: 0.95 }}
      onClick={onClick}
      className="inline-flex items-center gap-2 bg-sky-50 border border-sky-100 px-4 py-2 rounded-full shadow-sm"
    >
      <span className="text-lg">🎁</span>
      <span className="font-extrabold text-sky-600">{available}</span>
      {frozen > 0 && <span className="text-xs font-bold text-sky-400">冻结 {frozen}</span>}
    </motion.button>
  )
}
```

- [ ] **Step 2: Create child-friendly status component**

Create `src/components/wish/WishRedemptionStatus.tsx`:

```tsx
import { getRedemptionStatusLabel, type WishRedemptionStatus } from '../../lib/wishRewards'

const tone: Record<WishRedemptionStatus, string> = {
  pending_parent_review: 'bg-amber-50 text-amber-700 border-amber-100',
  approved_pending_fulfillment: 'bg-blue-50 text-blue-700 border-blue-100',
  fulfilled: 'bg-green-50 text-green-700 border-green-100',
  rejected: 'bg-gray-50 text-gray-500 border-gray-100',
  cancelled: 'bg-gray-50 text-gray-500 border-gray-100',
}

export function WishRedemptionStatus({ status }: { status: WishRedemptionStatus }) {
  return (
    <span className={`inline-flex rounded-full border px-3 py-1 text-xs font-bold ${tone[status]}`}>
      {getRedemptionStatusLabel(status)}
    </span>
  )
}
```

- [ ] **Step 3: Create reward card**

Create `src/components/wish/WishRewardCard.tsx`:

```tsx
import { motion } from 'framer-motion'
import type { Database } from '../../lib/database.types'

type WishReward = Database['public']['Tables']['wish_rewards']['Row']

const typeLabel: Record<WishReward['type'], string> = {
  item: '物品',
  companionship: '陪伴',
  experience: '体验',
  open_wish: '小愿望',
}

export function WishRewardCard({
  reward,
  available,
  onRequest,
}: {
  reward: WishReward
  available: number
  onRequest: (reward: WishReward) => void
}) {
  const affordable = available >= reward.cost
  return (
    <motion.button
      type="button"
      whileHover={{ scale: 1.02 }}
      whileTap={{ scale: 0.97 }}
      onClick={() => onRequest(reward)}
      className={`w-full rounded-2xl border p-4 text-left shadow-sm ${affordable ? 'bg-white border-sky-100' : 'bg-gray-50 border-gray-100 opacity-75'}`}
    >
      <div className="flex items-start justify-between gap-3">
        <div className="min-w-0">
          <p className="font-extrabold text-kid-text break-words">{reward.name}</p>
          <p className="mt-1 text-xs text-gray-500 break-words">{reward.description}</p>
        </div>
        <div className="shrink-0 rounded-full bg-sky-50 px-3 py-1 text-sm font-extrabold text-sky-600">
          🎁 {reward.cost}
        </div>
      </div>
      <div className="mt-3 flex items-center justify-between gap-2">
        <span className="rounded-full bg-purple-50 px-3 py-1 text-xs font-bold text-kid-primary">{typeLabel[reward.type]}</span>
        <span className={`text-xs font-bold ${affordable ? 'text-sky-600' : 'text-gray-400'}`}>
          {affordable ? '可以许愿' : `还差 ${reward.cost - available} 枚`}
        </span>
      </div>
    </motion.button>
  )
}
```

- [ ] **Step 4: Create child wish shop page**

Create `src/pages/WishShopPage.tsx`:

```tsx
import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { AnimatePresence, motion } from 'framer-motion'
import { groupWishRewards, WISH_REWARD_GROUPS } from '../lib/wishRewards'
import { useWishStore } from '../stores/wishStore'
import { WishBalanceBadge } from '../components/wish/WishBalanceBadge'
import { WishRewardCard } from '../components/wish/WishRewardCard'
import { WishRedemptionStatus } from '../components/wish/WishRedemptionStatus'
import type { Database } from '../lib/database.types'

type WishReward = Database['public']['Tables']['wish_rewards']['Row']

export default function WishShopPage() {
  const navigate = useNavigate()
  const { balance, rewards, redemptions, diaryEntries, message, isLoading, fetchWishData, submitRedemption, clearMessage } = useWishStore()
  const [selectedReward, setSelectedReward] = useState<WishReward | null>(null)
  const [childNote, setChildNote] = useState('')
  const grouped = useMemo(() => groupWishRewards(rewards), [rewards])
  const activeRequests = redemptions.filter(item => item.status === 'pending_parent_review' || item.status === 'approved_pending_fulfillment')

  useEffect(() => { fetchWishData().catch(() => undefined) }, [fetchWishData])
  useEffect(() => {
    if (!message) return
    const timer = window.setTimeout(clearMessage, 2400)
    return () => window.clearTimeout(timer)
  }, [message, clearMessage])

  const requestReward = async () => {
    if (!selectedReward) return
    const ok = await submitRedemption(selectedReward, childNote.trim())
    if (ok) {
      setSelectedReward(null)
      setChildNote('')
    }
  }

  return (
    <div className="p-4 space-y-5 pb-6">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold">愿望商店</h1>
        <WishBalanceBadge available={balance.available} frozen={balance.frozen} />
      </div>

      {message && <div className="rounded-2xl border border-sky-100 bg-sky-50 p-4 text-center font-extrabold text-sky-700">{message}</div>}

      <div className="card-gradient">
        <p className="text-sm font-bold text-gray-500">坚持练习得到愿望币</p>
        <p className="mt-1 text-2xl font-extrabold text-kid-text">每天完成三科基础练习，愿望就近一点</p>
      </div>

      {activeRequests.length > 0 && (
        <div className="card">
          <h2 className="mb-3 font-extrabold">我的许愿进度</h2>
          <div className="space-y-3">
            {activeRequests.map(item => (
              <div key={item.id} className="rounded-2xl bg-gray-50 p-3">
                <div className="flex items-center justify-between gap-2">
                  <p className="font-bold text-kid-text">{item.reward_name}</p>
                  <WishRedemptionStatus status={item.status} />
                </div>
                <p className="mt-1 text-xs text-gray-400">需要 {item.reward_cost} 枚愿望币</p>
              </div>
            ))}
          </div>
        </div>
      )}

      {isLoading && <p className="py-8 text-center text-gray-400">正在打开愿望商店...</p>}

      {!isLoading && WISH_REWARD_GROUPS.map(group => (
        <section key={group.id} className="space-y-3">
          <h2 className="px-1 text-lg font-extrabold">{group.label}</h2>
          {grouped[group.id].map(reward => (
            <WishRewardCard key={reward.id} reward={reward} available={balance.available} onRequest={setSelectedReward} />
          ))}
        </section>
      ))}

      {diaryEntries.length > 0 && (
        <div className="card">
          <h2 className="mb-3 font-extrabold">奖励日记</h2>
          <div className="space-y-3">
            {diaryEntries.slice(0, 5).map(entry => (
              <div key={entry.id} className="border-b border-gray-100 pb-3 last:border-b-0 last:pb-0">
                <p className="font-bold text-kid-text">{entry.title}</p>
                <p className="text-xs text-gray-400">{entry.description}</p>
              </div>
            ))}
          </div>
        </div>
      )}

      <AnimatePresence>
        {selectedReward && (
          <motion.div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 p-4" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}>
            <motion.div className="w-full max-w-sm rounded-3xl bg-white p-5" initial={{ scale: 0.9 }} animate={{ scale: 1 }} exit={{ scale: 0.9 }}>
              <h2 className="text-lg font-extrabold">许愿：{selectedReward.name}</h2>
              <p className="mt-2 text-sm text-gray-500">提交后会冻结 {selectedReward.cost} 枚愿望币，等待爸妈确认。</p>
              <textarea value={childNote} onChange={event => setChildNote(event.target.value)} className="mt-4 w-full rounded-2xl border border-gray-200 p-3 text-sm outline-none focus:border-sky-300" rows={3} placeholder="可以写下颜色、时间或小备注" />
              <div className="mt-4 flex gap-3">
                <button onClick={() => setSelectedReward(null)} className="flex-1 rounded-2xl bg-gray-100 py-3 font-bold text-gray-500">再想想</button>
                <button onClick={requestReward} className="flex-1 rounded-2xl bg-sky-500 py-3 font-bold text-white">提交愿望</button>
              </div>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  )
}
```

- [ ] **Step 5: Add route and navigation**

Modify `src/App.tsx`:

```ts
import WishShopPage from './pages/WishShopPage'
```

Add route inside `AppLayout`:

```tsx
            <Route path="/wish-shop" element={<WishShopPage />} />
```

Modify `src/components/layout/BottomNav.tsx` to add wish shop:

```ts
  { to: '/wish-shop', label: '愿望', icon: '🎁' },
```

Keep the existing `/shop` entry as `衣柜` if there are now six nav items:

```ts
  { to: '/shop', label: '衣柜', icon: '🛍️' },
```

- [ ] **Step 6: Add home page goal summary**

Modify `src/pages/HomePage.tsx` imports:

```ts
import { useWishStore } from '../stores/wishStore'
import { WishBalanceBadge } from '../components/wish/WishBalanceBadge'
```

Inside the component:

```ts
  const { balance: wishBalance, redemptions, rewards, fetchWishData } = useWishStore()
```

Add `fetchWishData()` to the first `Promise.all`:

```ts
    void Promise.all([fetchCompanion(), fetchToday(), fetchBalance(), fetchWishData()]).catch(() => {
```

Add `fetchWishData` to the dependency array.

Add this card below `<CompanionDisplay />`:

```tsx
      <motion.button
        whileHover={{ scale: 1.02 }}
        whileTap={{ scale: 0.97 }}
        onClick={() => navigate('/wish-shop')}
        className="w-full rounded-3xl border border-sky-100 bg-gradient-to-r from-sky-50 to-cyan-50 p-4 text-left shadow-sm"
      >
        <div className="flex items-center justify-between gap-3">
          <div>
            <p className="font-extrabold text-kid-text">愿望进度</p>
            <p className="mt-1 text-xs text-sky-600">
              {redemptions.some(item => item.status === 'pending_parent_review' || item.status === 'approved_pending_fulfillment')
                ? '有愿望正在等待爸妈确认'
                : rewards.length > 0
                  ? `最近的小愿望需要 ${Math.max(0, rewards[0].cost - wishBalance.available)} 枚`
                  : '完成三科练习获得愿望币'}
            </p>
          </div>
          <WishBalanceBadge available={wishBalance.available} frozen={wishBalance.frozen} />
        </div>
      </motion.button>
```

- [ ] **Step 7: Run build**

Run: `npm run build`

Expected: PASS.

- [ ] **Step 8: Commit**

```bash
git add src/components/wish/WishBalanceBadge.tsx src/components/wish/WishRedemptionStatus.tsx src/components/wish/WishRewardCard.tsx src/pages/WishShopPage.tsx src/App.tsx src/components/layout/BottomNav.tsx src/pages/HomePage.tsx
git commit -m "feat: add child wish shop"
```

---

## Task 6: Build Parent Wish Management

**Files:**

- Create: `src/pages/ParentWishPage.tsx`
- Modify: `src/pages/ParentReportPage.tsx`
- Modify: `src/App.tsx`

- [ ] **Step 1: Create parent wish page**

Create `src/pages/ParentWishPage.tsx`:

```tsx
import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useWishStore } from '../stores/wishStore'
import { WishBalanceBadge } from '../components/wish/WishBalanceBadge'
import { WishRedemptionStatus } from '../components/wish/WishRedemptionStatus'
import type { WishRewardType } from '../lib/wishRewards'

const rewardTypes: Array<{ value: WishRewardType; label: string }> = [
  { value: 'item', label: '物品' },
  { value: 'companionship', label: '陪伴' },
  { value: 'experience', label: '体验' },
  { value: 'open_wish', label: '小愿望' },
]

export default function ParentWishPage() {
  const navigate = useNavigate()
  const { balance, rewards, redemptions, diaryEntries, message, fetchWishData, createReward, approveRedemption, rejectRedemption, fulfillRedemption, clearMessage } = useWishStore()
  const [name, setName] = useState('')
  const [description, setDescription] = useState('')
  const [cost, setCost] = useState(10)
  const [type, setType] = useState<WishRewardType>('item')
  const [availabilityNote, setAvailabilityNote] = useState('')

  useEffect(() => { fetchWishData().catch(() => undefined) }, [fetchWishData])
  useEffect(() => {
    if (!message) return
    const timer = window.setTimeout(clearMessage, 2400)
    return () => window.clearTimeout(timer)
  }, [message, clearMessage])

  const pending = redemptions.filter(item => item.status === 'pending_parent_review')
  const approved = redemptions.filter(item => item.status === 'approved_pending_fulfillment')
  const customRewards = rewards.filter(item => !item.is_preset)

  const submitReward = async () => {
    if (!name.trim() || cost <= 0) return
    await createReward({
      name: name.trim(),
      description: description.trim(),
      type,
      cost,
      availability_note: availabilityNote.trim() || null,
    })
    setName('')
    setDescription('')
    setCost(10)
    setType('item')
    setAvailabilityNote('')
  }

  return (
    <div className="p-4 space-y-5 pb-6">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/parent-report')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold">愿望管理</h1>
        <WishBalanceBadge available={balance.available} frozen={balance.frozen} />
      </div>

      {message && <div className="rounded-2xl border border-sky-100 bg-sky-50 p-4 text-center font-extrabold text-sky-700">{message}</div>}

      <section className="card">
        <h2 className="mb-3 font-extrabold">待确认愿望</h2>
        {pending.length === 0 && <p className="text-sm text-gray-400">暂无需要确认的愿望</p>}
        <div className="space-y-3">
          {pending.map(item => (
            <div key={item.id} className="rounded-2xl bg-amber-50 p-3">
              <div className="flex items-center justify-between gap-2">
                <p className="font-bold text-kid-text">{item.reward_name}</p>
                <WishRedemptionStatus status={item.status} />
              </div>
              <p className="mt-1 text-xs text-gray-500">冻结 {item.reward_cost} 枚愿望币</p>
              {item.child_note && <p className="mt-2 rounded-xl bg-white/70 p-2 text-xs text-gray-500">{item.child_note}</p>}
              <div className="mt-3 flex gap-2">
                <button onClick={() => rejectRedemption(item, '本次暂不兑现')} className="flex-1 rounded-2xl bg-white py-2 text-sm font-bold text-gray-500">拒绝</button>
                <button onClick={() => approveRedemption(item)} className="flex-1 rounded-2xl bg-sky-500 py-2 text-sm font-bold text-white">同意</button>
              </div>
            </div>
          ))}
        </div>
      </section>

      <section className="card">
        <h2 className="mb-3 font-extrabold">待兑现</h2>
        {approved.length === 0 && <p className="text-sm text-gray-400">暂无待兑现奖励</p>}
        <div className="space-y-3">
          {approved.map(item => (
            <div key={item.id} className="rounded-2xl bg-blue-50 p-3">
              <p className="font-bold text-kid-text">{item.reward_name}</p>
              <p className="mt-1 text-xs text-blue-600">爸妈同意后，兑现完成再点下面按钮</p>
              <button onClick={() => fulfillRedemption(item)} className="mt-3 w-full rounded-2xl bg-green-500 py-2 text-sm font-bold text-white">标记已兑现</button>
            </div>
          ))}
        </div>
      </section>

      <section className="card">
        <h2 className="mb-3 font-extrabold">添加自定义奖励</h2>
        <div className="space-y-3">
          <input value={name} onChange={event => setName(event.target.value)} className="w-full rounded-2xl border border-gray-200 p-3 text-sm outline-none focus:border-sky-300" placeholder="奖励名称" />
          <textarea value={description} onChange={event => setDescription(event.target.value)} className="w-full rounded-2xl border border-gray-200 p-3 text-sm outline-none focus:border-sky-300" rows={2} placeholder="奖励说明" />
          <div className="grid grid-cols-2 gap-3">
            <input type="number" min={1} value={cost} onChange={event => setCost(Number(event.target.value))} className="rounded-2xl border border-gray-200 p-3 text-sm outline-none focus:border-sky-300" />
            <select value={type} onChange={event => setType(event.target.value as WishRewardType)} className="rounded-2xl border border-gray-200 p-3 text-sm outline-none focus:border-sky-300">
              {rewardTypes.map(item => <option key={item.value} value={item.value}>{item.label}</option>)}
            </select>
          </div>
          <input value={availabilityNote} onChange={event => setAvailabilityNote(event.target.value)} className="w-full rounded-2xl border border-gray-200 p-3 text-sm outline-none focus:border-sky-300" placeholder="可选：周末兑现、考试周暂停等" />
          <button onClick={submitReward} className="w-full rounded-2xl bg-kid-primary py-3 font-bold text-white">添加奖励</button>
        </div>
      </section>

      {customRewards.length > 0 && (
        <section className="card">
          <h2 className="mb-3 font-extrabold">自定义奖励</h2>
          <div className="space-y-3">
            {customRewards.map(item => (
              <div key={item.id} className="rounded-2xl bg-gray-50 p-3">
                <div className="flex items-center justify-between gap-2">
                  <p className="font-bold text-kid-text">{item.name}</p>
                  <span className="text-sm font-extrabold text-sky-600">🎁 {item.cost}</span>
                </div>
                <p className="mt-1 text-xs text-gray-400">{item.description}</p>
              </div>
            ))}
          </div>
        </section>
      )}

      {diaryEntries.length > 0 && (
        <section className="card">
          <h2 className="mb-3 font-extrabold">奖励日记</h2>
          <div className="space-y-3">
            {diaryEntries.map(entry => (
              <div key={entry.id} className="border-b border-gray-100 pb-3 last:border-b-0 last:pb-0">
                <p className="font-bold text-kid-text">{entry.title}</p>
                <p className="text-xs text-gray-400">{entry.description}</p>
              </div>
            ))}
          </div>
        </section>
      )}
    </div>
  )
}
```

- [ ] **Step 2: Add route**

Modify `src/App.tsx`:

```ts
import ParentWishPage from './pages/ParentWishPage'
```

Add route:

```tsx
            <Route path="/parent-wishes" element={<ParentWishPage />} />
```

- [ ] **Step 3: Link from parent report**

Modify `src/pages/ParentReportPage.tsx` inside the top header area below the existing `h1` block or immediately after the header:

```tsx
      <button
        onClick={() => navigate('/parent-wishes')}
        className="w-full rounded-2xl border border-sky-100 bg-sky-50 p-4 text-left font-extrabold text-sky-700"
      >
        🎁 管理愿望奖励
      </button>
```

Place it before loading/error/report content so parents can reach it even when report data is empty.

- [ ] **Step 4: Run build**

Run: `npm run build`

Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add src/pages/ParentWishPage.tsx src/pages/ParentReportPage.tsx src/App.tsx
git commit -m "feat: add parent wish management"
```

---

## Task 7: Final Verification

**Files:**

- Verify all files changed by Tasks 1-6.

- [ ] **Step 1: Run unit tests**

Run: `npm test -- src/lib/wishRewards.test.ts src/stores/wishStore.test.ts`

Expected: PASS.

- [ ] **Step 2: Run full app tests**

Run: `npm test`

Expected: PASS for the existing Vitest suite.

- [ ] **Step 3: Run production build**

Run: `npm run build`

Expected: PASS.

- [ ] **Step 4: Manual smoke test in browser**

Run: `npm run dev`

Expected: Vite prints a local URL.

Manual checks:

- Home page shows stars and wish progress without overlapping text.
- `/wish-shop` shows presets grouped by cost.
- Submitting an unaffordable wish shows "愿望币还不够哦".
- Parent page `/parent-wishes` loads even if there are no pending requests.
- Parent report links to wish management.
- Bottom nav still fits on mobile width.

- [ ] **Step 5: Commit verification-only fixes if needed**

If verification uncovers small UI or type fixes, commit only those fixes:

```bash
git add <changed-files>
git commit -m "fix: polish wish rewards flow"
```

If verification passes with no fixes, do not create an empty commit.
