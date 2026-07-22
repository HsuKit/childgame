create table public.wish_coin_transactions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  amount int not null,
  type text not null check (type in ('earn', 'freeze', 'release', 'spend')),
  reason text not null,
  reference_id uuid,
  created_at timestamptz not null default now(),
  constraint wish_coin_transaction_amount_sign check (
    (type in ('earn', 'release') and amount > 0)
    or (type in ('freeze', 'spend') and amount < 0)
  )
);

create table public.wish_rewards (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references public.profiles(id) on delete cascade,
  name text not null,
  description text not null default '',
  type text not null check (type in ('item', 'companionship', 'experience', 'open_wish')),
  cost int not null check (cost > 0),
  is_preset boolean not null default false,
  is_active boolean not null default true,
  availability_note text,
  created_at timestamptz not null default now(),
  constraint wish_rewards_preset_owner check (
    (is_preset = true and user_id is null)
    or (is_preset = false and user_id is not null)
  )
);

create table public.wish_redemptions (
  id uuid primary key default gen_random_uuid(),
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
  id uuid primary key default gen_random_uuid(),
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
create unique index idx_wish_coin_transactions_once_per_reference
  on public.wish_coin_transactions(user_id, reason, reference_id)
  where reference_id is not null;
create unique index idx_reward_diary_entries_once_per_reference
  on public.reward_diary_entries(user_id, entry_type, reference_id)
  where reference_id is not null;
create unique index idx_points_transactions_once_per_reference
  on public.points_transactions(user_id, reason, reference_id)
  where reference_id is not null and reason = 'checkin_bonus';

alter table public.wish_coin_transactions enable row level security;
alter table public.wish_rewards enable row level security;
alter table public.wish_redemptions enable row level security;
alter table public.reward_diary_entries enable row level security;

create policy "Users can view own wish coin transactions" on public.wish_coin_transactions for select using (auth.uid() = user_id);

create policy "Users can view preset or own wish rewards" on public.wish_rewards for select using (is_preset = true or auth.uid() = user_id);
create policy "Users can insert own wish rewards" on public.wish_rewards for insert with check (auth.uid() = user_id and is_preset = false);
create policy "Users can update own wish rewards" on public.wish_rewards for update using (auth.uid() = user_id and is_preset = false) with check (auth.uid() = user_id and is_preset = false);

create policy "Users can view own wish redemptions" on public.wish_redemptions for select using (auth.uid() = user_id);

create policy "Users can view own reward diary" on public.reward_diary_entries for select using (auth.uid() = user_id);

create or replace function public.get_wish_coin_balance(user_id uuid)
returns table (total_earned bigint, frozen bigint, spent bigint, available bigint)
language plpgsql
security definer
stable
set search_path = public
as $$
declare
  p_user_id alias for $1;
begin
  if auth.uid() is null or auth.uid() <> p_user_id then
    raise exception 'Not allowed';
  end if;

  return query
  with totals as (
    select
      coalesce(sum(case when type = 'earn' then amount else 0 end), 0)::bigint as total_earned,
      coalesce(sum(case when type = 'freeze' then abs(amount) else 0 end), 0)::bigint as frozen_amount,
      coalesce(sum(case when type = 'release' then abs(amount) else 0 end), 0)::bigint as released_amount,
      coalesce(sum(case when type = 'spend' then abs(amount) else 0 end), 0)::bigint as spent
    from public.wish_coin_transactions
    where wish_coin_transactions.user_id = p_user_id
  )
  select
    total_earned,
    greatest(frozen_amount - released_amount - spent, 0)::bigint as frozen,
    spent,
    (total_earned - greatest(frozen_amount - released_amount - spent, 0) - spent)::bigint as available
  from totals;
end;
$$;

create or replace function public.award_daily_wish_coins(check_in_id uuid)
returns int
language plpgsql
security definer
set search_path = public
as $$
declare
  p_check_in_id alias for $1;
  v_check_in public.check_ins%rowtype;
  v_amount int;
  v_inserted_amount int;
  v_chinese_count int;
  v_math_count int;
  v_english_count int;
begin
  select *
    into v_check_in
    from public.check_ins
    where id = p_check_in_id;

  if not found then
    raise exception 'Check-in not found';
  end if;

  if auth.uid() is null or auth.uid() <> v_check_in.user_id then
    raise exception 'Not allowed';
  end if;

  perform pg_advisory_xact_lock(hashtext(v_check_in.user_id::text));

  if not (v_check_in.chinese_done and v_check_in.math_done and v_check_in.english_done) then
    return 0;
  end if;

  select count(distinct question_id) into v_chinese_count
    from public.quiz_records
    where user_id = v_check_in.user_id
      and subject = 'chinese'
      and timezone('Asia/Shanghai', answered_at)::date = v_check_in.date;

  select count(distinct question_id) into v_math_count
    from public.quiz_records
    where user_id = v_check_in.user_id
      and subject = 'math'
      and timezone('Asia/Shanghai', answered_at)::date = v_check_in.date;

  select count(distinct question_id) into v_english_count
    from public.quiz_records
    where user_id = v_check_in.user_id
      and subject = 'english'
      and timezone('Asia/Shanghai', answered_at)::date = v_check_in.date;

  if v_chinese_count < 10 or v_math_count < 10 or v_english_count < 10 then
    return 0;
  end if;

  v_amount := 1
    + case
      when v_check_in.streak_count > 0 and v_check_in.streak_count % 30 = 0 then 8
      when v_check_in.streak_count > 0 and v_check_in.streak_count % 7 = 0 then 2
      else 0
    end;

  insert into public.wish_coin_transactions (user_id, amount, type, reason, reference_id)
  values (v_check_in.user_id, v_amount, 'earn', 'daily_core_complete', p_check_in_id)
  on conflict (user_id, reason, reference_id) where reference_id is not null do nothing
  returning amount into v_inserted_amount;

  return coalesce(v_inserted_amount, 0);
end;
$$;

create or replace function public.submit_wish_redemption(reward_id uuid, child_note text default null)
returns public.wish_redemptions
language plpgsql
security definer
set search_path = public
as $$
declare
  p_reward_id alias for $1;
  p_child_note alias for $2;
  v_user_id uuid;
  v_reward public.wish_rewards%rowtype;
  v_balance record;
  v_redemption_id uuid := gen_random_uuid();
  v_redemption public.wish_redemptions%rowtype;
begin
  v_user_id := auth.uid();

  if v_user_id is null then
    raise exception 'Not authenticated';
  end if;

  perform pg_advisory_xact_lock(hashtext(v_user_id::text));

  select *
    into v_reward
    from public.wish_rewards
    where id = p_reward_id
      and is_active = true
      and (is_preset = true or user_id = v_user_id);

  if not found then
    raise exception 'Reward not found';
  end if;

  select *
    into v_balance
    from public.get_wish_coin_balance(v_user_id);

  if coalesce(v_balance.available, 0) < v_reward.cost then
    raise exception 'Insufficient wish coin balance';
  end if;

  insert into public.wish_redemptions (
    id,
    user_id,
    reward_id,
    reward_name,
    reward_cost,
    reward_type,
    status,
    child_note
  )
  values (
    v_redemption_id,
    v_user_id,
    v_reward.id,
    v_reward.name,
    v_reward.cost,
    v_reward.type,
    'pending_parent_review',
    p_child_note
  )
  returning * into v_redemption;

  insert into public.wish_coin_transactions (user_id, amount, type, reason, reference_id)
  values (v_user_id, -v_reward.cost, 'freeze', 'wish_redemption_freeze', v_redemption_id);

  return v_redemption;
end;
$$;

create or replace function public.approve_wish_redemption(redemption_id uuid, parent_note text default null)
returns public.wish_redemptions
language plpgsql
security definer
set search_path = public
as $$
declare
  p_redemption_id alias for $1;
  p_parent_note alias for $2;
  v_user_id uuid;
  v_redemption public.wish_redemptions%rowtype;
begin
  v_user_id := auth.uid();

  if v_user_id is null then
    raise exception 'Not authenticated';
  end if;

  perform pg_advisory_xact_lock(hashtext(v_user_id::text));

  select *
    into v_redemption
    from public.wish_redemptions
    where id = p_redemption_id
      and user_id = v_user_id
      and status = 'pending_parent_review'
    for update;

  if not found then
    raise exception 'Redemption not found';
  end if;

  insert into public.wish_coin_transactions (user_id, amount, type, reason, reference_id)
  values (v_user_id, -v_redemption.reward_cost, 'spend', 'wish_redemption_approved', p_redemption_id)
  on conflict (user_id, reason, reference_id) where reference_id is not null do nothing;

  update public.wish_redemptions
    set status = 'approved_pending_fulfillment',
        parent_note = p_parent_note,
        reviewed_at = now()
    where id = p_redemption_id
    returning * into v_redemption;

  return v_redemption;
end;
$$;

create or replace function public.reject_wish_redemption(redemption_id uuid, parent_note text default null)
returns public.wish_redemptions
language plpgsql
security definer
set search_path = public
as $$
declare
  p_redemption_id alias for $1;
  p_parent_note alias for $2;
  v_user_id uuid;
  v_redemption public.wish_redemptions%rowtype;
begin
  v_user_id := auth.uid();

  if v_user_id is null then
    raise exception 'Not authenticated';
  end if;

  perform pg_advisory_xact_lock(hashtext(v_user_id::text));

  select *
    into v_redemption
    from public.wish_redemptions
    where id = p_redemption_id
      and user_id = v_user_id
      and status = 'pending_parent_review'
    for update;

  if not found then
    raise exception 'Redemption not found';
  end if;

  insert into public.wish_coin_transactions (user_id, amount, type, reason, reference_id)
  values (v_user_id, v_redemption.reward_cost, 'release', 'wish_redemption_rejected', p_redemption_id)
  on conflict (user_id, reason, reference_id) where reference_id is not null do nothing;

  update public.wish_redemptions
    set status = 'rejected',
        parent_note = p_parent_note,
        reviewed_at = now()
    where id = p_redemption_id
    returning * into v_redemption;

  return v_redemption;
end;
$$;

create or replace function public.fulfill_wish_redemption(redemption_id uuid)
returns public.wish_redemptions
language plpgsql
security definer
set search_path = public
as $$
declare
  p_redemption_id alias for $1;
  v_user_id uuid;
  v_redemption public.wish_redemptions%rowtype;
begin
  v_user_id := auth.uid();

  if v_user_id is null then
    raise exception 'Not authenticated';
  end if;

  perform pg_advisory_xact_lock(hashtext(v_user_id::text));

  select *
    into v_redemption
    from public.wish_redemptions
    where id = p_redemption_id
      and user_id = v_user_id
      and status = 'approved_pending_fulfillment'
    for update;

  if not found then
    raise exception 'Redemption not found';
  end if;

  update public.wish_redemptions
    set status = 'fulfilled',
        fulfilled_at = now()
    where id = p_redemption_id
    returning * into v_redemption;

  insert into public.reward_diary_entries (user_id, entry_type, title, description, reference_id)
  values (
    v_user_id,
    'wish_fulfilled',
    '愿望实现：' || v_redemption.reward_name,
    '这是坚持练习换来的真实奖励。',
    p_redemption_id
  )
  on conflict (user_id, entry_type, reference_id) where reference_id is not null do nothing;

  return v_redemption;
end;
$$;

revoke execute on function public.get_wish_coin_balance(uuid) from public, anon;
revoke execute on function public.award_daily_wish_coins(uuid) from public, anon;
revoke execute on function public.submit_wish_redemption(uuid, text) from public, anon;
revoke execute on function public.approve_wish_redemption(uuid, text) from public, anon;
revoke execute on function public.reject_wish_redemption(uuid, text) from public, anon;
revoke execute on function public.fulfill_wish_redemption(uuid) from public, anon;

grant execute on function public.get_wish_coin_balance(uuid) to authenticated;
grant execute on function public.award_daily_wish_coins(uuid) to authenticated;
grant execute on function public.submit_wish_redemption(uuid, text) to authenticated;
grant execute on function public.approve_wish_redemption(uuid, text) to authenticated;
grant execute on function public.reject_wish_redemption(uuid, text) to authenticated;
grant execute on function public.fulfill_wish_redemption(uuid) to authenticated;

insert into public.wish_rewards (name, description, type, cost, is_preset, is_active, availability_note) values
  ('一张喜欢的贴纸', '选一张喜欢的贴纸，贴在本子、奖励册或文具上。', 'item', 3, true, true, '小小愿望，适合当天兑现'),
  ('一支新铅笔或橡皮', '挑一支顺手的新铅笔，或一块喜欢的橡皮。', 'item', 5, true, true, '家长可替换成同价文具'),
  ('选择今天的水果或小点心', '在爸妈给出的范围里，选择一份水果或小点心。', 'item', 6, true, true, '建议保持健康小份量'),
  ('睡前多讲一个故事', '睡前请爸妈多讲一个故事，给今天一个温柔结尾。', 'companionship', 6, true, true, '适合睡前兑现'),
  ('15 分钟亲子小游戏', '和爸妈玩 15 分钟小游戏，可以是猜谜、积木或桌面小游戏。', 'companionship', 8, true, true, '需要约定时间'),
  ('选择一次晚餐菜品', '在家庭菜单范围里，选择一道今天想吃的菜。', 'companionship', 10, true, true, '爸妈确认可准备的范围'),
  ('一本喜欢的课外书', '选择一本适合年龄、自己真正想读的课外书。', 'item', 15, true, true, '建议周末购买或借阅'),
  ('30 分钟桌游时间', '和爸妈一起玩 30 分钟桌游或亲子游戏。', 'companionship', 16, true, true, '适合晚饭后或周末'),
  ('一个预算内小玩具', '选择一个提前约定预算内的小玩具。', 'item', 20, true, true, '家长设置预算范围'),
  ('周末去书店或图书馆', '周末安排一次书店或图书馆小行程。', 'experience', 20, true, true, '适合周末兑现'),
  ('公园或博物馆小出行', '去附近公园、博物馆或展览空间走一走。', 'experience', 25, true, true, '需要爸妈确认天气和时间'),
  ('一套彩笔或文具盒', '选择一套彩笔、文具盒或同等价位学习用品。', 'item', 30, true, true, '适合阶段性目标'),
  ('一次亲子电影夜', '和家人一起选一部适合观看的电影，安排电影夜。', 'companionship', 35, true, true, '爸妈确认片单和时间'),
  ('一个小愿望申请', '提出一个小愿望，由爸妈一起判断是否合适。', 'open_wish', 40, true, true, '需要爸妈审核内容'),
  ('周末半日家庭活动', '安排半天家庭活动，比如运动、手工、逛展或户外探索。', 'experience', 45, true, true, '适合提前计划'),
  ('一次城市探索或近郊游', '去一个城市里没去过的地方，或安排一次近郊小探索。', 'experience', 55, true, true, '长期目标，需要排期'),
  ('一个较大玩具或模型', '选择一个提前约定预算内的较大玩具、模型或拼装套装。', 'item', 60, true, true, '家长设置预算上限'),
  ('一次短途旅行计划', '和家人一起计划一次短途旅行或城市周边游。', 'experience', 80, true, true, '梦想愿望，需要提前安排'),
  ('家庭愿望日', '设计一个由孩子参与规划的家庭愿望日，包含活动、餐食和小惊喜。', 'open_wish', 100, true, true, '超长期目标，全家一起确认');
