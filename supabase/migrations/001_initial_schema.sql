create extension if not exists "uuid-ossp";

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

create index idx_companions_user on public.companions(user_id);
create index idx_questions_subject_grade on public.questions(subject, grade);
create index idx_quiz_records_user_date on public.quiz_records(user_id, answered_at);
create index idx_check_ins_user_date on public.check_ins(user_id, date);
create index idx_points_user on public.points_transactions(user_id, created_at);

alter table public.profiles enable row level security;
alter table public.companions enable row level security;
alter table public.companion_types enable row level security;
alter table public.questions enable row level security;
alter table public.quiz_records enable row level security;
alter table public.check_ins enable row level security;
alter table public.points_transactions enable row level security;
alter table public.shop_items enable row level security;

create policy "Users can view own profile" on public.profiles for select using (auth.uid() = id);
create policy "Users can insert own profile" on public.profiles for insert with check (auth.uid() = id);
create policy "Users can update own profile" on public.profiles for update using (auth.uid() = id);

create policy "Users can view own companions" on public.companions for select using (auth.uid() = user_id);
create policy "Users can insert own companion" on public.companions for insert with check (auth.uid() = user_id);
create policy "Users can update own companion" on public.companions for update using (auth.uid() = user_id);

create policy "Anyone can view companion types" on public.companion_types for select using (true);

create policy "Authenticated users can view questions" on public.questions for select using (auth.role() = 'authenticated');

create policy "Users can view own quiz records" on public.quiz_records for select using (auth.uid() = user_id);
create policy "Users can insert own quiz records" on public.quiz_records for insert with check (auth.uid() = user_id);

create policy "Users can view own check-ins" on public.check_ins for select using (auth.uid() = user_id);
create policy "Users can insert own check-in" on public.check_ins for insert with check (auth.uid() = user_id);
create policy "Users can update own check-in" on public.check_ins for update using (auth.uid() = user_id);

create policy "Users can view own transactions" on public.points_transactions for select using (auth.uid() = user_id);
create policy "Users can insert own transactions" on public.points_transactions for insert with check (auth.uid() = user_id);

create policy "Anyone can view shop items" on public.shop_items for select using (true);

insert into public.companion_types (id, name, category, base_image_url, rarity, unlock_cost) values
  ('cat', '小猫咪', 'animal', '/companions/cat.svg', 'common', 0),
  ('dog', '小狗狗', 'animal', '/companions/dog.svg', 'common', 0),
  ('dino', '小恐龙', 'animal', '/companions/dino.svg', 'common', 0),
  ('fox', '小狐狸', 'animal', '/companions/fox.svg', 'common', 0),
  ('phoenix', '火凤凰', 'fantasy', '/companions/default.png', 'rare', 500),
  ('cyber_cat', '赛博猫', 'cyberpunk', '/companions/default.png', 'rare', 800);

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

create or replace function get_total_points(user_id uuid) returns bigint as $$
  select coalesce(sum(amount), 0) from public.points_transactions where user_id = $1;
$$ language sql stable;
