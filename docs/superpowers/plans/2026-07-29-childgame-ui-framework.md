# Childgame Bright Adventure UI Framework Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the complete existing UI with the approved bright-adventure framework, reduce bottom navigation from six to four destinations, and preserve all current business and data behavior.

**Architecture:** Add a route metadata layer that selects either the standard app shell or a focus shell. Build a small shared UI system from semantic CSS tokens and focused React primitives, then migrate every route into one of the six approved page templates. Keep Zustand stores, Supabase calls, reward rules, question content, and migrations unchanged.

**Tech Stack:** React 18, TypeScript, React Router 6, Tailwind CSS 4, Framer Motion, Zustand, Supabase, Lucide React, Vitest, Testing Library, jsdom.

---

## File structure

### New shared infrastructure

- `src/lib/navigation.ts`: route-to-section and route-to-layout metadata.
- `src/lib/navigation.test.ts`: route metadata coverage and matching behavior.
- `src/test/setup.ts`: Testing Library DOM assertions.
- `src/components/ui/Button.tsx`: primary, secondary, ghost, and danger actions.
- `src/components/ui/Surface.tsx`: standard card and elevated surface.
- `src/components/ui/PageHeader.tsx`: title, subtitle, back action, and trailing actions.
- `src/components/ui/ProgressBar.tsx`: accessible determinate progress.
- `src/components/ui/StatePanel.tsx`: loading, empty, and error recovery states.
- `src/components/layout/AppShell.test.tsx`: standard/focus shell and navigation regression tests.
- `src/pages/RewardsPage.tsx`: reward-area hub for wish and leaderboard entry points.

### Existing files changed by page family

- Global shell: `src/App.tsx`, `src/index.css`, `src/components/layout/AppLayout.tsx`, `src/components/layout/BottomNav.tsx`.
- Home map: `src/pages/HomePage.tsx`, `src/components/quiz/DailyTaskCard.tsx`, `src/components/companion/CompanionDisplay.tsx`.
- Quiz focus flow: `src/pages/QuizPage.tsx`, `src/pages/ChallengePage.tsx`, `src/pages/PkQuizPage.tsx`, `src/components/quiz/QuizCard.tsx`, `src/components/quiz/QuizProgressBar.tsx`, `src/components/quiz/ExplanationPanel.tsx`, `src/components/quiz/FillInCard.tsx`, `src/components/quiz/MatchCard.tsx`, `src/components/quiz/GridPuzzleCard.tsx`.
- Results: `src/pages/QuizResultPage.tsx`, `src/pages/ChallengeResultPage.tsx`, `src/pages/PkResultPage.tsx`, `src/components/quiz/QuizResultPanel.tsx`.
- Companion: `src/pages/CompanionPage.tsx`, `src/pages/CompanionSelectPage.tsx`, `src/pages/ShopPage.tsx`, `src/components/companion/*`, `src/components/shop/ShopItemCard.tsx`.
- Rewards: `src/pages/WishShopPage.tsx`, `src/pages/LeaderboardPage.tsx`, `src/components/wish/*`.
- Camp and parent: `src/pages/ProfilePage.tsx`, `src/pages/CheckInPage.tsx`, `src/pages/ParentReportPage.tsx`, `src/pages/ParentWishPage.tsx`.
- PK and mistakes: `src/pages/PkPage.tsx`, `src/pages/MistakesPage.tsx`, `src/pages/MistakeDetailPage.tsx`.
- Shared entry and overlays: `src/components/auth/GuestGate.tsx`, `src/components/auth/GradeSelect.tsx`, `src/components/auth/PhoneBindBanner.tsx`, `src/components/common/ErrorBoundary.tsx`, `src/components/companion/EvolutionCelebration.tsx`, `src/components/companion/SwitchConfirmDialog.tsx`.
- Documentation: `docs/ai/architecture.md`, `docs/ai/repository-map.md`, relevant domain docs, a new iteration record, and `docs/ai/iterations/README.md`.

## Task 1: Establish the UI test harness and route metadata

**Files:**
- Modify: `package.json`
- Modify: `vite.config.ts`
- Create: `src/test/setup.ts`
- Create: `src/lib/navigation.ts`
- Create: `src/lib/navigation.test.ts`

- [ ] **Step 1: Install the UI and test dependencies**

Run:

```bash
npm install lucide-react
npm install -D @testing-library/react @testing-library/jest-dom @testing-library/user-event jsdom
```

Expected: `package.json` and `package-lock.json` contain the new dependencies without changing existing major versions.

- [ ] **Step 2: Configure jsdom and Testing Library**

Update `vite.config.ts`:

```ts
import { defineConfig } from 'vitest/config'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [react(), tailwindcss()],
  test: {
    environment: 'jsdom',
    setupFiles: ['./src/test/setup.ts'],
  },
})
```

Create `src/test/setup.ts`:

```ts
import '@testing-library/jest-dom/vitest'
```

- [ ] **Step 3: Write the failing navigation tests**

Create `src/lib/navigation.test.ts`:

```ts
import { describe, expect, it } from 'vitest'
import { getRouteMeta } from './navigation'

describe('getRouteMeta', () => {
  it.each([
    ['/', 'adventure', 'standard'],
    ['/quiz?subject=math', 'adventure', 'focus'],
    ['/challenge/result', 'adventure', 'focus'],
    ['/mistakes/record-1', 'adventure', 'focus'],
    ['/companion', 'companion', 'standard'],
    ['/companion/select', 'companion', 'focus'],
    ['/shop', 'companion', 'standard'],
    ['/rewards', 'rewards', 'standard'],
    ['/wish-shop', 'rewards', 'standard'],
    ['/leaderboard', 'rewards', 'standard'],
    ['/profile', 'camp', 'standard'],
    ['/parent-report', 'camp', 'standard'],
  ] as const)('maps %s to %s/%s', (path, section, layout) => {
    expect(getRouteMeta(path)).toMatchObject({ section, layout })
  })

  it('falls back to the adventure standard shell', () => {
    expect(getRouteMeta('/unknown')).toMatchObject({
      section: 'adventure',
      layout: 'standard',
    })
  })
})
```

- [ ] **Step 4: Run the test to verify it fails**

Run:

```bash
npm test -- src/lib/navigation.test.ts
```

Expected: FAIL because `src/lib/navigation.ts` does not exist.

- [ ] **Step 5: Implement route metadata**

Create `src/lib/navigation.ts`:

```ts
export type AppSection = 'adventure' | 'companion' | 'rewards' | 'camp'
export type LayoutMode = 'standard' | 'focus'

export interface RouteMeta {
  section: AppSection
  layout: LayoutMode
}

const exactFocusRoutes = new Set([
  '/quiz',
  '/quiz/result',
  '/challenge',
  '/challenge/result',
  '/pk/quiz',
  '/pk/result',
  '/companion/select',
])

export function getRouteMeta(pathWithSearch: string): RouteMeta {
  const pathname = pathWithSearch.split('?')[0]
  if (exactFocusRoutes.has(pathname) || pathname.startsWith('/mistakes/')) {
    if (pathname.startsWith('/companion')) return { section: 'companion', layout: 'focus' }
    return { section: 'adventure', layout: 'focus' }
  }
  if (pathname === '/companion' || pathname === '/shop') {
    return { section: 'companion', layout: 'standard' }
  }
  if (pathname === '/rewards' || pathname === '/wish-shop' || pathname === '/leaderboard') {
    return { section: 'rewards', layout: 'standard' }
  }
  if (pathname === '/profile' || pathname === '/parent-report' || pathname === '/parent-wishes') {
    return { section: 'camp', layout: 'standard' }
  }
  return { section: 'adventure', layout: 'standard' }
}
```

- [ ] **Step 6: Run the navigation tests**

Run:

```bash
npm test -- src/lib/navigation.test.ts
```

Expected: PASS.

- [ ] **Step 7: Commit the test harness and navigation model**

```bash
git add package.json package-lock.json vite.config.ts src/test/setup.ts src/lib/navigation.ts src/lib/navigation.test.ts
git commit -m "test: add ui route metadata harness"
```

## Task 2: Replace ad-hoc styling with semantic design tokens

**Files:**
- Modify: `src/index.css`

- [ ] **Step 1: Add semantic tokens and base accessibility rules**

Replace the existing theme and component layer in `src/index.css` with:

```css
@import "tailwindcss";

@theme {
  --color-adventure-primary: #5b50d6;
  --color-adventure-primary-soft: #eeecff;
  --color-adventure-sky: #56b6e9;
  --color-adventure-success: #42a878;
  --color-adventure-success-soft: #e8f7ef;
  --color-adventure-reward: #f2b94b;
  --color-adventure-danger: #ef6b6f;
  --color-adventure-bg: #f3f6fc;
  --color-adventure-surface: #ffffff;
  --color-adventure-text: #18213a;
  --color-adventure-muted: #687083;
  --color-adventure-border: #dfe5f1;
}

@layer base {
  :root {
    color: var(--color-adventure-text);
    background: var(--color-adventure-bg);
    font-family: ui-rounded, "SF Pro Rounded", "PingFang SC", "Hiragino Sans GB",
      "Microsoft YaHei", system-ui, sans-serif;
    font-synthesis: none;
  }

  * { box-sizing: border-box; }

  html { min-width: 320px; background: var(--color-adventure-bg); }

  body {
    margin: 0;
    min-width: 320px;
    min-height: 100dvh;
    background:
      radial-gradient(circle at 15% 0%, rgb(86 182 233 / 12%), transparent 28rem),
      var(--color-adventure-bg);
    color: var(--color-adventure-text);
    -webkit-tap-highlight-color: transparent;
    -webkit-font-smoothing: antialiased;
  }

  button, a, input, textarea, select { font: inherit; }

  :focus-visible {
    outline: 3px solid rgb(91 80 214 / 35%);
    outline-offset: 3px;
  }
}

@layer components {
  .page-stack { @apply space-y-5 px-4 py-5 sm:px-6; }
  .section-title { @apply text-xl font-extrabold tracking-[-0.02em] text-adventure-text; }
  .body-copy { @apply text-sm leading-6 text-adventure-muted; }
}

@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    scroll-behavior: auto !important;
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}
```

- [ ] **Step 2: Verify the stylesheet compiles**

Run:

```bash
npm run build
```

Expected: PASS with generated CSS containing the new semantic classes.

- [ ] **Step 3: Commit the design tokens**

```bash
git add src/index.css
git commit -m "style: add bright adventure design tokens"
```

## Task 3: Build the shared UI primitives

**Files:**
- Create: `src/components/ui/Button.tsx`
- Create: `src/components/ui/Surface.tsx`
- Create: `src/components/ui/PageHeader.tsx`
- Create: `src/components/ui/ProgressBar.tsx`
- Create: `src/components/ui/StatePanel.tsx`
- Create: `src/components/ui/uiPrimitives.test.tsx`

