# Companion and Wish Resilience Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Restore all companion artwork and keep the wish catalog safely browsable when remote wish data cannot be synchronized.

**Architecture:** Put companion variant and asset-path decisions in a pure helper module, then make the canvas renderer draw only decoded images and expose a static `Body.png` fallback. Keep wish fetch failures explicit at the page boundary, but render the default catalog in read-only mode so non-UUID fallback rewards can never reach the redemption RPC.

**Tech Stack:** React 19, TypeScript, Zustand, Vitest, Testing Library, jsdom, Vite, Tailwind CSS.

---

### Task 1: Normalize companion variants and thumbnail paths

**Files:**
- Create: `src/lib/companionAssets.ts`
- Create: `src/lib/companionAssets.test.ts`
- Read: `src/data/companionTypes.ts`

- [ ] **Step 1: Write the failing pure-function tests**

Create `src/lib/companionAssets.test.ts`:

```ts
import { describe, expect, it } from 'vitest'
import {
  DEFAULT_COMPANION_VARIANT,
  getCompanionThumbnailPath,
  resolveCompanionVariant,
} from './companionAssets'

describe('companionAssets', () => {
  it('keeps an equipped outfit that belongs to the current companion', () => {
    expect(resolveCompanionVariant('ranger', 'Forest_Ranger_2')).toBe('Forest_Ranger_2')
  })

  it('falls back to the current companion base variant for a stale outfit', () => {
    expect(resolveCompanionVariant('warrior', 'ranger')).toBe('Skeleton_Warrior_1')
  })

  it('falls back to the ranger when the companion type is unknown', () => {
    expect(resolveCompanionVariant('legacy-type', 'missing')).toBe(DEFAULT_COMPANION_VARIANT)
  })

  it('uses the stable body image for thumbnails', () => {
    expect(getCompanionThumbnailPath('Valkyrie_1'))
      .toBe('/assets/companions/Valkyrie_1/Body.png')
  })
})
```

- [ ] **Step 2: Run the test and verify RED**

Run:

```bash
npm test -- src/lib/companionAssets.test.ts
```

Expected: FAIL because `./companionAssets` does not exist.

- [ ] **Step 3: Implement the asset helpers**

Create `src/lib/companionAssets.ts`:

```ts
import { COMPANION_TYPES } from '../data/companionTypes'

export const DEFAULT_COMPANION_VARIANT = 'Forest_Ranger_1'

export function resolveCompanionVariant(
  companionType: string,
  equippedOutfit: string | null | undefined,
): string {
  const definition = COMPANION_TYPES.find(type => type.id === companionType)
  if (!definition) return DEFAULT_COMPANION_VARIANT

  return equippedOutfit && definition.outfitVariants.includes(equippedOutfit)
    ? equippedOutfit
    : definition.baseVariant
}

export function getCompanionThumbnailPath(variant: string): string {
  return `/assets/companions/${variant}/Body.png`
}
```

- [ ] **Step 4: Run the focused test and verify GREEN**

Run:

```bash
npm test -- src/lib/companionAssets.test.ts
```

Expected: 4 tests pass.

- [ ] **Step 5: Commit the helper boundary**

```bash
git add src/lib/companionAssets.ts src/lib/companionAssets.test.ts
git commit -m "fix: normalize companion asset variants"
```

### Task 2: Make the canvas renderer resilient to unloaded and broken frames

**Files:**
- Modify: `src/components/companion/ChibiComposer.tsx:1-124`
- Create: `src/components/companion/ChibiComposer.test.tsx`
- Modify: `src/components/companion/InteractiveCompanion.tsx:49-75`

- [ ] **Step 1: Write the failing renderer tests**

Create `src/components/companion/ChibiComposer.test.tsx` with a controllable image stub:

