---
id: ITER-20260519-PROJECT-PHASE-ONE
title: 项目第一阶段与核心学习闭环
status: completed
domains: [auth-profile, quiz-question-bank, companion-shop, platform]
created: 2026-05-19
updated: 2026-07-28
---

## 背景与目标

项目从面向 1–6 年级儿童的“学习获得奖励、奖励用于养成伙伴”概念起步，目标是先建立可运行的 Web 基础和最小学习闭环：匿名进入并建立资料，选择伙伴，完成语数英练习获得积分，再用积分购买食物或装扮并维持每日打卡。挑战模式、更多题型和题库扩充随后沿同一闭环继续补入。

本记录是 2026-07-28 的历史回填，依据当时的设计规格、实施计划、迁移和相关 Git 提交整理；只记录这些资料能够证明的历史，不把后来形成的可靠性机制或当前状态投射到第一阶段。

## 范围

包含：

- React、TypeScript、Vite、Tailwind CSS、Zustand、Supabase 客户端与路由构成的应用基础。
- 匿名认证启动、昵称/年级 profile 和手机号字段更新入口；手机号更新不等同于已验证的正式账号升级。
- 初始伙伴选择与命名、伙伴饱腹/心情/经验、喂食和装备入口。
- 语文、数学、英语练习、即时判题、积分流水、商城购买和分科每日打卡。
- 紧随基础版本加入的每日综合挑战、`quiz_records` 保存、填空/匹配题型、AI 出题函数试验及关闭自动调用、内置/数据库题库扩充与随机选题。

明确不包含班级排行、好友 PK、通知、AI 生图伙伴、小程序或 App；也不把后来建立的题库审核发布、错题订正、家长报告、认证恢复和跨副作用一致性能力算作本阶段成果。

## 关联上下文

- [最初设计规格](../../superpowers/specs/2026-05-19-childgame-design.md)
- [Phase 1 实施计划](../../superpowers/plans/2026-05-19-childgame-phase1.md)
- [001 初始数据库结构](../../../supabase/migrations/001_initial_schema.sql)
- [002 内置题库种子](../../../supabase/migrations/002_seed_questions.sql)
- [认证与资料业务域](../domains/auth-profile.md)
- [答题与题库业务域](../domains/quiz-question-bank.md)
- [伙伴与商城业务域](../domains/companion-shop.md)
- [迭代账本](./README.md)

## 实施摘要

`b28a6a7` 一次性落下应用骨架和第一版闭环：`GuestGate` 复用或创建匿名 Supabase session，用户建立昵称/年级 profile 后选择并命名伙伴；练习会话按学科出题并结算积分，结果参与伙伴经验、商城购买和每日打卡。`001_initial_schema.sql` 为 profile、伙伴、伙伴类型、问题、答题记录、打卡、积分流水和商城道具建立表、索引与 own-row RLS，并写入初始伙伴和商品数据。

随后几次紧密提交扩展学习侧能力：`64363b5` 增加每日混合学科挑战及结果页；`98c5045` 修正最后一题完成状态并把练习/挑战作答写入 `quiz_records`；`2377380` 增加填空和匹配题卡。`22b749a` 曾加入调用 DeepSeek 的 Edge Function 及题量不足时的自动回退，但 `4174606` 随即关闭运行时自动 AI 出题，改为依赖内置题。`8f5e0d6` 再加入覆盖 1–6 年级、三学科的数据库种子并随机选择题目。

实际结果与原始规格/计划并不完全相同：计划中的 AI 缓存回退没有作为稳定运行时路径保留，题目来源也从最初的少量前端样例继续演进为数据库种子，并在更晚阶段继续形成独立的题库治理体系。本记录不据此推断第一阶段已经具备当前全部题库质量、认证恢复或奖励一致性保障。

## 决策与原因

- 采用匿名优先的 Supabase session 与 own-row RLS，让儿童先进入体验，再补 profile 信息；当时的手机号入口仅更新资料字段。
- 以 Zustand store 分隔认证、伙伴、练习、积分、打卡和商城状态，使最小闭环可以分模块落地。
- 用积分流水而不是独立余额字段表达获得与消费，并让学习结果驱动伙伴经验和商城消费。
- 在题量不足时尝试运行时 AI 生成，但因该路径不适合作为可靠默认来源而关闭自动调用，转向内置和数据库题库。
- 将 2026-05-19 至 2026-05-20 的基础提交合并为一条历史记录，因为它们共同完成并加固同一个核心学习闭环，而不是彼此独立的产品阶段。

## 验证结果

2026-07-28 回填时执行的文档验证为：`node --test scripts/tests/docs-check.test.mjs` 21/21 通过，`node scripts/check-docs.mjs` 通过，`git diff --check` 通过；本记录中的链接也由同一 checker 校验。

历史实现证据来自 `b28a6a7` 对 42 个应用/迁移文件的基础实现，以及后续提交对挑战页、`quizStore`、题卡组件、Edge Function 和 `002_seed_questions.sql` 的具体变更。指定历史提交的树中未找到自动化测试文件，所给规格、计划和提交也没有保存当时命令输出，因此未能从仓库资料确认 2026-05-19/20 当时的测试、构建、部署或手动验收结果。

## 风险与遗留

第一阶段以客户端串联多个 Supabase 写入完成闭环，资料并不能证明作答、积分、经验、商城和打卡已经具备事务性、幂等性或完整失败恢复。最初题库及其 AI 尝试也不代表后来形成的题库质量门禁；匿名 session、手机号字段、题目来源和挑战字段的真实部署状态均需结合当前代码与迁移重新核对。

这些边界后来分别在[认证与资料业务域](../domains/auth-profile.md)、[答题与题库业务域](../domains/quiz-question-bank.md)、[伙伴与商城业务域](../domains/companion-shop.md)及[迭代账本](./README.md)中继续追踪。本历史记录不宣称其中列出的当前风险已在第一阶段解决。

## Git 关联

- `b28a6a7` — `feat: Phase 1 complete — companion system, quiz, points, shop, check-in`
- `64363b5` — `feat: add daily challenge mode with mixed-subject quizzes`
- `98c5045` — `fix: save quiz records to DB and fix completion state on last question`
- `2377380` — `feat: add fill-in-the-blank and matching question types`
- `22b749a` — `feat: add AI question generation Edge Function and auto-fallback`
- `4174606` — `fix: disable auto AI question generation, rely on built-in questions`
- `8f5e0d6` — `feat: comprehensive question bank with random selection`

原始资料未提供独立 PR 或发布记录，未能确认对应关联。
