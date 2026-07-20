# Four-File Reliability Optimization Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Preserve the four existing workspace improvements while making companion interaction, calendar navigation, home statistics, and quiz data handling reliable and testable.

**Architecture:** Extract deterministic calendar and quiz behavior into focused modules under `src/lib`, leaving React components and the Zustand store responsible for UI state and Supabase orchestration. Add Vitest for pure unit tests, preserve existing public store APIs, and limit production changes to the four approved files plus the new utilities.

**Tech Stack:** React 18, TypeScript 5.6, Zustand 5, Supabase JS 2, Vite 6, Vitest.

---

## File Map

- Create `src/lib/dateUtils.ts` and `src/lib/dateUtils.test.ts`: local dates, safe month navigation, calendar cells, and day bounds.
- Create `src/lib/quizUtils.ts` and `src/lib/quizUtils.test.ts`: answer evaluation, combo rewards, immutable shuffle, and subject aggregation.
- Modify `src/components/companion/InteractiveCompanion.tsx`: Pointer Event input, stable effects, cleanup, and keyboard access.
- Modify `src/pages/CheckInPage.tsx`: date utilities, request race protection, loading/error UI, and accessible controls.
- Modify `src/pages/HomePage.tsx`: independent statistics request, lifecycle-safe updates, and reward copy.
- Modify `src/stores/quizStore.ts`: utility reuse, explicit errors, local-day statistics, unbiased shuffle, and batch inserts.
- Modify `package.json` and `package-lock.json`: Vitest dependency and test script.

### Task 1: Install and prove the test harness

**Files:**
- Modify: `package.json`
- Modify: `package-lock.json`
- Create: `src/lib/dateUtils.test.ts`

- [ ] **Step 1: Add Vitest**

Run `npm install --save-dev vitest`.

Expected: `vitest` appears in `devDependencies` and the lockfile is updated.

- [ ] **Step 2: Add the test script**

Add `"test": "vitest run"` to `package.json` scripts.

- [ ] **Step 3: Write the first failing test**

Create `src/lib/dateUtils.test.ts`:

```ts
import { describe, expect, it } from 'vitest'
import { moveMonth } from './dateUtils'

describe('moveMonth', () => {
  it('moves January 31 to the first day of February', () => {
    expect(moveMonth(new Date(2026, 0, 31), 1)).toEqual(new Date(2026, 1, 1))
  })
})
```

- [ ] **Step 4: Verify RED**

Run `npm test -- src/lib/dateUtils.test.ts`.

Expected: FAIL because `./dateUtils` does not exist.

### Task 2: Implement and integrate local calendar utilities

**Files:**
- Create: `src/lib/dateUtils.ts`
- Modify: `src/lib/dateUtils.test.ts`
- Modify: `src/pages/CheckInPage.tsx`

- [ ] **Step 1: Expand failing tests**

Add tests for December-to-January rollover, `formatLocalDate`, `getMonthRange`, `getCalendarCells`, `isCurrentMonth`, and `getLocalDayRange`. Construct dates with local constructors such as `new Date(2026, 6, 20, 23, 30)`.

- [ ] **Step 2: Verify RED**

Run `npm test -- src/lib/dateUtils.test.ts`.

Expected: FAIL with missing exports.

- [ ] **Step 3: Implement the date API**

Create these functions:

```ts
export function formatLocalDate(date: Date): string
export function moveMonth(date: Date, delta: number): Date
export function getMonthRange(date: Date): { start: string; end: string }
export function getCalendarCells(date: Date): Array<number | null>
export function isCurrentMonth(date: Date, now?: Date): boolean
export function getLocalDayRange(date?: Date): { start: string; end: string }
```

`moveMonth` constructs `new Date(year, month + delta, 1)`. `getLocalDayRange` constructs local midnight and next local midnight before converting both to ISO.

- [ ] **Step 4: Verify GREEN**

Run `npm test -- src/lib/dateUtils.test.ts`.

Expected: all date tests pass.

- [ ] **Step 5: Integrate with CheckInPage**

Replace inline date math with the utilities. Add `monthLoading`, `monthError`, and `requestIdRef`. Increment the ID before each query and only apply the newest response. Clear month data at query start, show inline loading/error text, and add labels to both month buttons.