- [ ] **Step 1: Write failing primitive tests**

Create `src/components/ui/uiPrimitives.test.tsx`:

```tsx
import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { Button } from './Button'
import { ProgressBar } from './ProgressBar'
import { StatePanel } from './StatePanel'

describe('shared ui primitives', () => {
  it('exposes loading state without losing the button label', () => {
    render(<Button loading>提交愿望</Button>)
    expect(screen.getByRole('button', { name: '提交愿望' })).toBeDisabled()
    expect(screen.getByRole('button')).toHaveAttribute('aria-busy', 'true')
  })

  it('exposes progress to assistive technology', () => {
    render(<ProgressBar value={4} max={10} label="语文进度" />)
    expect(screen.getByRole('progressbar')).toHaveAttribute('aria-valuenow', '4')
  })

  it('renders an error recovery action', () => {
    render(<StatePanel tone="error" title="暂时没有加载成功" actionLabel="重试" onAction={() => undefined} />)
    expect(screen.getByRole('button', { name: '重试' })).toBeEnabled()
  })
})
```

- [ ] **Step 2: Run the test to verify it fails**

Run:

```bash
npm test -- src/components/ui/uiPrimitives.test.tsx
```

Expected: FAIL because the primitive modules do not exist.

- [ ] **Step 3: Implement the primitives**

Use these public contracts:

```tsx
// Button.tsx
import type { ButtonHTMLAttributes, ReactNode } from 'react'

type ButtonVariant = 'primary' | 'secondary' | 'ghost' | 'danger'
interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: ButtonVariant
  loading?: boolean
  icon?: ReactNode
}

const variants: Record<ButtonVariant, string> = {
  primary: 'bg-adventure-primary text-white shadow-lg shadow-indigo-200/60',
  secondary: 'bg-adventure-primary-soft text-adventure-primary',
  ghost: 'border border-adventure-border bg-white text-adventure-text',
  danger: 'bg-red-50 text-red-700',
}

export function Button({ variant = 'primary', loading = false, icon, children, className = '', disabled, ...props }: ButtonProps) {
  return (
    <button
      {...props}
      disabled={disabled || loading}
      aria-busy={loading}
      aria-label={typeof children === 'string' ? children : props['aria-label']}
      className={`inline-flex min-h-12 items-center justify-center gap-2 rounded-[14px] px-5 py-3 font-extrabold transition active:scale-[.97] disabled:cursor-not-allowed disabled:opacity-50 ${variants[variant]} ${className}`}
    >
      {icon}
      <span className={loading ? 'opacity-70' : ''}>{children}</span>
    </button>
  )
}
```

```tsx
// ProgressBar.tsx
interface ProgressBarProps {
  value: number
  max: number
  label: string
  className?: string
}

export function ProgressBar({ value, max, label, className = '' }: ProgressBarProps) {
  const safeMax = Math.max(1, max)
  const safeValue = Math.min(safeMax, Math.max(0, value))
  return (
    <div
      role="progressbar"
      aria-label={label}
      aria-valuemin={0}
      aria-valuemax={safeMax}
      aria-valuenow={safeValue}
      className={`h-2 overflow-hidden rounded-full bg-slate-200 ${className}`}
    >
      <div className="h-full rounded-full bg-adventure-primary transition-[width]" style={{ width: `${safeValue / safeMax * 100}%` }} />
    </div>
  )
}
```

Implement `Surface`, `PageHeader`, and `StatePanel` with the same rules:

- `Surface`: `tone="plain" | "soft" | "elevated"` and semantic `<section>`.
- `PageHeader`: optional back button with `ArrowLeft`, title, subtitle, trailing `ReactNode`.
- `StatePanel`: `tone="loading" | "empty" | "error"`, visible title/message, optional action.

- [ ] **Step 4: Run the primitive tests and build**

Run:

```bash
npm test -- src/components/ui/uiPrimitives.test.tsx
npm run build
```

Expected: PASS.

- [ ] **Step 5: Commit the primitives**

```bash
git add src/components/ui
git commit -m "feat: add shared bright adventure ui primitives"
```

## Task 4: Implement the standard and focus shells with four-item navigation

**Files:**
- Modify: `src/App.tsx`
- Modify: `src/components/layout/AppLayout.tsx`
- Modify: `src/components/layout/BottomNav.tsx`
- Create: `src/components/layout/AppShell.test.tsx`
- Create: `src/pages/RewardsPage.tsx`

- [ ] **Step 1: Write failing shell tests**

Create `src/components/layout/AppShell.test.tsx`:

```tsx
import { render, screen } from '@testing-library/react'
import { MemoryRouter, Route, Routes } from 'react-router-dom'
import { describe, expect, it, vi } from 'vitest'
import { BottomNav } from './BottomNav'

vi.mock('../auth/GuestGate', () => ({ GuestGate: ({ children }: { children: React.ReactNode }) => children }))

describe('BottomNav', () => {
  it('renders exactly four labeled destinations', () => {
    render(<MemoryRouter initialEntries={['/']}><BottomNav /></MemoryRouter>)
    expect(screen.getAllByRole('link')).toHaveLength(4)
    expect(screen.getByRole('link', { name: /冒险/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /伙伴/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /奖励/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /营地/ })).toBeVisible()
  })

  it('marks rewards active for a child reward route', () => {
    render(<MemoryRouter initialEntries={['/leaderboard']}><BottomNav /></MemoryRouter>)
    expect(screen.getByRole('link', { name: /奖励/ })).toHaveAttribute('aria-current', 'page')
  })
})
```

