-- Leaderboard: weekly points ranking
create or replace function get_weekly_leaderboard(since timestamptz)
returns table(user_id uuid, nickname text, companion_type text, points bigint) as $$
  select pt.user_id, p.nickname,
    (select companion_type from public.companions c where c.user_id = pt.user_id limit 1) as companion_type,
    sum(pt.amount) as points
  from public.points_transactions pt
  join public.profiles p on p.id = pt.user_id
  where pt.created_at >= since and pt.amount > 0
  group by pt.user_id, p.nickname
  order by points desc
  limit 50;
$$ language sql stable;

-- Leaderboard: total points ranking
create or replace function get_total_leaderboard()
returns table(user_id uuid, nickname text, companion_type text, points bigint) as $$
  select pt.user_id, p.nickname,
    (select companion_type from public.companions c where c.user_id = pt.user_id limit 1) as companion_type,
    sum(pt.amount) as points
  from public.points_transactions pt
  join public.profiles p on p.id = pt.user_id
  where pt.amount > 0
  group by pt.user_id, p.nickname
  order by points desc
  limit 50;
$$ language sql stable;

-- PK Challenges table
create table if not exists public.pk_challenges (
  id uuid primary key default uuid_generate_v4(),
  code text not null unique,
  creator_id uuid not null references public.profiles(id),
  creator_score int,
  opponent_id uuid references public.profiles(id),
  opponent_score int,
  subject text not null check (subject in ('chinese', 'math', 'english', 'mixed')),
  status text not null default 'waiting' check (status in ('waiting', 'ongoing', 'completed')),
  created_at timestamptz not null default now()
);

alter table public.pk_challenges enable row level security;
create policy "Anyone can view challenges" on public.pk_challenges for select using (true);
create policy "Creator can insert" on public.pk_challenges for insert with check (auth.uid() = creator_id);
create policy "Players can update" on public.pk_challenges for update using (auth.uid() in (creator_id, opponent_id));
