---
id: ITER-20260721-MISTAKE-REVIEW-PARENT-REPORT
title: 错题订正复习与家长报告
status: completed
domains: [quiz-question-bank, wish-parent]
created: 2026-07-21
updated: 2026-07-28
---

## 背景与目标

普通练习和挑战原本能保存对错与积分，但不能稳定回看孩子当时的答案，也没有把重复答错、订正和巩固组织成可持续的复习状态。本迭代补上错题闭环，并在同一学生账号内提供家长报告。本记录于 2026-07-28 依据设计、实施计划、migration、测试和 Git 提交回填；它描述 2026-07-21 的能力阶段，不把后续解析、愿望或当前部署状态倒算为当时成果。

## 范围

包含 `quiz_records.selected_answer`、`mistake_records`、`mistake_reviews`，答错同步和三段状态流转，孩子端错题列表/详情/订正入口，以及同一账号内的家长报告；同时纳入 UUID 默认值、错题页签、每日计数、重复保存和结果页积分显示修复。明确不包含独立家长身份、亲子绑定、多孩子管理、周/月趋势、复杂间隔复习或纸质错题识别，也不把 migration 文件存在解释为已在远端执行。

## 关联上下文

- [答题与题库业务域](../domains/quiz-question-bank.md)
- [愿望与家长业务域](../domains/wish-parent.md)
- [设计规格](../../superpowers/specs/2026-07-21-wrong-question-review-parent-report-design.md)
- [实施计划](../../superpowers/plans/2026-07-21-wrong-question-review-parent-report.md)
- [012 migration](../../../supabase/migrations/012_mistake_review_parent_report.sql)
- [状态流转测试](../../../src/lib/mistakeStatus.test.ts)
- [答题保存测试](../../../src/stores/quizStore.test.ts)
- [家长报告聚合测试](../../../src/stores/mistakeStore.test.ts)
- [结果页规则测试](../../../src/lib/quizUtils.test.ts)

## 实施摘要

- `012_mistake_review_parent_report.sql` 为作答历史增加 JSONB `selected_answer`，创建按用户与题目唯一的当前错题表和逐次复习表，加入状态/计数约束、索引及 own-row RLS；后续修复把 UUID 默认值统一为内置 `gen_random_uuid()`。
- 普通练习和挑战都把选择/填空等当次答案写入 `quiz_records`。错误答案会同步到当前错题状态；新错题进入 `needs_correction`，订正答对进入 `reinforcing`，再次答对进入 `mastered`，复习答错或已掌握题再次答错会回到 `needs_correction`。
- `mistakeStore` 分离错题列表、详情、复习提交和家长报告聚合；孩子可从首页、个人页和错题页面订正或巩固。家长报告读取当天 `quiz_records` 与 `mistake_records`，展示去重后的完成/正确情况、错题状态和薄弱知识点；它不读取 `check_ins`。
- 后续修复让列表页签和每日统计使用正确筛选，按题目去重并避免同一天重复保存重复增加错误次数；结果页则保留首次结算时已经获得的积分显示，不因 check-in 状态刷新变为零。

## 决策与原因

不可变的作答历史与“每题一条”的当前错题状态分开保存，使报告可追溯当次答案，同时让错题列表无需扫描全部历史推导状态。状态转换抽成纯函数，数据库只保存结果和复习轨迹，便于固定“待订正 → 巩固中 → 已掌握”及重新激活规则。家长报告沿用当前 Supabase session 是第一阶段的产品取舍，只验证报告价值，不提供家长授权隔离。

## 验证结果

历史提交中可确认存在 migration、状态转换、答题保存、错题 store、页面和聚合测试；测试覆盖 `selected_answer` 映射、新建/重新激活/订正/巩固状态、同日重复保存、今日计数去重、薄弱知识点和积分显示规则。仓库没有保留 2026-07-21 当时完整的测试、构建、migration 执行或远端验收日志，因此不能确认当时运行过哪些命令。2026-07-28 回填时重新运行相关现有测试并通过；该结果只证明当前检出的实现与回填描述一致，不证明历史或远端执行。

## 风险与遗留

错题状态与普通作答记录由客户端分步写入，不是同一数据库事务；作答保存成功而错题同步失败时仍可能短暂不一致。家长和孩子共用同一身份，孩子也能打开家长报告，当前没有角色、PIN 或权限门禁。报告查询没有使用 `check_ins`，不能把其统计解释为打卡完成真相；重复记录的正确性还受查询返回顺序影响。migration 文件和类型定义不能证明远端 schema 已同步，仓库也没有 PostgreSQL/RLS 集成测试或历史执行日志。

## Git 关联

- 设计与计划：`9fbb372e764095dd2a2b35b13188d6d138cf2c43`、`88f82e4ee894110cf5955e23cc44d49893310a23`。
- schema、规则、答题同步、store 与页面：`421e629c32a6b13f1361231a6dd5c45fe3440851`、`c5288db906630ff1e09d7d8d7705c66612fbf4e6`、`b7b8a092d4600ec80cc208562777353d5e1ba407`、`9bd3fd132ffa54272235d6789b78af40deb9e635`、`8f3c6144a0dee8b076344ccbe04fe4fcd9a1b59c`、`9d5e361c457ccf6688d808f8f25d20d45355e948`。
- 修复：`247f3356bcce7235db0db8eb1ece490886fff7e7`、`56afde0e95f3a06d6b69d2ec6fcf5a7662fa1143`、`8d3b79bb31aa1aa99cfaf03ed50c31b0131ac9f8`、`caec097e7e92eeada2a4ae74d24ddc50a8baa1a8`。
- 以上提交为持久历史定位；本记录不写临时工作分支。
