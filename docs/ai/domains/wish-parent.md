# 愿望与家长业务域

## 职责与边界

本域负责完成三科后的愿望币奖励、愿望币账本余额、预设与自定义奖励、愿望申请/审核/兑现状态机、兑现日记，以及同一学生账号下的家长报告和愿望管理页面。

“家长”是当前 UI 语义，不是独立认证主体。`/parent-report` 和 `/parent-wishes` 与学生页面共享同一个 Supabase session 和 `auth.uid()`，没有家长账号、角色、PIN 或权限隔离。

家长报告的学习统计来自答题与错题域；愿望币每日奖励依赖 `check_ins` 和 `quiz_records`。两条数据流应区分。

## 主要用户流程

1. 普通科目结果页保存答题后调用 `checkinStore.markSubjectDone(subject)`。
2. 三科均完成且 `bonus_points` 尚未结算时，checkin store 先结算积分，再调用 `awardDailyWishCoins(checkInId)`。
3. RPC 校验三科完成、上海日期下每科至少 10 个不同题目，并按打卡连续天数计算愿望币。
4. 每日基础奖励为 1；连续天数是 7 的倍数时加 2，是 30 的倍数时改为加 8，30 天规则优先。
5. `/wish-shop` 读取余额、启用奖励、本人兑换和最近日记；奖励按成本分组展示。
6. 孩子选择奖励并可写备注，`submit_wish_redemption` 创建 `pending_parent_review` 兑换并冻结对应愿望币。
7. `/parent-wishes` 在同一账号中审核：同意后变为 `approved_pending_fulfillment` 并把冻结币计为 spent；退回后变为 `rejected` 并释放冻结币。
8. 家长标记兑现后变为 `fulfilled`，RPC 幂等写入一条 `wish_fulfilled` 日记。
9. 家长可在页面直接插入本账号的非预设自定义奖励；预设 catalog 由迁移维护。
10. `/parent-report` 展示今日完成、正确率、错题状态和薄弱知识点，并提供愿望管理入口。

`/rewards` 是底部“奖励”入口，汇总愿望币可用/冻结余额、进行中愿望、排行榜入口和成长回忆，不新增数据库查询。愿望商店、家长报告与家长愿望管理使用标准数据/管理模板；加载失败与真实空态分开呈现。愿望提交弹窗有可访问标题、关闭操作、忙碌状态、`z-[70]` 和底部安全区。

## 代码与数据定位

- 页面：`src/pages/WishShopPage.tsx`、`src/pages/ParentWishPage.tsx`、`src/pages/ParentReportPage.tsx`。
- 跨域结算：`src/pages/QuizResultPage.tsx`、`src/stores/checkinStore.ts`、`src/stores/mistakeStore.ts`。
- 愿望状态：`src/stores/wishStore.ts`。
- 纯规则：`src/lib/wishRewards.ts`、`src/lib/wishDialogLayout.ts`。
- 愿望组件：`src/components/wish/WishBalanceBadge.tsx`、`src/components/wish/WishRewardCard.tsx`、`src/components/wish/WishRedemptionStatus.tsx`。
- 数据类型：`src/lib/database.types.ts`。
- 数据库来源：`supabase/migrations/012_mistake_review_parent_report.sql`、`supabase/migrations/013_wish_rewards.sql`、`supabase/migrations/015_standard_wish_rewards.sql`。

主要表：

- `wish_coin_transactions`：`earn`、`freeze`、`release`、`spend` 追加式账本。
- `wish_rewards`：全局 preset 或本人 custom，包含类型、成本、启用状态和可用说明。
- `wish_redemptions`：奖励快照、孩子/家长备注和状态时间。
- `reward_diary_entries`：愿望兑现、连续纪念或伙伴里程碑日记；当前 UI 主要产生/展示愿望兑现。
- `quiz_records`、`mistake_records`：家长报告与每日愿望币校验的学习证据。
- `check_ins`：每日愿望币 RPC 的完成、连续天数和 reference 来源。

实际 RPC 名称：

- `get_wish_coin_balance(user_id)`
- `award_daily_wish_coins(check_in_id)`
- `submit_wish_redemption(reward_id, child_note)`
- `approve_wish_redemption(redemption_id, parent_note)`
- `reject_wish_redemption(redemption_id, parent_note)`
- `fulfill_wish_redemption(redemption_id)`

状态枚举包含 `cancelled`，但当前迁移、`database.types.ts` Functions、`wishStore` 和页面都没有 `cancel_wish_redemption` 或取消动作。

## 数据与状态流

```text
quiz_records + check_ins
  -> award_daily_wish_coins
  -> wish_coin_transactions(earn)
  -> get_wish_coin_balance
  -> wishStore.balance

wish_rewards
  -> submit RPC + freeze
  -> pending_parent_review
  -> approve + spend -> approved_pending_fulfillment
  -> fulfill -> fulfilled + reward_diary_entries

pending_parent_review
  -> reject + release -> rejected
```

余额字段含义：

- `totalEarned`：所有 earn 正数之和。
- `frozen`：freeze 绝对值减 release 与 spend 的绝对值，最低为 0。
- `spent`：spend 绝对值之和。
- `available = totalEarned - frozen - spent`。

提交兑换时在同一 RPC 事务中创建兑换和 freeze。批准时写 spend，余额函数同时从 frozen 扣除该 spend；拒绝时写 release。兑现只改状态并写日记，不再次扣币。

