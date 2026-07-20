# Question Bank Infrastructure Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the validated static-question pipeline and history-aware dynamic quiz composer that will safely support 420 questions per grade without runtime AI usage.

**Architecture:** Repository JSON remains the canonical content source. Node scripts validate and compile approved questions into an idempotent Supabase migration, while a pure TypeScript composer builds balanced sessions from database questions and user history. Supabase access stays in a small repository module and Zustand only coordinates loading, answering, and saving.

**Tech Stack:** React 18, TypeScript, Zustand, Supabase PostgreSQL, Vitest, Node.js built-in test runner and crypto APIs.

---

## File map

- Create `data/question-blueprint.json`: allowed knowledge points and per-grade/per-subject quotas.
- Create `scripts/lib/question-schema.mjs`: normalize and structurally validate canonical question objects.
- Create `scripts/lib/question-audit.mjs`: collection quotas, duplicates, answer distribution, and publish gating.
- Create `scripts/lib/question-sql.mjs`: deterministic hashes and idempotent SQL rendering.
- Create `scripts/tests/question-schema.test.mjs`: format validation tests.
- Create `scripts/tests/question-audit.test.mjs`: collection quality tests.
- Create `scripts/tests/question-sql.test.mjs`: SQL safety and determinism tests.
- Create `scripts/validate-questions.mjs`: command-line validation/report entry point.
- Replace `scripts/generate-seed-sql.mjs`: validated migration generator entry point.
- Modify `scripts/seed-all-questions.mjs`: remove hardcoded credentials and destructive deletion.
- Modify `package.json`: expose repeatable question validation and generation commands.
- Create `supabase/migrations/005_question_bank_metadata.sql`: additive metadata and indexes.
- Modify `src/lib/database.types.ts`: match the new database columns.
- Create `src/lib/questionComposer.ts`: pure balanced-session selection algorithm.
- Create `src/lib/questionComposer.test.ts`: quotas, history preference, and fallback tests.
- Create `src/lib/questionRepository.ts`: fetch approved candidates and answer history.
- Create `src/lib/questionRepository.test.ts`: query result mapping tests.
- Modify `src/stores/quizStore.ts`: use repository and composer for daily and challenge sessions.
- Create `src/stores/quizStore.test.ts`: session construction and persistence regression tests.

This plan deliberately excludes writing the final 2,520 questions. After this infrastructure passes, question content will be delivered in six grade-specific data plans, starting with the existing second-grade pool.

### Task 1: Add canonical question schema validation

**Files:**
- Create: `scripts/lib/question-schema.mjs`
- Create: `scripts/tests/question-schema.test.mjs`
- Modify: `package.json`

- [ ] **Step 1: Write failing schema tests**

Test a complete choice question plus failures for duplicate options, out-of-range answers, uppercase/space-padded English fill answers, invalid match indexes, empty explanations, unknown skills, and missing metadata. Use Node's `node:test` and assert exported `validateQuestion(question)` returns an array of specific messages.

```js
import test from 'node:test'
import assert from 'node:assert/strict'
import { validateQuestion } from '../lib/question-schema.mjs'

test('accepts a complete approved choice question', () => {
  assert.deepEqual(validateQuestion(validChoice), [])
})

test('rejects duplicate choice options', () => {
  assert.match(validateQuestion({
    ...validChoice,
    content: { ...validChoice.content, options: ['9', '18', '18', '24'] },
  }).join('\n'), /four unique options/)
})
```

- [ ] **Step 2: Run the tests and verify RED**

Run: `node --test scripts/tests/question-schema.test.mjs`

Expected: FAIL because `scripts/lib/question-schema.mjs` does not exist.

- [ ] **Step 3: Implement the minimal validator**

Export `QUESTION_TYPES`, `QUESTION_SKILLS`, `REVIEW_STATUSES`, `normalizeText`, and `validateQuestion`. Validate shared fields first, then dispatch to `validateChoice`, `validateFill`, or `validateMatch`. Error messages must include the stable question ID when available.

```js
export function validateQuestion(question) {
  const errors = []
  if (!/^g[1-6]-(chinese|math|english)-[a-z0-9-]+$/.test(question?.id ?? '')) {
    errors.push('invalid stable id')
  }
  // Validate subject, grade, difficulty, knowledgePoint, skill,
  // tags, reviewStatus, version, stem, explanation and type payload.
  return errors
}
```

- [ ] **Step 4: Run schema tests and verify GREEN**

Run: `node --test scripts/tests/question-schema.test.mjs`

Expected: all schema tests pass.

- [ ] **Step 5: Add the script test command and commit**

