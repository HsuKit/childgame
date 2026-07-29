# 排行榜与 PK 业务域

## 职责与边界

本域负责最近 7 天积分榜、累计积分榜，以及好友 PK 的创建、挑战码加入、单科答题、比分回写和结果等待。

排行榜由数据库 RPC 聚合积分账本；PK 元数据由 `pk_challenges` 保存，但题目仍复用普通 `quizStore` 的组卷和题卡。当前没有专门的 leaderboard store 或 PK store，页面直接调用 Supabase。

PK 目前不保存自己的 `quiz_records`、不结算积分或奖励，也不保证双方拿到相同题目。不要把普通答题奖励或题库历史依赖描述成已实现的 PK 奖励系统。

## 主要用户流程

1. `/leaderboard` 先 `await get_weekly_leaderboard(since)`，再 `await get_total_leaderboard()`，两个 RPC 串行完成后映射昵称、积分、伙伴类型和当前用户标记。
2. “本周”实际是客户端用当前时间减 7×24 小时得到的滚动窗口，不是自然周。
3. 创建者在 `/pk` 选择单科，前端生成 6 位十进制随机码并插入 `pk_challenges`，初始状态为 `waiting`。
4. 创建成功后页面保留返回的 challenge ID；创建者点击“我先答题”进入 `/pk/quiz?challenge=...&subject=...`。
5. 加入者输入挑战码，页面查询该 code 且 status 为 `waiting` 的行，拒绝加入自己的挑战，然后直接进入答题页。
6. `PkQuizPage` 读取 `quizStore.sessions[subject]`；只有该学科完全没有 session 时才调用 `startSession(subject)` 生成 10 题，否则直接复用既有题目、进度和作答记录。页面继续复用 `QuizCard`、`answerQuestion()`、`nextQuestion()`。
7. 完成后页面重新读取 challenge：创建者写 `creator_score`；加入者尝试同时写 `opponent_score`、`opponent_id` 并把状态设为 `completed`。
8. 创建者先完成且尚无 opponent 时，页面把状态保持为 `waiting`；如果当时已有 opponent，则设为 `completed`。
9. `/pk/result` 首次读到 challenge 行就立即渲染；任一数据库比分仍为 null 时每 2 秒继续轮询。页面展示由 `getPkResultState()` 的当前用户视角决定，并不等待数据库 `status` 或双方比分都完成后才首次显示。

排行榜位于底部“奖励”入口下，仍保持本周/总榜两次 RPC 语义；RPC 错误显示为错误态，不再误当作空榜。PK 大厅使用标准管理页模板，创建与加入表单都有持续标签、加载与网络错误；PK 答题和结果使用专注/结算壳并隐藏底部导航。

## 代码与数据定位

- 路由：`src/App.tsx` 中的 `/leaderboard`、`/pk`、`/pk/quiz`、`/pk/result`。
- 排行榜页面：`src/pages/LeaderboardPage.tsx`。
- PK 页面：`src/pages/PkPage.tsx`、`src/pages/PkQuizPage.tsx`、`src/pages/PkResultPage.tsx`。
- PK 纯规则：`src/lib/pkUtils.ts`。
- 复用答题：`src/stores/quizStore.ts`、`src/components/quiz/QuizCard.tsx`、`src/lib/questionRepository.ts`、`src/lib/questionComposer.ts`。
- 认证与数据库客户端：`src/stores/authStore.ts`、`src/lib/supabase.ts`。
- 数据类型：`src/lib/database.types.ts`。
- 数据库来源：`supabase/migrations/003_leaderboard_pk.sql`；积分和 profile 基础表来自 `supabase/migrations/001_initial_schema.sql`。

排行榜 RPC：

- `get_weekly_leaderboard(since timestamptz)`：只汇总 `since` 之后 `amount > 0` 的 `points_transactions`，按用户降序取前 50。
- `get_total_leaderboard()`：汇总全部 `amount > 0` 的积分收入，按用户降序取前 50。
- 两者关联 `profiles.nickname`，并用子查询取一条 `companions.companion_type`。

`pk_challenges` 字段：

- `id`：UUID 主键。
- `code`：唯一文本挑战码。
- `creator_id`、`opponent_id`：关联 `profiles`。
- `creator_score`、`opponent_score`：可空整数。
- `subject`：chinese、math、english 或 mixed；当前创建 UI 只提供前三种。
- `status`：waiting、ongoing、completed。
- `created_at`：创建时间；当前没有 expires_at。

迁移 003 的 RLS：

- SELECT：`using (true)`，任何数据库角色是否实际可调用仍取决于表/RPC grants 和目标环境。
- INSERT：仅 `auth.uid() = creator_id`。
- UPDATE：仅 `auth.uid()` 已在当前行的 `creator_id` 或 `opponent_id` 中。

## 数据与状态流

```text
points_transactions + profiles + companions
  -> leaderboard RPC
  -> LeaderboardPage 本地 state

PkPage 直接 INSERT pk_challenges
  -> challenge id + code
  -> PkQuizPage 复用 quizStore 内存 session
  -> 直接 UPDATE creator/opponent score
  -> PkResultPage 每 2 秒直接 SELECT
```

数据库只保存挑战参与者、科目、状态和最终正确题数，没有保存题目列表、每题答案、开始/结束时间或奖励结算记录。

只有在该学科没有既有 session、PK 实际调用 `startSession()` 时，组卷才会查询 `questions` 和当前用户的 `quiz_records` 历史；不同用户可能因作答历史和随机打乱拿到不同的 10 题。PK 完成页没有调用 `quizStore.saveQuizRecords()`，PK 页面中的回答不会新增历史或错题。

