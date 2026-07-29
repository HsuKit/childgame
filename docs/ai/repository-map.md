# 仓库地图

这里只记录后续编码 AI 最常用且较稳定的边界。具体行为先看相关 core/domain 文档，再定向读取入口文件。

## 高价值目录

| 路径 | 职责 | 常见入口 |
| --- | --- | --- |
| `src/pages/` | 路由页面、数据加载触发和跨 store 编排；部分页面直接访问 Supabase | `src/App.tsx`、`HomePage.tsx`、各结果页 |
| `src/components/` | 按 auth、layout、quiz、companion、shop、wish 等领域组织 UI；`components/ui/` 是跨域语义原语 | `components/ui/Button.tsx`、`components/layout/AppLayout.tsx`、`components/common/ErrorBoundary.tsx` |
| `src/stores/` | Zustand 状态与主要客户端持久化动作 | `authStore.ts`、`quizStore.ts`、`checkinStore.ts`、`wishStore.ts` |
| `src/lib/` | 纯业务规则、日期/错误工具、数据库类型、Supabase client 和题库 repository | `supabase.ts`、`database.types.ts`、`questionRepository.ts`、`questionComposer.ts` |
| `src/data/` | 伙伴、动画、商品等前端静态配置；`sampleQuestions.ts` 不是 canonical 发布题库 | `companionTypes.ts`、`companionAnimations.ts` |
| `data/questions/` | 唯一 canonical 题库内容，按年级和学科拆分 JSON | `grade1-chinese.json` 等；先用脚本校验，不要全文加载全部文件 |
| `data/question-*` | 题库蓝图、候选、审计报告和 release manifest | `data/question-blueprint.json`、`data/question-audits/`、`data/question-releases/` |
| `scripts/lib/` | 离线题库 schema、audit、release 和 SQL 生成核心 | `question-schema.mjs`、`question-audit.mjs`、`question-release.mjs`、`question-sql.mjs` |
| `scripts/tests/` | Node `node:test` 的离线题库、迁移安全和文档校验测试 | `question-schema.test.mjs`、`question-seed-safety.test.mjs`、`docs-check.test.mjs` |
| `supabase/migrations/` | 有序数据库结构、RLS、RPC、修订和幂等题库 upsert | `001_initial_schema.sql`、`005_question_bank_metadata.sql`、`013_wish_rewards.sql` |
| `supabase/functions/` | Supabase Edge Function 源码；当前答题路径不调用运行时出题函数 | `generate-questions/index.ts` |
| `docs/superpowers/` | 已完成/拟议设计和实施过程资料；用于理解意图，不替代代码现状 | `specs/` 与按需读取的 `plans/` |
| `docs/ai/` | AI 核心现状、领域边界、迭代账本和 ADR 导航 | [AI 知识库索引](./README.md) |

根部常用入口：`package.json` 定义命令和依赖，`src/main.tsx` 挂载应用，`src/App.tsx` 定义路由，`netlify.toml` 定义当前前端构建与 SPA rewrite。

## 改动影响地图

| 改动类型 | 通常修改 | 同步检查 | 测试/验证位置 |
| --- | --- | --- | --- |
| routes | `src/App.tsx`、目标 `src/pages/`、导航或 `AppLayout` | 路由参数、返回路径、认证门禁、对应 domain 文档 | `npm test`、`npm run build`，手动访问深链 |
| UI framework | `src/index.css`、`src/components/ui/`、`src/components/layout/`、`src/lib/navigation.ts` | 标准/专注壳、四入口归属、44px 触控、安全区、reduced motion | UI 组件测试、路由元数据测试、三档视口浏览器检查 |
| stores | 目标 `src/stores/*.ts`，必要时抽取 `src/lib/` 纯规则 | 页面直接 Supabase 调用、loading/error、跨 store 顺序、RLS | 同目录 `*.test.ts`、`npm test`、`npm run build` |
| question schema/content | `data/questions/`、`data/question-blueprint.json`、`scripts/lib/` | 审计/抽审/release、`external_id`/`version`、运行时类型与组卷 | `npm run test:questions`、`npm run questions:validate` |
| rewards | `pointsStore`、`checkinStore`、`wishStore`、结果页与纯奖励规则 | reference 唯一性、重复结算、账本符号、伙伴副作用、愿望 RPC | `src/stores/*test.ts`、`src/lib/wishRewards.test.ts`、`npm test` |
| migrations / RLS / RPC | 新的 `supabase/migrations/<next>_*.sql` | `database.types.ts`、所有调用点、own-row policy、grants、`security definer`/`search_path`、幂等与回滚策略 | migration/seed safety Node tests、测试数据库重复执行、`npm test`、`npm run build` |
| companion assets/config | `public/assets/companions/`、`src/data/companionTypes.ts`、`companionAnimations.ts` | `004_sync_companion_types.sql` 所代表的数据库 ID 对齐、商店/装备路径、预加载 | `npm run build`，手动检查空态、动画和缺图 |
| deployment | `netlify.toml`，必要时 `package.json`、`.env.example`；`vercel.json` 仅在明确使用时 | SPA rewrite、输出目录、公开环境变量名、项目概览和相关迭代 | `npm run build`、目标平台预览与深链刷新 |

题库发布的逐步清单见[题库维护与发布手册](../question-bank-workflow.md)；通用工程门槛见[工程约定](./conventions.md#验证矩阵)。

## 不要默认加载

- `public/assets/` 是大体量素材，先按组件引用和具体伙伴路径定位。
- `data/questions/*.json` 和生成型 SQL 很大；先用 `rg`、脚本汇总或单个年级/学科抽样。
- 不要一开始读取全部 `supabase/migrations/`、Git 历史、`docs/ai/iterations/`、`docs/superpowers/`；先从当前代码和相关 core/domain 文档确定范围，再读取关联文件。
- `src/data/sampleQuestions.ts`、旧 specs/plans 或旧迁移只能说明兼容/历史背景，不能压过 canonical JSON、当前运行代码和最新有序迁移。