```tsx
import { act, render, screen } from '@testing-library/react'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'
import { ChibiComposer } from './ChibiComposer'

class BrokenImage {
  complete = true
  naturalWidth = 0
  naturalHeight = 0
  src = ''
}

describe('ChibiComposer', () => {
  const drawImage = vi.fn()
  const clearRect = vi.fn()
  let frameCallback: FrameRequestCallback | undefined

  beforeEach(() => {
    vi.useFakeTimers()
    vi.stubGlobal('Image', BrokenImage)
    vi.stubGlobal('requestAnimationFrame', vi.fn((callback: FrameRequestCallback) => {
      frameCallback = callback
      return 1
    }))
    vi.stubGlobal('cancelAnimationFrame', vi.fn())
    vi.spyOn(HTMLCanvasElement.prototype, 'getContext').mockReturnValue({
      clearRect,
      drawImage,
    } as unknown as CanvasRenderingContext2D)
  })

  afterEach(() => {
    vi.useRealTimers()
    vi.unstubAllGlobals()
    vi.restoreAllMocks()
    drawImage.mockClear()
    clearRect.mockClear()
    frameCallback = undefined
  })

  it('shows a static body fallback with useful alternative text', () => {
    render(<ChibiComposer variant="Forest_Ranger_1" />)

    expect(screen.getByRole('img', { name: '伙伴静态形象' }))
      .toHaveAttribute('src', '/assets/companions/Forest_Ranger_1/Body.png')
  })

  it('does not draw broken animation images to the canvas', () => {
    render(<ChibiComposer variant="Forest_Ranger_1" />)

    act(() => {
      vi.advanceTimersByTime(200)
      frameCallback?.(240)
    })

    expect(drawImage).not.toHaveBeenCalled()
  })
})
```

- [ ] **Step 2: Run the renderer test and verify RED**

Run:

```bash
npm test -- src/components/companion/ChibiComposer.test.tsx
```

Expected: the fallback image assertion fails and the current renderer attempts `drawImage`.

- [ ] **Step 3: Implement drawable-frame selection and static fallback**

In `ChibiComposer.tsx`:

- Import `getCompanionThumbnailPath`.
- Add this helper near `getFramePath`:

```ts
function isDrawableImage(image: HTMLImageElement | undefined): image is HTMLImageElement {
  return Boolean(image?.complete && image.naturalWidth > 0 && image.naturalHeight > 0)
}
```

- Replace the unconditional frame drawing in `draw()` with:

```ts
const requestedImage = imgs[frame % imgs.length]
const idleImage = images.idle.find(isDrawableImage)
const drawableImage = isDrawableImage(requestedImage) ? requestedImage : idleImage

ctx.clearRect(0, 0, s, s)
if (drawableImage) {
  ctx.drawImage(drawableImage, 0, 0, s, s)
}
frame = (frame + 1) % total
```

- Render the fallback underneath the canvas:

```tsx
<img
  src={getCompanionThumbnailPath(variant)}
  alt="伙伴静态形象"
  className="absolute inset-0 h-full w-full object-contain"
/>
<canvas ref={canvasRef} className="relative h-full w-full" aria-hidden="true" />
```

The canvas remains above the image; transparent pixels show the fallback until a frame is drawable.

- In `InteractiveCompanion.tsx`, replace direct `equipped_outfit` selection with:

```ts
const variant = resolveCompanionVariant(
  companion.companion_type,
  companion.equipped_outfit,
)
```

and import `resolveCompanionVariant` from `../../lib/companionAssets`.

- [ ] **Step 4: Run renderer and helper tests**

Run:

```bash
npm test -- src/components/companion/ChibiComposer.test.tsx src/lib/companionAssets.test.ts
```

Expected: 6 tests pass and `drawImage` is never called with broken images.

- [ ] **Step 5: Commit the renderer fix**

```bash
git add src/components/companion/ChibiComposer.tsx src/components/companion/ChibiComposer.test.tsx src/components/companion/InteractiveCompanion.tsx
git commit -m "fix: add resilient companion animation fallback"
```

### Task 3: Replace fragile collection preview frames

**Files:**
- Create: `src/components/companion/CompanionThumbnail.tsx`
- Modify: `src/pages/CompanionPage.tsx:142-200`
- Modify: `src/components/companion/CompanionSelect.tsx:1-32`
- Create: `src/components/companion/CompanionPreview.test.tsx`

- [ ] **Step 1: Write the failing preview test**

Create `src/components/companion/CompanionPreview.test.tsx`:

```tsx
import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { CompanionThumbnail } from './CompanionThumbnail'

describe('companion previews', () => {
  it('renders the stable body image for a companion preview', () => {
    render(<CompanionThumbnail variant="Valkyrie_1" name="女武神" />)

    expect(screen.getByRole('img', { name: '女武神' }))
      .toHaveAttribute('src', '/assets/companions/Valkyrie_1/Body.png')
  })
})
```

