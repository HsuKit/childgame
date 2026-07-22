# Motivation, Wish Rewards, and Companion Growth Design

## Background

The current project already has a learning loop built around daily practice, points, check-ins, a companion, shop items, and challenge rewards. The existing loop is useful, but it is mostly transactional: children answer questions, earn points, spend points on food or outfits, and see companion stats change.

The next motivation system should make the loop feel more emotionally alive and more connected to family support. The product goal is not to push children into high-volume drilling. The goal is to help them build a low-pressure daily practice habit, feel recognized for effort, and see both virtual and real-world progress.

## Product Goal

The motivation system prioritizes:

1. Daily consistency over volume.
2. Effort and review over perfect accuracy.
3. Family participation over purely virtual consumption.

The default behavior should reward a child for showing up and completing reasonable daily work. Correct answers, streaks, challenges, and mistake review can add extra rewards, but mistakes should not create punishment or shame. Returning after a break should be welcomed warmly.

## Reward Model

The system will use three reward types with separate purposes.

### Stars

Stars are the day-to-day virtual currency. Children see them often and earn them from regular learning actions.

Uses:

- Buy food, outfits, backgrounds, and interaction items.
- Support quick positive feedback after practice.
- Power existing shop and companion-care mechanics.

Typical sources:

- Correct answers.
- Combo bonuses.
- Challenge rewards.
- Daily practice completion.
- Mistake review completion.

Stars may be earned from extra practice, but daily anti-duplication rules should continue to prevent accidental repeated reward claims where the product already limits rewards.

### Growth Value

Growth value is not spendable. It is a long-term companion progression signal.

Uses:

- Increase companion level.
- Unlock companion lines, actions, badges, titles, and future visual stages.
- Mark effort even when accuracy is imperfect.

Typical sources:

- Completing daily practice.
- Finishing mistake review.
- Maintaining a streak.
- Completing weekly goals.
- Passing challenges.

Growth value should be more tied to effort than correctness. This makes review and persistence feel meaningful.

### Wish Coins

Wish coins are for real-world rewards configured and fulfilled by parents. They are intentionally slower and more precious than stars.

Default earning rules:

- Complete the daily core practice: +1 wish coin.
- Reach a 7-day streak: +2 bonus wish coins.
- Reach a 30-day streak: +8 bonus wish coins and a companion keepsake.
- Complete the weekly goal: +1 bonus wish coin.

Challenge mode and extra practice should mainly award stars and growth value, not large amounts of wish coins. Wish coins represent consistency rather than raw volume.

## Wish Shop

The wish shop connects children's daily practice to real family rewards. It should feel trustworthy, calm, and parent-controlled.

### Reward Types

The product will support system presets and parent-created rewards.

System preset examples:

- 5-8 wish coins: small stationery, stickers, a small snack, or choosing a family activity.
- 12-20 wish coins: a small toy, a book, or family game time.
- 30-45 wish coins: a small wish or a local outing.
- 60+ wish coins: a short trip, bigger item, or long-term goal.

Parent-created rewards include:

- Reward name.
- Wish coin cost.
- Type: item, companionship, experience, or open wish.
- Parent approval requirement.
- Optional availability notes, such as "weekend only" or "pause during exam week".
- Optional quantity or time limit.

### Redemption Flow

The first version uses lightweight parent approval inside the existing account experience.

Flow:

1. Child chooses a reward in the wish shop.
2. Child submits a wish redemption request.
3. Required wish coins are frozen.
4. Parent reviews the request in the parent area.
5. Parent approves or rejects it.
6. Approved requests deduct frozen wish coins and become pending fulfillment.
7. Rejected requests release frozen wish coins.
8. Parent marks approved requests as fulfilled.
9. Child sees a celebration and the reward is saved into a reward diary.

This avoids one-tap real-world spending by the child and gives parents control over promises they must fulfill.

### States

Wish redemption requests use these states:

- `pending_parent_review`: child submitted, coins frozen.
- `approved_pending_fulfillment`: parent approved, coins deducted, reward not yet delivered.
- `fulfilled`: parent marked the reward delivered.
- `rejected`: parent rejected, coins released.
- `cancelled`: request cancelled before approval, coins released.

The UI should explain these states in child-friendly language, but internal data should keep explicit state names.

## Companion Direction

The companion is positioned as both a pet and a learning partner.

Current companion mechanics include level, experience, hunger, mood, outfit, equipped items, evolution stage, click interaction, and PNG sequence animation. The next design should first improve the companion's feedback and emotional role before replacing the animation framework.

### Companion Feedback

The first companion upgrade adds contextual responses:

- Daily practice completion: praise consistency.
- High accuracy: praise focus and thinking.
- Mistake review completion: praise courage in facing mistakes.
- 7-day streak: celebrate shared persistence.
- Wish goal nearly reached: show progress toward the selected real-world reward.
- Return after absence: welcome the child warmly without blame.

Example line styles:

- "You came back today. I knew we could keep going."
- "You fixed that mistake. That is real progress."
- "Only 3 wish coins left before your stationery box wish."

The first version should use a deterministic library of scene-based lines rather than open-ended AI chat. This keeps the product predictable for children.

### Growth Milestones

Companion growth should become visible beyond numeric level changes.

Default milestones:

- Level 1: companion learns the child's name.
- Level 3: unlock high-five or celebration action.
- Level 5: unlock learning titles.
- Level 10: unlock a stronger visual stage or pose.
- Level 20: unlock a display wall or companion room entry point.

Learning title examples:

- Daily consistency: Daily Little Hero.
- Mistake review: Problem Detective.
- Math strength: Number Explorer.
- Chinese strength: Story Collector.
- English strength: Word Builder.
- Combo strength: Focus Master.

Titles should be earned from behavior patterns, not manually purchased.

### Keepsakes and Diary

The system should record meaningful moments:

- First completed daily practice.
- First mistake review completed.
- First 7-day streak.
- First 30-day streak.
- First wish redemption request.
- First fulfilled wish.
- Companion evolution milestones.

These entries form a reward diary or keepsake book. The diary gives the child a sense of accumulated progress and gives parents a gentle record of effort.

## Data Design

This design should extend the existing Supabase-backed model without replacing the current points and companion tables in the first phase.

### Existing Concepts To Reuse

- `points_transactions` continues to support stars and existing point balance behavior.
- `companions` continues to store the active companion, level, experience, evolution stage, mood, hunger, outfit, and equipped items.
- Existing daily completion checks continue to prevent duplicate rewards.
- Parent report and same-account parent surfaces can be reused for lightweight approval.

### New Concepts

Suggested tables:

- `wish_coin_transactions`
- `wish_rewards`
- `wish_redemptions`
- `companion_milestones`
- `reward_diary_entries`

`wish_coin_transactions` records all wish coin changes, including frozen, released, and spent amounts. If frozen balances are modeled separately, the user-facing available balance must subtract pending frozen coins.

`wish_rewards` stores preset and parent-created rewards. Presets can be seeded globally or copied into user scope when enabled.

`wish_redemptions` stores child requests, approval state, frozen amount, approval time, rejection reason, and fulfillment time.

`companion_milestones` records unlocked companion growth moments and prevents duplicate unlocks.

`reward_diary_entries` stores child-visible keepsakes from streaks, fulfilled wishes, and companion milestones.

## UI Design

### Child-Facing Surfaces

Home page:

- Show stars as the familiar daily currency.
- Show wish coin balance separately.
- Show selected wish goal progress, such as "3 wish coins left".
- Let the companion mention the current goal or daily status.

Wish shop:

- Show reward cards grouped by small, medium, large, and long-term goals.
- Show whether each reward is affordable.
- Submit a wish request instead of direct real-world purchase.
- Show pending requests in child-friendly language.

Result pages:

- Keep star animation for immediate rewards.
- Add wish coin moment only when daily core practice grants one.
- Let companion lines reflect effort, accuracy, review, or streak status.

