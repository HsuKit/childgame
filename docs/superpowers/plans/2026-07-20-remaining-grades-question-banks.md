# Remaining Grades Question Banks Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Produce and publish 420 nationwide-standard questions for each remaining grade in the order 3, 4, 5, 6, 1, bringing the approved bank to 2,520 questions.

**Architecture:** Reuse the canonical JSON, deterministic validation, stratified review, release-manifest, and idempotent SQL pipeline proven by grade 2. Each grade is an isolated release containing three 140-question subject files; production keeps the reviewed legacy fallback until that grade's approved release is deployed.

**Tech Stack:** Node.js offline authoring scripts, canonical JSON, Node test runner, Vitest, Supabase migrations, Netlify.

---

### Task 1: Add a grade release factory and acceptance test

**Files:**
- Create: `scripts/lib/question-release.mjs`
- Create: `scripts/tests/remaining-grades-release.test.mjs`
- Modify: `scripts/generate-review-sample.mjs`
- Modify: `scripts/approve-grade2.mjs`

- [ ] Write a failing test that builds release metadata for grades 3, 4, 5, 6 and 1 and requires three subject files, 420 approved rows, 60 passed review rows and exact audit quotas.
- [ ] Run `node --test scripts/tests/remaining-grades-release.test.mjs` and verify failure because the reusable release functions do not exist.
- [ ] Extract grade-independent manifest, review and approval helpers while retaining the grade-2 command behavior.
- [ ] Run `npm run test:questions` and require all pipeline tests to pass.
- [ ] Commit as `refactor: generalize grade question releases`.

### Task 2: Build and publish grade 3

**Files:**
- Create: `data/questions/grade3-chinese.json`
- Create: `data/questions/grade3-math.json`
- Create: `data/questions/grade3-english.json`
- Create: `data/question-audits/grade3-review-sample.md`
- Create: `data/question-releases/grade3-phase1.json`
- Create: `supabase/migrations/007_seed_grade3_validated_questions.sql`

- [ ] Author exactly 140 questions per subject inside the grade-3 boundaries in `data/question-blueprint.json`; keep rows at `reviewed` until sampling passes.
- [ ] Require each subject to contain 105 choice, 21 fill and 14 match questions; 70 easy, 49 medium and 21 hard questions; balanced answers; all knowledge points; no blocking duplicates.
- [ ] Generate and inspect 20 stratified samples per subject, correct every ambiguity or answer defect, then approve all 420 rows.
- [ ] Run `npm run questions:validate`, `npm run test:questions`, `npm test`, and `npm run build`; require zero failures.
- [ ] Generate migration 007 from the grade-3 manifest, verify 420 upserts and no deletes, apply it twice safely, and verify the second run is a no-op.
- [ ] Commit, push `main`, and smoke-test all three grade-3 subjects before starting grade 4.

### Task 3: Build and publish grade 4

**Files:**
- Create: `data/questions/grade4-chinese.json`
- Create: `data/questions/grade4-math.json`
- Create: `data/questions/grade4-english.json`
- Create: `data/question-audits/grade4-review-sample.md`
- Create: `data/question-releases/grade4-phase1.json`
- Create: `supabase/migrations/008_seed_grade4_validated_questions.sql`

- [ ] Author and audit exactly 140 grade-4 questions per subject using the same fixed type, difficulty, coverage, answer-balance and duplicate gates.
- [ ] Review 20 stratified samples per subject, repair all findings, approve exactly 420 rows, and regenerate a clean report.
- [ ] Run the complete question, frontend and build verification suite.
- [ ] Generate migration 008, verify idempotency and absence of destructive SQL, deploy it, then smoke-test all grade-4 subjects.
- [ ] Commit and push the isolated grade-4 release before starting grade 5.

### Task 4: Build and publish grade 5

**Files:**
- Create: `data/questions/grade5-chinese.json`
- Create: `data/questions/grade5-math.json`
- Create: `data/questions/grade5-english.json`
- Create: `data/question-audits/grade5-review-sample.md`
- Create: `data/question-releases/grade5-phase1.json`
- Create: `supabase/migrations/009_seed_grade5_validated_questions.sql`

- [ ] Author and audit exactly 140 grade-5 questions per subject using the fixed quota and quality gates.
- [ ] Review 20 stratified samples per subject, repair all findings and approve exactly 420 rows.
- [ ] Run the complete question, frontend and build verification suite.
- [ ] Generate and verify migration 009, deploy it idempotently, smoke-test three subjects, then commit and push the grade-5 release.

### Task 5: Build and publish grade 6

**Files:**
- Create: `data/questions/grade6-chinese.json`
- Create: `data/questions/grade6-math.json`
- Create: `data/questions/grade6-english.json`
- Create: `data/question-audits/grade6-review-sample.md`
- Create: `data/question-releases/grade6-phase1.json`
- Create: `supabase/migrations/010_seed_grade6_validated_questions.sql`

- [ ] Author and audit exactly 140 grade-6 questions per subject without introducing junior-high content.
- [ ] Review 20 stratified samples per subject, repair all findings and approve exactly 420 rows.
- [ ] Run the complete question, frontend and build verification suite.
- [ ] Generate and verify migration 010, deploy it idempotently, smoke-test three subjects, then commit and push the grade-6 release.

### Task 6: Build and publish grade 1

**Files:**
- Create: `data/questions/grade1-chinese.json`
- Create: `data/questions/grade1-math.json`
- Create: `data/questions/grade1-english.json`
- Create: `data/question-audits/grade1-review-sample.md`
- Create: `data/question-releases/grade1-phase1.json`
- Create: `supabase/migrations/011_seed_grade1_validated_questions.sql`

- [ ] Author exactly 140 text-independent, screen-answerable grade-1 questions per subject; avoid questions that require missing pictures or audio.
- [ ] Apply the fixed quotas and review 20 stratified samples per subject, repair all findings and approve exactly 420 rows.
- [ ] Run the complete question, frontend and build verification suite.
- [ ] Generate and verify migration 011, deploy it idempotently, smoke-test three subjects, then commit and push the grade-1 release.

### Task 7: Verify the complete 2,520-question release

**Files:**
- Create: `data/question-audits/all-grades-phase1-report.md`
- Modify: `README.md`

- [ ] Validate all 18 grade-subject groups and require exactly 140 approved questions in each group and 2,520 total.
- [ ] Require zero schema errors, zero blocking warnings, zero exact duplicates and zero unresolved near duplicates.
- [ ] Verify every subject group has exact type and difficulty quotas and balanced choice answer positions.
- [ ] Run `npm run test:questions`, `npm test`, `npm run build`, and `git diff --check` with zero failures.
- [ ] Confirm production migration history through 011 and smoke-test one ordinary session for every grade and all-subject challenge behavior.
- [ ] Document final counts, automated results, smoke-test evidence and the later 840-question expansion entry criteria.
- [ ] Commit and push the final all-grade verification report.
