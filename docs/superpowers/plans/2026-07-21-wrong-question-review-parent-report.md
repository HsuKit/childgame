# Wrong Question Review Parent Report Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a first-phase wrong-question correction loop and same-account parent report for today's learning progress.

**Architecture:** Add persistent mistake state beside existing immutable quiz history. Keep scoring/session logic in `quizStore`, put mistake status transitions and report aggregation in focused mistake modules, and expose lightweight mobile-first pages through existing React Router and layout patterns.

**Tech Stack:** React 18, TypeScript, Vite, Zustand, Supabase PostgreSQL with RLS, Vitest.

---

## File Structure

- Create `supabase/migrations/012_mistake_review_parent_report.sql`: adds `selected_answer` to `quiz_records`, creates `mistake_records` and `mistake_reviews`, indexes, constraints, RLS policies.
- Modify `src/lib/database.types.ts`: adds generated Supabase types for the new column and tables.
- Create `src/lib/mistakeStatus.ts`: pure transition helpers for wrong answers and review attempts.
- Create `src/lib/mistakeStatus.test.ts`: unit tests for status transitions.
- Modify `src/stores/quizStore.ts`: store selected answers in session records and maintain mistake records when saving quiz/challenge records.
- Modify `src/stores/quizStore.test.ts`: update record insert tests for `selected_answer`.
- Create `src/stores/mistakeStore.ts`: fetch mistake summary/list/detail, submit reviews, and aggregate parent report data.
- Create `src/stores/mistakeStore.test.ts`: test pure report aggregation exported by `mistakeStore`.
- Create `src/pages/MistakesPage.tsx`: child-facing wrong-question list and review entry.
- Create `src/pages/MistakeDetailPage.tsx`: wrong-question detail and correction/review attempt flow.
- Create `src/pages/ParentReportPage.tsx`: same-account parent report.
- Modify `src/pages/HomePage.tsx`: add wrong-question review task card and parent report entry.
- Modify `src/pages/ProfilePage.tsx`: add parent report and wrong-question menu entries.
- Modify `src/App.tsx`: register `/mistakes`, `/mistakes/:id`, and `/parent-report`.

## Task 1: Database Schema

**Files:**
- Create: `supabase/migrations/012_mistake_review_parent_report.sql`
- Modify: `src/lib/database.types.ts`

- [ ] **Step 1: Create the migration**

Create `supabase/migrations/012_mistake_review_parent_report.sql` with:

```sql
alter table public.quiz_records
  add column if not exists selected_answer jsonb;

create table if not exists public.mistake_records (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  question_id uuid not null references public.questions(id),
  subject text not null check (subject in ('chinese', 'math', 'english')),
  status text not null default 'needs_correction'
    check (status in ('needs_correction', 'reinforcing', 'mastered')),
  wrong_count int not null default 1 check (wrong_count >= 1),
  correct_review_count int not null default 0 check (correct_review_count >= 0),
  last_wrong_at timestamptz not null default now(),
  last_reviewed_at timestamptz,
  mastered_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(user_id, question_id)
);

create table if not exists public.mistake_reviews (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  mistake_id uuid not null references public.mistake_records(id) on delete cascade,
  question_id uuid not null references public.questions(id),
  selected_answer jsonb,
  is_correct boolean not null,
  status_before text not null check (status_before in ('needs_correction', 'reinforcing', 'mastered')),
  status_after text not null check (status_after in ('needs_correction', 'reinforcing', 'mastered')),
  reviewed_at timestamptz not null default now()
);

create index if not exists idx_mistake_records_user_status
  on public.mistake_records(user_id, status, updated_at desc);
create index if not exists idx_mistake_records_user_subject
  on public.mistake_records(user_id, subject, updated_at desc);
create index if not exists idx_mistake_reviews_mistake_time
  on public.mistake_reviews(mistake_id, reviewed_at desc);
create index if not exists idx_mistake_reviews_user_time
  on public.mistake_reviews(user_id, reviewed_at desc);

alter table public.mistake_records enable row level security;
alter table public.mistake_reviews enable row level security;

create policy "Users can view own mistake records"
  on public.mistake_records for select using (auth.uid() = user_id);
create policy "Users can insert own mistake records"
  on public.mistake_records for insert with check (auth.uid() = user_id);
create policy "Users can update own mistake records"
  on public.mistake_records for update using (auth.uid() = user_id);

create policy "Users can view own mistake reviews"
  on public.mistake_reviews for select using (auth.uid() = user_id);
create policy "Users can insert own mistake reviews"
  on public.mistake_reviews for insert with check (auth.uid() = user_id);
```

