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
returns table (total_earned bigint, frozen bigint, spent bigint, available bigint)
language sql
stable
as $$
  with totals as (
    select
      coalesce(sum(case when type = 'earn' then amount else 0 end), 0)::bigint as total_earned,
      coalesce(sum(case when type = 'freeze' then abs(amount) else 0 end), 0)::bigint as frozen_amount,
      coalesce(sum(case when type = 'release' then abs(amount) else 0 end), 0)::bigint as released_amount,
      coalesce(sum(case when type = 'spend' then abs(amount) else 0 end), 0)::bigint as spent
    from public.wish_coin_transactions
    where wish_coin_transactions.user_id = get_wish_coin_balance.user_id
  )
  select
    total_earned,
    greatest(frozen_amount - released_amount - spent, 0)::bigint as frozen,
    spent,
    (total_earned - greatest(frozen_amount - released_amount - spent, 0) - spent)::bigint as available
  from totals;
$$;

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