`buildCreatorPkQuizPath()` 对 challenge ID 和 subject 做 URL 编码，避免创建者只携带 code 而无法回写。`getPkResultState()` 根据当前用户是否为 creator 交换“我/对手”比分并计算等待、胜负、平局。

页面状态都只在组件内存中：创建码、loading/error、轮询结果不会跨刷新持久化；持久真相只有 `pk_challenges`。

## 不变量与已知风险

- 排行榜来源是正数积分收入总和，不是 `get_total_points` 的净余额；消费不会降低榜单分数。
- 周榜是滚动 7 天，且 `since` 由客户端时钟产生。客户端时间偏差会改变查询窗口。
- 两个排行榜函数是普通 SQL 函数，未声明 `security definer`，因此默认以调用者权限执行。仓库迁移又把 `points_transactions`、`profiles` 和 `companions` 的 SELECT RLS 限制为当前用户自己的行；在仅有这些迁移的环境中，RPC 可能只能看到调用者自己的数据，不能保证生成跨用户 Top 50。远端环境是否另有策略或函数定义未知。
- 排行榜 RPC 的 companion 子查询没有 order；若同一用户有多行 companions，展示哪一条未定义。
- `LeaderboardPage` 忽略两个 RPC 的 error，并使用 `any` 映射；失败会表现为空榜，无法区分真实无数据。
- 6 位 code 由 `Math.random()` 生成，数据库唯一约束可阻止碰撞，但客户端不重试冲突，也没有过期/清理机制。
- status 虽允许 `ongoing`，当前页面从未写入它；实际流转只有 waiting → completed，创建者先完成时仍保持 waiting。
- 加入页面只查询 challenge，不在答题前占位或写 `opponent_id`。两个用户可以同时通过同一码进入。
- 更严重的是，加入者完成时才尝试设置 `opponent_id`；UPDATE RLS 根据旧行检查，而旧行 `opponent_id` 仍为 null，所以加入者不在允许更新者集合中。按迁移 003，比分/对手回写会被拒绝；页面又不检查 update error，仍会跳转结果页。结果页读到 challenge 行后会立即渲染：若创建者分数已经存在，加入者视角可能显示“继续加油”、自己的 `?/10` 和创建者分数，同时因为数据库仍有空比分而继续轮询；若创建者分数也为空，则显示等待状态。远端策略是否已修正未知。
- UPDATE policy 没有显式 `with check` 时，PostgreSQL 会把 `using` 表达式隐式复用于新行校验，因此更新后 `auth.uid()` 仍必须位于 `creator_id` 或 `opponent_id`。但 policy 没有列级限制，代码也没有服务端状态机函数；只要更新后仍满足参与者条件，允许更新者可改哪些比分和 status 主要靠客户端约定，数据库未限制“只能写自己的比分”。
- `PkQuizPage` 不检查 startSession、challenge 查询和比分更新错误，也没有用户可见重试。
- PK 复用按学科的现有 `quizStore.sessions`。只要该学科存在任何 session，包括未完成的普通答题，页面就不会重新组 10 题，而会沿用其题目、当前进度和作答记录；若既有 session 已完成，还可能直接把旧分数写入当前挑战。当前没有 challenge 级 session 隔离。
- 双方没有共享题目快照，公平性只依赖同年级/学科组卷规则；双方年级也未校验相同。
- 结果页会在 challenge 行读到后展示当前派生状态，但后台轮询仍每 2 秒持续到双方分数非空；没有超时、取消按钮、错误状态或页面可见“刷新”动作，组件卸载时才清理 timer。
- PK 不调用 `saveQuizRecords()`、`pointsStore` 或奖励 RPC；当前不存在重复奖励风险，因为没有奖励。若未来加奖励，必须先提供 challenge/reference 唯一性和数据库原子结算。
- `src/lib/database.types.ts` 当前未声明 `pk_challenges`、`get_weekly_leaderboard` 或 `get_total_leaderboard`；页面因此没有数据库类型契约。

## 测试与验证

当前只有 `src/lib/pkUtils.test.ts`：

- 创建者答题 URL 使用已保存的 challenge ID；
- 创建者视角正确读取 `opponent_score`；
- 加入者视角正确读取 `creator_score`；
- 对手未完成时保持 waiting 结果。

没有排行榜、PK 页面、code 碰撞、轮询、Supabase error、状态机、RLS 或并发加入测试。

```bash
npm test -- src/lib/pkUtils.test.ts
npm test
npm run build
```

数据库集成验证至少应覆盖：

- 创建者插入、他人伪造 creator 被拒绝；
- 加入者占位与比分更新的实际 RLS 结果；
- 非参与者更新被拒绝；
- 两人并发加入同一码；
- 重复完成、重复回写和比分篡改；
- 查询/更新失败后的页面恢复；
- 轮询超时和组件卸载停止请求；
- 排行榜窗口、正数收入语义和 50 行上限。

## 关联上下文

- [系统架构：页面与领域](../architecture.md#页面与领域)
- [系统架构：数据层](../architecture.md#数据层)
- [仓库地图](../repository-map.md)
- [工程约定：数据库与迁移](../conventions.md#数据库与迁移)
- [第一阶段产品设计](../../superpowers/specs/2026-05-19-childgame-design.md)
- [第一阶段实施计划](../../superpowers/plans/2026-05-19-childgame-phase1.md)
- [答题与题库域](./quiz-question-bank.md)
- [迭代账本](../iterations/README.md)