Add `"test:questions": "node --test scripts/tests/*.test.mjs"` to `package.json`.

Run: `npm run test:questions`

Expected: all script tests pass.

Commit: `feat: validate canonical question format`

### Task 2: Add blueprint and collection-level quality auditing

**Files:**
- Create: `data/question-blueprint.json`
- Create: `scripts/lib/question-audit.mjs`
- Create: `scripts/tests/question-audit.test.mjs`

- [ ] **Step 1: Write failing audit tests**

Cover exact duplicate IDs, normalized duplicate stems within a grade and subject, missing blueprint knowledge points, wrong 105/21/14 type distribution, wrong 70/49/21 difficulty distribution, a knowledge point above 20%, and choice-answer position deviation above 3.

```js
test('reports exact quota violations', () => {
  const report = auditQuestionSet(makeQuestionSet({ choice: 104, fill: 22, match: 14 }), blueprint)
  assert.ok(report.errors.some(error => error.includes('choice expected 105 got 104')))
})
```

- [ ] **Step 2: Run the tests and verify RED**

Run: `node --test scripts/tests/question-audit.test.mjs`

Expected: FAIL because the audit module is missing.

- [ ] **Step 3: Add the machine-readable blueprint**

Define all 18 grade-subject entries with the approved knowledge-point names. Each entry contains `total: 140`, type quotas, difficulty quotas, `maxKnowledgePointShare: 0.2`, and the allowed knowledge-point list. Keep wording aligned with the design document and do not include textbook or semester identifiers.

- [ ] **Step 4: Implement collection auditing**

Export `auditQuestionSet(questions, blueprint)` returning `{ errors, warnings, stats }`. Errors block publishing. Similarity candidates use normalized character bigram Dice similarity at `>= 0.86` and appear as blocking warnings until their pair is listed in an explicit reviewed-exceptions array in the blueprint.

- [ ] **Step 5: Run all question tests and commit**

Run: `npm run test:questions`

Expected: all tests pass.

Commit: `feat: audit question bank quotas and duplicates`

### Task 3: Build deterministic hashing and safe SQL generation

**Files:**
- Create: `scripts/lib/question-sql.mjs`
- Create: `scripts/tests/question-sql.test.mjs`
- Replace: `scripts/generate-seed-sql.mjs`

- [ ] **Step 1: Write failing hash and SQL tests**

Assert formatting-equivalent content produces the same SHA-256 hash; changed answers produce a different hash; quotes are escaped; only approved questions render; SQL contains `on conflict (external_id) do update`; and output contains neither `delete from public.questions` nor Supabase credentials.

```js
test('renders an idempotent upsert without destructive deletion', () => {
  const sql = renderQuestionMigration([validChoice])
  assert.match(sql, /on conflict \(external_id\) do update/i)
  assert.doesNotMatch(sql, /delete from public\.questions/i)
})
```

- [ ] **Step 2: Run the tests and verify RED**

Run: `node --test scripts/tests/question-sql.test.mjs`

Expected: FAIL because the SQL module is missing.

- [ ] **Step 3: Implement canonical hashing and SQL rendering**

Use `node:crypto` SHA-256 over a recursively key-sorted representation of subject, grade, type, content, knowledge point and skill. Render explicit columns and `jsonb`, `text[]` values. Update all mutable content columns and version on conflict but never change the database UUID.

- [ ] **Step 4: Replace the generator entry point**

The command loads all canonical question files, validates and audits them, refuses output on any error, and accepts `--output <path>`. It must never silently default missing metadata or overwrite a numbered migration unless `--force` is explicitly present.

- [ ] **Step 5: Verify and commit**

Run: `npm run test:questions`

Expected: all tests pass.

Commit: `feat: generate idempotent question migrations`

### Task 4: Add validation and reporting commands

**Files:**
- Create: `scripts/validate-questions.mjs`
- Modify: `package.json`

- [ ] **Step 1: Write a failing CLI integration test**

Create a temporary fixture directory in the test and invoke the validation entry point through an exported `validateDirectory` function. Assert invalid data returns exit code 1 and reports file plus stable ID; valid fixture data returns 0 and prints type/difficulty summaries.

- [ ] **Step 2: Run the CLI test and verify RED**

Run: `node --test scripts/tests/question-cli.test.mjs`

Expected: FAIL because the CLI entry point is missing.

- [ ] **Step 3: Implement the CLI**

Print one compact table per grade-subject plus errors grouped by file. Add `"questions:validate": "node scripts/validate-questions.mjs"` and `"questions:sql": "node scripts/generate-seed-sql.mjs"`.

