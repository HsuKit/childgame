import test from 'node:test'
import assert from 'node:assert/strict'
import { buildGradeRelease, assertGradeReleaseReady } from '../lib/question-release.mjs'

test('builds deterministic release metadata for every remaining grade', () => {
  for (const grade of [3, 4, 5, 6, 1]) {
    assert.deepEqual(buildGradeRelease(grade), {
      name: `grade${grade}-phase1`,
      expectedApproved: 420,
      files: [`grade${grade}-chinese.json`, `grade${grade}-math.json`, `grade${grade}-english.json`],
      groups: [
        { grade, subject: 'chinese' },
        { grade, subject: 'math' },
        { grade, subject: 'english' },
      ],
    })
  }
})

test('requires exact approved and passed-review totals', () => {
  assert.doesNotThrow(() => assertGradeReleaseReady({ approvedCount: 420, passedReviewCount: 60 }))
  assert.throws(() => assertGradeReleaseReady({ approvedCount: 419, passedReviewCount: 60 }), /420 approved/)
  assert.throws(() => assertGradeReleaseReady({ approvedCount: 420, passedReviewCount: 59 }), /60 passed/)
})
