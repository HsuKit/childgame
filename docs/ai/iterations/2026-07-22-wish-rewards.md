---
id: ITER-20260722-WISH-REWARDS
title: 愿望币、愿望商城与家长兑现流程
status: completed
domains: [wish-parent, quiz-question-bank, companion-shop]
created: 2026-07-22
updated: 2026-07-28
---

## 背景与目标

学习积分已经用于虚拟伙伴养成，但缺少把稳定学习习惯连接到家庭真实奖励的独立激励。该阶段引入愿望币账本、儿童愿望商城和同一账号内的家长审核/兑现流程，以完成每日核心练习而非刷题量作为主要来源。本记录于 2026-07-28 依据设计、实施计划、migrations、测试和 Git 历史回填，只陈述仓库能够证明的阶段成果。

## 范围

包含愿望币规则与余额派生、四张愿望表、RLS/RPC 安全和幂等约束、Zustand store、三科日结算、儿童商城、家长管理、自定义/标准奖励目录、兑换对话框和兑现日记。范围不包含独立家长账号、伴侣里程碑发奖、每周目标奖励、完整连续纪念品流程或完整动机系统；不包含选择题答案归一化和 PK。设计中出现但没有实现的能力不计入本迭代成果。

## 关联上下文

- [愿望与家长业务域](../domains/wish-parent.md)
- [答题与题库业务域](../domains/quiz-question-bank.md)
- [伙伴与商城业务域](../domains/companion-shop.md)
- [愿望与伙伴激励设计](../../superpowers/specs/2026-07-22-motivation-wish-companion-design.md)
- [愿望奖励实施计划](../../superpowers/plans/2026-07-22-wish-rewards-phase1-2.md)
- [013 愿望 schema/RPC migration](../../../supabase/migrations/013_wish_rewards.sql)
- [015 标准愿望目录 migration](../../../supabase/migrations/015_standard_wish_rewards.sql)
- [愿望规则测试](../../../src/lib/wishRewards.test.ts)
- [愿望 store 测试](../../../src/stores/wishStore.test.ts)
- [打卡结算测试](../../../src/stores/checkinStore.test.ts)
- [兑换对话框布局测试](../../../src/lib/wishDialogLayout.test.ts)

## 实施摘要

- `013_wish_rewards.sql` 建立追加式 `wish_coin_transactions` 账本、预设/自定义 `wish_rewards`、状态化 `wish_redemptions` 和 `reward_diary_entries`；余额由 earn、freeze、release、spend 派生。reference 唯一索引、金额符号约束、own-row RLS 和兑现日记唯一约束固定了基础一致性边界。
- 愿望 RPC 位于 `public`，使用 `security definer`、固定 `search_path`、`auth.uid()`/资源归属校验和权限 revoke/grant；发奖与兑换状态变更 RPC 使用事务级 advisory lock，`get_wish_coin_balance` 是不获取该锁的 stable 读取。提交兑换在一个 RPC 中创建待审核记录并 freeze；批准写 spend，退回写 release，兑现推进状态并幂等写入 `wish_fulfilled` 日记。
- 每日三科完成后由 check-in 流程调用 RPC；数据库按上海日期核对每科至少 10 个不同题目。基础奖励为 1 枚，7 天倍数额外 2 枚，30 天倍数额外 8 枚且优先于 7 天规则。客户端随后补了结算串行化、失败处理、回到首页后的完成状态对账和零答题积分时仍结算科目完成。
- 儿童商城展示余额、按成本分组的奖励、兑换备注、待处理状态和最近日记；家长页在同一账号内完成审核、退回、兑现和自定义奖励管理。`015_standard_wish_rewards.sql` 维护标准目录，兑换对话框又补了底部导航避让。
- `0f0488e` 是共享提交：本记录只归属其中 Home/QuizResult 的愿望完成对账修复；同一提交的共享解析组件、题库文案和解析测试归入“儿童友好解析与共享展示”迭代。

## 决策与原因

