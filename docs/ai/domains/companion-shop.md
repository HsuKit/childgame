# 伙伴与商城业务域

## 职责与边界

本域负责首次伙伴选择、伙伴切换与永久拥有标记、饱腹/心情/经验/等级/进化、外观和武器装备、积分账本余额，以及伙伴 sprite 展示和点击互动。

积分来源还包括答题、打卡和挑战；这些来源的业务条件由对应领域负责。本域只描述积分账本和伙伴副作用。愿望币和真实家庭奖励不属于本商城。

当前 `/shop` 是前端配置驱动的伙伴衣柜与武器页，不是通用 `shop_items` 数据库目录。仓库保留 `shopStore`、`ShopItemCard` 和静态 `SHOP_ITEMS`，但当前页面没有引用它们。

## 主要用户流程

1. profile 建立后首页调用 `fetchCompanion()`；没有伙伴时显示 `/companion/select` 入口。
2. 首次选择页只展示 `unlockCost === 0` 的 ranger、warrior、mage，用户选择、命名后调用 `createCompanion()`。
3. 没有本地 companion 时，store 插入一行并在 `equipped_items` 写入 `owned_<type>`。
4. 已有本地 companion 时，`createCompanion()` 更新同一行的类型、名称，并把等级、经验、进化阶段重置为初始值；它不是数据库 upsert，也不会新建第二个角色槽。
5. 伙伴页展示当前伙伴、状态、装备和可切换类型。已有 `owned_<type>` 标记的类型免费切回。
6. 伙伴页对未拥有目标弹出固定 500 积分确认；扣分、切换和写入 owned 标记依次由客户端执行。
7. 稀有/传奇伙伴还受前端 unlock chain 约束：minotaur → valkyrie → golem → reaper → angel，后一项要求前一伙伴三套外观都已购买。
8. 商城页按当前伙伴的三套 `outfitVariants` 展示外观；默认免费，第二、三套分别按 200、300 积分购买。
9. 武器首次购买扣 200 积分并写 `weapon_purchased`、`weapon_sword`；之后可免费装备/卸下。
10. 答题结果通过 `addExp()` 增加经验；等级阈值来自前端常量，5/10/20 级跨越时提升进化阶段并显示庆祝。
11. 点击或键盘激活伙伴只产生心形/星星交互和 sprite 动画，不写心情、经验或积分。

## 代码与数据定位

- 页面：`src/pages/HomePage.tsx`、`src/pages/CompanionSelectPage.tsx`、`src/pages/CompanionPage.tsx`、`src/pages/ShopPage.tsx`。
- 伙伴 UI：`src/components/companion/CompanionSelect.tsx`、`src/components/companion/CompanionNameInput.tsx`、`src/components/companion/CompanionDisplay.tsx`、`src/components/companion/InteractiveCompanion.tsx`、`src/components/companion/ChibiComposer.tsx`、`src/components/companion/CompanionStats.tsx`、`src/components/companion/EvolutionCelebration.tsx`。
- 商城 UI：`src/components/shop/ShopItemCard.tsx`。
- 状态：`src/stores/companionStore.ts`、`src/stores/pointsStore.ts`、`src/stores/shopStore.ts`。
- 前端配置：`src/data/companionTypes.ts`、`src/data/companionAnimations.ts`、`src/data/shopItems.ts`。
- 等级阈值：`src/lib/constants.ts`。
- sprite 与部件：`public/assets/companions/`。
- 数据类型：`src/lib/database.types.ts`。
- 数据库来源：`supabase/migrations/001_initial_schema.sql`、`supabase/migrations/004_sync_companion_types.sql`。

`companionStore` 的持久动作：

- `fetchCompanion()`：按 `created_at desc` 取本人最新一行。
- `createCompanion()`：插入首只伙伴，或更新当前行并重置成长。
- `switchCompanion()`：更新 `companion_type` 和当前外观。
- `equipOutfit()`、`equipWeapon()`、`unequipWeapon()`、`equipItem()`、`unequipItem()`：维护外观与 JSON 装备标记。
- `feed()`：把 hunger/mood 增加值截断到 100。
- `addExp()`：累积经验、推进等级和进化阶段。

`pointsStore` 通过 `get_total_points(user_id)` 汇总 `points_transactions.amount`，购买以负数账本行表达；`todayEarned` 另查当日正数交易。

数据库表：

- `companion_types`：数据库可引用的伙伴 ID、名称、类别、基础图、稀有度、解锁成本和启用状态。
- `companions`：本人伙伴类型、名称、等级、经验、hunger、mood 和 `equipped_items`。
- `points_transactions`：本人追加式积分账本。
- `shop_items`：通用商品目录，001 中有食物、饰品、皮肤和背景种子。

`companions`、`points_transactions` 以 `auth.uid() = user_id` 做 own-row RLS；`companion_types`、`shop_items` 可读。

## 数据与状态流

```text
COMPANION_TYPES + public/assets/companions
  -> 选择、切换、衣柜和 sprite 渲染
  -> companionStore
  -> companions

答题/打卡/购买
  -> points_transactions 追加正负行
  -> get_total_points
  -> pointsStore.balance
```

