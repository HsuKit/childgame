# 系统架构

本文描述代码、测试、迁移和部署配置可以确认的当前边界。业务规则细节由对应[领域文档](./README.md#业务域)负责。

## 系统边界与总数据流

主运行链路为：

```text
浏览器
  -> React Router 页面
  -> 领域组件
  -> Zustand stores 与 src/lib repositories / 纯业务规则
  -> Supabase JS public client
  -> Supabase Auth、PostgreSQL（RLS）和 RPC
```

[`src/main.tsx`](../../src/main.tsx) 挂载 React，[`src/App.tsx`](../../src/App.tsx) 定义路由并在最外层使用 `ErrorBoundary`。`AppLayout` 通过 `GuestGate` 完成认证和资料门禁，再提供共享布局、底部导航和伙伴进化提示。

这不是严格的“页面只能调用 store”分层：排行榜、PK、打卡日历和挑战结果等页面仍直接调用 Supabase。修改数据访问时要同时搜索 `src/stores/`、`src/lib/` 和 `src/pages/`。

## 页面与领域

以下分组按五个业务域定位路由，不表示页面之间没有跨域读取：

| 领域 | 实际路由 |
| --- | --- |
| [认证与资料](./domains/auth-profile.md) | `/`、`/profile`、`/checkin`；认证与年级创建由共享 `GuestGate` 接管 |
| [答题与题库](./domains/quiz-question-bank.md) | `/quiz`、`/quiz/result`、`/challenge`、`/challenge/result`、`/mistakes`、`/mistakes/:id` |
| [伙伴与商城](./domains/companion-shop.md) | `/companion`、`/companion/select`、`/shop` |
| [愿望与家长](./domains/wish-parent.md) | `/wish-shop`、`/parent-report`、`/parent-wishes` |
| [排行榜与 PK](./domains/leaderboard-pk.md) | `/leaderboard`、`/pk`、`/pk/quiz`、`/pk/result` |

首页 `/` 是跨域仪表盘，会汇总伙伴、打卡、积分、愿望、今日题量、挑战状态和错题。

## 认证与启动

[`GuestGate`](../../src/components/auth/GuestGate.tsx) 首次挂载调用 `authStore.initAuth()`：

1. 读取持久化 Supabase session；
2. 没有 session 时调用匿名登录；
3. 用认证用户 ID 查询 `profiles`；
4. 没有 profile 时显示年级和昵称创建页，创建 `profiles` 后才进入应用；
5. 认证启动失败时清空用户和 profile、保存 `authError`，页面提供再次调用 `initAuth()` 的“重新连接”操作。

年级是 profile 的必填字段，范围由数据库和 UI 限定为 1–6。伙伴不是全局路由门禁：主页加载 `companionStore.fetchCompanion()`；没有伙伴时展示入口，用户再到 `/companion/select` 选择免费伙伴、命名并创建。不要假设创建 profile 会自动创建伙伴。

Supabase 客户端在 [`src/lib/supabase.ts`](../../src/lib/supabase.ts) 初始化，开启 session 持久化与 token 自动刷新，仅读取两个公开前端环境变量名。

## 状态层

| Store | 当前职责与持久化边界 |
| --- | --- |
| `authStore` | Supabase session、匿名登录、profile 创建与资料更新；启动错误暴露为 `authError` |
| `quizStore` | 组卷、会话内答题状态、今日统计、`quiz_records` 保存及错题同步 |
| `mistakeStore` | 错题列表、复习状态写入、由作答和错题派生家长报告 |
| `checkinStore` | 当日 `check_ins`、科目完成、连续天数、完成奖励串行结算 |
| `pointsStore` | 通过 RPC 读总积分，直接追加正负 `points_transactions` |
| `companionStore` | 伙伴查询、创建、成长、状态和装备更新 |
| `shopStore` | 商品查询；先扣积分，再更新伙伴效果或装备 |
| `wishStore` | 愿望币余额、奖励、兑换、日记；兑换状态变化走数据库 RPC |

纯计算和可复用规则放在 `src/lib/`，例如组卷、判题、错题状态、愿望余额展示和日期范围。`questionRepository` 是例外：它封装题库和作答历史的 Supabase 查询，再把普通数据交给纯 `questionComposer`。Store 是进程内 Zustand 状态，没有使用 Zustand `persist`；持久状态以 Supabase 数据为准。

## 数据层

仓库迁移和 [`database.types.ts`](../../src/lib/database.types.ts) 可确认的主要表：

| 领域 | 表 |
| --- | --- |
| 认证与资料 | `profiles` |
| 学习与题库 | `questions`、`quiz_records`、`mistake_records`、`mistake_reviews`、`check_ins` |
| 伙伴与积分 | `companion_types`、`companions`、`points_transactions`、`shop_items` |
| 愿望与家庭 | `wish_coin_transactions`、`wish_rewards`、`wish_redemptions`、`reward_diary_entries` |
| 排行榜与 PK | `pk_challenges`；排行榜由积分、资料和伙伴数据计算 |

RLS 总体规则：

- 用户数据通常以 `auth.uid() = id/user_id` 限制为本人可查、可新增或可更新；
- `questions` 允许已认证用户读取，`companion_types`、`shop_items` 可公开读取；
- `wish_rewards` 允许读取预设项或本人项，愿望币账本、兑换和日记的写入由受控 RPC 完成；
- `pk_challenges` 可公开读取，创建者可新增，创建者或对手可更新。

客户端既直接访问表，也调用数据库函数。直接访问包括 profile、伙伴、题库、作答、错题、打卡、积分账本、商品和 PK；RPC 包括总积分、周榜/总榜、愿望币余额、每日愿望币奖励和愿望兑换状态机。愿望 RPC 在迁移中使用 `security definer`、固定 `search_path`、认证用户检查和明确 execute 权限；新增或修改同类函数必须继续审查这些属性。

已知模式不一致：前端多处读写 `check_ins.challenge_done`，但当前有序迁移和 `database.types.ts` 没有声明该列。仓库不能证明远端数据库是否手工存在该字段；涉及挑战完成状态时，应先核对目标环境模式并以新增迁移和类型同步消除不一致。

迁移从 [`001_initial_schema.sql`](../../supabase/migrations/001_initial_schema.sql) 开始，题库元数据见 [`005_question_bank_metadata.sql`](../../supabase/migrations/005_question_bank_metadata.sql)，错题见 [`012_mistake_review_parent_report.sql`](../../supabase/migrations/012_mistake_review_parent_report.sql)，愿望账本与 RPC 见 [`013_wish_rewards.sql`](../../supabase/migrations/013_wish_rewards.sql)。其余有序文件位于 `supabase/migrations/`，按任务需要读取，避免一次加载全部大体量题目迁移。

## 题库内容流

当前可发布内容流是：

```text
data/questions canonical JSON
  -> scripts/lib schema、audit、release
  -> validate / review / approval
  -> generate-seed-sql
  -> 新增、可重复执行的 upsert migration
  -> questions 中 reviewed / approved 行
  -> questionRepository
  -> questionComposer
  -> quizStore 的普通练习或综合挑战
```

`questions` 用稳定 `external_id`、`content_hash`、`review_status` 和 `version` 支持审核与幂等更新。运行时优先加载 `approved`；若某年级学科完全没有 approved 池，当前 repository 会回退到 `reviewed` 兼容旧数据。组卷优先未做和较久未做题，配额不足可降级，但总数不足会拒绝创建残缺会话。

完整发布规则见[题库维护与发布手册](../question-bank-workflow.md)，离线起草见[离线 AI 出题模板](../ai-question-prompt.md)。

`supabase/functions/generate-questions/` 中仍存在运行时生成函数源码；[`PROJECT_INFO.md`](../../PROJECT_INFO.md) 称其已部署但暂未启用，当前 `App`、页面、store 和组卷链路都不调用它。当前答题路径不依赖运行时 AI，AI 只能作为离线 draft 来源。

## 作答与副作用流

答题卡只把答案交给 `quizStore`；store 在内存中判题、计算连击和积分并推进题目，完成后才持久化。

普通科目结果页的实际顺序是：

1. `saveQuizRecords` 批量插入 `quiz_records`；
2. 查询既有错题和当日错误，再 upsert `mistake_records`；
3. 若该科当日首次结算，追加答题 `points_transactions`；
4. 增加伙伴经验；
5. `markSubjectDone` 更新 `check_ins`；三科全完成时先条件更新连续天数和打卡积分，再追加打卡积分，最后调用每日愿望币 RPC。

页面用一次性 ref 防止同一次挂载重复进入结算，异常只记录到控制台。上述写入是客户端串行步骤，不是一个数据库事务：任一步失败都可能留下此前成功的写入。尤其 `quiz_records` 已插入而错题同步失败时，store 不会标记 `recordsSaved`，再次尝试可能重复作答行；不能把当前实现描述为端到端原子或完全幂等。

挑战结果先检查当日完成状态，但保存记录、答题积分、伙伴经验、通关积分和 `challenge_done` 更新没有统一 `await` 或事务，失败只形成未处理/局部副作用风险。修改挑战结算时必须把这一现状作为正确性重点。

## 奖励一致性

积分和愿望币使用追加式账本：

- 积分余额通过 `get_total_points` 汇总 `points_transactions`；客户端按业务顺序插入收入或支出。
- 迁移只对 `checkin_bonus` 且带 reference 的积分交易建立唯一约束；不能据此推断所有答题、挑战和购买都防重复。
- 愿望币通过 `wish_coin_transactions` 记录 earn/freeze/release/spend；带 reference 的同类交易有唯一索引。
- 每日愿望币与兑换提交、批准、拒绝、兑现由 RPC 在数据库内校验用户、余额和状态；每日奖励还使用事务级 advisory lock。
- 商城和部分伙伴购买仍是客户端“先扣积分、再更新伙伴”的串行结算，不是原子事务。

## 错误处理

- `ErrorBoundary` 捕获渲染树异常并显示恢复按钮；按钮重置 boundary 状态，不等同于浏览器整页刷新。
- `authStore`、`quizStore`、`mistakeStore` 和 `wishStore` 暴露不同形式的 loading/error/message；没有统一错误模型。
- 认证页可原地重新连接；题目加载失败页保留可读 `sessionError` 并返回首页后重进；错题和家长报告保留错误状态；首页的并行区块失败时保持安全初值。
- 并非所有 Supabase 调用都检查返回的 `error`；例如 `pointsStore` 在交易 insert 后直接更新本地余额。不要把“已 await”误解为“服务端写入已被确认”，修改时应显式检查响应。
- 结算类页面多为捕获后 `console.error` 或 fire-and-forget，缺少用户可见重试与跨步骤恢复。修改副作用流程时优先补幂等键、数据库事务/RPC 和可见恢复状态。

## 部署与运行边界

Netlify 构建静态前端并以 rewrite 承接 React Router SPA 路由；浏览器运行 React、Zustand 和 Supabase public client。Supabase 是认证、数据库、RLS 和 RPC 的运行后端。`vercel.json` 只是保留的另一份 SPA rewrite 配置，不是当前生产承载证据。

部署现状和环境变量见[项目概览的部署说明](./project-overview.md#部署)，部署文件见 [`netlify.toml`](../../netlify.toml)。