- [ ] **Step 2: Run the shell test to verify it fails**

Run:

```bash
npm test -- src/components/layout/AppShell.test.tsx
```

Expected: FAIL because the existing nav has six links and exact-path active behavior.

- [ ] **Step 3: Implement the four-item nav and shell selection**

Use `Map`, `PawPrint`, `Trophy`, and `Shield` from `lucide-react`.

`BottomNav` destinations:

```tsx
const destinations = [
  { to: '/', section: 'adventure', label: '冒险', icon: Map },
  { to: '/companion', section: 'companion', label: '伙伴', icon: PawPrint },
  { to: '/rewards', section: 'rewards', label: '奖励', icon: Trophy },
  { to: '/profile', section: 'camp', label: '营地', icon: Shield },
] as const
```

Derive the active section using `getRouteMeta(location.pathname + location.search)`. Put `aria-current="page"` on the active link. Use `pb-[max(.65rem,env(safe-area-inset-bottom))]` and reserve the same height in the standard content container.

In `AppLayout`, calculate `meta.layout`. Render `BottomNav` only for `standard`. Use a responsive shell:

```tsx
<div className="mx-auto flex min-h-dvh w-full max-w-6xl flex-col bg-adventure-bg lg:border-x lg:border-adventure-border">
  <PhoneBindBanner />
  <main ref={mainRef} id="main-content" tabIndex={-1} className={meta.layout === 'standard' ? 'flex-1 overflow-y-auto pb-24 lg:pb-8' : 'flex-1 overflow-y-auto'}>
    <Outlet />
  </main>
  {meta.layout === 'standard' && <BottomNav />}
  <EvolutionCelebration />
</div>
```

- [ ] **Step 4: Add the reward hub route**

Add to `src/App.tsx`:

```tsx
import RewardsPage from './pages/RewardsPage'
// ...
<Route path="/rewards" element={<RewardsPage />} />
```

Create `RewardsPage.tsx` with `PageHeader`, two large `Surface` links to `/wish-shop` and `/leaderboard`, and live wish balance from `useWishStore`. Do not fetch new data beyond the existing `fetchWishData`.

- [ ] **Step 5: Run shell tests, all tests, and build**

Run:

```bash
npm test -- src/components/layout/AppShell.test.tsx src/lib/navigation.test.ts
npm test
npm run build
```

Expected: PASS.

- [ ] **Step 6: Commit the app shell**

```bash
git add src/App.tsx src/components/layout src/pages/RewardsPage.tsx
git commit -m "feat: add four-destination adventure app shell"
```

## Task 5: Rebuild the home page as the daily knowledge map

**Files:**
- Modify: `src/pages/HomePage.tsx`
- Modify: `src/components/quiz/DailyTaskCard.tsx`
- Modify: `src/components/companion/CompanionDisplay.tsx`
- Create: `src/components/home/AdventureMap.tsx`
- Create: `src/components/home/AdventureMap.test.tsx`

- [ ] **Step 1: Write the failing map test**

Create `src/components/home/AdventureMap.test.tsx`:

```tsx
import { render, screen } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import { describe, expect, it } from 'vitest'
import { AdventureMap } from './AdventureMap'

describe('AdventureMap', () => {
  it('shows all three subject missions and their progress', () => {
    render(
      <MemoryRouter>
        <AdventureMap
          progress={{ chinese: 4, math: 0, english: 10 }}
          challengeDone={false}
          mistakes={2}
        />
      </MemoryRouter>,
    )
    expect(screen.getByRole('link', { name: /语文森林.*4.*10/ })).toHaveAttribute('href', '/quiz?subject=chinese')
    expect(screen.getByRole('link', { name: /数学山谷.*0.*10/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /英语海湾.*10.*10/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /错题修炼.*2/ })).toBeVisible()
  })
})
```

- [ ] **Step 2: Run the test to verify it fails**

Run:

```bash
npm test -- src/components/home/AdventureMap.test.tsx
```

Expected: FAIL because `AdventureMap` does not exist.

- [ ] **Step 3: Implement the map component**

`AdventureMap` must:

- Render three semantic links with subject-specific destinations.
- Reuse `DAILY_QUESTIONS_PER_SUBJECT`.
- Use `ProgressBar` for each subject.
- Show the challenge and mistake branches below the main route.
- Use CSS background shapes and existing companion assets only; do not add a canvas or new map engine.
- Mark completed nodes with icon plus text, not green alone.

- [ ] **Step 4: Recompose `HomePage` without changing its data effects**

Keep the existing `useEffect` calls, completion synchronization, and derived wish/mistake values. Replace only the returned JSX:

```tsx
return (
  <div className="page-stack mx-auto w-full max-w-3xl">
    <PageHeader
      eyebrow="TODAY'S ADVENTURE"
      title={profile ? `${profile.nickname}，今天去哪里冒险？` : '今天去哪里冒险？'}
      subtitle="完成三科主线，和伙伴一起打开今日宝箱"
      trailing={<PointsBadge value={balance} onClick={() => navigate('/shop')} />}
    />
    <CompanionDisplay compact />
    <AdventureMap progress={quizCounts} challengeDone={challengeDone} mistakes={needsCorrectionCount} />
    <WishProgressCard available={wishBalance.available} frozen={wishBalance.frozen} text={wishProgressText} />
  </div>
)
```

