---
id: ITER-20260720-AUTH-COMPANION-RECOVERY
title: 匿名认证与伙伴创建恢复
status: completed
domains: [auth-profile, companion-shop]
created: 2026-07-20
updated: 2026-07-28
---

## 背景与目标

Supabase 不可用时，旧认证守卫可能在匿名登录尚未成功时放行业务页面，随后伙伴创建因缺少用户而失败，取名界面又会停在“创建中”。本记录于 2026-07-28 依据设计、实施计划和提交差异回填，目标是还原 2026-07-20 对匿名 session、profile 与伙伴 onboarding 的可恢复性修复，不把后续认证状态投射回来。

## 范围

覆盖 `authStore.initAuth`、`GuestGate`、年级建档、伙伴取名与 companion store 的加载/创建错误处理，以及同步八个伙伴类型的幂等 migration。继续使用匿名试玩；不实现短信 OTP、账号密码或完整手机号认证，不改变既有用户数据，也不自动把 migration 执行到远端。

## 关联上下文

- [设计规格](../../superpowers/specs/2026-07-20-auth-companion-recovery-design.md)
- [实施计划](../../superpowers/plans/2026-07-20-auth-companion-recovery.md)

## 实施摘要

- `initAuth` 成为单一启动入口：先读取 session；没有 session 时等待匿名登录；得到用户后以 `maybeSingle` 读取 profile；根据 profile 是否存在进入应用或建档。任一步错误都会关闭业务 gate、保存安全的中文错误，并在 `finally` 恢复加载状态。
- `GuestGate` 移除第二个匿名登录 effect，仅按 loading、error、已认证新用户和“用户加 profile”状态渲染；错误面板允许重新执行 `initAuth`，避免重复登录请求和未认证放行。
- 年级建档与伙伴取名在提交期间禁用重复操作，用 `try/catch/finally` 展示可重试错误并恢复按钮。profile 插入后会检查回读错误；伙伴读取会在 `finally` 结束 loading 并传播查询错误。
- 伙伴创建会拒绝未知类型；已加载到 store 的伙伴采用更新而非再次插入，降低普通重试产生重复伙伴的风险。migration `004_sync_companion_types.sql` 以 `on conflict (id) do update` 同步八个前端伙伴类型。

## 决策与原因

认证启动采用顺序状态机而不是两个相互竞争的 effect，因为 session、匿名用户和 profile 是有依赖关系的部分状态；只有拿到用户与 profile 后才开放业务页面。错误归一化只向界面提供可理解的网络或兜底文案，同时保留控制台原始错误。建档和伙伴创建保留现有成功路径，只补充提交锁、错误传播与恢复，以控制改动范围。

## 验证结果

提交 `b45590e` 中可确认存在 `src/stores/authStore.test.ts`，覆盖无 session 时等待匿名登录、登录失败保持 gate 关闭、已有 session 与 profile 的恢复；`src/lib/errorMessage.test.ts` 覆盖网络错误归一化和未知错误兜底。提交 diff 还可确认 `004_sync_companion_types.sql` 包含八个伙伴 ID 和幂等 upsert。仓库没有保留 2026-07-20 当时完整的测试、构建或远端 migration 执行日志，因此不能确认这些命令或远端变更当时实际完成。2026-07-28 回填时，文档校验测试 21/21、仓库文档检查、链接检查和 `git diff --check` 均通过；这些结果只验证回填文档。

## 风险与遗留

实现没有增加 `onAuthStateChange` 订阅，也没有完成手机号认证。profile 或伙伴写入若已在远端成功、但客户端在响应或回读阶段失败，当前提交没有幂等键或事务来完整消除再次提交的重复/冲突风险；重新启动后可通过 session/profile 或最新伙伴读取恢复，但同一界面内的所有部分成功情形并未被证明。migration 文件存在不等于已在 Supabase 执行，且没有保留当时远端执行日志。

## Git 关联

- 设计：`b01a67361193c76de18d49a25b935cf22e2638ca`（`docs: design auth and companion recovery`）
- 实施：`b45590effe4b801e596c7deeadeb0ae9abb0fd93`（`fix: recover auth and companion onboarding`）
- 以上提交为持久历史定位；本记录不关联 2026-07-28 的临时工作分支。
