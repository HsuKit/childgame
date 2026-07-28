# 认证与资料业务域

## 职责与边界

本域负责浏览器端匿名认证启动、Supabase session 恢复、学生 profile 的创建与读取，以及昵称、年级、手机号字段的更新。

`GuestGate` 是共享路由门禁：只有拿到认证用户和 `profiles` 行后才渲染业务页面。伙伴创建是认证后的后续 onboarding，不是 profile 创建的一部分，也不是全局路由门禁。

当前产品没有短信 OTP、密码登录、独立家长账号或家长角色。手机号“绑定”只更新 `profiles.phone`，不能据此把匿名用户描述为已升级的正式账号或独立家长认证。

## 主要用户流程

1. `AppLayout` 包裹所有业务路由，`GuestGate` 首次挂载调用 `authStore.initAuth()`。
2. `initAuth()` 先调用 `supabase.auth.getSession()`；已有 session 时复用其中的用户。
3. 没有 session 时等待 `signInAnonymously()` 返回用户，匿名登录未成功前不开放业务页面。
4. store 按认证用户 ID 查询 `profiles`：有行则恢复 profile；没有行则设置 `isNewUser`。
5. 新用户在 `GradeSelect` 输入昵称并选择 1–6 年级，`createProfile()` 插入后重新读取完整 profile。
6. 认证或 profile 查询失败时，门禁显示 `authError` 和“重新连接”；重试仍走同一个 `initAuth()`。
7. 进入应用后，`PhoneBindBanner` 只对匿名且 profile 未填手机号的用户展示；UI 用中国大陆 11 位手机号正则做前置检查。
8. 首页独立调用 `companionStore.fetchCompanion()`。没有伙伴时显示选择入口；`CompanionSelectPage` 再完成免费三选一、命名和伙伴创建。
9. `ProfilePage` 展示昵称、年级、积分和打卡，并提供伙伴选择、错题、家长报告等入口；退出调用 `signOut()`。

## 代码与数据定位

- 路由与共享启动：`src/App.tsx`、`src/components/layout/AppLayout.tsx`。
- 认证门禁与建档：`src/components/auth/GuestGate.tsx`、`src/components/auth/GradeSelect.tsx`。
- 手机号提示：`src/components/auth/PhoneBindBanner.tsx`。
- 资料与跨域入口：`src/pages/ProfilePage.tsx`、`src/pages/HomePage.tsx`。
- 伙伴后续 onboarding：`src/pages/CompanionSelectPage.tsx`、`src/components/companion/CompanionNameInput.tsx`。
- 状态与错误映射：`src/stores/authStore.ts`、`src/lib/errorMessage.ts`。
- Supabase public client：`src/lib/supabase.ts`。
- 数据类型：`src/lib/database.types.ts`。
- 数据库来源：`supabase/migrations/001_initial_schema.sql`、`supabase/migrations/004_sync_companion_types.sql`。

`authStore` 当前公开的方法为：

- `initAuth()`：session、匿名登录和 profile 查询的统一启动流程。
- `signInAnonymously()`：显式匿名登录；当前启动入口通常由 `initAuth()` 直接完成该动作。
- `createProfile(nickname, grade)`：为当前认证 ID 插入 `profiles` 并回读。
- `bindPhone(phone)`：更新当前 profile 的 `phone`。
- `updateGrade(grade)`、`updateNickname(nickname)`：更新数据库后合并本地 profile。
- `signOut()`：调用 Supabase 退出并清空本地 `user/profile`。

本域核心表为 `profiles`：

- 主键 `id` 外键指向 `auth.users(id)`。
- `nickname`、`grade` 必填，`grade` 数据库约束为 1–6。
- `avatar_url`、`phone` 可空。
- SELECT/INSERT/UPDATE RLS 均以 `auth.uid() = id` 限制本人。

伙伴衔接涉及 `companion_types` 和 `companions`，其具体所有权与养成规则由伙伴商城域负责。

## 数据与状态流