Extract small presentational helpers into `src/components/home/` when they exceed roughly 50 lines. Do not move store calls out of `HomePage` in this task.

- [ ] **Step 5: Run targeted and full verification**

Run:

```bash
npm test -- src/components/home/AdventureMap.test.tsx src/lib/quizUtils.test.ts
npm test
npm run build
```

Expected: PASS.

- [ ] **Step 6: Commit the home map**

```bash
git add src/pages/HomePage.tsx src/components/home src/components/quiz/DailyTaskCard.tsx src/components/companion/CompanionDisplay.tsx
git commit -m "feat: rebuild home as daily adventure map"
```

## Task 6: Migrate quiz, challenge, and PK answering into the focus template

**Files:**
- Modify: `src/pages/QuizPage.tsx`
- Modify: `src/pages/ChallengePage.tsx`
- Modify: `src/pages/PkQuizPage.tsx`
- Modify: `src/components/quiz/QuizCard.tsx`
- Modify: `src/components/quiz/QuizProgressBar.tsx`
- Modify: `src/components/quiz/ExplanationPanel.tsx`
- Modify: `src/components/quiz/FillInCard.tsx`
- Modify: `src/components/quiz/MatchCard.tsx`
- Modify: `src/components/quiz/GridPuzzleCard.tsx`
- Create: `src/components/quiz/FocusQuizHeader.tsx`
- Create: `src/components/quiz/FocusQuizHeader.test.tsx`

- [ ] **Step 1: Write the failing focus header test**

Test that `FocusQuizHeader` exposes exit, current/total progress, and a progressbar:

```tsx
render(<FocusQuizHeader title="数学山谷" current={4} total={10} onExit={() => undefined} />)
expect(screen.getByRole('button', { name: '退出数学山谷' })).toBeVisible()
expect(screen.getByText('第 4 / 10 题')).toBeVisible()
expect(screen.getByRole('progressbar')).toHaveAttribute('aria-valuenow', '4')
```

- [ ] **Step 2: Run the test and confirm failure**

Run:

```bash
npm test -- src/components/quiz/FocusQuizHeader.test.tsx
```

Expected: FAIL because the component does not exist.

- [ ] **Step 3: Implement the focus header**

Use `PageHeader`, `ProgressBar`, and `X` from Lucide. The exit button must be at least 44px and its accessible name must include the flow title.

- [ ] **Step 4: Update the three answering pages**

For each page:

- Preserve the existing session start, completion redirect, answer, and database behavior.
- Replace bespoke headers with `FocusQuizHeader`.
- Use a centered `max-w-2xl` question column.
- Keep one visible primary action at a time.
- Use `StatePanel` for missing session and load failures.
- Avoid animation around the question text.

- [ ] **Step 5: Update all question cards**

Apply shared answer styling:

```ts
const answerClass =
  'min-h-14 w-full rounded-[16px] border-2 border-adventure-border bg-white px-4 py-3 text-left font-bold transition hover:border-adventure-primary/40 focus-visible:border-adventure-primary disabled:cursor-not-allowed'
```

Correct and incorrect states must include `CheckCircle2` or `XCircle` plus a text label. Preserve all existing matching, fill-in, and grid answer contracts.

- [ ] **Step 6: Run quiz regression tests and build**

Run:

```bash
npm test -- src/components/quiz/FocusQuizHeader.test.tsx src/stores/quizStore.test.ts src/lib/quizUtils.test.ts src/lib/questionContent.test.ts
npm test
npm run build
```

Expected: PASS.

- [ ] **Step 7: Commit the focus flows**

```bash
git add src/pages/QuizPage.tsx src/pages/ChallengePage.tsx src/pages/PkQuizPage.tsx src/components/quiz
git commit -m "feat: unify quiz flows with focus layout"
```

## Task 7: Unify all result and settlement pages

**Files:**
- Modify: `src/pages/QuizResultPage.tsx`
- Modify: `src/pages/ChallengeResultPage.tsx`
- Modify: `src/pages/PkResultPage.tsx`
- Modify: `src/components/quiz/QuizResultPanel.tsx`
- Create: `src/components/results/ResultHero.tsx`
- Create: `src/components/results/ResultHero.test.tsx`

- [ ] **Step 1: Write failing result hero tests**

Cover score, reward visibility, pending settlement, and recovery:

```tsx
render(<ResultHero score={8} total={10} status="settling" />)
expect(screen.getByText('正在结算奖励')).toBeVisible()
expect(screen.queryByText(/已获得/)).not.toBeInTheDocument()
```

```tsx
render(<ResultHero score={8} total={10} status="error" onRetry={() => undefined} />)
expect(screen.getByRole('button', { name: '重新结算' })).toBeVisible()
```

- [ ] **Step 2: Run the tests and confirm failure**

Run:

```bash
npm test -- src/components/results/ResultHero.test.tsx
```

Expected: FAIL because `ResultHero` does not exist.

- [ ] **Step 3: Implement the shared result presentation**

Create a `ResultHero` contract with:

```ts
type SettlementStatus = 'settling' | 'success' | 'error'
interface ResultHeroProps {
  score: number
  total: number
  status: SettlementStatus
  points?: number
  experience?: number
  onRetry?: () => void
}
```

Only render earned reward copy when status is `success`.

- [ ] **Step 4: Migrate all result pages**

Preserve every existing settlement effect and route guard. Replace presentation with:

