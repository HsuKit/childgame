---
id: ITER-20260730-WISH-BALANCE-RECOVERY
title: 三科完成后的愿望币余额恢复
status: completed
domains: [wish-parent, quiz-question-bank]
created: 2026-07-30
updated: 2026-07-30
---

## 背景与目标

线上出现三科均为 10/10、积分奖励已结算，但首页愿望币仍显示 0 的情况。目标是区分“账本未发放”和“页面余额未刷新”，并让每日奖励在中断、重复调用和页面重新加载后自动恢复，同时不重复增加积分或愿望币。

## 范围

包含线上只读数据核查、check-in 愿望币补偿、幂等调用后的余额刷新和 store 回归测试。不修改奖励数量、连续天数规则、数据库 schema/RPC 或愿望商城交互。

## 关联上下文

- [愿望与家长业务域](../domains/wish-parent.md)
- [愿望奖励初始迭代](./2026-07-22-wish-rewards.md)
- [打卡 store](../../../src/stores/checkinStore.ts)
- [愿望 store](../../../src/stores/wishStore.ts)

## 实施摘要

- 线上只读聚合核查确认目标账号当日三科各有 10 个不同题目、50 积分已结算，`daily_core_complete` 愿望币流水已存在且账本可用余额为 1；故障属于客户端显示旧余额。
- `markSubjectDone()` 不再把愿望币调用绑定到 `bonus_points === 0`，积分已结算或并发请求已领取积分更新权时仍会调用幂等愿望 RPC。
- `fetchToday()` 读取到三科已完成的当日打卡时执行愿望币补偿；补偿失败不阻断打卡状态展示，后续加载仍可重试。
- `awardDailyWishCoins()` 无论 RPC 返回新发数量还是幂等 `0` 都刷新愿望数据，使已经存在的账本流水及时反映到首页余额。

## 决策与原因

沿用数据库 `(user_id, reason, reference_id)` 唯一约束和 RPC advisory lock 作为防重复边界，客户端只增加幂等重试，不做直接账本补写或历史批量修正。这样既可恢复中断请求，也不会绕过数据库对三科作答证据的校验。

## 验证结果

- `npm test -- --run src/stores/checkinStore.test.ts src/stores/wishStore.test.ts`：17 项通过。
- `npm test`：30 个测试文件、152 项通过；错误边界测试预期输出 `Error: boom` 日志但退出码为 0。
- `npm run build`：通过；保留现有动态/静态 import 与大 chunk 警告。
- 线上只读查询确认目标账本的当日奖励行数为 1、金额为 1。

## 风险与遗留

积分、check-in 与愿望账本仍不是单一数据库事务。客户端补偿覆盖正常加载和结算路径，但持续离线时只能等待下一次在线加载。当前没有真实 PostgreSQL 网络中断或并发集成测试。

## Git 关联

本记录与修复代码在 `main` 的同一提交中；以本文件的 Git 历史定位。
