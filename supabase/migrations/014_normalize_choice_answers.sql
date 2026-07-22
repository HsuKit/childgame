begin;

create or replace function public.normalize_choice_question_content(question_content jsonb)
returns jsonb
language plpgsql
immutable
as $$
declare
  answer_value jsonb;
  answer_text text;
  option_count int;
  index_value int;
  option_value text;
  option_index int := 0;
  matched_index int := null;
  match_count int := 0;
begin
  if jsonb_typeof(question_content) <> 'object'
     or jsonb_typeof(question_content->'options') <> 'array'
     or not (question_content ? 'answer') then
    return null;
  end if;

  option_count := jsonb_array_length(question_content->'options');
  if option_count = 0 then
    return null;
  end if;

  answer_value := question_content->'answer';

  if jsonb_typeof(answer_value) = 'number' then
    answer_text := answer_value #>> '{}';
    if answer_text ~ '^\d+$' then
      index_value := answer_text::int;
      if index_value >= 0 and index_value < option_count then
        return jsonb_set(question_content, '{answer}', to_jsonb(index_value), false);
      end if;
    end if;
    return null;
  end if;

  if jsonb_typeof(answer_value) <> 'string' then
    return null;
  end if;

  answer_text := btrim(answer_value #>> '{}');
  if answer_text = '' then
    return null;
  end if;

  if answer_text ~ '^\d+$' then
    index_value := answer_text::int;
    if index_value >= 0 and index_value < option_count then
      return jsonb_set(question_content, '{answer}', to_jsonb(index_value), false);
    end if;
    return null;
  end if;

  if answer_text ~* '^[A-D]$' then
    index_value := ascii(upper(answer_text)) - ascii('A');
    if index_value >= 0 and index_value < option_count then
      return jsonb_set(question_content, '{answer}', to_jsonb(index_value), false);
    end if;
    return null;
  end if;

  for option_value in select jsonb_array_elements_text(question_content->'options') loop
    if btrim(option_value) = answer_text then
      matched_index := option_index;
      match_count := match_count + 1;
    end if;
    option_index := option_index + 1;
  end loop;

  if match_count = 1 then
    return jsonb_set(question_content, '{answer}', to_jsonb(matched_index), false);
  end if;

  return null;
end;
$$;

with repaired as (
  select id, public.normalize_choice_question_content(content) as normalized_content
  from public.questions
  where type = 'choice'
)
update public.questions q
set content = repaired.normalized_content
from repaired
where q.id = repaired.id
  and repaired.normalized_content is not null
  and q.content is distinct from repaired.normalized_content;

with unrepaired as (
  select id
  from public.questions
  where type = 'choice'
    and review_status in ('reviewed', 'approved')
    and public.normalize_choice_question_content(content) is null
)
update public.questions q
set review_status = 'draft'
from unrepaired
where q.id = unrepaired.id;

do $$
begin
  if not exists (
    select 1 from pg_constraint where conname = 'questions_choice_answer_contract'
  ) then
    alter table public.questions
      add constraint questions_choice_answer_contract
      check (
        type <> 'choice'
        or review_status = 'draft'
        or public.normalize_choice_question_content(content) is not null
      );
  end if;
end $$;

commit;
