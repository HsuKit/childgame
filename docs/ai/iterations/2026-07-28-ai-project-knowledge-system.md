---
id: ITER-20260728-AI-PROJECT-KNOWLEDGE-SYSTEM
title: AI 项目知识与迭代追踪体系
status: completed
domains: [documentation]
created: 2026-07-28
updated: 2026-07-28
---

## 背景与目标

建立按需加载的 AI 项目上下文与可追溯迭代记录，减少重复探索和无关 token 消耗，同时让现状、历史和决策可以相互核验。

## 范围

本迭代覆盖统一 AI 入口、核心与 domain 文档、ADR 体系、重要历史回填、文档 validator 及 `PROJECT_INFO` 兼容入口。

## 关联上下文

- [设计规格](../../superpowers/specs/2026-07-28-ai-project-knowledge-system-design.md)
- [实施计划](../../superpowers/plans/2026-07-28-ai-project-knowledge-system.md)
- [AI 知识库索引](../README.md)
- [系统架构](../architecture.md)
- [业务域索引](../README.md#业务域)
- [ADR 账本](../decisions/README.md)
- [ADR-0001：canonical 题库内容源](../decisions/ADR-0001-canonical-question-json.md)
- [ADR-0002：幂等奖励账本](../decisions/ADR-0002-idempotent-reward-ledgers.md)
- [ADR-0003：单一 AI 规则入口](../decisions/ADR-0003-single-authoritative-ai-entry.md)

## 实施摘要

本迭代已建立 `AGENTS.md` 单一规则入口和 `docs/ai/README.md` 路由索引，补齐项目概览、架构、仓库地图、工程约定 4 份核心文档，新增认证资料、答题题库、伙伴商城、愿望家长、排行榜 PK 5 份业务域文档，以及 3 份长期决策 ADR。

迭代账本现有 10 条历史记录与本记录，共 11 条可筛选记录；历史回填覆盖项目第一阶段、伙伴演进、核心可靠性、认证恢复、题库体系、错题与家长报告、选择题答案规范化、儿童友好解析、愿望奖励和英语难度优化。仓库还提供确定性 validator、21 个 Node 回归测试、`npm run docs:check` 命令，并把 `PROJECT_INFO.md` 收窄为面向人的快速操作手册和 AI 知识库入口。

质量审查进一步修复题库 migration 生成器的输出安全边界：移除已过时的默认 `006` 路径，强制显式 `--output <path>`，拒绝缺值或把后续 flag 当作路径，并使用相对路径边界识别 `supabase/migrations/`。该目录内任何已存在文件即使传入 `--force` 也不能覆盖；仓库外临时审阅输出仍保留明确 `--force` 后覆盖的能力。6 个直接调用真实 `main` 与文件系统的测试覆盖了这些门禁。

## 决策与原因

- 用单一权威入口承载项目级 AI 规则，其他代理入口只做代理，避免多份规则互相漂移。
- 按 core、domain、iteration 和 ADR 分层按需读取，减少启动时无关上下文，同时保留从当前事实到历史证据的路径。
- 每次重要迭代保持一页记录，并通过倒序 ledger 按日期和业务域筛选，避免把逐次变更堆进现状文档。
- 只有形成长期约束、替代方案与后果的决策才达到 ADR 门槛，避免把普通实施记录升级为永久规则。
- 用无网络、结果确定的 checker 校验结构、元数据、索引和链接，使文档机械一致性可以在本地和 CI 重复验证。

## 验证结果

- `node --test scripts/tests/docs-check.test.mjs`：21/21 通过，0 失败。
- `node --test scripts/tests/question-migration-output.test.mjs` TDD RED：6 个测试中 2 个通过、4 个按预期失败，分别暴露默认 `006` 生成、缺值底层 path 错误、flag 被当作路径和 `--force` 覆盖既有 migration；实现后 GREEN 为 6/6 通过。
- `npm run docs:check`：输出 `Documentation check passed.`。
- `VITE_SUPABASE_URL=http://localhost VITE_SUPABASE_ANON_KEY=test npm test`：16 个测试文件、93 个测试通过。
- `npm run test:questions`：85/85 个 Node 测试通过，0 失败。
- `npm run questions:validate`：18 个年级-学科组合各 140 题，共 2,520 题，输出 `Question bank is publishable.`。
- `VITE_SUPABASE_URL=http://localhost VITE_SUPABASE_ANON_KEY=test npm run build`：TypeScript 与 Vite 构建成功，543 个模块完成转换；保留动态/静态 import 和大于 500 kB chunk 的非阻断警告。
- `git diff --check`：无输出，exit 0。
- 敏感扫描覆盖本次 5 个修改或新增文件，未发现 JWT、真实 Supabase project URL、service-role/anon key 值或常见 secret key 前缀；变量名称、明确 placeholder 和测试用 `test` 值被允许。

## 风险与遗留

- checker 当前只解析 inline Markdown links，不验证 reference-style links。
- 代理入口是否保持纯 delegate，以及 ADR 元数据与索引字段的语义一致性，仍需要人工 review。
- 确定性检查不能完全识别文档与实现之间的语义漂移；业务事实仍需结合代码、测试、迁移和配置核验。
- migration 生成器不会自动挑选或验证下一个编号；它阻止改写已存在文件，但新路径的编号顺序、内容 diff 和发布目标仍需人工检查。
- 已发现的具体产品与数据一致性风险不在本记录重复展开，见[业务域文档](../README.md#业务域)和[系统架构](../architecture.md)。

## Git 关联

- `codex/ai-project-knowledge-system` 是本次 AI 项目知识体系的隔离实施分支。
- validator 与 21 个测试：`290069c`–`073a7ad`（含链接、ledger、日期和覆盖修正）。
- 单一入口、索引与当前记录骨架：`3e143b7`、`cc0f6aa`。
- 核心文档和部署/结算边界：`9f2b2ea`、`9fde1d7`。
- 5 个业务域及风险边界：`da9eae2`、`06e4885`、`ae90e5f`。
- 3 个 ADR 及运行时事实对齐：`e9effd0`、`c7192e4`、`d5a8dbb`。
- 10 条历史迭代及归属修正：`e5fcd00`–`8617e73`。
- 本记录随 `docs: complete AI project knowledge system` 收尾提交落盘，精确 hash 由 `git log -- docs/ai/iterations/2026-07-28-ai-project-knowledge-system.md` 定位。
- 题库 migration 输出安全修复随 `fix: require safe question migration output` 提交落盘，精确 hash 由同一文件的 `git log` 定位。
