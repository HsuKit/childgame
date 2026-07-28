# 架构决策记录

ADR 只记录跨迭代、长期有效、未来可能重新讨论的重大取舍。一次迭代内的普通实现选择、执行过程和验证结果留在 [迭代账本](../iterations/README.md)，不在这里重复。

## 状态

- `accepted`：当前接受并应继续遵守的决策。
- `superseded`：已被后续 ADR 取代；保留原文作为历史依据。
- `deprecated`：不再推荐或适用，但尚未由另一项 ADR 直接取代。

## 决策索引

| ID | 日期 | 状态 | 决策 | 影响域 | 记录 |
| --- | --- | --- | --- | --- | --- |
| ADR-0001 | 2026-07-28 | accepted | 以 `data/questions` canonical JSON 作为题库唯一 authoring source | 题库、发布、运行时读取 | [记录](./ADR-0001-canonical-question-json.md) |
| ADR-0002 | 2026-07-28 | accepted | 用幂等奖励账本保护可重试结算 | 积分、愿望币、数据库一致性 | [记录](./ADR-0002-idempotent-reward-ledgers.md) |
| ADR-0003 | 2026-07-28 | accepted | 只维护一个权威 AI 规则入口 | AI 协作、文档治理 | [记录](./ADR-0003-single-authoritative-ai-entry.md) |

## 变更规则

ADR 是决策历史，不因结论变化而静默重写。若重大取舍发生变化，应新增 ADR，为新记录分配 ID，并同步其日期、状态、影响域和索引项；新记录要说明它 supersede 的旧 ADR，旧记录则把状态改为 `superseded` 并注明由哪个新 ADR 取代。旧记录仍保留当时的背景、原因和影响。
