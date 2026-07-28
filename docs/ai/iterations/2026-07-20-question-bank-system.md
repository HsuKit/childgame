---
id: ITER-20260720-QUESTION-BANK-SYSTEM
title: 全国通用题库基础设施与全年级发布
status: completed
domains: [quiz-question-bank, platform]
created: 2026-07-20
updated: 2026-07-28
---

## 背景与目标

该阶段把一至六年级语文、数学、英语题库从运行时随机取题和分散数据维护，推进为可审查、可校验、可分批发布的全国通用静态题库体系，并让普通练习与综合挑战采用平衡、参考作答历史的组卷。本文于 2026-07-28 根据规格、三份数据/基础设施计划、工作流文档、migrations、测试和 Git 历史回填；它总结 2026-07-20 的一个能力阶段，而不是逐年级拆分记录或描述当前整体产品状态。

## 范围

包含规范题目模型、课程蓝图、结构校验、配额与重复审计、内容哈希、发布 SQL、数据库元数据、题目 repository、纯组卷器、普通练习/挑战接入，以及二年级迁移和一、三、四、五、六年级的审阅、批准、release manifest 与 migrations `006`–`011`。不包含用户答题时的 AI 实时出题、教材版本绑定、后台编辑器、自然语言长答案自动判定，也不把 migration 文件存在解释为已经在测试或生产 Supabase 执行。

## 关联上下文

- [全国通用题库设计](../../superpowers/specs/2026-07-20-question-bank-system-design.md)
- [题库基础设施计划](../../superpowers/plans/2026-07-20-question-bank-infrastructure.md)
- [二年级迁移计划](../../superpowers/plans/2026-07-20-grade2-question-bank-migration.md)
- [其余年级题库计划](../../superpowers/plans/2026-07-20-remaining-grades-question-banks.md)
- [题库维护与发布手册](../../question-bank-workflow.md)

## 实施摘要

- 建立三层明确产物：`data/questions/` 中的 canonical JSON 是人工审阅的唯一内容源；`data/question-releases/` manifest 指定一次发布包含的年级/学科文件和预期批准数量；`supabase/migrations/` SQL 是写入 Supabase 运行副本的发布产物，数据库不是反向维护的内容源。
- 离线流水线校验 schema、枚举、题型与难度配额、知识点覆盖、答案位置、内容完整性和重复项，计算确定性内容哈希并输出审计/CLI 报告。SQL 生成器只选择 `reviewStatus: approved`，按 `external_id` 生成幂等 upsert；远端发布脚本也只接受 approved，并改为环境变量凭据与非破坏批量 upsert。
- migration `005_question_bank_metadata.sql` 以加列、回填、约束和索引扩展 `questions`，把既有行标为 `reviewed` 并保留 UUID 与 `quiz_records` 引用。运行时数据访问被隔离到 question repository；纯组卷器目标为 10 题的 7/2/1 题型、5/3/2 难度和至少四个知识点，优先未作答、30 天前作答、近期作答，并在精确格不足时降级、总量不足时明确失败。挑战按三科各组 10 题后混排，去除前端生成数独造成的记录缺口。
- 二年级先完成旧池只读盘点、候选规范化、每科 140 题策划、每科 20 题分层抽审、全量批准、420 题 manifest 和 migration `006`。随后复用发布工厂完成三、四、五、六、一年级；每个年级均留下三份 140 题 canonical JSON、60 题抽审记录、420 题 release manifest 和对应 migration `007`–`011`。仓库产物合计 18 个年级-学科组、2,520 条 approved canonical 题目。
- 分阶段迁移期间，提交 `7027933` 在 approved 池为空时才回退该年级学科的 reviewed 旧池，以免结构迁移先于内容迁移时练习完全中断；approved 池非空时不会混入 reviewed 补量。

## 决策与原因

选择“canonical JSON → release manifest → SQL migration → Supabase 运行副本”的单向发布链，使内容审阅、版本、哈希与发布范围可以在 Git 中定位，并避免手工数据库维护和全量删除。`draft`、`reviewed`、`approved` 是质量门槛而非同义状态，只有 approved 可由生成器发布。组卷算法与网络访问、Zustand 状态分离，便于独立验证配额、历史优先级和不足时的降级；新增元数据采用向前兼容迁移，以稳定 ID upsert 保留历史作答引用。

## 验证结果

历史提交可确认存在 schema、audit、SQL、CLI、metadata migration、seed safety、composer、repository、store、导出、规范化、策划、抽审、批准、release 和各年级 authoring 测试文件。仓库内 18 份 canonical JSON 各为 140 条 approved；六个 release manifest 各声明 420 条批准题，migrations `006`–`011` 各包含 420 个按 `external_id` upsert 的插入语句。每个年级的抽审文档记录三科各 20 题、共 60 题通过。没有保留 2026-07-20 当时完整的测试、构建、migration dry-run、生产统计或 smoke-test 原始日志，因此这些仓库产物不能证明远端执行或生产验收。2026-07-28 回填时，文档校验测试 21/21、仓库文档检查、Markdown 链接、所列提交对象、migration 静态结构、敏感信息扫描和 `git diff --check` 均通过；这些只验证回填内容及其可追溯性。

## 风险与遗留

migration 文件和 release manifest 只能证明发布材料存在，不能证明已应用到任一远端环境；当时完整发布统计与生产验证日志未知。为分阶段迁移加入的 reviewed 空池回退是兼容措施，不是 reviewed 获得发布资格；截至 2026-07-28 的工作流文档仍记录该行为，因此它仍是质量边界风险：某年级学科没有 approved 池时，运行时可读取尚未达到发布门槛的 reviewed 旧题。近似重复和人工质量仍依赖审计报告及抽审纪律，仓库证据不能替代全量人工审校。

## Git 关联

- 设计、基础设施与运行时：`187678f^..2865a47`；关键提交为 `8ed1e48`（schema）、`b0c594a`（audit）、`6c8e11c`（幂等 SQL）、`b2e9ef8`（metadata）、`aec1d2b`（非破坏发布）、`e0c861e`（组卷）、`5db3dce`（repository）、`ddfd342`（练习与挑战接入）。
- 二年级：`6d5607a^..6750ab6`，另含阶段兼容修复 `7027933`；依次对应盘点、规范化、策划、批准、migration 和 staged migration 保护。
- 其余年级：`c4560af^..f5616f4`；关键发布提交为 `3a4aee8`（三年级）、`f963ff0`（四年级）、`8f03142`（五年级）、`78ed40f`（六年级）、`f5616f4`（一年级）。
- 上述范围包含任务指定的全部题库提交并可由 Git 对象定位；不关联 2026-07-28 的临时工作分支。