- ResultHero.
- Three compact metric surfaces.
- A recovery section for settlement errors.
- A single primary next step and one secondary action.
- No bottom navigation.

- [ ] **Step 5: Run result and store regression tests**

Run:

```bash
npm test -- src/components/results/ResultHero.test.tsx src/lib/quizUtils.test.ts src/lib/pkUtils.test.ts src/stores/checkinStore.test.ts
npm test
npm run build
```

Expected: PASS.

- [ ] **Step 6: Commit the result template**

```bash
git add src/components/results src/components/quiz/QuizResultPanel.tsx src/pages/QuizResultPage.tsx src/pages/ChallengeResultPage.tsx src/pages/PkResultPage.tsx
git commit -m "feat: unify result and settlement screens"
```

## Task 8: Migrate the companion and wardrobe domain

**Files:**
- Modify: `src/pages/CompanionPage.tsx`
- Modify: `src/pages/CompanionSelectPage.tsx`
- Modify: `src/pages/ShopPage.tsx`
- Modify: `src/components/companion/CompanionDisplay.tsx`
- Modify: `src/components/companion/CompanionStats.tsx`
- Modify: `src/components/companion/CompanionSelect.tsx`
- Modify: `src/components/companion/CompanionNameInput.tsx`
- Modify: `src/components/companion/SpeechBubble.tsx`
- Modify: `src/components/companion/SwitchConfirmDialog.tsx`
- Modify: `src/components/shop/ShopItemCard.tsx`

- [ ] **Step 1: Add a failing companion presentation contract test**

Create `src/components/companion/CompanionStats.test.tsx` and assert that hunger, mood, and experience each render as labeled progressbars. Expected initial result: FAIL because the current bars do not expose all labels.

- [ ] **Step 2: Upgrade companion shared components**

- Use `Surface`, `ProgressBar`, and semantic status colors.
- Keep the existing companion image/animation pipeline intact.
- Turn the companion page into an area hub: hero, stats, equipped items, switch collection, wardrobe CTA.
- Replace operational emoji with Lucide icons; companion art and speech reactions may remain illustrated.

- [ ] **Step 3: Migrate selection and naming**

Use the focus shell, a visible two-step indicator, one selected state with icon and text, a persistent label for the name input, and inline validation below the field.

- [ ] **Step 4: Migrate the shop**

Keep `buyOutfit`, `equipOutfit`, weapon purchase, balance checks, and store calls unchanged. Recompose the page into:

- PageHeader with star balance.
- Current companion preview.
- Segmented wardrobe categories.
- Responsive item grid.
- `StatePanel` for missing companion.

- [ ] **Step 5: Verify companion behavior**

Run:

```bash
npm test -- src/components/companion/CompanionStats.test.tsx
npm test
npm run build
```

Manual checks: select, name, switch, buy outfit, equip outfit, weapon interaction, insufficient balance.

- [ ] **Step 6: Commit the companion domain**

```bash
git add src/pages/CompanionPage.tsx src/pages/CompanionSelectPage.tsx src/pages/ShopPage.tsx src/components/companion src/components/shop
git commit -m "feat: migrate companion and wardrobe ui"
```

## Task 9: Migrate rewards, wishes, and leaderboard

**Files:**
- Modify: `src/pages/RewardsPage.tsx`
- Modify: `src/pages/WishShopPage.tsx`
- Modify: `src/pages/LeaderboardPage.tsx`
- Modify: `src/components/wish/WishBalanceBadge.tsx`
- Modify: `src/components/wish/WishRedemptionStatus.tsx`
- Modify: `src/components/wish/WishRewardCard.tsx`
- Modify: `src/lib/wishDialogLayout.ts`
- Modify: `src/lib/wishDialogLayout.test.ts`

- [ ] **Step 1: Update the failing safe-area dialog test first**

Change the expected dialog contract to include both viewport and bottom-nav safety:

```ts
expect(WISH_DIALOG_PANEL_CLASS).toContain('max-h-[calc(100dvh-2rem)]')
expect(WISH_DIALOG_PANEL_CLASS).toContain('pb-[calc(1.25rem+env(safe-area-inset-bottom))]')
expect(WISH_DIALOG_BACKDROP_CLASS).toContain('z-[70]')
```

Run:

```bash
npm test -- src/lib/wishDialogLayout.test.ts
```

Expected: FAIL until `WISH_DIALOG_BACKDROP_CLASS` and updated stacking are implemented.

- [ ] **Step 2: Implement the reward hub**

Show:

- Wish coin available/frozen balance.
- Active wish state.
- Link to wish shop.
- Weekly and total rank preview or a clear leaderboard entry.
- Reward diary preview when already available from `wishStore`.

Do not add new database queries to the hub.

- [ ] **Step 3: Migrate wish shop and wish components**

Preserve all submit, balance, dialog, and redemption behavior. Use:

- PageHeader and balance badge.
- Segmented reward-cost groups.
- Shared `Surface` reward cards.
- `StatePanel` for loading, error, and empty data.
- Accessible modal title, close button, form label, and busy state.

- [ ] **Step 4: Migrate leaderboard**

Keep the two existing RPC calls and current weekly/total semantics unchanged. Restyle the top three, list rows, current-user marker, loading, and empty/error state. Do not present an RPC failure as a true empty leaderboard.

- [ ] **Step 5: Run wish regression tests**

Run:

```bash
npm test -- src/lib/wishDialogLayout.test.ts src/lib/wishRewards.test.ts src/stores/wishStore.test.ts
npm test
npm run build
```

