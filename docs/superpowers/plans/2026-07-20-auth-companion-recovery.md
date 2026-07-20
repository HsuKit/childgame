# Auth and Companion Recovery Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Prevent unauthenticated access during Supabase outages, recover failed onboarding submissions, and synchronize all frontend companion IDs with the database.

**Architecture:** Make `authStore.initAuth` the single asynchronous bootstrap state machine and keep `GuestGate` a pure renderer of loading, error, onboarding, and authenticated states. Add small shared error formatting, UI-level submit recovery, and one idempotent SQL migration.

**Tech Stack:** React 18, TypeScript, Zustand, Supabase JS, Vitest, PostgreSQL.

---

### Task 1: Prove authentication bootstrap failures

**Files:**
- Create: `src/stores/authStore.test.ts`
- Modify: `src/stores/authStore.ts`
- Create: `src/lib/errorMessage.ts`
- Create: `src/lib/errorMessage.test.ts`

- [ ] Write a Vitest module mock for `../lib/supabase` and tests asserting that `initAuth` anonymously signs in before finishing, exposes an error without a user when sign-in fails, marks a missing profile as new, and loads an existing profile.
- [ ] Run `npm test -- src/stores/authStore.test.ts` and verify failures because `initAuth` does not own anonymous sign-in or expose `authError`.
- [ ] Implement `authError: string | null` and a single `initAuth` try/catch/finally flow that awaits session lookup, anonymous sign-in, and profile lookup.
- [ ] Create `getErrorMessage(error, fallback)` returning a safe fallback for unknown values and a normalized Chinese connection message for fetch/network failures.
- [ ] Run focused store and error tests; expect all to pass.

### Task 2: Close the authentication gate

**Files:**
- Modify: `src/components/auth/GuestGate.tsx`
- Modify: `src/components/auth/GradeSelect.tsx`

- [ ] Remove the second anonymous-login effect from `GuestGate`.
- [ ] Render loading while bootstrapping, a retry panel when `authError` exists, `GradeSelect` only for an authenticated new user, children only for an authenticated user with profile, and loading fallback for any impossible intermediate state.
- [ ] Add saving/error state with try/catch/finally to `GradeSelect`; disable fields and button during profile creation.
- [ ] Run `npm test`; expect all tests to pass.

### Task 3: Recover failed companion creation

**Files:**
- Modify: `src/components/companion/CompanionNameInput.tsx`
- Modify: `src/pages/CompanionSelectPage.tsx`
- Modify: `src/stores/companionStore.ts`

- [ ] Add error state and try/catch/finally to `CompanionNameInput`, restoring saving after rejection and showing a retryable Chinese message.
- [ ] Make `fetchCompanion` restore loading through finally and throw Supabase errors.
- [ ] Keep `createCompanion` errors propagating to the input while validating the selected companion ID exists.
- [ ] Run `npm test`; expect all tests to pass.

### Task 4: Synchronize companion types

**Files:**
- Create: `supabase/migrations/004_sync_companion_types.sql`

- [ ] Insert `ranger`, `warrior`, `mage`, `minotaur`, `valkyrie`, `golem`, `reaper`, and `angel` with legal schema values.
- [ ] Use `on conflict (id) do update` for names, base image paths, rarity, unlock costs, and active state.
- [ ] Verify every ID in `src/data/companionTypes.ts` appears in the migration.

### Task 5: Integrated verification

**Files:**
- Review all files above.

- [ ] Run `npm test`; expect all tests to pass.
- [ ] Run `npm run build`; expect exit code 0.
- [ ] Run `git diff --check`; expect no output.
- [ ] Review `git status --short` and ensure `.codex/` remains excluded.

