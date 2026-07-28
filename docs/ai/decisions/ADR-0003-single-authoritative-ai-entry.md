# ADR-0003: 只维护一个权威 AI 规则入口

- 日期：2026-07-28
- 状态：accepted
- 影响域：AI 工具入口、项目规则、文档治理与上下文加载

## 背景

Codex、Claude 和 Gemini 识别的项目入口文件不同。如果在 `AGENTS.md`、`CLAUDE.md` 和 `GEMINI.md` 中分别复制完整规则，内容会随修改逐渐漂移，AI 也会在每次启动重复加载相同文本并消耗额外 token。只保留某一个工具能识别的文件，又会让其他工具无法可靠找到项目规则。

## 决策

- 根目录 [AGENTS.md](../../../AGENTS.md) 是项目 AI 规则的唯一权威来源，负责强规则、上下文路由和维护要求。
- [CLAUDE.md](../../../CLAUDE.md) 与 [GEMINI.md](../../../GEMINI.md) 只保留指向 `AGENTS.md` 的 delegate，不复制、改写或追加项目规则。
- `docs/ai/` 按“索引 → core/domain → iterations/ADR → 按需 specs”的层级提供上下文；入口只负责路由，不要求启动时全量加载文档。
- 修改通用项目规则时只修改 `AGENTS.md`，并在完成清单中复核两个 delegate 仍然只承担跳转职责。

当前两个工具入口必须保持纯 delegate。若未来确有无法由 `AGENTS.md` 表达、且某工具运行所必需的特有行为，应先新增或 supersede ADR 重新讨论本决策；在此之前不得向 `CLAUDE.md` 或 `GEMINI.md` 追加规则，任何未来例外也不得与权威规则冲突。

## 原因

一个权威入口消除了三份规则同步更新的维护成本，也让冲突时的事实来源明确。短 delegate 兼容各工具的自动发现方式；分层、按需加载的知识库则让 AI 只读取当前任务相关事实，在保持可发现性的同时控制上下文体积。

## 影响

- 项目规则变更只落在 `AGENTS.md`；不得在任何 tool-specific 入口复制一份“方便读取”的规则。
- `CLAUDE.md` 和 `GEMINI.md` 保持短小，只承担跳转职责。
- 领域事实、迭代过程和长期决策分别进入对应文档层，不堆入入口文件。
- 就本决策相关保证而言，当前文档 checker 只确定性检查 delegate 中写出的本地链接目标存在、知识库必需文件存在，以及 ADR/iteration 文件已被各自 index 链接。
- checker 当前不验证 `CLAUDE.md` 和 `GEMINI.md` 是否仍为 pure delegate，也不核对 ADR 的 ID、日期、状态、影响域是否与索引字段一致；这些约束依赖完成清单与人工审查，是已知治理缺口。未来若增强自动检查，必须同时增加对应的失败用例和 checker 测试。
- 新增 AI 工具时优先创建最短 delegate，使其汇入同一权威入口；若做不到，应通过新的 ADR 明确权衡。

## 替代方案

- **三份入口复制完整规则**：拒绝。每次规则修改都需要同步三处，漂移后没有明确权威来源，并会重复占用上下文。
- **只支持一个 AI 工具入口**：拒绝。团队使用其他工具时无法可靠自动发现规则。
- **启动时加载全部项目文档**：拒绝。大量不相关 domain、iteration、spec 和 plan 会增加 token、噪声及读取旧事实的风险。

## 关联上下文

- [权威 AI 规则入口](../../../AGENTS.md)
- [Claude delegate](../../../CLAUDE.md)
- [Gemini delegate](../../../GEMINI.md)
- [AI 项目知识库](../README.md)
- [当前迭代记录](../iterations/2026-07-28-ai-project-knowledge-system.md)
- [AI 项目知识体系设计](../../superpowers/specs/2026-07-28-ai-project-knowledge-system-design.md)