愿望币与学习积分使用不同账本，避免真实家庭奖励和虚拟伙伴消费混成一个余额。余额、冻结和消费由数据库账本及 RPC 事务决定，客户端只负责展示与发起动作；每日奖励以 check-in reference 保持幂等。家长流程采用“申请 → 审核 → 待兑现 → 已兑现”，而不是孩子直接购买真实物品。标准奖励目录最初以 `014_standard_wish_rewards.sql` 加入，选择题归一化随后占用当前 `014`，因此 `6cc54bb` 将愿望目录持久重编号为当前 `015`。

## 验证结果

历史 diff 可确认规则、schema/RPC、安全加固、store、每日结算、儿童商城、家长页、标准目录与布局测试均存在；相关测试覆盖日/7 天/30 天规则、余额派生、RPC 调用边界、余额不足、stale 请求、check-in 并发、目录分组和对话框定位。仓库没有保留 2026-07-22 当时的完整测试、构建、数据库并发/RLS 或远端 migration 日志。2026-07-28 回填时重新运行相关现有测试并通过；这些结果不证明 migrations 已应用到任何远端环境。

## 风险与遗留

每次 `submit_wish_redemption` 都生成新的 redemption UUID；只要可用余额仍足够，重复提交会创建另一条待审核记录并再次 freeze，reference 唯一索引不能阻止这种业务重复。状态枚举含 `cancelled`，但没有取消 RPC、客户端动作或 release 路径。家长和孩子共用同一 Supabase 身份，孩子理论上也可执行家长动作；自定义奖励直接走 RLS insert，也没有家长身份门禁。

前端空目录 fallback 使用非 UUID 字符串 ID，若数据库标准目录缺失而直接提交，会与 UUID RPC 不兼容。`database.types.ts` 是仓库内客户端快照，migration 文件存在不能证明远端 schema 与客户端已经一致。check-in、积分和愿望奖励不是跨表单一事务，失败后依赖可重试的 reference 幂等；当前没有真实 PostgreSQL 并发/RLS/RPC 集成测试。日记 schema 虽允许连续纪念和伙伴里程碑，当前 UI 主要只生成/展示愿望兑现，不能描述为这些设计能力已经交付。

## Git 关联

- 设计、计划与规则：`d37d5ec916b7895dbf0c754d909820a47730063b`、`e98c5617ba02e2b380b75c6f281514f6c7d7b25e`、`c6d2d427aab46611271d4cdb954aab89b6dd29b7`、`08dcbb202f9722d7fcaa6ea59b98ba513cab5869`、`1497a4c6b2195fce83b8fd44053118cc6ae4c994`。
- schema、权限与 RPC：`ec0c693f6fec6a2f4af81e20ce92f396b3a1eea7`、`b2d39961b24c9b20ee7a032926317b529fd3e8c6`、`6f194d193af0d2a5475b06f1eed5ac843cb900cb`、`b1437debc0c93bf224bdc5f4b548c14b8f88f135`、`bbc24e726234fa3bf67d3ec45a4a2e6c7fcb4331`。
- store、日结算与页面：`c9c331d41a82c0f05e5712121144c9761a023605`、`8628df8756e49d6ed84d740f4b999954840450c6`、`08c4b9a1bb4f643974606956dd2c50fdf70d3edf`、`700bebcf24c69441999f76c5522eed6c225e3e57`、`b3857a6d7bcabc2fdebb69717edf9456aa66c356`、`5eed4d96bab814fb28f1d20c3ec692131f4ce431`、`a07f16bed88b0d1a2ea4ee51bf3149e9b04bc0f1`、`7e20c2a4f3e718a2e907bf2ac6fb08b55786c5b2`、`9053ae5e1dc670e197699b204b68e662bd8a53b0`、`a3da6a447af4258c3282af3a0ccab1dcafd49007`、`0f0488e8b30d4a2ac8afe30fb0a66cca6e678c22`。
- 标准目录与对话框：`1d1e92e2c02d21301519f12c3b7e04f75192b529`、`6cc54bbf06e20d0b42ef3ac00e61d21929e69785`、`bad910ae121ed02b78ab708fd3b29d025977a2f4`。
- 以上提交均与愿望能力相关并作为持久历史定位；本记录不写临时工作分支。
