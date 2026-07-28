# 知识冒险 · 项目手册

> AI 开发上下文、完整架构、目录职责和迭代历史统一维护在 [docs/ai/README.md](./docs/ai/README.md)。本文件只保留面向人的快速操作手册。

## 项目信息

| 项目 | 链接 |
|------|------|
| 🔗 Netlify 记录地址 | [dulcet-snickerdoodle-840189.netlify.app](https://dulcet-snickerdoodle-840189.netlify.app) |
| 📦 GitHub | [HsuKit/childgame](https://github.com/HsuKit/childgame) |
| 🗄️ Supabase 控制台 | [supabase.com/dashboard](https://supabase.com/dashboard) |

## 技术栈

React 18 + TypeScript + Vite + TailwindCSS + Framer Motion + Zustand + Supabase

## 本地开发

```bash
git clone https://github.com/HsuKit/childgame.git
cd childgame
npm install
npm run dev        # 开发服务器 http://localhost:5173
```

环境变量在 `.env` 文件（不上传 git）：

```dotenv
VITE_SUPABASE_URL=<Supabase project URL>
VITE_SUPABASE_ANON_KEY=<Supabase anon key>
```

## 上线流程

当前手册记录的前端发布路径是 Git push 触发 Netlify 构建；仓库中的 [`netlify.toml`](./netlify.toml) 规定执行 `npm run build`、发布 `dist` 并支持 SPA 路由。仓库无法独立验证远端 Git 连接和自动发布仍然有效，推送前后都应在 Netlify 项目中核对连接、环境变量和最近构建状态。

Supabase 承担认证、数据库、RLS、数据库函数和 Edge Function。仓库也有 [`vercel.json`](./vercel.json)，但配置存在不代表 Vercel 是当前生产平台。更完整的运行边界见[项目概览](./docs/ai/project-overview.md#部署)。

## 数据库变更

表结构、RLS、RPC 和题库运行副本的变更都应在 `supabase/migrations/` 新增下一个有序 migration。先审查并在测试环境按顺序执行、验证可重放性与业务行为，再依发布流程应用到目标环境；不要修改已应用的迁移，也不要把临时 SQL 或 AI 生成 SQL 直接粘贴到生产。

若发布流程需要使用 Supabase SQL Editor，只执行已经审查的 migration，并保留执行目标、时间、版本和结果记录。

## Supabase 配置

- 托管环境需要配置 `VITE_SUPABASE_URL` 和 `VITE_SUPABASE_ANON_KEY`。
- 匿名认证、Site URL、RLS 与函数权限需要在目标 Supabase 项目中按发布清单核对；不要仅凭仓库文档推断远端状态。
- 数据层的当前边界和已知风险见[架构文档](./docs/ai/architecture.md#数据层)。

## 题库

- [`data/questions/` canonical JSON](./docs/ai/domains/quiz-question-bank.md#数据与状态流) 是唯一内容源，当前共有 2,520 题，覆盖 1–6 年级语文、数学、英语 18 个年级-学科组合。
- 本地审核、校验、发布迁移和下架步骤见[题库维护与发布手册](./docs/question-bank-workflow.md)。
- 运行时答题从 Supabase 静态题库读取。仓库存在 AI 出题 Edge Function 源码，但当前答题流程不依赖运行时 AI 出题。

## 伙伴系统

伙伴的当前角色、资产、切换、购买与持久化边界见[伙伴与商城业务域](./docs/ai/domains/companion-shop.md)。新增或修改伙伴时按该文档定位前端配置、素材和数据库影响，不在本快速手册重复易漂移的角色清单。

## 日常维护 checklist

- [ ] 数据库变更：新增有序 migration，完成审查、测试库验证和发布记录。
- [ ] 题库变更：更新 canonical JSON，运行 `npm run test:questions` 与 `npm run questions:validate`，再审查生成的新 migration。
- [ ] 代码变更：运行 `npm test` 和 `npm run build`；按改动风险补充目标流程验证。
- [ ] 文档变更：运行 `npm run docs:check`。
- [ ] 推送前：检查 diff、敏感信息和托管环境变量；推送后在实际平台确认构建与发布状态。
