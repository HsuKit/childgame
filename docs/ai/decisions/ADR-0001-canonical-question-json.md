# ADR-0001: 以 canonical JSON 作为题库唯一权威内容源

- 日期：2026-07-28
- 状态：accepted
- 影响域：题库内容、审核发布、数据库迁移、运行时题目读取

## 背景

早期题目可能来自运行时生成、仓库内生成文件和多处手工维护，难以回答某道题由谁审核、哪一版已发布，以及数据库内容是否与仓库一致。这会扩大内容漂移、重复发布和质量审计的风险。

仓库现已具备 `data/questions/`、题目 schema、确定性审计、人工审核、release manifest、SQL 生成和有序迁移流程，需要明确这些环节各自的事实来源职责。

## 决策

- `data/questions/*.json` canonical JSON 是题库内容的唯一 authoring source。`draft`、`reviewed` 和 `approved` 是该内容源内的审核生命周期状态，不构成不同的内容源；其他示例、生成结果、SQL 或数据库行也不是并列的 authoring 来源。
- Supabase `questions` 表是由 canonical 内容经校验、审核和幂等迁移发布得到的运行副本，不反向成为内容编辑入口。
- AI 只能离线生成 `draft` 候选。运行时答题链路不得调用 AI，也不得把未经确定性校验和人工审核的 AI 输出直接发布。
- 内容或关键元数据变化时保留稳定 `external_id`、递增 `version`，并依次通过 validate、audit、review 和 release 门禁。
- `reviewed` 只表示已经初审，尚未达到发布门槛。只有 `approved` 内容可以生成新迁移，并通过基于 `external_id` 的非破坏性 upsert 进入运行副本。

当前运行时行为是兼容状态而非最终发布规则：`questionRepository` 优先读取 `approved`；只有某年级、学科的 approved 池完全为空时才回退 `reviewed`。approved 池非空但不足组卷数量时不会混入 reviewed 补足，而会因总量不足拒绝创建残缺会话。该回退是旧数据兼容和已知差距，发布目标仍是为运行时提供足量的 approved 内容。

## 原因

单一、可审查的内容源让内容版本、审核证据和发布产物可以从 Git 追溯。稳定外部 ID 与版本号把“同一道题的更新”和“新增题目”区分开；确定性校验、人工审核和 release 门禁则把 AI 的起草效率与生产内容质量隔离。Supabase 保持为运行副本，可避免线上人工修改悄悄绕过仓库审查。

## 影响

- 直接在数据库中新增或修改题目会造成漂移；发现此类变更时必须先回填并审核 canonical JSON，再由新迁移重新发布。
- 题库迁移必须新增、有序、非破坏，并按 `external_id` 幂等 upsert；不得全量删除或改写已应用的迁移历史。
- 每次发布都需要通过题目测试、schema validation、audit、人工 review 和 release 校验，并保留相应证据。
- 运行时读取仍需保留并测试当前 approved 优先、空池回退 reviewed 的兼容行为，直到另一个经过记录的变更安全移除该差距。
- 领域文档负责描述当前流程和风险；本 ADR 只固定长期权威边界与取舍。

## 替代方案

- **生产运行时调用 AI 生成题目**：拒绝。输出不可预先审核，运行可用性、成本和内容一致性也会成为答题链路依赖。
- **把手写 SQL 当作题库内容源**：拒绝。SQL 不适合作为内容审核界面，且容易让转义、元数据和版本证据分散。
- **直接把 Supabase 表作为 authoring 源**：拒绝。线上编辑难以经过同一套 Git 审查、确定性校验和可重复发布流程，也会造成环境间漂移。

## 关联上下文

- [答题与题库业务域](../domains/quiz-question-bank.md)
- [题库维护与发布手册](../../question-bank-workflow.md)
- [离线 AI 出题模板](../../ai-question-prompt.md)
- [系统架构](../architecture.md)
