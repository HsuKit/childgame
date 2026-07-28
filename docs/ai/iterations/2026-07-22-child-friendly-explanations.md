---
id: ITER-20260722-CHILD-FRIENDLY-EXPLANATIONS
title: 儿童友好解析与共享展示
status: completed
domains: [quiz-question-bank, wish-parent]
created: 2026-07-22
updated: 2026-07-28
---

## 背景与目标

普通答题卡和错题订正原本各自展示短反馈，很多题目解析只重复答案，缺少可复用的思考路径。本迭代把即时反馈统一为“答案、为什么、下次这样想”，并改进部分语文/英语出题模板。本记录于 2026-07-28 根据规格、计划、提交 diff、现有测试和题库数据回填；愿望域仅因同一提交附带完成同步修复而列入。

## 范围

包含共享解析 helper 与 `ExplanationPanel`，选择、填空、连线答题卡和错题详情的即时反馈，三年级语文及一、三、四、五、六年级英语的作者脚本/题库解析文案刷新，以及同一提交中的愿望科目完成对账修复。不包含 AI 实时辅导、计分或答案协议变更、数据库 schema 变更，也不声称人工重写了每一道题或所有解析已经达到统一教学质量。

## 关联上下文

- [答题与题库业务域](../domains/quiz-question-bank.md)
- [愿望与家长业务域](../domains/wish-parent.md)
- [设计规格](../../superpowers/specs/2026-07-22-child-friendly-explanations-design.md)
- [实施计划](../../superpowers/plans/2026-07-22-child-friendly-explanations.md)
- [共享解析组件](../../../src/components/quiz/ExplanationPanel.tsx)
- [解析内容测试](../../../src/lib/explanationContent.test.ts)
- [三年级作者脚本测试](../../../scripts/tests/author-grade3.test.mjs)
- [共享答题规则测试](../../../src/lib/quizUtils.test.ts)

## 实施摘要

- `buildExplanationContent` 统一生成鼓励标题、孩子答案、正确答案、原因和可迁移提示；优先保留具体的既有解析，对缺失内容提供题型 fallback，并针对常见中文填空与英语礼貌请求补充线索式说明。
- `ExplanationPanel` 被选择、填空、连线卡片和错题详情复用，替换分散的即时反馈标记；因此普通答题和订正复习看到同一展示结构。网格题未在该提交中接入该共享面板。
- 作者脚本增加共享解析文案函数，改进三年级语文填空和一、三、四、五、六年级英语的代表性解析，并刷新相应 canonical JSON；脚本测试锁定“思考路径”和礼貌表达提示，而不是只检查裸答案。
- 共享提交 `0f0488e` 还把科目完成结算从“是否获得答题积分”中拆开，并在首页依据今日答题数补同步缺失完成状态。该愿望修复在本记录只作提交边界说明，完整奖励账本/RPC/商城成果归入“愿望币、愿望商城与家长兑现流程”迭代。

## 决策与原因

解析 helper 与展示组件分离，使文本规则可单元测试、各答题卡保持同一视觉结构，同时继续兼容题库已有的 plain `content.explanation`。fallback 只提供题型级引导，不尝试凭空生成学科推理；具体解释仍应来自 canonical 内容和作者脚本。对共享提交按行为拆分记录，避免愿望修复被解析迭代吞并或在两个迭代中重复宣称完整成果。

## 验证结果

`src/lib/explanationContent.test.ts` 覆盖中文填空、英语礼貌请求和缺失解析 fallback；`scripts/tests/author-grade3.test.mjs` 检查代表性语文/英语生成题包含线索、原因和下次提示；`src/lib/quizUtils.test.ts` 覆盖该提交附带的完成同步规则。仓库没有保留 2026-07-22 当时完整的测试、构建或人工内容验收日志。2026-07-28 回填时重新运行这些现有测试并通过；这不能证明全部题目都经过人工教学审查。

## 风险与遗留

具体解析质量仍取决于题库文本；过于笼统但未命中特定模式的既有解析会原样展示，fallback 也只能给通用策略。该提交只刷新点名年级/学科的生成内容，未覆盖二年级英语、其他年级语文或所有数学题；网格题也未接入共享面板。作者脚本测试只抽查代表题，不能代表 700 条英语和全部中文内容均完美。canonical JSON 和 migration/远端运行副本仍可能不同步，本迭代没有数据库发布证据。

## Git 关联

- 规格、计划、共享解析、题库文案与愿望完成同步：`0f0488e8b30d4a2ac8afe30fb0a66cca6e678c22`（`Improve explanations and wish coin completion`）。
- 同一提交中，解析 helper、组件、作者脚本、题库 JSON 与解析测试归本记录；`HomePage`、`QuizResultPage` 的愿望完成同步同时作为愿望迭代的后续修复证据。
- 该提交为持久历史定位；本记录不写临时工作分支。
