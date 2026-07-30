---
id: ITER-20260730-QUESTION-VARIETY
title: 三年级题目避重与模板多样性
status: completed
domains: [quiz-question-bank]
created: 2026-07-30
updated: 2026-07-30
---

## 背景与目标

线上三年级每科均有 140 道唯一 approved 题，但连续练习仍出现重复：结果页没有替换旧会话，组卷器会为了精确难度重复小池题目，作者题虽题干唯一却存在换数字、人物和场景的同模板体验。本迭代在不引入运行时 AI 的前提下，优先减少同题和同模板重复。

## 范围

包含普通练习重新组卷、普通练习与挑战共用的纯组卷器、三年级语数英作者脚本与 canonical JSON、模板标签 schema/audit 门禁、三年级 release migration 和相关测试文档。不包含其他年级模板补标、增加题库总量、运行时 AI 出题、PK 独立历史策略或对全部 420 道题重新人工审校。

## 关联上下文

- [设计](../../superpowers/specs/2026-07-30-question-variety-design.md)
- [实施计划](../../superpowers/plans/2026-07-30-question-variety.md)
- [答题与题库](../domains/quiz-question-bank.md)
- [题库系统基础迭代](./2026-07-20-question-bank-system.md)

## 实施摘要

- 结果页“再练一组”改为结算成功后先调用 `startSession(subject)`，新会话创建成功后再导航；失败保留结果页。
- 组卷候选改为未做题优先。精确难度已做而同题型其他难度仍有未做题时，优先未做题；题型池足够时，测试覆盖同科前 10 轮 100 个唯一题目 ID。
- 组卷器读取 `tags` 中 `模板:<key>`：同组优先新模板且同模板不超过两题，跨组使用历史中该模板最近出现时间轮换。
- 三年级作者脚本为 420 题添加唯一稳定模板标签；语文共 60 个模板、数学 60 个、英语 56 个，单模板最多 7 题。数学入门乘法增加彩纸、座位、贴纸任务，英语入门阅读增加找人物和事实判断问法。
- schema 和 audit 对三年级强制唯一合法模板标签、至少 10 个模板、单模板占比不超过 15%。canonical 数据重新批准并生成幂等 migration `017_refresh_grade3_question_variety.sql`，包含 420 条 upsert。

## 决策与原因

选择“未做题优先于严格难度”是因为每轮固定抽 1 道困难连线题，而 canonical 每科只有 2 道该精确格；继续坚持精确难度会在第三轮提前重复。模板标识复用现有 `tags`，避免为单一用途新增数据库列，并能沿 canonical → migration → runtime 单向发布链传递。模板 key 由作者脚本明确产生，而不是运行时对题干猜测，确保轮换结果稳定且可测试。

## 验证结果

- 组卷和结果页 focused Vitest：4 个文件、23 项通过。
- schema、audit、三年级 author、release 和 SQL focused Node tests：31 项通过。
- `questions:validate` 验证 18 个年级-学科组均为 140 题、题型 105/21/14、难度 70/49/21，并判定可发布。
- 全量 Vitest 30 个文件、150 项通过；离线 Node tests 90 项通过；生产构建成功；文档检查和 `git diff --check` 通过。
- 远端 Supabase 已应用 migration `017`。只读查询确认三年级语文、数学、英语各 140 条 approved、各 140 个唯一 `external_id`，模板标签异常均为 0；模板数分别为 60、60、56，单模板最大题量分别为 7、6、7。
- Netlify 生产首页已引用本次本地构建一致的 `/assets/index-BS07_8Lw.js` 与 `/assets/index-TJ6kJ4a2.css`。

## 风险与遗留

- 模板元数据目前只对三年级强制，其他年级仍依赖题干相似度审计。
- “前 10 轮 100 题不重复”依赖 canonical 的 choice/fill/match 总量；题库被下架或非法内容被运行时过滤时会降级。
- 模板标签是人工定义的教学结构代理，不能替代儿童实测和内容专家全量审校。

## Git 关联

- 实施、canonical 数据和 migration：`813d50c`（`feat: diversify grade three practice`）。
- 关键回归由 `src/lib/questionComposer.test.ts`、`src/pages/QuizResultPage.test.tsx` 和 `scripts/tests/author-grade3.test.mjs` 在同一提交中定位。
