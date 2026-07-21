alter table public.quiz_records
  add column if not exists selected_answer jsonb;

create table if not exists public.mistake_records (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  question_id uuid not null references public.questions(id),
  subject text not null check (subject in ('chinese', 'math', 'english')),
  status text not null default 'needs_correction'
    check (status in ('needs_correction', 'reinforcing', 'mastered')),
  wrong_count int not null default 1 check (wrong_count >= 1),
  correct_review_count int not null default 0 check (correct_review_count >= 0),
  last_wrong_at timestamptz not null default now(),
  last_reviewed_at timestamptz,
  mastered_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(user_id, question_id)
);

create table if not exists public.mistake_reviews (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  mistake_id uuid not null references public.mistake_records(id) on delete cascade,
  question_id uuid not null references public.questions(id),
  selected_answer jsonb,
  is_correct boolean not null,
  status_before text not null check (status_before in ('needs_correction', 'reinforcing', 'mastered')),
  status_after text not null check (status_after in ('needs_correction', 'reinforcing', 'mastered')),
  reviewed_at timestamptz not null default now()
);

create index if not exists idx_mistake_records_user_status
  on public.mistake_records(user_id, status, updated_at desc);
create index if not exists idx_mistake_records_user_subject
  on public.mistake_records(user_id, subject, updated_at desc);
create index if not exists idx_mistake_reviews_mistake_time
  on public.mistake_reviews(mistake_id, reviewed_at desc);
create index if not exists idx_mistake_reviews_user_time
  on public.mistake_reviews(user_id, reviewed_at desc);

alter table public.mistake_records enable row level security;
alter table public.mistake_reviews enable row level security;

create policy "Users can view own mistake records"
  on public.mistake_records for select using (auth.uid() = user_id);
create policy "Users can insert own mistake records"
  on public.mistake_records for insert with check (auth.uid() = user_id);
create policy "Users can update own mistake records"
  on public.mistake_records for update using (auth.uid() = user_id);

create policy "Users can view own mistake reviews"
  on public.mistake_reviews for select using (auth.uid() = user_id);
create policy "Users can insert own mistake reviews"
  on public.mistake_reviews for insert with check (auth.uid() = user_id);