Expected: PASS.

- [ ] **Step 6: Commit the reward domain**

```bash
git add src/pages/RewardsPage.tsx src/pages/WishShopPage.tsx src/pages/LeaderboardPage.tsx src/components/wish src/lib/wishDialogLayout.ts src/lib/wishDialogLayout.test.ts
git commit -m "feat: migrate rewards wishes and leaderboard ui"
```

## Task 10: Migrate camp, check-in, and parent surfaces

**Files:**
- Modify: `src/pages/ProfilePage.tsx`
- Modify: `src/pages/CheckInPage.tsx`
- Modify: `src/pages/ParentReportPage.tsx`
- Modify: `src/pages/ParentWishPage.tsx`
- Modify: `src/components/checkin/StreakBadge.tsx`

- [ ] **Step 1: Add a failing parent status mapping test**

Extract presentational queue counts to `src/lib/parentWishView.ts` with a test that maps pending review, pending fulfillment, and recent diary counts. The test must use existing `WishRedemption` status values and fail before the helper exists.

- [ ] **Step 2: Rebuild the camp hub**

Profile becomes the camp center:

- Profile identity and grade.
- Star and streak summary.
- Links to check-in, parent report, parent wishes, and companion switch.
- Phone binding status stays visible but secondary.

Keep profile update and navigation behavior unchanged.

- [ ] **Step 3: Rebuild check-in and parent report**

Use the data template with:

- PageHeader.
- Metric surfaces.
- Accessible progress or bars with text summaries.
- Responsive single/two-column layout.
- Explicit loading, empty, and error states.

Do not change date calculations or report aggregation.

- [ ] **Step 4: Recompose the large parent wish page**

Split presentation-only sections out of the 452-line page:

- `src/components/wish/ParentReviewQueue.tsx`
- `src/components/wish/ParentFulfillmentQueue.tsx`
- `src/components/wish/RewardEditor.tsx`
- `src/components/wish/RewardDiaryList.tsx`

Keep all existing data fetch and action handlers in `ParentWishPage`. Pass typed props into the extracted components.

- [ ] **Step 5: Run parent and check-in regressions**

Run:

```bash
npm test -- src/lib/parentWishView.test.ts src/stores/checkinStore.test.ts src/stores/mistakeStore.test.ts src/stores/wishStore.test.ts
npm test
npm run build
```

Expected: PASS.

- [ ] **Step 6: Commit camp and parent pages**

```bash
git add src/pages/ProfilePage.tsx src/pages/CheckInPage.tsx src/pages/ParentReportPage.tsx src/pages/ParentWishPage.tsx src/components/checkin src/components/wish src/lib/parentWishView.ts src/lib/parentWishView.test.ts
git commit -m "feat: migrate camp and parent ui"
```

## Task 11: Migrate PK and mistake-review pages

**Files:**
- Modify: `src/pages/PkPage.tsx`
- Modify: `src/pages/MistakesPage.tsx`
- Modify: `src/pages/MistakeDetailPage.tsx`

- [ ] **Step 1: Preserve behavior with existing pure tests**

Run before editing:

```bash
npm test -- src/lib/pkUtils.test.ts src/lib/mistakeStatus.test.ts
```

Expected: PASS. Save the output as the baseline for this task.

- [ ] **Step 2: Migrate PK lobby**

Use the list/management template:

- PageHeader.
- Create-challenge surface with subject choices.
- Join-challenge form with persistent label.
- Inline validation and recoverable network error.
- Shared Button busy states.

Do not change challenge code creation, insertion, joining, or navigation.

- [ ] **Step 3: Migrate mistakes list and detail**

- List: status filters, counts, accessible status badge, empty action.
- Detail: focus shell, question, large answer targets, explicit correct/incorrect status, explanation, next/back action.
- Preserve `fetchMistakes`, `submitReview`, and all status transitions.

- [ ] **Step 4: Run PK and mistake regressions**

Run:

```bash
npm test -- src/lib/pkUtils.test.ts src/lib/mistakeStatus.test.ts src/stores/mistakeStore.test.ts
npm test
npm run build
```

Expected: PASS with identical pure behavior results.

- [ ] **Step 5: Commit PK and mistake pages**

```bash
git add src/pages/PkPage.tsx src/pages/MistakesPage.tsx src/pages/MistakeDetailPage.tsx
git commit -m "feat: migrate pk and mistake review ui"
```

## Task 12: Migrate authentication, global errors, banners, and overlays

**Files:**
- Modify: `src/components/auth/GuestGate.tsx`
- Modify: `src/components/auth/GradeSelect.tsx`
- Modify: `src/components/auth/PhoneBindBanner.tsx`
- Modify: `src/components/common/ErrorBoundary.tsx`
- Modify: `src/components/common/PointsFlyAnimation.tsx`
- Modify: `src/components/companion/EvolutionCelebration.tsx`
- Modify: `src/components/companion/SwitchConfirmDialog.tsx`

- [ ] **Step 1: Add focused accessibility tests**

Create `src/components/common/overlays.test.tsx` and cover:

- Grade controls have labels and 44px targets.
- Switch confirmation has `role="dialog"` and an accessible title.
- Error boundary recovery button is keyboard reachable.
- Phone banner action has descriptive text.

- [ ] **Step 2: Run tests and confirm failures**

Run:

```bash
npm test -- src/components/common/overlays.test.tsx
```