- [ ] **Step 6: Re-run the focused tests**

Run `npm test -- src/lib/dateUtils.test.ts`.

Expected: all tests pass.

### Task 3: Implement and integrate quiz domain utilities

**Files:**
- Create: `src/lib/quizUtils.test.ts`
- Create: `src/lib/quizUtils.ts`
- Modify: `src/stores/quizStore.ts`

- [ ] **Step 1: Write failing quiz tests**

Test these APIs:

```ts
export function isAnswerCorrect(
  type: 'choice' | 'fill' | 'match' | 'grid',
  content: unknown,
  answer: string | number,
): boolean

export function calculateAnswerReward(
  isCorrect: boolean,
  currentCombo: number,
): { comboCount: number; points: number }

export function shuffle<T>(items: readonly T[], random?: () => number): T[]
export function countSubjects(rows: Array<{ subject: string }>): Record<Subject, number>
```

Cover trimmed case-insensitive fill answers, match/grid sentinels, wrong-answer combo reset, each combo tier and cap, deterministic shuffle through injected randomness, input immutability, and unknown subjects.

- [ ] **Step 2: Verify RED**

Run `npm test -- src/lib/quizUtils.test.ts`.

Expected: FAIL because `./quizUtils` does not exist.

- [ ] **Step 3: Implement the minimal utilities**

Use `POINTS` and `Subject`. Malformed fill content returns false. Fisher–Yates copies input before swapping.

- [ ] **Step 4: Verify GREEN**

Run `npm test -- src/lib/quizUtils.test.ts`.

Expected: all quiz utility tests pass.

- [ ] **Step 5: Integrate with quizStore**

Replace both answer blocks with the shared functions. Replace random-sort calls with `shuffle`. Use `getLocalDayRange` and both `.gte('answered_at', start)` and `.lt('answered_at', end)` for daily queries. Aggregate with `countSubjects`.

- [ ] **Step 6: Add explicit Supabase error handling**

Inspect every relevant returned `error`. Wrap session starts in `try/finally` so `isLoading` always becomes false, and rethrow errors for callers.

- [ ] **Step 7: Batch record inserts**

Filter generated IDs, map the remaining records, insert once, and throw an insert error. Return without a query when no database-backed records remain.

- [ ] **Step 8: Run all utility tests**

Run `npm test`.

Expected: all tests pass.

### Task 4: Harden companion and home interactions

**Files:**
- Modify: `src/components/companion/InteractiveCompanion.tsx`
- Modify: `src/pages/HomePage.tsx`

- [ ] **Step 1: Unify pointer input**

Remove touch suppression and use one `onPointerDown` handler. Store effects as `{ id, x, y, icon }`, generate IDs from a counter ref, and fix each icon at creation time.

- [ ] **Step 2: Own and clean timers**

Track removal timer IDs in a ref set. Remove fired timers and clear the remaining timers in a `useEffect` cleanup.

- [ ] **Step 3: Add keyboard access**

Set `role="button"`, `tabIndex={0}`, `aria-label="和伙伴互动"`, and handle Enter/Space using the element center for effect coordinates.

- [ ] **Step 4: Decouple home statistics**

Select `userId` from the auth store. Query statistics whenever it exists, independent of companion. Add an effect-active flag and catch failures while preserving zero fallback values.

- [ ] **Step 5: Correct reward copy**

Change `通关+100积分` to `通关+200积分`.

- [ ] **Step 6: Run tests**

Run `npm test`.

Expected: all tests pass.

### Task 5: Verify the integrated change

**Files:**
- Review every file listed in the File Map.

- [ ] **Step 1: Build**

Run `npm run build`.

Expected: TypeScript and Vite exit with code 0.

- [ ] **Step 2: Run tests fresh**

Run `npm test`.

Expected: all test files and tests pass.

- [ ] **Step 3: Check scope and whitespace**

Run `git diff --check`, `git status --short`, and `git diff --stat`.

Expected: no whitespace errors; changes are limited to the approved files, utilities, tests, and package metadata.

- [ ] **Step 4: Preserve original work**

Compare against `0d62e39` and confirm the original mobile interaction fix, historical month navigation, combined home statistics, and `getTodayStats` behavior remain present.

