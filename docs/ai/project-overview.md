# 项目概览

## 产品目标

“知识冒险”面向小学 1–6 年级学生，以低压力的每日学习节奏连接儿童激励和家庭参与。产品把学习任务包装为冒险：孩子完成语文、数学、英语练习并复习错题，同时培养伙伴、积累积分和愿望币；家长通过报告和愿望确认参与，而不把主流程变成高压测评。

当前代码提供：

- 语数英每日练习、三科综合挑战和错题复习；
- 伙伴选择、养成、换装与积分商城；
- 每日打卡、连续完成奖励和愿望奖励；
- 家长学习报告、愿望审核与兑现记录；
- 周榜、总榜和好友 PK。

页面入口以 [`src/App.tsx`](../../src/App.tsx) 的实际路由为准，业务细节从[业务域索引](./README.md#业务域)按需进入。

## 技术栈

当前 `package.json` 所确认的主要版本：

| 层 | 技术 |
| --- | --- |
| Web | React 18、React Router 6、Framer Motion 12 |
| 语言与构建 | TypeScript 5、Vite 6 |
| 样式 | Tailwind CSS 4 |
| 客户端状态 | Zustand 5 |
| 后端客户端 | Supabase JS 2 |
| 测试 | Vitest 4；离线流水线使用 Node.js 内置测试运行器 |
| 离线内容工具 | Node.js ESM scripts |

前端是单页应用。浏览器通过公开 Supabase 客户端配置访问认证、数据库和 RPC；题库校验、审核和 SQL 生成只在离线 Node.js 流水线中运行。

## 本地运行与验证

```bash
npm install
npm run dev
npm test
npm run test:questions
npm run questions:validate
npm run questions:sql
npm run build
```

- `npm test` 运行 `src/` 下的 Vitest 测试。
- `npm run test:questions` 运行 `scripts/tests/*.test.mjs`。
- `questions:validate` 校验 canonical 题库的结构、配额、重复和发布状态。
- `questions:sql` 只输出审核通过的题目，且默认拒绝覆盖既有文件；实际发布时用 `--output` 指定新的、经审查的有序迁移路径。
- `npm run docs:check` 将在本知识体系完成并把脚本加入 `package.json` 后启用；当前 `package.json` 尚无该命令，不能把它当作现有命令。

本地和托管环境需要以下变量名：

- `VITE_SUPABASE_URL`
- `VITE_SUPABASE_ANON_KEY`

不要在文档、日志或提交中写入真实值。变量约定见 [`.env.example`](../../.env.example)，安全规则见[工程约定](./conventions.md#安全)。

## 部署

当前前端生产路径是 Git push 触发 Netlify 自动构建和发布：[`PROJECT_INFO.md`](../../PROJECT_INFO.md) 记录了该流程，[`netlify.toml`](../../netlify.toml) 使用 `npm run build`、发布 `dist`，并把所有路径重写到 `index.html` 以支持 SPA 路由。

Supabase 承担匿名认证、PostgreSQL 数据库、RLS 和数据库函数；仓库还保留 Edge Function 源码。数据库变更应新增有序、经审查的 `supabase/migrations/` 迁移，在测试环境验证后再发布，不能以修改已应用迁移或直接粘贴未经审核内容改写生产历史。

[`vercel.json`](../../vercel.json) 也保留了 SPA rewrite 配置，但仓库证据不足以说明当前生产站点由 Vercel 承载。不要把“存在 Vercel 配置”等同于“当前使用 Vercel 生产部署”。

部署与数据库的运行边界详见[架构](./architecture.md#部署与运行边界)。

## 继续阅读

- [架构](./architecture.md)：运行时边界、状态层、数据层和关键数据流。
- [仓库地图](./repository-map.md)：稳定目录职责和改动影响地图。
- [工程约定](./conventions.md)：编码、验证、迁移、安全和文档规则。
- [业务域索引](./README.md#业务域)：认证资料、答题题库、伙伴商城、愿望家长、排行榜 PK。