- [ ] **Step 2: Update database types**

Modify `src/lib/database.types.ts` so `quiz_records` has `selected_answer`, and add `mistake_records` and `mistake_reviews` table types. Use these exact status unions:

```ts
type MistakeStatus = 'needs_correction' | 'reinforcing' | 'mastered'
```

- [ ] **Step 3: Verify build types**

Run: `npm run build`

Expected: TypeScript completes without errors and Vite produces `dist/`.

- [ ] **Step 4: Commit**

```bash
git add supabase/migrations/012_mistake_review_parent_report.sql src/lib/database.types.ts
git commit -m "feat: add mistake review schema"
```

## Task 2: Mistake Status Rules

**Files:**
- Create: `src/lib/mistakeStatus.ts`
- Create: `src/lib/mistakeStatus.test.ts`

- [ ] **Step 1: Write failing tests**

Create `src/lib/mistakeStatus.test.ts`:

```ts
import { describe, expect, it } from 'vitest'
import { applyMistakeReview, applyWrongAnswer } from './mistakeStatus'

describe('applyWrongAnswer', () => {
  it('creates a new needs_correction state', () => {
    expect(applyWrongAnswer(null, '2026-07-21T10:00:00.000Z')).toEqual({
      status: 'needs_correction',
      wrong_count: 1,
      correct_review_count: 0,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: null,
      mastered_at: null,
    })
  })

  it('reactivates a mastered mistake when it is wrong again', () => {
    expect(applyWrongAnswer({
      status: 'mastered',
      wrong_count: 2,
      correct_review_count: 2,
      last_wrong_at: '2026-07-20T10:00:00.000Z',
      last_reviewed_at: '2026-07-20T11:00:00.000Z',
      mastered_at: '2026-07-20T11:00:00.000Z',
    }, '2026-07-21T10:00:00.000Z')).toMatchObject({
      status: 'needs_correction',
      wrong_count: 3,
      mastered_at: null,
    })
  })
})

describe('applyMistakeReview', () => {
  it('moves needs_correction to reinforcing after a correct review', () => {
    expect(applyMistakeReview({
      status: 'needs_correction',
      wrong_count: 1,
      correct_review_count: 0,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: null,
      mastered_at: null,
    }, true, '2026-07-21T11:00:00.000Z')).toMatchObject({
      status: 'reinforcing',
      correct_review_count: 1,
      last_reviewed_at: '2026-07-21T11:00:00.000Z',
      mastered_at: null,
    })
  })

  it('moves reinforcing to mastered after a correct review', () => {
    expect(applyMistakeReview({
      status: 'reinforcing',
      wrong_count: 1,
      correct_review_count: 1,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: '2026-07-21T11:00:00.000Z',
      mastered_at: null,
    }, true, '2026-07-22T11:00:00.000Z')).toMatchObject({
      status: 'mastered',
      correct_review_count: 2,
      mastered_at: '2026-07-22T11:00:00.000Z',
    })
  })

  it('returns to needs_correction after a wrong review', () => {
    expect(applyMistakeReview({
      status: 'reinforcing',
      wrong_count: 1,
      correct_review_count: 1,
      last_wrong_at: '2026-07-21T10:00:00.000Z',
      last_reviewed_at: '2026-07-21T11:00:00.000Z',
      mastered_at: null,
    }, false, '2026-07-22T11:00:00.000Z')).toMatchObject({
      status: 'needs_correction',
      wrong_count: 2,
      mastered_at: null,
    })
  })
})
```

- [ ] **Step 2: Run test to verify it fails**

Run: `npm test -- src/lib/mistakeStatus.test.ts`

Expected: FAIL because `src/lib/mistakeStatus.ts` does not exist.

- [ ] **Step 3: Implement status helpers**

Create `src/lib/mistakeStatus.ts`:

