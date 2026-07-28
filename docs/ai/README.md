# AI 项目知识库

这里维护 AI 协作所需的项目现状、业务边界、迭代历史和长期决策。

## 使用方式

按以下顺序按需加载上下文：

1. 若不是经根目录 [`AGENTS.md`](../../AGENTS.md) 进入，则先读取它；已经读取则继续。
2. 阅读相关 core 文档与 domain 文档。
3. 在 [迭代账本](./iterations/README.md) 中按业务域筛选。
4. 通常只阅读最近 1–3 个相关迭代。
5. 涉及长期约束或取舍时，再查阅 [ADR 账本](./decisions/README.md)。

## 文档地图

### 核心现状

- [项目概览](./project-overview.md)：产品目标、技术栈、运行与部署。
- [架构](./architecture.md)：前端、状态、数据层和外部边界。
- [仓库地图](./repository-map.md)：目录、入口和关键文件定位。
- [工程约定](./conventions.md)：编码、测试、迁移和文档维护约定。

### 业务域

- [认证与资料](./domains/auth-profile.md)
- [答题与题库](./domains/quiz-question-bank.md)
- [伙伴与商城](./domains/companion-shop.md)
- [愿望与家长](./domains/wish-parent.md)
- [排行榜与 PK](./domains/leaderboard-pk.md)

### 历史与决策

- [迭代账本](./iterations/README.md)：重要改动的实施事实、验证和遗留。
- [ADR 账本](./decisions/README.md)：长期有效的架构与产品取舍。

## 事实来源职责

| 来源 | 负责回答 |
| --- | --- |
| 代码与测试 | 当前可执行行为及已验证约束 |
| Supabase migrations | 数据结构、RLS、RPC 和数据演进 |
| `data/questions` canonical JSON | 题库内容与结构 |
| Git | 变更时间线、作者和提交事实 |
| 当前现状文档 | 稳定的项目、架构、仓库与领域现状 |
| iterations | 一次重要改动做了什么、如何验证、遗留什么 |
| ADRs | 为什么选择长期方案，以及替代方案和后果 |
| specs/plans | 需求意图与计划过程，不代表已实现结果 |

## 维护原则

- 当前现状与历史过程分开维护，避免把迭代流水写入 core/domain。
- 使用链接连接上下文，避免复制规则和长段内容。
- 未验证或未知的信息要明确标注，不把推测写成事实。
- 文档不得包含 secrets、令牌或真实环境值。

## 更新触发

- 架构边界或数据流变化：更新 [架构](./architecture.md)，必要时补 ADR。
- 业务行为变化：更新对应 domain 文档，并记录重要迭代。
- 长期约束或关键取舍变化：新增 ADR，并从相关现状与迭代记录链接。
- 重要迭代：创建迭代记录，持续更新实际结果、验证和风险，并同步账本状态。