Reward diary:

- Show fulfilled wishes, streak keepsakes, companion milestones, and first-time achievements.

### Parent-Facing Surfaces

Parent area:

- View wish coin balance and pending frozen coins.
- Create and edit parent rewards.
- Approve or reject child requests.
- Mark approved rewards as fulfilled.
- View reward diary and recent earning history.

The first version stays in the same-account parent area. A separate parent account, notifications, and full audit workflow are future enhancements.

## Error Handling And Rules

The system must avoid reward confusion.

Rules:

- Wish coins are not awarded repeatedly for the same daily core completion.
- Pending redemptions freeze wish coins so children cannot overspend.
- Rejected or cancelled redemptions release frozen coins.
- Approved requests deduct coins exactly once.
- Fulfillment does not deduct additional coins.
- Missing parent-created reward details should prevent submission.
- If a request references a deleted reward, the request remains readable with a snapshot of the original reward name and cost.
- Returning after missed days should not show punitive copy.

## Testing Strategy

Unit tests:

- Wish coin earning rules for daily, 7-day, 30-day, and weekly bonuses.
- Available balance calculation with frozen coins.
- Redemption state transitions.
- Companion milestone unlock rules.
- Contextual companion line selection.

Store and integration tests:

- Submitting redemption freezes coins.
- Rejecting redemption releases coins.
- Approving redemption deducts frozen coins.
- Marking fulfilled creates diary entry.
- Daily completion awards wish coins only once.

UI checks:

- Child can see wish coin balance and goal progress.
- Parent can approve, reject, and fulfill requests.
- Result pages clearly separate stars from wish coins.
- Long reward names and child-friendly state labels fit on mobile.

## Phased Delivery

### Phase 1: Wish Coin Foundation

Scope:

- Add wish coin transaction data.
- Award +1 wish coin for daily core practice completion.
- Add bonus rules for 7-day streak, 30-day streak, and weekly goal where the current data supports it.
- Show wish coin balance and selected goal progress on the home page.
- Keep the current stars system intact.

Goal:

Children and parents can see that daily consistency creates a separate real-world reward currency.

### Phase 2: Wish Shop And Parent Approval

Scope:

- Add preset rewards.
- Add parent-created rewards.
- Let children submit redemption requests.
- Let parents approve, reject, and mark fulfilled.
- Add reward diary entries for fulfilled wishes.

Goal:

The real-world reward loop works end to end with lightweight same-account approval.

### Phase 3: Companion Feedback Upgrade

Scope:

- Add scene-based companion lines.
- Bind companion responses to daily completion, accuracy, review, streaks, and wish progress.
- Add companion milestones and learning titles.
- Add diary entries for key milestones.

Goal:

The companion feels like a learning partner that notices effort and reinforces habit.

### Phase 4: Companion Animation Refactor

Scope:

- Audit the current PNG sequence system.
- Compare four rendering options: existing PNG sequence, Rive, Lottie, and PixiJS.
- First introduce a companion state machine with states such as idle, happy, celebrate, tired, study, and wish.
- Decide whether to adopt Rive for interactive companion animation.
- Continue using Lottie for reward celebrations where useful.
- Reserve PixiJS for future rooms, maps, and richer game-like scenes.

Goal:

Improve the companion animation architecture without blocking the wish reward loop.

## Non-Goals

The first implementation will not:

- Replace the entire companion animation system.
- Add separate child and parent accounts.
- Add push notifications.
- Use open-ended AI chat for companion dialogue.
- Turn points into money or show cash conversion.
- Penalize mistakes or missed days.

## Open Follow-Up Decisions

These decisions should be made during implementation planning:

- Exact daily core practice condition for wish coin grants across quiz, challenge, and subject tasks.
- Whether weekly goals use existing check-in data or require a new weekly goal table.
- Exact first set of preset rewards.
- Whether reward diary appears as a standalone page or inside the parent/profile area first.
- Whether Phase 1 and Phase 2 ship together or behind separate feature flags.

