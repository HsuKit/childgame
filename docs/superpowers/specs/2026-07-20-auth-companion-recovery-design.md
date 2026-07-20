# 匿名认证与伙伴创建恢复设计

## 背景

Supabase 项目暂停期间，匿名登录请求失败。现有 `GuestGate` 在登录请求尚未成功时仍渲染业务页面，用户因此能够进入伙伴选择页，但 `createCompanion` 因没有有效用户而失败。取名组件没有捕获异常或恢复 saving 状态，最终表现为永久停留在“创建中…”。

## 范围

本轮继续采用匿名试玩，不新增短信 OTP 或账号密码登录。修复认证守卫、建档和伙伴创建的失败体验，并同步前端使用的伙伴类型到数据库。

## 设计

### 认证启动

`authStore.initAuth` 成为唯一启动入口：

1. 设置加载状态并清除旧错误。
2. 读取现有 session。
3. 没有 session 时等待 `signInAnonymously` 成功。
4. 得到用户后读取 profile。
5. 有 profile 则进入应用；没有 profile 则进入昵称与年级建档。
6. 任一步失败都保存可展示错误，保持业务页面关闭。
7. finally 结束加载状态。

`GuestGate` 不再另起一个匿名登录 effect。它只调用 `initAuth`，并根据 loading、error、isNewUser 和已认证用户四种状态渲染。错误界面提供重试按钮。

### 建档与伙伴创建错误恢复

`GradeSelect` 和 `CompanionNameInput` 都使用 try/catch/finally：

- 请求期间禁用重复提交。
- 失败时显示面向用户的中文错误。
- finally 恢复按钮状态。
- 成功时保持现有跳转行为。

错误展示不暴露 Supabase 内部细节；控制台仍保留原始错误便于诊断。

### 伙伴类型数据同步

新增幂等 migration，把前端 `COMPANION_TYPES` 的 8 个 ID 写入 `companion_types`。使用 `on conflict (id) do update`，可安全重复执行。数据库已有约束下统一使用合法的 category、rarity 和 unlock_cost。

### 测试

用 Vitest 测试认证启动状态机：

- 无 session 时必须等待匿名登录并得到用户，不能提前结束 loading。
- 匿名登录失败时产生 authError 且不设置用户。
- 已有用户但没有 profile 时进入新用户建档。
- 已有 profile 时正常进入应用。

另测试统一错误文案函数，确保未知异常也有可读提示。最后运行完整测试和生产构建。

## 非目标

- 不实现手机号验证码登录。
- 不改变现有用户数据。
- 不自动执行 migration 到 Supabase；部署前通过项目既有数据库流程执行。

