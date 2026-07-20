begin;

alter table public.questions add column if not exists external_id text;
alter table public.questions add column if not exists knowledge_point text;
alter table public.questions add column if not exists skill text;
alter table public.questions add column if not exists tags text[];
alter table public.questions add column if not exists content_hash text;
alter table public.questions add column if not exists review_status text;
alter table public.questions add column if not exists version int;

update public.questions
set
  external_id = coalesce(external_id, 'legacy-' || id::text),
  knowledge_point = coalesce(knowledge_point, 'legacy-unclassified'),
  skill = coalesce(skill, 'recall'),
  tags = coalesce(tags, array[]::text[]),
  content_hash = coalesce(content_hash, md5('legacy-' || id::text)),
  review_status = coalesce(review_status, 'reviewed'),
  version = coalesce(version, 1)
where external_id is null
   or knowledge_point is null
   or skill is null
   or tags is null
   or content_hash is null
   or review_status is null
   or version is null;

alter table public.questions alter column external_id set not null;
alter table public.questions alter column knowledge_point set not null;
alter table public.questions alter column skill set not null;
alter table public.questions alter column tags set not null;
alter table public.questions alter column tags set default array[]::text[];
alter table public.questions alter column content_hash set not null;
alter table public.questions alter column review_status set not null;
alter table public.questions alter column review_status set default 'draft';
alter table public.questions alter column version set not null;
alter table public.questions alter column version set default 1;

do $$
begin
  if not exists (select 1 from pg_constraint where conname = 'questions_skill_check') then
    alter table public.questions add constraint questions_skill_check
      check (skill in ('recall', 'understand', 'apply', 'reason'));
  end if;
  if not exists (select 1 from pg_constraint where conname = 'questions_review_status_check') then
    alter table public.questions add constraint questions_review_status_check
      check (review_status in ('draft', 'reviewed', 'approved'));
  end if;
  if not exists (select 1 from pg_constraint where conname = 'questions_version_check') then
    alter table public.questions add constraint questions_version_check check (version >= 1);
  end if;
end $$;

create unique index if not exists idx_questions_external_id_unique
  on public.questions (external_id);
create unique index if not exists idx_questions_content_hash_unique
  on public.questions (content_hash);
create index if not exists idx_questions_composition
  on public.questions (grade, subject, review_status, type, difficulty);

commit;
