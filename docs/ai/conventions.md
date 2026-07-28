# 工程约定

这些规则用于后续编码 AI。若文档与可执行代码、测试或迁移冲突，先以已验证实现为准，并在本次改动中同步修正文档。

## TypeScript 与前端边界

- `tsconfig.app.json` 开启 `strict`；新增代码必须保持 `npm run build` 的类型检查通过。
- 可独立表达的业务规则优先放 `src/lib/`，并以同目录 `*.test.ts` 使用 Vitest 覆盖。现有组卷、判题、错题状态、日期和愿望规则均采用此方式。
- 非平凡 store 状态变化必须测试：至少覆盖成功、重复调用/并发保护、失败后的 loading/error 和持久化副作用顺序。
- UI 页面保持薄编排：负责路由参数、加载触发、呈现和调用动作；复杂计算与状态机下沉到 `src/lib/` 或 store。
- 仓库仍有页面直接访问 Supabase。触碰相关流程时应明确现有边界，避免再复制查询或业务规则；是否迁移到 repository/store 取决于本次范围。

## 离线脚本

`scripts/` 使用 Node.js ESM，核心可复用逻辑放 `scripts/lib/`，测试放 `scripts/tests/*.test.mjs` 并使用内置 `node:test`。

```bash
npm run test:questions
node --test scripts/tests/question-schema.test.mjs
node --test scripts/tests/question-sql.test.mjs
```

脚本应接受显式输入、产生确定性结果、失败时非零退出。生成文件默认不得静默覆盖；发布和远程数据操作必须与纯校验分开。

## 数据库与迁移

- 每次数据库变更新增下一个有序编号的 `supabase/migrations/<number>_<description>.sql`；不得修改已应用迁移来改写生产历史。
- 优先 additive、non-destructive、可重复执行：使用 `add column if not exists`、定向约束/索引和有明确冲突键的 upsert；不要全量删除题库或破坏被历史记录引用的行。
- 表或函数变化同时检查 `src/lib/database.types.ts` 和全部客户端调用点。
- RLS 必须逐操作审查 `using`/`with check` 与 own-row 边界；不能仅因为“已启用 RLS”就认为策略正确。
- `security definer` RPC 必须固定 `search_path`，验证 `auth.uid()`/资源归属，限制 execute 角色，并测试越权、重复调用和并发。
- 奖励和状态机需要数据库级幂等约束或事务/RPC；客户端串行 `await` 只能表达顺序，不能提供原子性。
- 在测试数据库按顺序执行并重复执行可重放迁移，核对行数、约束、RLS 和 RPC，再经审查发布到目标环境。

## 题库

- `data/questions/` 是唯一 canonical 内容源；`questions` 表是运行副本，`src/data/sampleQuestions.ts` 不是发布源。
- AI 只能离线生成 `draft` 候选。候选必须经 schema/audit、人工抽审、`reviewed`/`approved` 门禁后，才能生成迁移。
- 禁止把 AI 生成的 SQL 或未经审查的题目直接写入生产。
- `external_id` 是稳定身份；修订题干、答案、解析或关键元数据时保留它并递增 `version`。保持 `content_hash`、审核状态和 release manifest 一致。
- SQL 生成使用新的有序迁移路径，检查只含 approved 行及 `on conflict (external_id)` 幂等更新；不覆盖既有迁移。

完整步骤见[题库维护与发布手册](../question-bank-workflow.md)，起草格式见[离线 AI 出题模板](../ai-question-prompt.md)。

## 安全

- 不读取、打印、提交或复制 `.env`、service role、真实 key、token、JWT 或托管后台凭据。
- 浏览器代码只能使用公开 client 配置名 `VITE_SUPABASE_URL` 和 `VITE_SUPABASE_ANON_KEY`；service role 只能在受控服务端/离线发布环境使用。
- 日志记录可操作的上下文和安全错误信息，避免请求头、session、完整用户资料、家长/儿童敏感字段和第三方原始响应。
- 新增 Edge Function 或 RPC 时同时审查鉴权、CORS、输入验证、权限和秘密来源；“函数未从 UI 调用”不等于它天然安全。

## Git 与工作区

- 先检查 `git status`；用户已有或无关的 dirty changes 必须保留，不覆盖、不清理、不顺手格式化。
- 保持提交小而聚焦，只暂存本任务文件。未经明确授权不使用 destructive reset、checkout 或递归删除。
- 提交前检查 diff、测试结果和敏感值。不要声称未运行的验证已通过。
- 重要功能、数据、题库、部署或跨模块迭代应更新对应 core/domain 文档和迭代记录；只有形成长期约束时才新增 ADR。

## 验证矩阵

| 改动 | 最低验证 | 追加验证 |
| --- | --- | --- |
| `src/lib` 纯规则 | `npm test` | 对应 colocated Vitest |
| store / 页面 / 路由 | `npm test`、`npm run build` | 目标流程手动走查、深链刷新 |
| 题库内容/schema/audit/release | `npm run test:questions`、`npm run questions:validate` | `npm run questions:sql -- --output <新迁移>` 后审查 diff |
| migration / RLS / RPC | 相关 Node/Vitest、`npm run build` | 测试数据库按序执行、重复执行、own/other-user 权限与并发测试 |
| 部署配置 | `npm run build` | 平台预览、SPA 深链和公开环境变量检查 |
| AI 文档体系 | `node --test scripts/tests/docs-check.test.mjs` | `npm run docs:check` |

验证应与风险成比例；奖励、认证、RLS、迁移和题库发布不能只靠 build。

## 文档职责

[AI 知识库索引](./README.md)定义加载顺序和事实来源：

- core/domain 文档只写当前稳定现状和边界，不堆叠迭代流水；
- iterations 记录一次重要改动实际做了什么、如何验证和还有什么风险；
- ADR 记录长期决策、替代方案和后果，不承担当前接口百科；
- specs/plans 记录需求意图和实施过程，不能替代已验证现状；
- 代码、测试、迁移、配置或行为变化时，只更新被事实影响的文档，并使用相对 Markdown 链接连接导航。
