# AI 项目规则入口

本项目是面向小学 1–6 年级、基于 React/Supabase 的学习与激励应用。

## 开始任务

1. 先阅读 [AI 知识库索引](./docs/ai/README.md)。
2. 先判断任务所属业务域，再按路由加载核心文档和领域文档。
3. 从 [迭代账本](./docs/ai/iterations/README.md) 筛选记录，通常只读最近 1–3 个相关迭代。

## 按需读取协议

- 不要在启动时读取全部 domains、iterations、specs 或 plans。
- 先读与任务直接相关的 core/domain 文档，再用 ledger 按业务域和日期筛选历史。
- 只有涉及长期取舍、已有约束或决策变更时，才读取 [ADR 账本](./docs/ai/decisions/README.md)。
- 只有跨域行为或共享基础设施受影响时，才扩大到其他领域文档。
- specs/plans 用于理解目标和实施过程，不替代当前代码与现状文档。

## 任务路由

| 任务线索 | 优先读取 |
| --- | --- |
| 页面、路由、状态 | [架构](./docs/ai/architecture.md) + [仓库地图](./docs/ai/repository-map.md) |
| 答题、挑战、错题、题库 | [答题与题库](./docs/ai/domains/quiz-question-bank.md) |
| 伙伴、积分、商城 | [伙伴与商城](./docs/ai/domains/companion-shop.md) |
| 愿望、家长报告 | [愿望与家长](./docs/ai/domains/wish-parent.md) |
| 登录、年级、资料 | [认证与资料](./docs/ai/domains/auth-profile.md) |
| 排行榜、PK | [排行榜与 PK](./docs/ai/domains/leaderboard-pk.md) |
| 数据库、迁移 | [架构的数据层](./docs/ai/architecture.md#数据层) + 对应 domain |
| 部署 | [项目概览的部署说明](./docs/ai/project-overview.md#部署) + 最近相关迭代 |

## 强规则

- [`data/questions`](./data/questions/) 是题库唯一内容源；不要在其他位置维护重复题目。
- 数据库迁移必须新增且有序，并保持非破坏或幂等；不要改写已经应用的迁移历史。
- 密钥、令牌、真实环境值绝不进入代码、文档或输出。
- 验证过的代码、测试和迁移优先于陈旧文字；发现冲突时必须在本次任务修正文档。
- 保留用户已有的无关改动，不覆盖、不清理、不顺手重写。

## 什么是重要改动

以下改动必须记录：功能或行为变化；影响用户或数据正确性的 Bug 修复；数据库、RLS、RPC 或迁移；题库结构、校验或发布；部署流程；跨模块重构或长期决策。

纯格式、注释和无行为变化的小型依赖更新可以只保留 Git 记录。

## 完成清单

- 将实际实施结果与验证结果写回当前迭代记录。
- 更新 [迭代账本](./docs/ai/iterations/README.md) 的状态与链接。
- 更新受影响的现状文档和 domain 文档。
- 判断是否形成长期约束；如是，新增或更新 ADR。
- 运行相应测试与 `npm run docs:check`。
- 检查变更和输出中没有敏感信息。