```ts
export type MistakeStatus = 'needs_correction' | 'reinforcing' | 'mastered'

export interface MistakeStatusState {
  status: MistakeStatus
  wrong_count: number
  correct_review_count: number
  last_wrong_at: string
  last_reviewed_at: string | null
  mastered_at: string | null
}

export function applyWrongAnswer(
  current: MistakeStatusState | null,
  nowIso: string,
): MistakeStatusState {
  return {
    status: 'needs_correction',
    wrong_count: (current?.wrong_count ?? 0) + 1,
    correct_review_count: current?.correct_review_count ?? 0,
    last_wrong_at: nowIso,
    last_reviewed_at: current?.last_reviewed_at ?? null,
    mastered_at: null,
  }
}

export function applyMistakeReview(
  current: MistakeStatusState,
  isCorrect: boolean,
  nowIso: string,
): MistakeStatusState {
  if (!isCorrect) {
    return {
      ...current,
      status: 'needs_correction',
      wrong_count: current.wrong_count + 1,
      last_wrong_at: nowIso,
      last_reviewed_at: nowIso,
      mastered_at: null,
    }
  }

  const nextCorrectCount = current.correct_review_count + 1
  const nextStatus: MistakeStatus = current.status === 'needs_correction' ? 'reinforcing' : 'mastered'
  return {
    ...current,
    status: nextStatus,
    correct_review_count: nextCorrectCount,
    last_reviewed_at: nowIso,
    mastered_at: nextStatus === 'mastered' ? nowIso : null,
  }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `npm test -- src/lib/mistakeStatus.test.ts`

Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add src/lib/mistakeStatus.ts src/lib/mistakeStatus.test.ts
git commit -m "feat: add mistake status transitions"
```

## Task 3: Save Selected Answers and Upsert Mistakes

**Files:**
- Modify: `src/stores/quizStore.ts`
- Modify: `src/stores/quizStore.test.ts`

- [ ] **Step 1: Update failing record test**

Modify the `prepareQuizRecordInserts` test in `src/stores/quizStore.test.ts`:

```ts
describe('prepareQuizRecordInserts', () => {
  it('keeps completed records with selected answers', () => {
    const records = Array.from({ length: 10 }, (_, index) => ({
      question_id: `q-${index}`,
      subject: 'math',
      is_correct: index !== 0,
      points_earned: index === 0 ? 0 : 10,
      selected_answer: index,
    }))
    expect(prepareQuizRecordInserts('user-1', records)[0]).toMatchObject({
      user_id: 'user-1',
      question_id: 'q-0',
      selected_answer: 0,
      is_correct: false,
    })
  })
})
```

- [ ] **Step 2: Run test to verify it fails**

Run: `npm test -- src/stores/quizStore.test.ts`

Expected: FAIL because `QuizRecord` does not yet include `selected_answer`.

- [ ] **Step 3: Update quiz record model and answer capture**

In `src/stores/quizStore.ts`, change `QuizRecord`:

```ts
interface QuizRecord {
  question_id: string
  subject: string
  is_correct: boolean
  points_earned: number
  selected_answer: string | number
}
```

Update both `answerQuestion` and `answerChallengeQuestion` record creation:

```ts
const record: QuizRecord = {
  question_id: questionId,
  subject,
  is_correct: isCorrect,
  points_earned: points,
  selected_answer: answer,
}
```

and:

```ts
const record: QuizRecord = {
  question_id: questionId,
  subject: question.subject,
  is_correct: isCorrect,
  points_earned: points,
  selected_answer: answer,
}
```

Update `prepareQuizRecordInserts`:

```ts
export function prepareQuizRecordInserts(userId: string, records: QuizRecord[]) {
  return records.map(record => ({
    user_id: userId,
    question_id: record.question_id,
    subject: record.subject,
    is_correct: record.is_correct,
    points_earned: record.points_earned,
    selected_answer: record.selected_answer,
  }))
}
```

- [ ] **Step 4: Add mistake upsert helper**

In `src/stores/quizStore.ts`, add this helper near `prepareQuizRecordInserts`:

```ts
export function prepareWrongQuestionIds(records: QuizRecord[]) {
  return records.filter(record => !record.is_correct).map(record => record.question_id)
}
```

Inside `saveQuizRecords` and `saveChallengeRecords`, after inserting `quiz_records`, call a new `syncMistakeRecords(userId, records)` helper. The helper should:

```ts
async function syncMistakeRecords(userId: string, records: QuizRecord[]) {
  const wrongRecords = records.filter(record => !record.is_correct)
  if (wrongRecords.length === 0) return
  const nowIso = new Date().toISOString()
  const questionIds = wrongRecords.map(record => record.question_id)
  const { data: existing, error: existingError } = await supabase.from('mistake_records')
    .select('question_id,status,wrong_count,correct_review_count,last_wrong_at,last_reviewed_at,mastered_at')
    .eq('user_id', userId)
    .in('question_id', questionIds)
  if (existingError) throw existingError

  const existingByQuestion = new Map((existing || []).map(row => [row.question_id, row]))
  const rows = wrongRecords.map(record => {
    const current = existingByQuestion.get(record.question_id) || null
    const next = applyWrongAnswer(current, nowIso)
    return {
      user_id: userId,
      question_id: record.question_id,
      subject: record.subject,
      ...next,
      updated_at: nowIso,
    }
  })
  const { error } = await supabase.from('mistake_records').upsert(rows, { onConflict: 'user_id,question_id' })
  if (error) throw error
}
```

Import `applyWrongAnswer` from `../lib/mistakeStatus`.

- [ ] **Step 5: Run tests and build**

Run:

```bash
npm test -- src/stores/quizStore.test.ts src/lib/mistakeStatus.test.ts
npm run build
```

Expected: tests pass and build passes.

- [ ] **Step 6: Commit**

```bash
git add src/stores/quizStore.ts src/stores/quizStore.test.ts
git commit -m "feat: capture answers and sync mistakes"
```

## Task 4: Mistake Store and Report Aggregation

**Files:**
- Create: `src/stores/mistakeStore.ts`
- Create: `src/stores/mistakeStore.test.ts`

- [ ] **Step 1: Write report aggregation tests**

Create `src/stores/mistakeStore.test.ts`:

```ts
import { describe, expect, it } from 'vitest'
import { summarizeParentReport } from './mistakeStore'

describe('summarizeParentReport', () => {
  it('computes today totals and subject counts', () => {
    expect(summarizeParentReport([
      { subject: 'math', is_correct: true },
      { subject: 'math', is_correct: false },
      { subject: 'chinese', is_correct: true },
    ], [])).toMatchObject({
      totalAnswered: 3,
      correctAnswered: 2,
      accuracy: 67,
      subjectCounts: { chinese: 1, math: 2, english: 0 },
    })
  })

  it('groups active mistakes by knowledge point', () => {
    const report = summarizeParentReport([], [
      { status: 'needs_correction', wrong_count: 3, question: { knowledge_point: '退位减法' } },
      { status: 'reinforcing', wrong_count: 1, question: { knowledge_point: '退位减法' } },
      { status: 'mastered', wrong_count: 5, question: { knowledge_point: '拼音' } },
    ])
    expect(report.weakKnowledgePoints).toEqual([
      { knowledgePoint: '退位减法', activeCount: 2, wrongCount: 4 },
    ])
    expect(report.reviewProgress).toEqual({ needsCorrection: 1, reinforcing: 1, mastered: 1 })
  })
})
```

- [ ] **Step 2: Run test to verify it fails**

Run: `npm test -- src/stores/mistakeStore.test.ts`

Expected: FAIL because `mistakeStore.ts` does not exist.

- [ ] **Step 3: Implement store and pure aggregation**

Create `src/stores/mistakeStore.ts` with:

```ts
import { create } from 'zustand'
import { supabase } from '../lib/supabase'
import { useAuthStore } from './authStore'
import { getLocalDayRange } from '../lib/dateUtils'
import { countSubjects } from '../lib/quizUtils'
import { applyMistakeReview, type MistakeStatus } from '../lib/mistakeStatus'

type ReportQuizRow = { subject: string; is_correct: boolean }
type ReportMistakeRow = {
  status: MistakeStatus
  wrong_count: number
  question: { knowledge_point: string } | null
}

export function summarizeParentReport(quizRows: ReportQuizRow[], mistakeRows: ReportMistakeRow[]) {
  const totalAnswered = quizRows.length
  const correctAnswered = quizRows.filter(row => row.is_correct).length
  const activeMistakes = mistakeRows.filter(row => row.status !== 'mastered')
  const weakMap = new Map<string, { knowledgePoint: string; activeCount: number; wrongCount: number }>()
  activeMistakes.forEach(row => {
    const knowledgePoint = row.question?.knowledge_point || '未分类'
    const current = weakMap.get(knowledgePoint) || { knowledgePoint, activeCount: 0, wrongCount: 0 }
    current.activeCount += 1
    current.wrongCount += row.wrong_count
    weakMap.set(knowledgePoint, current)
  })
  return {
    totalAnswered,
    correctAnswered,
    accuracy: totalAnswered === 0 ? 0 : Math.round((correctAnswered / totalAnswered) * 100),
    subjectCounts: countSubjects(quizRows),
    reviewProgress: {
      needsCorrection: mistakeRows.filter(row => row.status === 'needs_correction').length,
      reinforcing: mistakeRows.filter(row => row.status === 'reinforcing').length,
      mastered: mistakeRows.filter(row => row.status === 'mastered').length,
    },
    weakKnowledgePoints: Array.from(weakMap.values())
      .sort((left, right) => right.activeCount - left.activeCount || right.wrongCount - left.wrongCount)
      .slice(0, 5),
  }
}

interface MistakeState {
  isLoading: boolean
  error: string | null
  mistakes: any[]
  report: ReturnType<typeof summarizeParentReport> | null
  fetchMistakes: () => Promise<void>
  fetchParentReport: () => Promise<void>
  submitReview: (mistake: any, selectedAnswer: string | number, isCorrect: boolean) => Promise<void>
}

export const useMistakeStore = create<MistakeState>((set, get) => ({
  isLoading: false,
  error: null,
  mistakes: [],
  report: null,

  fetchMistakes: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    set({ isLoading: true, error: null })
    const { data, error } = await supabase.from('mistake_records')
      .select('*, question:questions(*)')
      .eq('user_id', userId)
      .order('updated_at', { ascending: false })
    set({ isLoading: false, mistakes: data || [], error: error?.message || null })
    if (error) throw error
  },

  fetchParentReport: async () => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    set({ isLoading: true, error: null })
    const { start, end } = getLocalDayRange()
    const [quizRes, mistakeRes] = await Promise.all([
      supabase.from('quiz_records').select('subject,is_correct').eq('user_id', userId).gte('answered_at', start).lt('answered_at', end),
      supabase.from('mistake_records').select('status,wrong_count,question:questions(knowledge_point)').eq('user_id', userId),
    ])
    if (quizRes.error || mistakeRes.error) {
      const message = quizRes.error?.message || mistakeRes.error?.message || '报告加载失败'
      set({ isLoading: false, error: message })
      throw new Error(message)
    }
    set({ isLoading: false, report: summarizeParentReport(quizRes.data || [], mistakeRes.data || []) })
  },

  submitReview: async (mistake, selectedAnswer, isCorrect) => {
    const userId = useAuthStore.getState().user?.id
    if (!userId) return
    const nowIso = new Date().toISOString()
    const statusBefore = mistake.status
    const next = applyMistakeReview(mistake, isCorrect, nowIso)
    const { error: reviewError } = await supabase.from('mistake_reviews').insert({
      user_id: userId,
      mistake_id: mistake.id,
      question_id: mistake.question_id,
      selected_answer: selectedAnswer,
      is_correct: isCorrect,
      status_before: statusBefore,
      status_after: next.status,
    })
    if (reviewError) throw reviewError
    const { error: updateError } = await supabase.from('mistake_records').update({
      ...next,
      updated_at: nowIso,
    }).eq('id', mistake.id).eq('user_id', userId)
    if (updateError) throw updateError
    await get().fetchMistakes()
  },
}))
```

- [ ] **Step 4: Tighten `any` types**

Replace `any[]` and `mistake: any` with local aliases derived from `Database['public']['Tables']` plus joined `question`. Keep the public store API typed and avoid leaking raw `any` outside the file.

- [ ] **Step 5: Run tests**

Run:

```bash
npm test -- src/stores/mistakeStore.test.ts src/lib/mistakeStatus.test.ts
npm run build
```

Expected: tests pass and build passes.

- [ ] **Step 6: Commit**

```bash
git add src/stores/mistakeStore.ts src/stores/mistakeStore.test.ts
git commit -m "feat: add mistake store and parent report summary"
```

## Task 5: Child Mistake Review Pages