- [ ] **Step 4: Verify and commit**

Run: `npm run test:questions`

Expected: all tests pass. The current legacy question files may fail `npm run questions:validate`; report that as expected migration work rather than weakening rules.

Commit: `feat: add question bank validation report`

### Task 5: Add non-destructive database metadata migration

**Files:**
- Create: `supabase/migrations/005_question_bank_metadata.sql`
- Modify: `src/lib/database.types.ts`

- [ ] **Step 1: Write a failing migration structure test**

Read the migration as text and assert it adds all seven metadata columns, review-status and skill constraints, a unique external-ID index, content-hash index, composition index, and contains no destructive question deletion.

- [ ] **Step 2: Run the migration test and verify RED**

Run: `node --test scripts/tests/question-migration.test.mjs`

Expected: FAIL because migration 005 is absent.

- [ ] **Step 3: Implement an additive migration**

Add nullable columns first so existing production rows remain readable. Backfill legacy `external_id` as `legacy-<uuid>`, derive a legacy hash from UUID, set `knowledge_point = 'legacy-unclassified'`, `skill = 'recall'`, `review_status = 'reviewed'`, then add NOT NULL and CHECK constraints. Create indexes with `if not exists`. Do not alter existing UUIDs or quiz-record foreign keys.

- [ ] **Step 4: Update generated TypeScript shapes manually**

Add the new fields to question `Row`, make required publish metadata required in `Insert`, and allow all mutable metadata in `Update`. Retain `grid` temporarily for compatibility until static Sudoku migration is complete.

- [ ] **Step 5: Verify and commit**

Run: `npm run test:questions && npm run build`

Expected: tests pass and build exits 0.

Commit: `feat: add question bank metadata schema`

### Task 6: Remove destructive and credential-bearing seed behavior

**Files:**
- Modify: `scripts/seed-all-questions.mjs`
- Modify: `scripts/seed-questions.mjs`
- Create: `scripts/tests/question-seed-safety.test.mjs`

- [ ] **Step 1: Write the failing safety test**

Scan both scripts and assert there is no JWT-looking literal, no hardcoded Supabase URL, and no bulk `delete().eq('source', 'builtin')`. Assert both require `SUPABASE_URL` and `SUPABASE_SERVICE_ROLE_KEY` when remote publishing is requested.

- [ ] **Step 2: Run and verify RED**

Run: `node --test scripts/tests/question-seed-safety.test.mjs`

Expected: FAIL on the current embedded URL/key and delete call.

- [ ] **Step 3: Convert seeding to explicit environment-driven upsert**

Reuse the validated loader and upsert by `external_id` in batches. Exit before creating a client when required environment variables are absent. Keep SQL migration generation as the default documented publishing path.

- [ ] **Step 4: Verify and commit**

Run: `npm run test:questions`

Expected: all safety tests pass.

Commit: `fix: make question publishing non-destructive`

### Task 7: Implement the pure dynamic question composer

**Files:**
- Create: `src/lib/questionComposer.ts`
- Create: `src/lib/questionComposer.test.ts`

- [ ] **Step 1: Write failing exact-composition tests**

Build deterministic fixtures and inject a seeded `random` function. Assert 10 unique IDs, types 7/2/1, difficulties 5/3/2, and at least four knowledge points.

```ts
const result = composeQuestions({ candidates, history: [], size: 10, random: () => 0.5 })
expect(countBy(result, 'type')).toEqual({ choice: 7, fill: 2, match: 1 })
expect(countBy(result, 'difficulty')).toEqual({ 1: 5, 2: 3, 3: 2 })
expect(new Set(result.map(q => q.knowledge_point)).size).toBeGreaterThanOrEqual(4)
```

- [ ] **Step 2: Run and verify RED**

Run: `npm test -- src/lib/questionComposer.test.ts`

Expected: FAIL because composer is missing.

- [ ] **Step 3: Implement exact quota selection**

Define `QuestionHistory = { questionId: string; answeredAt: string }` and `composeQuestions({ candidates, history, size, now, random })`. Generate quota cells without assuming a fixed pairing between type and difficulty, select the candidate that best improves both remaining quotas and knowledge coverage, then shuffle once.

- [ ] **Step 4: Add history priority tests and implementation**

Test unseen before old (at least 30 days) before recent, with oldest first inside answered tiers. Implement the tier comparator using the injected `now` value.

- [ ] **Step 5: Add fallback tests and implementation**

Test adjacent-difficulty fallback, then type fallback, while preserving 10 unique questions and four knowledge points where possible. Assert fewer than 10 total candidates returns `{ questions: [], reason: 'insufficient-total' }` rather than a partial session.

