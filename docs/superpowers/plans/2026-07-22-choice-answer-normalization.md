# Choice Answer Normalization Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [x]`) syntax for tracking.

**Goal:** Make choice answer judging resilient to legacy string answer formats while preserving the canonical numeric answer contract.

**Architecture:** Add one shared question-content normalizer used before composition, rendering, judging, and mistake review. Add an idempotent Supabase migration that repairs existing rows and rejects future invalid choice answer JSON.

**Tech Stack:** React, TypeScript, Zustand, Vitest, Supabase/Postgres SQL.

---

### Task 1: Runtime Normalizer

**Files:**
- Create: `src/lib/questionContent.ts`
- Test: `src/lib/questionContent.test.ts`

- [x] **Step 1: Write failing tests for choice answer normalization**

```ts
import { describe, expect, it } from 'vitest'
import { normalizeQuestionContent } from './questionContent'

describe('normalizeQuestionContent', () => {
  const content = {
    stem: '“雨点像珍珠一样落下来。”主要使用了哪种修辞手法?',
    options: ['排比', '反问', '拟人', '比喻'],
    explanation: '句子把一种事物比作另一种事物，是比喻。'
  }

  it('maps exact option-text answers to their option index', () => {
    expect(normalizeQuestionContent('choice', { ...content, answer: '比喻' })?.answer).toBe(3)
  })

  it('maps numeric strings and choice letters to their option index', () => {
    expect(normalizeQuestionContent('choice', { ...content, answer: '3' })?.answer).toBe(3)
    expect(normalizeQuestionContent('choice', { ...content, answer: 'D' })?.answer).toBe(3)
  })

  it('rejects invalid choice answer formats', () => {
    expect(normalizeQuestionContent('choice', { ...content, answer: '没有这个选项' })).toBeNull()
  })
})
```

- [x] **Step 2: Run test and confirm it fails**

Run: `npm test -- --run src/lib/questionContent.test.ts`
Expected: FAIL because `src/lib/questionContent.ts` does not exist.

- [x] **Step 3: Implement minimal normalizer**

Create `normalizeQuestionContent(type, content)` and `normalizeQuestion(question)`. The choice branch converts valid numeric, numeric-string, letter, and exact option-text answers to numbers. Invalid choice content returns `null`; non-choice content returns unchanged content.

- [x] **Step 4: Run test and confirm it passes**

Run: `npm test -- --run src/lib/questionContent.test.ts`
Expected: PASS.

### Task 2: Wire Normalizer Into Quiz Paths

**Files:**
- Modify: `src/lib/questionRepository.ts`
- Modify: `src/components/quiz/QuizCard.tsx`
- Modify: `src/pages/MistakeDetailPage.tsx`
- Test: `src/lib/questionRepository.test.ts`
- Test: `src/lib/quizUtils.test.ts`

- [x] **Step 1: Add failing repository test**

Add a test where `loadQuestionPool` receives one approved choice row with invalid `content.answer` and one valid row. Assert that the invalid row is excluded and the valid row remains.

- [x] **Step 2: Add failing quiz regression test**

Add a test asserting `isAnswerCorrect('choice', normalizedContent, 3)` is true for the `"比喻"` screenshot case after normalization.

- [x] **Step 3: Run tests and confirm failure**

Run: `npm test -- --run src/lib/questionRepository.test.ts src/lib/quizUtils.test.ts`
Expected: FAIL because repository and quiz paths do not normalize yet.

- [x] **Step 4: Wire normalizer into runtime**

Use `normalizeQuestion` in `loadQuestionPool` before returning rows. Filter out `null`. Use `normalizeQuestionContent` in `QuizCard` and `MistakeDetailPage` before rendering or judging so relationship records with legacy content behave consistently.

- [x] **Step 5: Run focused tests**

Run: `npm test -- --run src/lib/questionContent.test.ts src/lib/questionRepository.test.ts src/lib/quizUtils.test.ts`
Expected: PASS.

### Task 3: Database Repair And Guard

**Files:**
- Create: `supabase/migrations/014_normalize_choice_answers.sql`

- [x] **Step 1: Add idempotent migration**

Create a migration that normalizes existing choice answers in `public.questions`, marks unrepairable choice rows as `draft`, and adds a `questions_choice_answer_contract` check constraint requiring choice answers to be numeric integer indexes in range.

- [x] **Step 2: Validate migration text**

Run: `rg -n "questions_choice_answer_contract|normalize_choice" supabase/migrations/014_normalize_choice_answers.sql`
Expected: both repair logic and constraint are present.

### Task 4: Final Verification

**Files:**
- No new files.

- [x] **Step 1: Run question validation**

Run: `npm run questions:validate`
Expected: PASS with all local files valid.

- [x] **Step 2: Run focused unit tests**

Run: `npm test -- --run src/lib/questionContent.test.ts src/lib/questionRepository.test.ts src/lib/quizUtils.test.ts`
Expected: PASS.

- [x] **Step 3: Run production build**

Run: `npm run build`
Expected: PASS.

- [x] **Step 4: Commit and deploy**

Run git status, commit the implementation, push main, then run Supabase migration/deploy command used by this project.
