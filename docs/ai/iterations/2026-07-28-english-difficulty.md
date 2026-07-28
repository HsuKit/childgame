---
id: ITER-20260728-ENGLISH-DIFFICULTY
title: 英语题目难度分层优化
status: completed
domains: [quiz-question-bank]
created: 2026-07-28
updated: 2026-07-28
---

## 背景与目标

部分英语低难度选择题的题干长度和跨句负担仍偏高，特别需要让三年级入门题更接近短听读/短阅读，同时保持高年级逐步增加信息整合。本迭代在既有 70/49/21 难度配额内调整内容和元数据。本记录依据提交 `aff8597`、作者脚本、canonical JSON、`016` migration 和测试回填；仓库没有该改动的独立 approved 规格或实施计划。

## 范围

仅覆盖一、三、四、五、六年级英语作者脚本与对应五份 `data/questions/grade*-english.json`，新增英语低难度题干长度测试，并生成 `016_refresh_english_question_difficulty.sql`。二年级英语没有在该提交中修改；语文、数学作者内容也不属于本迭代目标。migration 文件存在不等于已经应用到测试或生产 Supabase。

## 关联上下文

- [答题与题库业务域](../domains/quiz-question-bank.md)
- 无独立 approved 规格或实施计划。
- [英语难度测试](../../../scripts/tests/english-difficulty.test.mjs)
- [一年级英语作者脚本](../../../scripts/author-grade1-english.mjs)
- [三年级英语作者脚本](../../../scripts/author-grade3-english.mjs)
- [四年级英语作者脚本](../../../scripts/author-grade4-english.mjs)
- [五年级英语作者脚本](../../../scripts/author-grade5-english.mjs)
- [六年级英语作者脚本](../../../scripts/author-grade6-english.mjs)
- [016 刷新 migration](../../../supabase/migrations/016_refresh_english_question_difficulty.sql)

## 实施摘要

- 五个作者脚本按 `difficulty` 区分低、中、高层内容，缩短低难度选择题的场景与推理链；三年级难度 1 题增加 `听读入门` 标签，受影响的五个年级按年级逐步放宽低难度题干长度门槛。
- 一、三、四、五、六年级英语 canonical JSON 随脚本刷新，相关题目版本更新为 2；每份仍为 140 题，并保持难度 1/2/3 分布为 70/49/21。二年级文件不在提交 diff 中，不能算作本次刷新。
- `scripts/tests/english-difficulty.test.mjs` 对三年级入门标签、单题最大题干长度和平均长度设定门槛，并对 1、3、4、5、6 年级低难度选择题设置逐级放宽的长度上限。
- `016_refresh_english_question_difficulty.sql` 是从 validated canonical 题库生成的幂等发布快照，实际包含全 18 个年级-学科文件的 2,520 条 `external_id` upsert；本迭代内容变化来自上述五份英语 JSON，不能把 migration 的全量快照理解为本次重写了所有学科。

## 决策与原因

保留既有 70/49/21 数量配额，只在同一难度标签内部降低低难度题的阅读负担，以免内容优化改变组卷器的配额契约。使用年级分别设定的最大/平均题干长度作为可自动回归的代理指标，同时保留高难度的跨句、证据和真实任务推理。由于改动没有独立规格/计划，本记录不补造审批状态或计划来源。

## 验证结果

现有 Node 测试覆盖三年级 `听读入门` 标签和 1、3、4、5、6 年级低难度选择题长度门槛；静态核对可确认五份 JSON 各 140 题、难度分布 70/49/21，`016` 含 2,520 条 upsert，其中五个受影响英语年级各 140 条。仓库没有保留该提交当时的测试输出、人工分级评审、migration 执行或生产验收日志。2026-07-28 回填时重新运行英语难度测试和题库校验并通过；这只证明当前仓库产物。

## 风险与遗留

字符长度和平均长度只是阅读负担代理，不能完整衡量词汇、句法、文化背景、听力要求或真实教学难度；测试也没有覆盖中高难度质量。二年级英语未参与本次调整，不能推断其已经采用相同策略。`016` 虽名为英语难度刷新，却包含全题库 upsert，应用前仍需核对发布范围和测试数据库结果；仓库没有证据证明该 migration 已在任何远端运行，也没有生产题目抽样或儿童可用性验收记录。

## Git 关联

- 实施：`aff8597037dc3a6b6e1422cfad11b2e2c7b8a6ab`（`Optimize English question difficulty`）。
- 该提交同时包含五份英语 canonical JSON、五个作者脚本、英语难度测试和 `016` migration，是本记录唯一持久 Git 定位；没有独立规格或计划提交，也不写临时工作分支。
