import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'

const migrationPath = new URL('../../supabase/migrations/018_fix_wish_coin_balance.sql', import.meta.url)

test('wish balance migration qualifies output-column names and preserves RPC permissions', () => {
  const sql = readFileSync(migrationPath, 'utf8')

  assert.match(sql, /create or replace function public\.get_wish_coin_balance\(user_id uuid\)/i)
  assert.match(sql, /totals\.total_earned/i)
  assert.match(sql, /totals\.spent/i)
  assert.match(sql, /revoke execute on function public\.get_wish_coin_balance\(uuid\) from public, anon/i)
  assert.match(sql, /grant execute on function public\.get_wish_coin_balance\(uuid\) to authenticated/i)
})
