# 知识冒险 · 项目手册

## 项目信息

| 项目 | 链接 |
|------|------|
| 🔗 线上地址 | https://dulcet-snickerdoodle-840189.netlify.app |
| 📦 GitHub | https://github.com/HsuKit/childgame |
| 🗄️ Supabase | https://supabase.com/dashboard/project/mykculgjrlmwfsyrcroe |

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
```
VITE_SUPABASE_URL=https://mykculgjrlmwfsyrcroe.supabase.co
VITE_SUPABASE_ANON_KEY=eyJhbGciOi...
```

## 上线流程

改完代码后：
```bash
git add -A
git commit -m "fix: 描述修改内容"
git push
```
Netlify 自动检测 GitHub 推送 → 自动构建 → 自动上线。**不需要手动部署**。

## 数据库变更

题库更新、表结构修改等直接在 Supabase SQL Editor 执行 SQL，不需要重新部署前端。

```
Supabase 后台 → SQL Editor → 粘贴 SQL → Run
```

## Supabase 配置

- **Authentication → Settings**: Anonymous Sign-ins 必须开启
- **Authentication → Settings → Site URL**: `https://dulcet-snickerdoodle-840189.netlify.app`
- **Database → Tables**: 所有表已配置 RLS（行级安全策略）

## 题库

- 语数英各年级共 360+ 道选择题，支持填空、连线、数独题型
- 数学使用数据库随机抽题（不再使用前端生成器）
- 题库 SQL 在 `supabase/migrations/` 目录
- AI 出题 Edge Function 已部署但暂未启用

## 伙伴系统

- 基于 Craftpix.net 免费 Chibi 角色素材
- 3 种初始伙伴：小游侠 / 小战士 / 小法师（免费切换）
- 每种有 3 套外观（默认/进阶/传说），积分购买
- 武器系统（200 积分解锁），点击伙伴触发攻击/投掷动画
- 所有素材在 `public/assets/companions/`
- 角色新增时更新 `src/data/companionTypes.ts` + Supabase `companion_types` 表

## 项目结构

```
src/
  components/   # 可复用组件
    companion/  # 伙伴相关（ChibiComposer, InteractiveCompanion等）
    quiz/       # 答题相关（QuizCard, MatchCard, GridPuzzleCard等）
    auth/       # 登录相关
    shop/       # 商城相关
    layout/     # 布局（BottomNav, AppLayout）
  pages/        # 页面
  stores/       # Zustand 状态管理
  lib/          # 工具函数和常量
  data/         # 配置数据
public/
  assets/companions/  # Craftpix 角色素材（15角色 × 动画帧）
```

## 部署平台

| 平台 | 用途 |
|------|------|
| Netlify | 前端部署（自动从 GitHub 构建） |
| Supabase | 后端（数据库 + 认证 + RLS） |
| GitHub | 代码仓库 |

## 日常维护 checklist

- [ ] 更新题库：SQL Editor 直接 INSERT
- [ ] 改代码：本地 `npm run dev` 测试 → commit → push → 自动上线
- [ ] 改数据库：SQL Editor 执行 SQL 或 migration
- [ ] 新增伙伴素材：放入 `public/assets/companions/` + 更新 `companionTypes.ts`
- [ ] 改环境变量：在 Netlify 后台 Site settings → Environment variables
