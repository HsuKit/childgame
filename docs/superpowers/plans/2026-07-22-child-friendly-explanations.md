# Child-Friendly Explanations Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build shared child-friendly answer explanation panels and improve Chinese/English authored explanation templates.

**Architecture:** Add a small pure helper in `src/lib` that converts question content and answer state into display sections, then use a shared React panel in quiz cards and mistake detail. Update authoring scripts to produce more specific explanatory copy for future generated banks.

**Tech Stack:** React, TypeScript, Vitest, Node authoring scripts.

---

### Task 1: Explanation Helper

**Files:**
- Create: `src/lib/explanationContent.ts`
- Create: `src/lib/explanationContent.test.ts`

- [ ] **Step 1: Write tests**

Cover Chinese fill questions, English polite request questions, and missing explanation fallback.

- [ ] **Step 2: Run tests and verify they fail**

Run: `npm test -- src/lib/explanationContent.test.ts`

- [ ] **Step 3: Implement helper**

Export `buildExplanationContent` with fields for `title`, `correctAnswer`, `reason`, and `tip`.

- [ ] **Step 4: Run tests and verify they pass**

Run: `npm test -- src/lib/explanationContent.test.ts`

### Task 2: Shared Explanation Panel

**Files:**
- Create: `src/components/quiz/ExplanationPanel.tsx`
- Modify: `src/components/quiz/QuizCard.tsx`
- Modify: `src/components/quiz/FillInCard.tsx`
- Modify: `src/components/quiz/MatchCard.tsx`
- Modify: `src/pages/MistakeDetailPage.tsx`

- [ ] **Step 1: Add component**

Create a compact panel that renders the helper output with success/error colors.

- [ ] **Step 2: Replace duplicated feedback markup**

Use the same panel for choice, fill, match, and mistake correction feedback.

- [ ] **Step 3: Run focused tests**

Run: `npm test -- src/lib/explanationContent.test.ts`

### Task 3: Authoring Templates

**Files:**
- Modify: `scripts/author-grade3-chinese.mjs`
- Modify: `scripts/author-grade1-english.mjs`
- Modify: `scripts/author-grade2-english.mjs`
- Modify: `scripts/author-grade3-english.mjs`
- Modify: `scripts/author-grade4-english.mjs`
- Modify: `scripts/author-grade5-english.mjs`
- Modify: `scripts/author-grade6-english.mjs`
- Modify or create script tests for representative explanation quality.

- [ ] **Step 1: Inspect existing template functions**

Find short explanation templates that only state the answer.

- [ ] **Step 2: Write failing tests**

Assert representative Chinese and English generated questions contain clue/reasoning language.

- [ ] **Step 3: Update templates**

Add reason and tip language appropriate to the grade and subject.

- [ ] **Step 4: Run script tests**

Run the relevant `npm test -- scripts/tests/...` commands.

### Task 4: Verification

- [ ] **Step 1: Run unit tests**

Run: `npm test -- src/lib/explanationContent.test.ts`

- [ ] **Step 2: Run build**

Run: `npm run build`

- [ ] **Step 3: Review diff**

Run: `git diff -- src/lib src/components/quiz src/pages scripts docs`
