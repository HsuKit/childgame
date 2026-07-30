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
      coalesce(sum(case when transactions.type = 'earn' then transactions.amount else 0 end), 0)::bigint as total_earned,
      coalesce(sum(case when transactions.type = 'freeze' then abs(transactions.amount) else 0 end), 0)::bigint as frozen_amount,
      coalesce(sum(case when transactions.type = 'release' then abs(transactions.amount) else 0 end), 0)::bigint as released_amount,
      coalesce(sum(case when transactions.type = 'spend' then abs(transactions.amount) else 0 end), 0)::bigint as spent
    from public.wish_coin_transactions as transactions
    where transactions.user_id = p_user_id
  )
  select
    totals.total_earned,
    greatest(totals.frozen_amount - totals.released_amount - totals.spent, 0)::bigint,
    totals.spent,
    (
      totals.total_earned
      - greatest(totals.frozen_amount - totals.released_amount - totals.spent, 0)
      - totals.spent
    )::bigint
  from totals;
end;
$$;

revoke execute on function public.get_wish_coin_balance(uuid) from public, anon;
grant execute on function public.get_wish_coin_balance(uuid) to authenticated;
