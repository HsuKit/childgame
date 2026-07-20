import test from 'node:test'
import assert from 'node:assert/strict'
import { readFileSync } from 'node:fs'

const scripts = ['seed-all-questions.mjs', 'seed-questions.mjs']

for (const filename of scripts) {
  test(`${filename} has no embedded project credentials or destructive bulk delete`, () => {
    const source = readFileSync(new URL(`../${filename}`, import.meta.url), 'utf8')
    assert.doesNotMatch(source, /https:\/\/[a-z]+\.supabase\.co/)
    assert.doesNotMatch(source, /eyJhbGci[A-Za-z0-9._-]+/)
    assert.doesNotMatch(source, /\.delete\(\)\.eq\(['"]source['"],\s*['"]builtin['"]\)/)
    if (filename === 'seed-all-questions.mjs') {
      assert.match(source, /SUPABASE_URL/)
      assert.match(source, /SUPABASE_SERVICE_ROLE_KEY/)
      assert.match(source, /\.upsert\(/)
      assert.match(source, /onConflict:\s*['"]external_id['"]/)
    } else {
      assert.match(source, /publishQuestions/)
      assert.match(source, /seed-all-questions\.mjs/)
    }
  })
}
