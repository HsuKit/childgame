# Question Variety Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Eliminate avoidable cross-session repeats and reduce template-level sameness in grade-3 quizzes without runtime AI.

**Architecture:** Keep Supabase as the static runtime pool. Change the pure composer so unseen questions outrank exact difficulty, use a stable `模板:<key>` tag for within-session variety, refresh grade-3 authored metadata/content, and publish the canonical snapshot through a new idempotent migration.

**Tech Stack:** React 18, Zustand, TypeScript, Vitest, Node test runner, Supabase SQL migrations.

---

### Task 1: Lock the new composition contract

**Files:**
- Modify: `src/lib/questionComposer.test.ts`
- Modify: `src/lib/questionComposer.ts`

- [x] Add a failing test that composes ten rounds from a 140-question 105/21/14 pool, appends each result to history, and expects 100 unique IDs.
- [x] Add a failing test where an already-seen exact match-difficulty candidate competes with an unseen same-type candidate and expect the unseen candidate.
- [x] Add a failing test requiring at least eight distinct `模板:` tags and no template more than twice.
- [x] Run `npm test -- src/lib/questionComposer.test.ts` and confirm failures describe the old exact-quota behavior.
- [x] Implement ordered unseen-first pool tiers and template-aware candidate ordering.
- [x] Re-run the focused test and confirm it passes.

### Task 2: Make “再练一组” replace the completed session

**Files:**
- Create: `src/pages/QuizResultPage.test.tsx`
- Modify: `src/pages/QuizResultPage.tsx`

- [x] Add a failing component test with a completed, saved session; click “再练一组” and expect `startSession(subject)` before navigation.
- [x] Run `npm test -- src/pages/QuizResultPage.test.tsx` and confirm the click only navigates under current code.
- [x] Add an async retry handler that starts a new subject session, reports a loading/error state, and navigates only after success.
- [x] Re-run the focused test and confirm the fresh-session path passes.

### Task 3: Add template metadata and audit gates

**Files:**
- Modify: `scripts/tests/question-schema.test.mjs`
- Modify: `scripts/tests/question-audit.test.mjs`
- Modify: `scripts/lib/question-schema.mjs`
- Modify: `scripts/lib/question-audit.mjs`
- Modify: `data/question-blueprint.json`

- [x] Add failing tests for missing/multiple malformed `模板:` tags in grade-3 approved questions.
- [x] Add failing tests for fewer than ten templates and excessive template share.
- [x] Run `node --test scripts/tests/question-schema.test.mjs scripts/tests/question-audit.test.mjs` and confirm failures.
- [x] Implement template-tag parsing, grade-3 validation, and configurable template-count/share audit.
- [x] Re-run focused Node tests and confirm they pass.

### Task 4: Refresh grade-3 authoring and canonical data

**Files:**
- Modify: `scripts/author-grade3.mjs`
- Modify: `scripts/author-grade3-chinese.mjs`
- Modify: `scripts/author-grade3-english.mjs`
- Modify: `scripts/tests/author-grade3.test.mjs`
- Modify: `data/questions/grade3-chinese.json`
- Modify: `data/questions/grade3-math.json`
- Modify: `data/questions/grade3-english.json`

- [x] Add failing author tests requiring exactly one template tag on all 420 rows, at least ten templates per subject, and bounded template share.
- [x] Run `node --test scripts/tests/author-grade3.test.mjs` and confirm failure.
- [x] Add stable template keys to all three authoring paths and introduce multiple mathematical/English prompt structures where one structure currently only changes numbers or names.
- [x] Regenerate grade-3 JSON, restore approved status through `node scripts/approve-grade-release.mjs --grade 3`, and increment versions for changed rows.
- [x] Run author tests and `npm run questions:validate`.

### Task 5: Publish and record the iteration

**Files:**
- Create: `supabase/migrations/017_refresh_grade3_question_variety.sql`
- Create: `docs/ai/iterations/2026-07-30-question-variety.md`
- Modify: `docs/ai/iterations/README.md`
- Modify: `docs/ai/domains/quiz-question-bank.md`

- [x] Generate migration 017 from the grade-3 release manifest and verify it contains 420 approved upserts and no destructive statements.
- [x] Document actual behavior, verification evidence, and remaining limits in the domain and iteration ledger.
- [x] Run `npm test`, `npm run test:questions`, `npm run questions:validate`, `npm run docs:check`, `npm run build`, and `git diff --check`.
- [ ] Commit, push `main`, apply the linked Supabase migration, verify remote counts/template coverage, and confirm Netlify serves the new asset.
