# 答题与题库业务域

## 职责与边界

本域负责语文、数学、英语每日练习、三科综合挑战、题目展示与判题、作答记录、错题订正、儿童可读解析，以及 canonical 题库的离线审核发布。

运行时只从 Supabase 静态题库读取，不调用 AI 出题。AI 只能离线产生 `draft` 候选；题库发布工具、迁移和人工审核属于本域，积分、打卡、伙伴经验和愿望币的最终结算是跨域副作用。

## 主要用户流程

1. 用户从首页按科目进入 `/quiz?subject=...`，`quizStore.startSession()` 按 profile 年级构建 10 题会话。
2. `questionRepository` 先加载该年级、学科的全部 `approved` 题；只有 approved 池完全为空时才回退到 `reviewed`。
3. repository 对选择题答案做兼容归一化，并加载当前用户对候选题的最近作答时间。
4. `questionComposer` 按题型、难度、知识点覆盖和作答历史选 10 道唯一题，再随机打乱。
5. `QuizCard` 按 choice、fill、match、grid 分发题卡；每题记录正确性、积分和 `selected_answer`，答题后才允许前进。
6. 普通结果页保存作答与错题，再按“今日该科是否已完成”的客户端快照结算积分、伙伴经验和科目打卡。
7. 每日挑战对三科分别调用同一 10 题组卷，再把 30 题合并并 Fisher–Yates 混排；答对至少 24 题判定通过。
8. 错题在 `/mistakes` 按状态筛选，在 `/mistakes/:id` 订正；订正写入审计行并推进错题状态。
9. 题目维护从 `data/questions/` canonical JSON 开始，经 schema、audit、抽审、approval、release manifest 和 SQL 生成后发布为新迁移。

## 代码与数据定位

- 页面：`src/pages/QuizPage.tsx`、`src/pages/QuizResultPage.tsx`、`src/pages/ChallengePage.tsx`、`src/pages/ChallengeResultPage.tsx`、`src/pages/MistakesPage.tsx`、`src/pages/MistakeDetailPage.tsx`。
- 状态：`src/stores/quizStore.ts`、`src/stores/mistakeStore.ts`。
- 题卡与反馈：`src/components/quiz/QuizCard.tsx`、`src/components/quiz/FillInCard.tsx`、`src/components/quiz/MatchCard.tsx`、`src/components/quiz/GridPuzzleCard.tsx`、`src/components/quiz/ExplanationPanel.tsx`。
- 运行时规则：`src/lib/questionRepository.ts`、`src/lib/questionComposer.ts`、`src/lib/questionContent.ts`、`src/lib/quizUtils.ts`、`src/lib/explanationContent.ts`、`src/lib/mistakeStatus.ts`。
- 唯一内容源：`data/questions/`；配额配置在 `data/question-blueprint.json`，审计和 release 证据在 `data/question-audits/`、`data/question-releases/`。
- 离线工具：`scripts/validate-questions.mjs`、`scripts/generate-seed-sql.mjs`、`scripts/lib/question-schema.mjs`、`scripts/lib/question-audit.mjs`、`scripts/lib/question-release.mjs`、`scripts/lib/question-sql.mjs`。
- 数据类型：`src/lib/database.types.ts`。
- 迁移：`supabase/migrations/005_question_bank_metadata.sql`、`supabase/migrations/006_seed_grade2_validated_questions.sql` 至 `supabase/migrations/011_seed_grade1_validated_questions.sql`、`supabase/migrations/012_mistake_review_parent_report.sql`、`supabase/migrations/014_normalize_choice_answers.sql`、`supabase/migrations/016_refresh_english_question_difficulty.sql`。

主要表：

- `questions`：数据库 UUID、稳定 `external_id`、年级/学科/题型/难度、JSON `content`、知识点、能力层次、tags、`content_hash`、`review_status`、`version`。
- `quiz_records`：本人 `user_id`、`question_id`、学科、正确性、答题积分、JSON `selected_answer`、答题时间。
- `mistake_records`：每用户每题唯一，状态为 `needs_correction`、`reinforcing` 或 `mastered`。
- `mistake_reviews`：每次订正的答案、正确性和状态前后值。
- `check_ins`：普通练习结果页更新科目完成；挑战页还读写迁移未声明的 `challenge_done`。

## 数据与状态流

```text
data/questions canonical JSON
  -> validate + audit + human review
  -> reviewed / approved + release manifest
  -> generate-seed-sql
  -> 新增 migration，按 external_id upsert
  -> questions 运行副本
  -> questionRepository + quiz_records history
  -> questionComposer
  -> quizStore session
  -> quiz_records + mistake_records
```

普通 10 题默认槽位是 7 choice、2 fill、1 match，难度为 5 道 1、3 道 2、2 道 3。选择顺序优先未覆盖知识点，再按未做、30 天前做过、最近 30 天做过分层；同层中较久未做优先。