- [ ] **Step 2: Run the preview test and verify RED**

Run:

```bash
npm test -- src/components/companion/CompanionPreview.test.tsx
```

Expected: FAIL because `CompanionThumbnail` does not exist.

- [ ] **Step 3: Apply the same stable path to collection previews**

Create `src/components/companion/CompanionThumbnail.tsx`:

```tsx
import { getCompanionThumbnailPath } from '../../lib/companionAssets'

interface CompanionThumbnailProps {
  variant: string
  name: string
  className?: string
}

export function CompanionThumbnail({
  variant,
  name,
  className = 'h-full w-full object-contain',
}: CompanionThumbnailProps) {
  return (
    <img
      src={getCompanionThumbnailPath(variant)}
      alt={name}
      className={className}
    />
  )
}
```

Import `CompanionThumbnail` into `CompanionPage.tsx` and `CompanionSelect.tsx`.

Replace both collection `<img>` elements with:

```tsx
<CompanionThumbnail
  variant={type.baseVariant}
  name={type.name}
  className="h-full w-full object-contain"
/>
```

Replace the selection image with:

```tsx
<CompanionThumbnail
  variant={c.baseVariant}
  name={c.name}
  className="mx-auto h-24 w-24 object-contain"
/>
```

- [ ] **Step 4: Verify previews and remove fragile paths**

Run:

```bash
npm test -- src/components/companion/CompanionPreview.test.tsx
rg -n "Idle_Blinking_000" src/pages/CompanionPage.tsx
```

Expected: the test passes and `rg` returns no matches.

- [ ] **Step 5: Commit the preview fix**

```bash
git add src/pages/CompanionPage.tsx src/components/companion/CompanionSelect.tsx src/components/companion/CompanionThumbnail.tsx src/components/companion/CompanionPreview.test.tsx
git commit -m "fix: use stable companion preview artwork"
```

### Task 4: Render a read-only wish catalog when synchronization fails

**Files:**
- Modify: `src/components/wish/WishRewardCard.tsx:7-69`
- Modify: `src/pages/WishShopPage.tsx:23-181`
- Create: `src/pages/WishShopPage.test.tsx`

- [ ] **Step 1: Write the failing wish failure-state tests**

Create `src/pages/WishShopPage.test.tsx`. Mock the store with `fetchWishData` rejecting, wrap the page in `MemoryRouter`, and assert the user-facing contract:

```tsx
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import WishShopPage from './WishShopPage'

const fetchWishData = vi.fn()
const submitRedemption = vi.fn()

vi.mock('../stores/wishStore', () => ({
  useWishStore: () => ({
      balance: { totalEarned: 0, frozen: 0, spent: 0, available: 0 },
      rewards: [],
      redemptions: [],
      diaryEntries: [],
      isLoading: false,
      message: null,
      fetchWishData,
      submitRedemption,
      clearMessage: vi.fn(),
  }),
}))

describe('WishShopPage synchronization fallback', () => {
  beforeEach(() => {
    vi.clearAllMocks()
    fetchWishData.mockRejectedValue(new Error('network unavailable'))
  })

  it('keeps the default catalog visible as read-only after synchronization fails', async () => {
    render(<MemoryRouter><WishShopPage /></MemoryRouter>)

    expect(await screen.findByText('数据暂未同步')).toBeInTheDocument()
    expect(screen.getByText('一张喜欢的贴纸')).toBeInTheDocument()
    expect(screen.getAllByText('同步后可申请').length).toBeGreaterThan(0)
    expect(screen.queryByText('愿望清单加载失败')).not.toBeInTheDocument()
  })

  it('does not open a request dialog for a fallback reward', async () => {
    render(<MemoryRouter><WishShopPage /></MemoryRouter>)
    const sticker = await screen.findByRole('button', { name: '一张喜欢的贴纸' })

    fireEvent.click(sticker)

    expect(screen.queryByRole('dialog')).not.toBeInTheDocument()
    expect(submitRedemption).not.toHaveBeenCalled()
  })

  it('retries synchronization from the compact warning', async () => {
    render(<MemoryRouter><WishShopPage /></MemoryRouter>)
    const retry = await screen.findByRole('button', { name: '重新同步' })

    fireEvent.click(retry)

    await waitFor(() => expect(fetchWishData).toHaveBeenCalledTimes(2))
  })
})
```