Expected: at least the dialog semantics fail.

- [ ] **Step 3: Apply shared visual and accessibility rules**

- Authentication loading uses a calm full-screen `StatePanel`.
- Grade selection uses the same focus-friendly choice card.
- Phone binding banner becomes compact and does not dominate the home header.
- Error boundary uses the standard error recovery state.
- Dialogs use `z-[70]`, safe-area padding, visible close/cancel, and `aria-modal`.
- Celebration overlays respect reduced motion and never block dismissal.

- [ ] **Step 4: Run overlay and auth tests**

Run:

```bash
npm test -- src/components/common/overlays.test.tsx src/stores/authStore.test.ts
npm test
npm run build
```

Expected: PASS.

- [ ] **Step 5: Commit global surfaces**

```bash
git add src/components/auth src/components/common src/components/companion/EvolutionCelebration.tsx src/components/companion/SwitchConfirmDialog.tsx
git commit -m "feat: unify auth errors and overlays"
```

## Task 13: Complete responsive, accessibility, and browser route regression

**Files:**
- Modify: files discovered during the route sweep only when they violate the approved design.
- Create: `docs/qa/2026-07-29-ui-route-regression.md`

- [ ] **Step 1: Run automated checks before browser QA**

Run:

```bash
npm test
npm run test:questions
npm run questions:validate
npm run build
```

Expected: all commands PASS.

- [ ] **Step 2: Start the production preview**

Run:

```bash
npm run preview -- --host 127.0.0.1
```

Expected: Vite prints a local preview URL.

- [ ] **Step 3: Sweep every route at three widths**

Use 375×812, 768×1024, and 1024×768. Record each route:

```text
/
/companion
/companion/select
/quiz?subject=chinese
/quiz/result?subject=chinese
/challenge
/challenge/result
/shop
/rewards
/wish-shop
/checkin
/profile
/leaderboard
/pk
/pk/quiz
/pk/result
/mistakes
/mistakes/:id
/parent-report
/parent-wishes
```

For data-dependent routes that redirect without fixtures, verify the redirect and then inspect the reachable empty or error state.

- [ ] **Step 4: Verify the critical journeys**

Check and record:

- Three-subject practice and settlement.
- Challenge and result.
- Mistake review.
- Companion selection, switching, outfit purchase/equip.
- Wish submission and parent status.
- Leaderboard weekly/total switch.
- PK creation/join/answer/result.
- Profile, check-in, parent report, parent wishes.

- [ ] **Step 5: Verify accessibility and motion**

Check:

- Tab order and visible focus.
- 44px minimum touch targets.
- Icon button accessible names.
- Text at 200% zoom.
- No state communicated by color only.
- Reduced motion enabled.
- Bottom navigation and dialogs are not hidden by safe areas.

- [ ] **Step 6: Fix each discovered UI regression with a focused test**

For each issue, add the smallest failing test or pure layout assertion, run it to confirm failure, implement the fix, then run the focused test and full build. Do not bundle unrelated fixes.

- [ ] **Step 7: Write the QA record**

Create `docs/qa/2026-07-29-ui-route-regression.md` with:

- Commit tested.
- Commands and results.
- Viewports.
- Route matrix.
- Journey results.
- Known non-blocking issues.
- Confirmation that no secrets or real environment values are included.

- [ ] **Step 8: Commit QA fixes and record**

```bash
git add src docs/qa/2026-07-29-ui-route-regression.md
git commit -m "test: complete ui route regression"
```

## Task 14: Update project knowledge and complete final verification

**Files:**
- Modify: `docs/ai/architecture.md`
- Modify: `docs/ai/repository-map.md`
- Modify: `docs/ai/domains/quiz-question-bank.md`
- Modify: `docs/ai/domains/companion-shop.md`
- Modify: `docs/ai/domains/wish-parent.md`
- Modify: `docs/ai/domains/leaderboard-pk.md`
- Create: `docs/ai/iterations/2026-07-29-bright-adventure-ui-framework.md`
- Modify: `docs/ai/iterations/README.md`

- [ ] **Step 1: Update current-state documentation**

Document only implemented facts:

- Four-section navigation and `/rewards`.
- Standard versus focus shell.
- Six page templates.
- Shared semantic tokens and UI primitives.
- Responsive behavior and safe-area rules.

Do not copy the implementation plan into current-state docs.

- [ ] **Step 2: Add the iteration record**

The record must include:

- User-facing behavior changes.
- Exact implementation boundaries.
- Tests and browser journeys actually run.
- Any existing business correctness risks observed but not modified.
- Commit references.

- [ ] **Step 3: Run final verification**

Run:

```bash
npm test
npm run test:questions
npm run questions:validate
npm run build
npm run docs:check
git diff --check
git status --short
```

Expected:

- All test, validation, build, and docs commands PASS.
- `git diff --check` prints nothing.
- `git status --short` lists only the documentation changes for this task before commit.

- [ ] **Step 4: Review for secrets and unrelated edits**

Run:

```bash
git diff --cached --name-only
git diff --cached
```

Confirm the diff contains no `.env` values, tokens, user identifiers, generated credentials, or unrelated user work.

- [ ] **Step 5: Commit project knowledge**

```bash
git add docs/ai
git commit -m "docs: record bright adventure ui framework"
```

- [ ] **Step 6: Run the clean-tree completion check**

Run:

```bash
git status --short
git log -14 --oneline
```

Expected: clean working tree and a readable sequence of focused UI commits.