前端 `COMPANION_TYPES` 是 UI、variant、外观集合和 unlock chain 的实际配置；数据库 `companion_types` 提供外键目标。004 迁移用幂等 upsert 同步 8 个前端 ID，但不包含 outfitVariants 或前端 chain。

`ChibiComposer` 从 `/assets/companions/<variant>/<animation>/...png` 预加载 idle、throw、attack 帧并在 canvas 播放。当前外观优先用 `equipped_outfit`，其次用伙伴类型的 `baseVariant`。

`src/data/companionAnimations.ts` 的嵌入式动画、`src/data/shopItems.ts`、`ACCESSORIES`、`shopStore` 和 `ShopItemCard` 当前没有生产调用点；不能把这些静态定义描述为页面已启用的商品。

## 不变量与已知风险

- `companions.user_id` 必须归属当前 `auth.uid()`；伙伴类型必须同时存在于前端配置和 `companion_types`，否则插入会触发外键或 UI 缺定义。
- 新增伙伴至少要同步 `src/data/companionTypes.ts`、对应 `public/assets/companions/` variant/动画路径，以及新的有序 `companion_types` 迁移；还要决定是否加入 chain。
- `owned_<type>` 是当前“永久拥有”的唯一前端标记，存放在 `equipped_items` JSON，不是独立数据库关系或约束。
- 已拥有伙伴免费切换；未拥有伙伴在 `CompanionPage` 固定扣 500，不使用目标 `unlockCost` 作为实际扣款额。`unlockCost` 只参与展示、余额可见性和 chain 解锁。
- `/companion/select` 对已有伙伴直接走 `createCompanion()` update，可在三个 starter 间切换且重置成长；`CompanionPage` 对未拥有 starter 却会要求 500。两个入口的切换规则不一致。
- `createCompanion()` 的 existing 分支不写 `owned_<newType>`，也不清理旧装备/hunger/mood；“选择页切换后是否永久拥有”没有一致保证。
- `companions.user_id` 没有唯一约束；store 只取最新一行。若通过其他路径产生多行，更新仅作用于当前内存行。
- `equipOutfit(variant, purchaseKey)` 只保留已有 `outfit_` 项再追加新项，会丢弃 `owned_`、武器和其他装备标记；购买外观可能破坏永久拥有和武器状态。
- `switchCompanion()` 查找 `outfit_<type>_...`，实际购买键为 `outfit_<variant>`；通常无法恢复该伙伴已购外观，而会回退 `baseVariant`。
- 积分余额是账本派生值；不得另建可漂移的余额真相。当前 `pointsStore` 不检查 RPC/query/insert 的 `error`，即使服务端扣款失败也可能更新本地余额。
- 商城和伙伴购买是“先扣积分，再更新伙伴”的客户端串行步骤，不是事务。第二步失败可能已经扣分；重复点击也没有统一幂等 reference。
- `src/lib/database.types.ts` 和前端使用 `equipped_outfit`、`evolution_stage`，但 001/004 迁移没有新增这两列。仓库不能证明目标数据库存在它们；部署前必须核对并用新迁移对齐。
- 进化阶段只改变状态和庆祝展示，不会自动切换 outfit variant；不要把它描述为已实现的完整形态演化系统。
- hunger/mood 只有喂食增加路径，仓库没有随时间衰减逻辑。

## 测试与验证

当前没有 `companionStore`、`pointsStore`、`shopStore` 或伙伴/商城组件的专门测试。伙伴域主要依赖完整 Vitest、类型构建和手动走查。

```bash
npm test
npm run build
```

手动验证至少包括：

- 首次三选一成功、失败后可重试、刷新后恢复；
- 已拥有伙伴免费切回、未拥有伙伴扣款、chain 与余额边界；
- 购买外观前后 owned/weapon/outfit 标记不丢失；
- 武器首次购买、卸下、免费重新装备；
- 经验跨 5/10/20 级、进化庆祝只触发一次；
- 每个 variant 的 idle/throw/attack 和缩略图资源无 404；
- 服务端写失败时本地余额和伙伴状态不会误报成功。

涉及迁移时还应在测试数据库验证列、外键、RLS、重复执行 004 和 `get_total_points`。

## 关联上下文

- [系统架构：状态层](../architecture.md#状态层)
- [系统架构：奖励一致性](../architecture.md#奖励一致性)
- [仓库地图：伙伴素材改动](../repository-map.md#改动影响地图)
- [工程约定：数据库与迁移](../conventions.md#数据库与迁移)
- [伙伴升级设计](../../superpowers/specs/2026-05-20-companion-upgrade-design.md)
- [匿名认证与伙伴创建恢复设计](../../superpowers/specs/2026-07-20-auth-companion-recovery-design.md)
- [愿望与伙伴激励设计](../../superpowers/specs/2026-07-22-motivation-wish-companion-design.md)
- [迭代账本](../iterations/README.md)
