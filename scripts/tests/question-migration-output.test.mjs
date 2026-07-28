import test from 'node:test'
import assert from 'node:assert/strict'
import {
  existsSync,
  mkdtempSync,
  readFileSync,
  rmSync,
  writeFileSync,
} from 'node:fs'
import { tmpdir } from 'node:os'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'
import * as generator from '../generate-seed-sql.mjs'

const repositoryRoot = resolve(dirname(fileURLToPath(import.meta.url)), '../..')
const migrationDirectory = join(repositoryRoot, 'supabase/migrations')
const legacyDefault = join(migrationDirectory, '006_seed_validated_questions.sql')
const { assertSafeOutput, main } = generator

function caughtError(run) {
  try {
    run()
    return undefined
  } catch (error) {
    return error
  }
}

test('requires an explicit output and never generates the legacy default migration', () => {
  const existedBefore = existsSync(legacyDefault)
  assert.equal(existedBefore, false, 'legacy default fixture must not already exist')

  try {
    const error = caughtError(() => main([]))

    assert.match(error?.message ?? '', /--output is required/)
    assert.equal(existsSync(legacyDefault), false)
  } finally {
    if (!existedBefore) rmSync(legacyDefault, { force: true })
  }
})

test('rejects --output without a value', () => {
  const error = caughtError(() => main(['--output']))

  assert.match(error?.message ?? '', /--output requires a path/)
})

test('rejects another option as the --output value', () => {
  const accidentalOutput = join(repositoryRoot, '--force')
  const existedBefore = existsSync(accidentalOutput)
  assert.equal(existedBefore, false, 'accidental output fixture must not already exist')

  try {
    const error = caughtError(() => main(['--output', '--force']))

    assert.match(error?.message ?? '', /--output requires a path/)
    assert.equal(existsSync(accidentalOutput), false)
  } finally {
    if (!existedBefore) rmSync(accidentalOutput, { force: true })
  }
})

test('refuses to overwrite an existing numbered migration even with --force', () => {
  const output = join(migrationDirectory, '999_test_existing_question_migration.sql')
  const sentinel = '-- existing migration must remain unchanged\n'
  assert.equal(existsSync(output), false, 'migration fixture must not already exist')
  writeFileSync(output, sentinel, 'utf8')

  try {
    const error = caughtError(() => main(['--output', output, '--force']))

    assert.match(error?.message ?? '', /create a new migration/i)
    assert.equal(readFileSync(output, 'utf8'), sentinel)
  } finally {
    rmSync(output, { force: true })
  }
})

test('atomically refuses a migration created after the preflight check', () => {
  const output = join(migrationDirectory, '999_test_racing_question_migration.sql')
  const sentinel = '-- concurrently created migration must remain unchanged\n'
  assert.equal(existsSync(output), false, 'migration fixture must not already exist')

  try {
    assertSafeOutput(output)
    writeFileSync(output, sentinel, 'utf8')

    const error = caughtError(() => generator.writeGeneratedSql(output, '-- generated sql\n', false))

    assert.match(error?.message ?? '', /create a new migration|EEXIST/i)
    assert.equal(readFileSync(output, 'utf8'), sentinel)
  } finally {
    rmSync(output, { force: true })
  }
})

test('requires --force only for an existing non-migration review output', () => {
  const directory = mkdtempSync(join(tmpdir(), 'question-migration-output-'))
  const output = join(directory, 'review.sql')
  writeFileSync(output, '-- review draft\n', 'utf8')

  try {
    assert.throws(
      () => main(['--output', output]),
      /Refusing to overwrite/,
    )

    const result = main(['--output', output, '--force'])
    assert.equal(result.output, output)
    assert.match(readFileSync(output, 'utf8'), /insert into public\.questions/)
  } finally {
    rmSync(directory, { recursive: true, force: true })
  }
})

test('allows a new explicit output path', () => {
  const directory = mkdtempSync(join(tmpdir(), 'question-migration-output-'))
  const output = join(directory, 'new-review.sql')

  try {
    const result = main(['--output', output])

    assert.equal(result.output, output)
    assert.equal(existsSync(output), true)
    assert.match(readFileSync(output, 'utf8'), /insert into public\.questions/)
  } finally {
    rmSync(directory, { recursive: true, force: true })
  }
})