精确“题型 + 难度”格不足时依次降级到同题型近似难度、同难度、任意剩余题，并标记 `quota-fallback`。候选唯一题不足 10 道时返回 `insufficient-total`，store 不创建残缺会话。

repository 每页读取 1000 行；approved 池只要有一行就不会混入 reviewed 补足，因此“approved 有但不足 10”会失败，而不是跨状态补题。

判题规则：

- choice：canonical 答案是零基选项索引；运行时兼容数字字符串、A–D 和唯一匹配的选项文本并归一化。
- fill：字符串 trim 后忽略大小写比较。
- match：完成全部配对后用 `'correct'`/`'wrong'` 哨兵提交。
- grid：组件校验 4×4 行、列和 2×2 宫格后提交哨兵；但当前 composer 会过滤 grid，所以普通练习、挑战和 PK 组卷不会选到 grid。

完成会话后，store 批量插入 `quiz_records`，再查询既有错题和当日错误，按 `(user_id, question_id)` upsert `mistake_records`。新错题或再次答错回到 `needs_correction`；一次正确订正进入 `reinforcing`，再一次正确订正进入 `mastered`，订正错误则重新计错。

`ExplanationPanel` 展示正确答案、用户答案、原因和下一次思路；有题目 explanation 时优先使用，并对部分语文填空和英语礼貌表达生成更具体的儿童文案，缺失时按题型回退。

## 不变量与已知风险

- `data/questions/` 是唯一 canonical 内容源；`src/data/sampleQuestions.ts` 不是发布源。
- `external_id` 是稳定外部身份；内容或关键元数据变化保留 ID、递增 `version` 并更新 `content_hash`。
- 发布只包含 `approved`，使用 `on conflict (external_id) do update`，禁止全量删除和静默覆盖既有迁移。
- draft 必须经过确定性 schema/audit、人工抽审和 release 门禁；禁止把 AI 输出或 AI 生成 SQL 直接用于生产。
- 当前答题路径不调用 `supabase/functions/generate-questions/`，不得新增运行时 AI 依赖。
- `saveQuizRecords()` 先插入答题行再同步错题，不是事务。错题同步失败会保留已插入的作答，重试可能重复 `quiz_records`。
- `mistakeStore.submitReview()` 先插入 review 再更新主错题，也不是事务；第二步失败会留下审计行与当前状态不一致。
- 普通结果结算依赖客户端 ref 和 `today` 快照；答题记录、积分、伙伴经验、打卡不是同一事务。
- 挑战结算存在 fire-and-forget 和本地日期/UTC 日期混用风险；详见[系统架构的作答与副作用流](../architecture.md#作答与副作用流)。
- 前端和挑战页使用 `check_ins.challenge_done`，但有序迁移及 `src/lib/database.types.ts` 未声明该字段；远端是否手工存在未知。
- `src/lib/database.types.ts` 和 grid 组件允许 `grid`，但 `001_initial_schema.sql` 的 `questions.type` 检查只允许 choice/fill/match，后续所查迁移未放宽该约束。当前 canonical 发布不应假设 grid 可写入数据库。
- 家长报告由今日 `quiz_records` 和全部 `mistake_records` 派生；重复作答按题目去重、每科最多计 10 题。

## 测试与验证

运行时 Vitest 覆盖 repository 的 approved 查询/ reviewed 回退/分页/归一化、history 最新时间，composer 的精确配额/历史优先/降级/总量失败，判题、解释、会话推进、挑战三科各 10、选中答案保存和错题状态。

离线 Node 测试覆盖 schema、配额审计、重复与近重复、approval、release 数量、SQL 转义与幂等 upsert、迁移元数据和 seed 安全。

常用验证：

```bash
npm test -- src/lib/questionRepository.test.ts src/lib/questionComposer.test.ts src/stores/quizStore.test.ts
npm test -- src/lib/questionContent.test.ts src/lib/quizUtils.test.ts src/lib/explanationContent.test.ts
npm test -- src/lib/mistakeStatus.test.ts src/stores/mistakeStore.test.ts
npm run test:questions
npm run questions:validate
npm run questions:sql -- --output <new-migration-path>
npm run build
```

生成 SQL 后必须人工检查只含 approved、目标是新的有序迁移、无 destructive delete，并在测试数据库重复执行确认行数不增长。

## 关联上下文

- [系统架构：题库内容流](../architecture.md#题库内容流)
- [仓库地图](../repository-map.md)
- [工程约定：题库](../conventions.md#题库)
- [题库维护与发布手册](../../question-bank-workflow.md)
- [离线 AI 出题模板](../../ai-question-prompt.md)
- [题库系统设计](../../superpowers/specs/2026-07-20-question-bank-system-design.md)
- [错题复习与家长报告设计](../../superpowers/specs/2026-07-21-wrong-question-review-parent-report-design.md)
- [儿童友好解析设计](../../superpowers/specs/2026-07-22-child-friendly-explanations-design.md)
- [选择题答案归一化设计](../../superpowers/specs/2026-07-22-choice-answer-normalization-design.md)
- [迭代账本](../iterations/README.md)