- [ ] **Step 6: Verify and commit**

Run: `npm test -- src/lib/questionComposer.test.ts`

Expected: all composer tests pass.

Commit: `feat: compose balanced history-aware quizzes`

### Task 8: Isolate Supabase question data access

**Files:**
- Create: `src/lib/questionRepository.ts`
- Create: `src/lib/questionRepository.test.ts`

- [ ] **Step 1: Write failing repository mapping tests**

Inject a narrow client interface rather than mocking the global module. Verify `loadQuestionPool(subject, grade)` requests only `review_status = approved`, and `loadQuestionHistory(userId, ids)` queries the candidate IDs and maps all returned records to the latest answer time per question. The composer, rather than the query, applies the 30-day boundary so older last-seen dates remain available for ordering.

- [ ] **Step 2: Run and verify RED**

Run: `npm test -- src/lib/questionRepository.test.ts`

Expected: FAIL because repository is missing.

- [ ] **Step 3: Implement repository functions**

Export `loadQuestionPool`, `loadQuestionHistory`, and `loadCompositionInputs`. Paginate question results so a future 840-question grade is not truncated by service defaults. Query only fields used by composition and rendering.

- [ ] **Step 4: Verify and commit**

Run: `npm test -- src/lib/questionRepository.test.ts`

Expected: all repository tests pass.

Commit: `refactor: isolate question data access`

### Task 9: Integrate balanced sessions and fix generated-Sudoku accounting

**Files:**
- Modify: `src/stores/quizStore.ts`
- Create: `src/stores/quizStore.test.ts`

- [ ] **Step 1: Write failing daily-session tests**

Inject repository/composer dependencies through exported helper functions. Assert a daily session uses the 10 composed database questions for every subject, no ID begins with `gen_`, loading resets in `finally`, and an insufficient pool produces a typed `sessionError` instead of silently returning.

- [ ] **Step 2: Run and verify RED**

Run: `npm test -- src/stores/quizStore.test.ts`

Expected: FAIL because the store still inserts two generated Sudoku questions and has no session error.

- [ ] **Step 3: Integrate daily composition**

Replace the subject-specific random/Sudoku branch with `loadCompositionInputs` and `composeQuestions`. Add `sessionError: string | null` to state and clear it at session start. Preserve the existing answer/reward APIs so pages need no behavioral rewrite.

- [ ] **Step 4: Add and pass persistence regression tests**

Complete a 10-question math session and assert all 10 records are prepared for insertion. Remove `gen_` filtering once sessions contain only database-backed questions.

- [ ] **Step 5: Integrate challenge composition**

Compose 10 questions independently for each subject, concatenate and shuffle to 30. If one subject cannot provide 10, fail the challenge with a clear error instead of starting a shorter challenge. Keep the pass threshold at 24/30.

- [ ] **Step 6: Verify and commit**

Run: `npm test -- src/stores/quizStore.test.ts src/lib/questionComposer.test.ts`

Expected: all store and composer tests pass.

Commit: `feat: use balanced quizzes in daily and challenge flows`

### Task 10: Full verification and infrastructure handoff

**Files:**
- Modify: `docs/ai-question-prompt.md`
- Create: `docs/question-bank-workflow.md`

- [ ] **Step 1: Document the offline workflow**

Document canonical JSON fields, blueprint rules, validation commands, SQL generation, test-database dry run, production publish checklist, rollback behavior, and the rule that runtime AI generation is forbidden. Update the old prompt document to produce canonical JSON rather than raw SQL and clearly label AI output as draft requiring validation and human review.

- [ ] **Step 2: Run all verification commands**

Run: `npm run test:questions`

Expected: all Node question-pipeline tests pass.

Run: `npm test`

Expected: all Vitest suites pass with zero failures.

Run: `npm run build`

Expected: TypeScript and Vite build exit 0; existing non-fatal chunk-size warnings may remain.

Run: `git diff --check`

Expected: no whitespace errors.

- [ ] **Step 3: Audit requirements**

Confirm the implementation contains no browser-side model request, no embedded Supabase credential in scripts, no destructive builtin deletion, exact composition tests, history-priority tests, and a migration that preserves existing question IDs and quiz records.

- [ ] **Step 4: Commit the workflow documentation**

Commit: `docs: document offline question bank workflow`

- [ ] **Step 5: Prepare the next data plan**

Create a separate second-grade content migration plan. It must audit the current 839 rows, select or revise exactly 140 per subject, preserve only approved unique questions, balance answer positions, and include the required 20-question-per-subject human review sample before any production publish.
