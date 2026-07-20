# Grade 2 Question Bank Migration Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Convert the existing second-grade pool into exactly 140 approved nationwide-standard questions per subject and publish it without duplicate or destructive writes.

**Architecture:** Export the existing second-grade rows as read-only source material, normalize them into canonical repository JSON, then select, revise, and supplement questions against the grade-2 blueprint. Automated gates enforce exact quotas; a human-review report presents 20 stratified samples per subject before migration generation.

**Tech Stack:** Node.js scripts, canonical JSON, deterministic audit pipeline, Supabase SQL migrations.

---

### Task 1: Export and inventory the existing grade-2 pool

**Files:**
- Create: `scripts/export-question-bank.mjs`
- Create: `data/question-audits/grade2-source-summary.json`
- Create: `scripts/tests/question-export.test.mjs`

- [ ] Write a failing test that verifies export uses read-only selects, paginates, strips database-only timestamps, and writes no credentials.
- [ ] Implement an environment-driven read-only exporter for grade 2.
- [ ] Export subject/type/difficulty/answer-position counts, exact duplicate groups, normalized-stem groups and content hashes.
- [ ] Verify no remote mutation method is present and commit as `chore: inventory grade two question source`.

### Task 2: Normalize candidates without approving them

**Files:**
- Create: `scripts/normalize-legacy-questions.mjs`
- Create: `data/question-candidates/grade2-chinese.json`
- Create: `data/question-candidates/grade2-math.json`
- Create: `data/question-candidates/grade2-english.json`

- [ ] Write failing tests for stable ID assignment, content preservation, inferred knowledge-point rejection and initial `reviewStatus: draft`.
- [ ] Map only unambiguous metadata automatically; send ambiguous rows to a rejection report.
- [ ] Verify every candidate passes single-question schema validation while collection quotas remain intentionally unenforced.
- [ ] Commit as `chore: normalize grade two question candidates`.

### Task 3: Curate exact per-subject quotas

**Files:**
- Replace: `data/questions/grade2-chinese.json`
- Replace: `data/questions/grade2-math.json`
- Replace: `data/questions/grade2-english.json`
- Create: `data/question-audits/grade2-curation-report.md`

- [ ] Select and revise exactly 105 choice, 21 fill and 14 match questions per subject.
- [ ] Balance each subject to 70 easy, 49 medium and 21 hard questions.
- [ ] Cover every allowed grade-2 knowledge point with no point above 28 questions.
- [ ] Balance choice answers near 27/26/26/26 and document each rejected duplicate or ambiguous item.
- [ ] Keep all curated rows at `reviewed`; run schema and collection audits.

### Task 4: Perform stratified human review

**Files:**
- Create: `data/question-audits/grade2-review-sample.md`

- [ ] Deterministically sample 20 questions per subject across all types, difficulties and knowledge points.
- [ ] Check correctness, unique answer, explanation quality, nationwide grade scope, natural wording and child safety.
- [ ] Correct every failed row and increment its version.
- [ ] Mark the full collection `approved` only after all blocking findings are resolved.
- [ ] Run `npm run questions:validate` and require zero errors and zero blocking warnings.

### Task 5: Generate and dry-run the grade-2 migration

**Files:**
- Create: `supabase/migrations/006_seed_grade2_validated_questions.sql`

- [ ] Generate SQL through `npm run questions:sql` after temporarily scoping the generator to the approved grade-2 release manifest.
- [ ] Verify 420 approved rows, exact metadata distributions, no delete statement and no credential.
- [ ] Execute the migration twice in a test database and verify the second execution adds zero rows.
- [ ] Run the application tests and production build.
- [ ] Commit as `feat: add validated grade two question bank`.

### Task 6: Publish and verify grade 2

- [ ] Apply migrations 005 and 006 to production in order.
- [ ] Deploy the application only after the production database reports 140 approved rows for each grade-2 subject.
- [ ] Complete two consecutive 10-question sessions per subject and verify structure, no immediate repeats and saved-record counts.
- [ ] Complete one 30-question challenge and verify ten records per subject.
- [ ] Record production counts and smoke-test results in the curation report.