```text
Supabase 持久 session
  -> authStore.initAuth
  -> session user 或匿名 sign-in user
  -> profiles.maybeSingle(id = user.id)
  -> GuestGate: loading / error / GradeSelect / children
```

`authStore` 是内存 Zustand 状态，没有 Zustand `persist`。session 的浏览器持久化和 token 自动刷新由 `src/lib/supabase.ts` 的 Supabase Auth 配置承担，profile 每次启动从数据库恢复。

profile 缺失并不等于认证失败：认证用户保留在 store 中，`isNewUser = true`，门禁允许重试建档。建档提交失败时 `GradeSelect` 恢复可提交状态并保留认证上下文。

伙伴缺失也不等于 profile 缺失：首页保持可用并展示选择入口。伙伴创建失败由命名组件恢复按钮和错误提示，用户可在不重建 profile 的情况下重试。

## 不变量与已知风险

- 所有 profile 写入必须以当前认证用户为目标，并依赖 `auth.uid()` own-row RLS；不得接受任意外部 user ID。
- 浏览器只能读取公开配置名 `VITE_SUPABASE_URL` 与 `VITE_SUPABASE_ANON_KEY`；不得放入 service role、真实 key 或 token。
- `isLoading` 必须覆盖 session 查询、匿名登录和 profile 查询的完整启动过程；失败时清空不完整的 `user/profile` 并暴露可重试错误。
- 当前仓库没有调用 `supabase.auth.onAuthStateChange()`，也没有保存/清理 session 订阅。外部发生 token、登录或退出变化时，Zustand 状态不会靠监听器自动同步，只能依赖启动或显式动作。
- `bindPhone()`、`updateGrade()`、`updateNickname()` 使用 `get().user!.id`；若绕过门禁在无用户状态调用，会触发运行时错误。
- `PhoneBindBanner` 捕获不到 `bindPhone()` 的失败，也没有 saving/error 状态；网络失败可能形成未处理拒绝。
- 手机号只存入 profile。没有验证码验证、Auth identity 链接、跨设备找回或家长身份隔离；UI 的“永久保存”提示不能当作这些能力已经实现的证据。
- 匿名用户数据实际写入 Supabase 并归属于匿名 `auth.uid()`；“仅保存在本设备”是当前提示文案，不是数据层事实。
- `signOut()` 不检查返回错误便清空本地状态；下一次门禁启动可能创建新的匿名身份，原匿名数据是否可找回取决于 Auth/session 实际状态，仓库没有恢复机制。
- profile 与 companion 支持部分状态恢复：已有 profile、缺伙伴时不重建 profile；伙伴创建失败可重试。但不存在跨多表事务式 onboarding。

## 测试与验证

`src/stores/authStore.test.ts` 覆盖：

- 无 session 时等待匿名登录并进入新用户状态；
- 匿名登录失败时关闭门禁并提供安全错误；
- 已有 session 时加载现有 profile。

`src/lib/errorMessage.test.ts` 覆盖网络错误和未知错误的安全文案。当前没有 `GuestGate`、`GradeSelect`、手机号更新、资料更新或 session listener 的组件/集成测试。

常用验证：

```bash
npm test -- src/stores/authStore.test.ts src/lib/errorMessage.test.ts
npm test
npm run build
```

涉及 Auth 配置、RLS 或匿名身份升级时，还应在测试 Supabase 中走查首次匿名登录、刷新恢复、profile 缺失、登录失败、退出重进和他人行越权。

## 关联上下文

- [AI 知识库索引](../README.md)
- [系统架构：认证与启动](../architecture.md#认证与启动)
- [仓库地图](../repository-map.md)
- [工程约定：安全](../conventions.md#安全)
- [匿名认证与伙伴创建恢复设计](../../superpowers/specs/2026-07-20-auth-companion-recovery-design.md)
- [匿名认证与伙伴创建恢复计划](../../superpowers/plans/2026-07-20-auth-companion-recovery.md)
- [迭代账本](../iterations/README.md)