- [ ] **Step 2: Run the page test and verify RED**

Run:

```bash
npm test -- src/pages/WishShopPage.test.tsx
```

Expected: FAIL because the current page shows the full error panel and fallback cards are still actionable.

- [ ] **Step 3: Add an explicit read-only card contract**

Replace `src/components/wish/WishRewardCard.tsx` with:

```tsx
import { motion } from 'framer-motion'
import type { WishReward } from '../../stores/wishStore'
import { Backpack, FerrisWheel, Gift, Sparkles, Users } from 'lucide-react'
import type { LucideIcon } from 'lucide-react'

interface WishRewardCardProps {
  reward: WishReward
  available: number
  onRequest: (reward: WishReward) => void
  readOnly?: boolean
}

const typeLabels: Record<WishReward['type'], string> = {
  item: '物品',
  companionship: '陪伴',
  experience: '体验',
  open_wish: '小愿望',
}

const typeIcons: Record<WishReward['type'], LucideIcon> = {
  item: Backpack,
  companionship: Users,
  experience: FerrisWheel,
  open_wish: Sparkles,
}

export function WishRewardCard({
  reward,
  available,
  onRequest,
  readOnly = false,
}: WishRewardCardProps) {
  const canAfford = !readOnly && available >= reward.cost
  const Icon = typeIcons[reward.type]

  return (
    <motion.button
      type="button"
      aria-label={reward.name}
      aria-disabled={readOnly}
      whileHover={readOnly ? undefined : { scale: 1.01 }}
      whileTap={readOnly ? undefined : { scale: 0.97 }}
      onClick={() => {
        if (!readOnly) onRequest(reward)
      }}
      className={`w-full rounded-[18px] border p-4 text-left shadow-sm transition-all ${
        canAfford
          ? 'border-purple-100 bg-white shadow-purple-100/50'
          : 'border-gray-200 bg-gray-50 shadow-gray-100/40'
      }`}
    >
      <div className="flex min-w-0 items-start gap-3">
        <div className={`flex h-12 w-12 shrink-0 items-center justify-center rounded-[16px] ${
          canAfford ? 'bg-gradient-to-br from-purple-50 to-pink-50' : 'bg-white text-gray-400'
        }`}>
          <Icon aria-hidden="true" className="h-6 w-6 text-adventure-primary" />
        </div>

        <div className="min-w-0 flex-1">
          <div className="flex min-w-0 items-start justify-between gap-3">
            <div className="min-w-0">
              <p className="break-words text-sm font-extrabold leading-snug text-adventure-text">{reward.name}</p>
              <p className="mt-1 break-words text-xs leading-relaxed text-adventure-muted">{reward.description}</p>
            </div>
            <div className={`shrink-0 rounded-full px-2 py-1 text-[10px] font-extrabold ${
              canAfford ? 'bg-purple-50 text-kid-primary' : 'bg-white text-gray-400'
            }`}>
              {typeLabels[reward.type]}
            </div>
          </div>

          <div className="mt-3 flex min-w-0 items-center justify-between gap-3">
            <span className={`min-w-0 break-words text-xs font-bold ${
              canAfford ? 'text-emerald-600' : 'text-amber-500'
            }`}>
              {readOnly
                ? '同步后可申请'
                : canAfford
                  ? '可以提交愿望'
                  : `还差 ${reward.cost - available} 枚`}
            </span>
            <span className="inline-flex shrink-0 items-center gap-1 rounded-full bg-adventure-warning-soft px-3 py-1.5 text-xs font-extrabold text-amber-700">
              <Gift aria-hidden="true" className="h-3.5 w-3.5" />{reward.cost}
            </span>
          </div>
        </div>
      </div>
    </motion.button>
  )
}
```

- [ ] **Step 4: Replace the full error panel with compact synchronization state**

In `WishShopPage.tsx`:

- Add `RefreshCw` to the lucide import.
- Derive:

```ts
const isFallbackCatalog = rewards.length === 0
const catalogReadOnly = isFallbackCatalog
```

- Replace the full `StatePanel tone="error"` branch with:

```tsx
{loadError && (
  <div
    role="status"
    className="flex flex-col gap-3 rounded-[16px] border border-amber-200 bg-adventure-warning-soft p-4 sm:flex-row sm:items-center sm:justify-between"
  >
    <div>
      <p className="font-extrabold text-amber-900">数据暂未同步</p>
      <p className="mt-1 text-xs leading-relaxed text-amber-800">
        可以先浏览默认愿望；余额和申请记录恢复同步后才能提交。
      </p>
    </div>
    <Button
      variant="secondary"
      icon={<RefreshCw aria-hidden="true" className="h-4 w-4" />}
      onClick={() => {
        setLoadError(false)
        void fetchWishData().catch(() => setLoadError(true))
      }}
    >
      重新同步
    </Button>
  </div>
)}
```

- Pass the page state into every card:

```tsx
<WishRewardCard
  key={reward.id}
  reward={reward}
  available={balance.available}
  onRequest={openRequestDialog}
  readOnly={catalogReadOnly}
/>
```

- Change the footer condition to show the default-catalog explanation whenever `!isLoading && isFallbackCatalog`, including failure mode.

- [ ] **Step 5: Run the wish tests and verify GREEN**

Run:

```bash
npm test -- src/pages/WishShopPage.test.tsx src/lib/wishRewards.test.ts src/stores/wishStore.test.ts
```

Expected: the new 3 page tests and all existing wish store/rule tests pass.

- [ ] **Step 6: Commit the wish degradation fix**

```bash
git add src/components/wish/WishRewardCard.tsx src/pages/WishShopPage.tsx src/pages/WishShopPage.test.tsx
git commit -m "fix: keep wish catalog usable during sync failures"
```

### Task 5: Update project records and run full regression

**Files:**
- Modify: `docs/ai/domains/companion-shop.md`
- Modify: `docs/ai/domains/wish-parent.md`
- Modify: `docs/ai/iterations/2026-07-29-bright-adventure-ui-framework.md`
- Modify: `docs/qa/2026-07-29-ui-route-regression.md`

- [ ] **Step 1: Record the corrected rendering and failure contracts**

Add these facts to the relevant domain documents:

```markdown
- 伙伴展示只使用配置表中存在的 variant；未知或旧装备值回退到伙伴基础外观。
- 动画只绘制已完成解码的帧，所有伙伴以 `Body.png` 作为缩略图和动画加载兜底。
```

```markdown
- 愿望数据同步失败时默认目录保持只读可浏览；未从数据库取得的默认奖励不能提交 RPC。
```

Append a dated correction section to the UI iteration record and QA record with the exact tests and browser observations from the following steps.

- [ ] **Step 2: Run focused and complete automated verification**

Run:

```bash
npm test -- src/lib/companionAssets.test.ts src/components/companion/ChibiComposer.test.tsx src/components/companion/CompanionPreview.test.tsx src/pages/WishShopPage.test.tsx
npm test
npm run build
npm run docs:check
git diff --check
```

Expected:

- All focused tests pass.
- The complete Vitest suite passes.
- TypeScript and Vite production build succeeds.
- Documentation check passes.
- `git diff --check` produces no output.

- [ ] **Step 3: Perform browser regression on the running local app**

Use the existing authenticated local preview if available.

For `/companion` verify:

- current companion canvas or static fallback is visible;
- all visible collection images have `naturalWidth > 0`;
- interacting with the companion does not log `InvalidStateError`;
- no asset request relies on `Idle_Blinking_000`.

For `/wish-shop` verify:

- successful synchronization shows real data with no warning;
- simulated/observed request failure shows “数据暂未同步” and the default catalog;
- fallback cards do not open a dialog;
- “重新同步” invokes another load;
- no horizontal overflow at the current mobile viewport.

- [ ] **Step 4: Commit documentation and QA evidence**

```bash
git add docs/ai/domains/companion-shop.md docs/ai/domains/wish-parent.md docs/ai/iterations/2026-07-29-bright-adventure-ui-framework.md docs/qa/2026-07-29-ui-route-regression.md
git commit -m "docs: record companion and wish regression fixes"
```

- [ ] **Step 5: Confirm a clean feature branch**

Run:

```bash
git status --short
git log -8 --oneline
```

Expected: status output is empty and the latest commits correspond to the companion asset, renderer, preview, wish fallback, and documentation tasks.