`fetchWishData()` 并行读取余额、奖励、兑换和最近 20 条日记，并用请求序号防止旧请求覆盖新用户/新结果。无认证用户时清空旧愿望状态。任一读取失败时 Promise 保持失败语义；愿望商店用紧凑同步提示和重试承接错误，同时把默认 catalog 作为只读内容继续展示。

预设奖励以 `wish_rewards.user_id is null`、`is_preset = true` 表示；自定义奖励绑定当前 user。015 迁移按名称停用旧 preset、更新标准项并补插缺失项。

家长报告实际只查询当天 `quiz_records` 与全部 `mistake_records`，按题目去重并把每科计数上限设为 10；它不读取 `check_ins`。愿望币奖励才同时依赖 check-ins 与作答记录。

## 不变量与已知风险

- 愿望币余额只能由账本派生；不得把 Zustand 的显示余额当作写入真相。
- 带 reference 的 `(user_id, reason, reference_id)` 唯一索引表达同一已生成 reference 的账本动作 exactly-once 意图；日记也有 `(user_id, entry_type, reference_id)` 唯一索引。提交兑换每次生成新的 redemption UUID，因此该约束不对多次提交去重。
- 每日奖励和兑换 RPC 使用事务级 advisory lock，按当前用户串行化余额相关动作。
- 所有愿望 RPC 都是 `security definer`、固定 `search_path = public`、验证 `auth.uid()`/资源归属，并撤销 public/anon 后只授予 authenticated。
- 账本金额符号由数据库约束：earn/release 为正，freeze/spend 为负。
- 提交兑换用 advisory lock 串行化当前用户的余额检查，但不读取或 `for update` 锁定既有兑换；每次调用都会生成新的 redemption UUID。只要可用余额仍足够，重复提交会创建新的待审核兑换并再次 freeze。
- 批准和拒绝会 `for update` 锁定属于当前用户且状态为 `pending_parent_review` 的目标兑换；批准写 spend，拒绝写 release。重复调用或其他状态不会再次命中该目标。
- 兑现会 `for update` 锁定属于当前用户且状态为 `approved_pending_fulfillment` 的目标兑换；重复调用或其他状态不会再次命中，日记唯一索引防止同一 redemption 重复写入兑现日记。
- `cancelled` 目前只是可显示/可存储状态，没有受控迁移路径，也没有 release 逻辑；不能描述为已实现的取消流程。
- 家长与孩子共用同一身份，孩子理论上也能打开家长路由并执行 approve/reject/fulfill；当前系统不能提供家长授权保证。
- `wishStore.createReward()` 是 RLS 下的直接 insert，不经过 RPC；它只允许当前用户创建非 preset，但没有家长身份门禁。
- `resolveVisibleWishRewards()` 在数据库返回空数组时使用前端默认 catalog；这些默认项的字符串 ID 不是 UUID。愿望商店会把 fallback 卡片标记为只读且阻止打开提交弹窗，只有数据库返回的真实奖励可提交 UUID RPC。标准迁移仍应保证数据库有 active preset；客户端 fallback 不是离线兑换模式。
- `fetchWishData()` 对任一并行查询错误会整体 reject；愿望商店保留默认目录与重试入口，其他调用方仍可能只保留初始值。
- `checkinStore` 先更新完成/积分，再调用愿望 RPC，不是跨表单一事务；愿望奖励失败时 check-in 可能已完成，当前 UI 没有专门补偿入口，但 RPC 的 reference 幂等允许安全重试。
- 家长报告正确率以去重后的今日记录计算；重复记录中“保留哪一次正确性”由查询返回顺序决定，查询没有显式 order。

## 测试与验证

`src/lib/wishRewards.test.ts` 覆盖每日/7 天/30 天奖励、earned/frozen/spent/available、所有状态文案、奖励分组、标准 catalog fallback 和家长队列分组。

`src/stores/wishStore.test.ts` 覆盖：

- submit/approve/reject/fulfill 通过 RPC 而非客户端账本写入；
- stale 本地余额不阻止服务端判定；
- 余额不足的儿童文案；
- 每日奖励 RPC；
- 未认证状态清理和并发 fetch 的新结果优先。

`src/stores/mistakeStore.test.ts` 覆盖家长报告计数、重复作答去重和薄弱知识点；`src/stores/checkinStore.test.ts` 覆盖打卡并发保护和愿望奖励调用。当前没有真实 PostgreSQL 并发/RLS/RPC 集成测试。

`src/pages/WishShopPage.test.tsx` 覆盖同步失败时的只读默认目录、fallback 卡片不能打开提交弹窗，以及重新同步操作。

```bash
npm test -- src/lib/wishRewards.test.ts src/stores/wishStore.test.ts
npm test -- src/stores/checkinStore.test.ts src/stores/mistakeStore.test.ts
npm test
npm run build
```

迁移验证还应在测试数据库覆盖本人/他人调用、余额不足、重复提交、并发提交、每个合法/非法状态转换、freeze/release/spend 账本行和日记唯一性。

## 关联上下文

- [系统架构：奖励一致性](../architecture.md#奖励一致性)
- [系统架构：数据层](../architecture.md#数据层)
- [仓库地图](../repository-map.md)
- [工程约定：数据库与迁移](../conventions.md#数据库与迁移)
- [错题复习与家长报告设计](../../superpowers/specs/2026-07-21-wrong-question-review-parent-report-design.md)
- [愿望与伙伴激励设计](../../superpowers/specs/2026-07-22-motivation-wish-companion-design.md)
- [愿望奖励实施计划](../../superpowers/plans/2026-07-22-wish-rewards-phase1-2.md)
- [迭代账本](../iterations/README.md)
