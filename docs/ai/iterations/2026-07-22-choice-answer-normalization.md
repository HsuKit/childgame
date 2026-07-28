---
id: ITER-20260722-CHOICE-ANSWER-NORMALIZATION
title: 选择题答案索引规范化
status: completed
domains: [quiz-question-bank]
created: 2026-07-22
updated: 2026-07-28
---

## 背景与目标

题库规范约定选择题答案为从零开始的数字索引，但历史或不一致的数据库行可能把答案保存为数字字符串、`A`–`D` 字母或选项文本。客户端此前直接严格比较，导致界面上选择正确却判错，也无法稳定高亮正确选项。本记录于 2026-07-28 根据规格、计划、migration、测试和两个对应提交回填。

## 范围

包含共享题目内容归一化器、repository 入池过滤、普通答题卡与错题详情的统一渲染/判题边界，以及定向修复现有数据库行的 `014_normalize_choice_answers.sql`。不改变填空、连线等题型答案协议，不改题库发布编号，不属于愿望目录 migration，也不包含 migration 的远端执行或生产验收。

## 关联上下文

- [答题与题库业务域](../domains/quiz-question-bank.md)
- [设计规格](../../superpowers/specs/2026-07-22-choice-answer-normalization-design.md)
- [实施计划](../../superpowers/plans/2026-07-22-choice-answer-normalization.md)
- [014 选择题归一化 migration](../../../supabase/migrations/014_normalize_choice_answers.sql)
- [内容归一化测试](../../../src/lib/questionContent.test.ts)
- [repository 测试](../../../src/lib/questionRepository.test.ts)
- [判题测试](../../../src/lib/quizUtils.test.ts)

## 实施摘要

- `normalizeQuestionContent` 保留范围内的整数索引，把 `"3"` 转成 `3`、把 `A`–`D` 转成 `0`–`3`，并只在选项文本去空白后唯一精确匹配时转成对应索引；空值、越界值、重复文本歧义和其他格式返回 `null`。
- `questionRepository` 在题目进入新组卷池前归一化并排除无效选择题。`QuizCard` 在展示和判题前使用同一内容契约，`MistakeDetailPage` 对历史关系记录也复用它，避免题库、普通答题与错题复习各自解释答案。
- `014_normalize_choice_answers.sql` 用同规则更新现有 `questions.content.answer`；仍无法修复且处于 `reviewed`/`approved` 的选择题会降为 `draft`。migration 增加命名 check constraint，但当前约束验证的是内容“可归一化”，不是 JSON 中已经持久化为数字。

## 决策与原因

canonical JSON 继续以零基数字索引为唯一作者协议，兼容逻辑只放在运行时读取边界和一次数据库修复中，避免把多种答案表示扩散到判题代码。无效行在新组卷时被排除，数据库中的不可修复发布行降级为 draft，以优先避免误判。`014` 明确归属于选择题归一化；标准愿望目录在 `6cc54bb` 后使用 `015`，两者不能混淆。

## 验证结果

现有测试覆盖数字索引、数字字符串、字母、唯一选项文本、越界/无效格式、`“比喻” → 3` 回归、repository 排除无效行和规范化后判题；本地题库校验还能核对 canonical 文件继续使用数字答案。仓库没有保留 2026-07-22 当时的完整测试、构建、数据库 migration 或远端部署日志。2026-07-28 回填时重新运行定向测试和题库校验并通过；这些结果只验证当前仓库。

## 风险与遗留

运行时只接受 `A`–`D`，选项超过四个时不会把后续字母转为索引；选项文本必须唯一精确匹配，大小写、同义词或重复文本不会猜测。repository 会静默排除无效行，若有效池因此不足，用户只会看到组卷不足的上层错误。数据库 check constraint 调用归一化函数，所以未来写入 `"3"`、`"D"` 或唯一选项文本仍可通过约束；它没有严格强制持久化 JSON 必须已是数字索引。migration 文件存在也不能证明任一远端数据库已经修复或启用约束。

## Git 关联

- 设计：`d28145cb3ea813e01aa83de6adf949a03abca5a3`（`docs: specify choice answer normalization fix`）。
- 实施、计划与 migration：`84c7d6eef81eed93e1beaa25a6c23d07652a2217`（`fix: normalize legacy choice answers`）。
- 以上提交为持久历史定位；本记录不写临时工作分支。