**Files:**
- Create: `src/pages/MistakesPage.tsx`
- Create: `src/pages/MistakeDetailPage.tsx`
- Modify: `src/pages/HomePage.tsx`
- Modify: `src/pages/ProfilePage.tsx`
- Modify: `src/App.tsx`

- [ ] **Step 1: Register routes**

Modify `src/App.tsx` imports and routes:

```tsx
import MistakesPage from './pages/MistakesPage'
import MistakeDetailPage from './pages/MistakeDetailPage'
```

```tsx
<Route path="/mistakes" element={<MistakesPage />} />
<Route path="/mistakes/:id" element={<MistakeDetailPage />} />
```

- [ ] **Step 2: Create mistakes list page**

Create `src/pages/MistakesPage.tsx`:

```tsx
import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useMistakeStore } from '../stores/mistakeStore'

const statusLabels = {
  needs_correction: '待订正',
  reinforcing: '巩固中',
  mastered: '已掌握',
} as const

export default function MistakesPage() {
  const navigate = useNavigate()
  const { mistakes, isLoading, error, fetchMistakes } = useMistakeStore()
  const [status, setStatus] = useState<'all' | keyof typeof statusLabels>('all')

  useEffect(() => { fetchMistakes().catch(() => undefined) }, [fetchMistakes])

  const filtered = useMemo(
    () => status === 'all' ? mistakes : mistakes.filter(item => item.status === status),
    [mistakes, status],
  )

  return (
    <div className="p-4 space-y-4">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold text-kid-text">错题复习</h1>
        <div className="w-12" />
      </div>
      <div className="grid grid-cols-4 gap-2">
        {(['all', 'needs_correction', 'reinforcing', 'mastered'] as const).map(value => (
          <button key={value} onClick={() => setStatus(value)}
            className={`rounded-2xl px-2 py-2 text-xs font-bold ${status === value ? 'bg-kid-primary text-white' : 'bg-gray-100 text-gray-500'}`}>
            {value === 'all' ? '全部' : statusLabels[value]}
          </button>
        ))}
      </div>
      {isLoading && <p className="text-center text-gray-400 py-8">正在整理错题...</p>}
      {error && <p className="text-center text-red-400 py-8">{error}</p>}
      {!isLoading && filtered.length === 0 && (
        <div className="card text-center py-8">
          <p className="text-4xl mb-2">✅</p>
          <p className="font-bold text-kid-text">这里暂时没有错题</p>
        </div>
      )}
      <div className="grid gap-3">
        {filtered.map(item => (
          <button key={item.id} onClick={() => navigate(`/mistakes/${item.id}`)}
            className="card text-left">
            <div className="flex items-center justify-between gap-3">
              <div>
                <p className="text-xs text-gray-400">{item.question?.knowledge_point || '未分类'}</p>
                <p className="font-extrabold text-kid-text mt-1 line-clamp-2">{item.question?.content?.stem || '题目内容'}</p>
                <p className="text-xs text-gray-500 mt-2">错了 {item.wrong_count} 次</p>
              </div>
              <span className="shrink-0 rounded-full bg-amber-50 px-3 py-1 text-xs font-bold text-amber-600">
                {statusLabels[item.status as keyof typeof statusLabels]}
              </span>
            </div>
          </button>
        ))}
      </div>
    </div>
  )
}
```

- [ ] **Step 3: Create mistake detail page**

Create `src/pages/MistakeDetailPage.tsx` with a choice/fill first implementation. For `match` and `grid`, show explanation and a “我看懂了” action that submits a correct review:

```tsx
import { useEffect, useMemo, useState } from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import { useMistakeStore } from '../stores/mistakeStore'
import { isAnswerCorrect } from '../lib/quizUtils'

export default function MistakeDetailPage() {
  const { id } = useParams()
  const navigate = useNavigate()
  const { mistakes, fetchMistakes, submitReview } = useMistakeStore()
  const [answer, setAnswer] = useState<string | number>('')
  const [result, setResult] = useState<'correct' | 'wrong' | null>(null)

  useEffect(() => { fetchMistakes().catch(() => undefined) }, [fetchMistakes])
  const mistake = useMemo(() => mistakes.find(item => item.id === id), [mistakes, id])
  const question = mistake?.question
  const content = question?.content as { stem?: string; options?: string[]; answer?: string | number; explanation?: string } | undefined

  if (!mistake || !question) {
    return <div className="p-6 text-center"><p>正在加载错题...</p></div>
  }

  const submit = async (selected: string | number) => {
    const correct = isAnswerCorrect(question.type, question.content, selected)
    setAnswer(selected)
    setResult(correct ? 'correct' : 'wrong')
    await submitReview(mistake, selected, correct)
  }

  return (
    <div className="p-4 space-y-4">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/mistakes')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold">错题订正</h1>
        <div className="w-12" />
      </div>
      <div className="card">
        <p className="text-xs text-gray-400">{question.knowledge_point}</p>
        <p className="text-lg font-extrabold mt-2">{content?.stem}</p>
        {question.type === 'choice' && content?.options && (
          <div className="grid gap-3 mt-4">
            {content.options.map((option, index) => (
              <button key={option} disabled={result !== null} onClick={() => submit(index)}
                className="rounded-2xl border-2 border-gray-100 bg-gray-50 p-4 text-left font-bold">
                {String.fromCharCode(65 + index)}. {option}
              </button>
            ))}
          </div>
        )}
        {question.type === 'fill' && (
          <div className="mt-4 space-y-3">
            <input className="w-full rounded-2xl border-2 border-gray-100 p-4 outline-none"
              value={answer} onChange={event => setAnswer(event.target.value)} placeholder="输入答案" />
            <button className="btn-primary w-full" onClick={() => submit(answer)}>提交订正</button>
          </div>
        )}
        {(question.type === 'match' || question.type === 'grid') && (
          <button className="btn-primary w-full mt-4" onClick={() => submit('correct')}>我看懂了</button>
        )}
        {result && (
          <div className={`mt-4 rounded-2xl p-4 text-sm ${result === 'correct' ? 'bg-green-50 text-green-700' : 'bg-red-50 text-red-700'}`}>
            <p className="font-bold">{result === 'correct' ? '订正成功' : '再看一遍解析吧'}</p>
            <p className="mt-1">{content?.explanation}</p>
          </div>
        )}
      </div>
    </div>
  )
}
```

- [ ] **Step 4: Add home/profile entries**

In `src/pages/HomePage.tsx`, import `useMistakeStore`, fetch mistakes beside other homepage data, and add a compact card near today tasks:

```tsx
<motion.button
  whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.97 }}
  onClick={() => navigate('/mistakes')}
  className="w-full bg-gradient-to-r from-amber-50 to-yellow-50 border border-amber-200 rounded-3xl p-4 text-left shadow-sm">
  <p className="font-extrabold text-kid-text">错题复习</p>
  <p className="text-xs text-amber-600 mt-1">待订正 {needsCorrectionCount} 道 · 巩固中 {reinforcingCount} 道</p>
</motion.button>
```

In `src/pages/ProfilePage.tsx`, add:

```ts
{ icon: '📝', label: '错题复习', to: '/mistakes', color: 'from-amber-50 to-yellow-50' },
```

- [ ] **Step 5: Build**

Run: `npm run build`

Expected: build passes.

- [ ] **Step 6: Commit**

```bash
git add src/App.tsx src/pages/HomePage.tsx src/pages/ProfilePage.tsx src/pages/MistakesPage.tsx src/pages/MistakeDetailPage.tsx
git commit -m "feat: add child mistake review pages"
```

## Task 6: Parent Report Page

**Files:**
- Create: `src/pages/ParentReportPage.tsx`
- Modify: `src/pages/HomePage.tsx`
- Modify: `src/pages/ProfilePage.tsx`
- Modify: `src/App.tsx`

- [ ] **Step 1: Register route**

Modify `src/App.tsx`:

```tsx
import ParentReportPage from './pages/ParentReportPage'
```

```tsx
<Route path="/parent-report" element={<ParentReportPage />} />
```

- [ ] **Step 2: Create parent report page**

Create `src/pages/ParentReportPage.tsx`:

```tsx
import { useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useMistakeStore } from '../stores/mistakeStore'

export default function ParentReportPage() {
  const navigate = useNavigate()
  const { report, isLoading, error, fetchParentReport } = useMistakeStore()

  useEffect(() => { fetchParentReport().catch(() => undefined) }, [fetchParentReport])

  return (
    <div className="p-4 space-y-4">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/profile')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold">家长报告</h1>
        <div className="w-12" />
      </div>
      {isLoading && <p className="text-center text-gray-400 py-8">正在生成今日报告...</p>}
      {error && <p className="text-center text-red-400 py-8">{error}</p>}
      {report && (
        <>
          <div className="grid grid-cols-2 gap-3">
            <div className="card text-center">
              <p className="text-xs text-gray-400">今日完成</p>
              <p className="text-3xl font-extrabold text-kid-primary">{report.totalAnswered}</p>
            </div>
            <div className="card text-center">
              <p className="text-xs text-gray-400">正确率</p>
              <p className="text-3xl font-extrabold text-kid-success">{report.accuracy}%</p>
            </div>
            <div className="card text-center">
              <p className="text-xs text-gray-400">待订正</p>
              <p className="text-3xl font-extrabold text-amber-500">{report.reviewProgress.needsCorrection}</p>
            </div>
            <div className="card text-center">
              <p className="text-xs text-gray-400">已掌握</p>
              <p className="text-3xl font-extrabold text-green-500">{report.reviewProgress.mastered}</p>
            </div>
          </div>
          <div className="card">
            <h2 className="font-extrabold mb-3">薄弱知识点</h2>
            {report.weakKnowledgePoints.length === 0 && <p className="text-sm text-gray-400">暂时没有明显薄弱点</p>}
            {report.weakKnowledgePoints.map(item => (
              <div key={item.knowledgePoint} className="flex items-center justify-between border-b border-gray-100 py-3 last:border-b-0">
                <span className="font-bold text-kid-text">{item.knowledgePoint}</span>
                <span className="text-xs text-gray-500">{item.activeCount} 道未掌握 · 错 {item.wrongCount} 次</span>
              </div>
            ))}
          </div>
        </>
      )}
    </div>
  )
}
```

- [ ] **Step 3: Add entries**

In `src/pages/ProfilePage.tsx`, add:

```ts
{ icon: '📊', label: '家长报告', to: '/parent-report', color: 'from-blue-50 to-cyan-50' },
```

In `src/pages/HomePage.tsx`, add a small top-right text button beside points or under the greeting:

```tsx
<button onClick={() => navigate('/parent-report')} className="text-xs font-bold text-gray-400">
  家长报告
</button>
```

- [ ] **Step 4: Run tests and build**

Run:

```bash
npm test -- src/stores/mistakeStore.test.ts src/lib/mistakeStatus.test.ts src/stores/quizStore.test.ts
npm run build
```

Expected: tests pass and build passes.

- [ ] **Step 5: Commit**

```bash
git add src/App.tsx src/pages/HomePage.tsx src/pages/ProfilePage.tsx src/pages/ParentReportPage.tsx
git commit -m "feat: add same-account parent report"
```

## Task 7: Final Verification

**Files:**
- Review all changed files.

- [ ] **Step 1: Run complete tests**

Run:

```bash
npm test
npm run build
```

Expected: all Vitest tests pass and production build passes.

- [ ] **Step 2: Start local app**

Run: `npm run dev`

Expected: Vite prints a local URL, usually `http://localhost:5173/`.

- [ ] **Step 3: Manual smoke test**

In the browser:

- Open `/`.
- Confirm the home page renders and includes “错题复习” and “家长报告”.
- Open `/mistakes`; with no data it should show a friendly empty state.
- Open `/parent-report`; with no data it should show zero values and no crash.
- Complete a normal quiz with one wrong answer in a seeded account; confirm the wrong answer appears in `/mistakes`.
- Open the wrong question detail; submit a correct review; confirm its status advances.

- [ ] **Step 4: Commit verification fixes if needed**

If manual smoke testing uncovers a concrete issue, fix it, rerun the relevant command, and commit:

```bash
git add <changed-files>
git commit -m "fix: polish mistake review flow"
```

If no fixes are needed, do not create an empty commit.

## Self-Review

- Spec coverage: The plan covers database schema, selected answers, wrong-answer upsert, review transitions, child mistake pages, parent report, current-account-only scope, tests, and final smoke verification.
- Placeholder scan: No unresolved placeholders or unspecified implementation steps remain.
- Type consistency: Status names are consistently `needs_correction`, `reinforcing`, and `mastered`; selected answers use `jsonb` in the database and `string | number` in current UI flows.
