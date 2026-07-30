# 伙伴图片与愿望加载韧性修复设计

## 背景

明亮冒险 UI 回归中发现三项关联缺陷：

- `/companion` 的当前伙伴画布为空，控制台报告 `drawImage` 收到 broken image。
- 伙伴收藏缩略图出现破图；部分角色的 blink 动画目录没有第 `000` 帧，但页面统一写死该路径。
- `/wish-shop` 在 Supabase 会话刷新或查询发生瞬时网络错误时显示大面积“愿望清单加载失败”，虽然本地已有默认愿望清单可供浏览。

Supabase 健康端点可连通，因此本次不把问题归因于数据库下线，也不通过迁移、伪造会话或创建测试数据处理。修复重点是前端资源兼容与失败降级。

## 目标

- 当前伙伴在动画帧尚未就绪、单帧缺失或保存了旧外观值时仍有可见形象。
- 所有伙伴收藏缩略图都使用仓库中稳定存在的资源，不再依赖不同角色不一致的 blink 帧编号。
- 愿望同步失败时仍能浏览默认愿望目录，并明确区分“本地目录可浏览”和“余额、申请记录尚未同步”。
- 离线默认目录不得被误当作可提交的数据库奖励，避免把非 UUID 默认 ID 传给兑换 RPC。
- 保留显式重试入口；网络恢复后继续展示真实余额、奖励、申请和日记。

## 非目标

- 不修改 Supabase 认证刷新机制、RLS、RPC 或数据库迁移。
- 不为愿望商店实现真正离线兑换或离线账本。
- 不补制、重命名或批量复制伙伴图片资产。
- 不改变伙伴购买、切换、装备或积分规则。

## 伙伴资源策略

### 统一资源解析

新增纯函数模块 `src/lib/companionAssets.ts`：

- `resolveCompanionVariant(companionType, equippedOutfit)` 只接受 `COMPANION_TYPES.outfitVariants` 中存在的外观值。
- 如果 `equippedOutfit` 是旧目录名、空值或未知值，回退到当前伙伴类型的 `baseVariant`。
- 当前伙伴类型也未知时，回退到 `Forest_Ranger_1`，保证画布始终有仓库内资源。
- `getCompanionThumbnailPath(variant)` 固定返回 `/assets/companions/<variant>/Body.png`。

伙伴收藏、锁定伙伴预览和选择页优先使用缩略图函数，避免再次手写动画帧路径。

### 动画加载与静态兜底

`ChibiComposer` 继续使用 canvas 播放 idle/throw/attack 动画，但取消“等待固定 200ms 后假定全部图片可用”的条件。

- 每次绘制前仅使用 `complete && naturalWidth > 0` 的帧。
- 当前动作帧不可用时优先使用已加载的 idle 帧。
- idle 也没有可绘制帧时，不调用 `drawImage`，在 canvas 下显示 `Body.png` 静态兜底图。
- 图片加载完成后下一次动画帧自然接管静态图。
- 图片错误不能向控制台持续抛出 `InvalidStateError`。

本次不改变动画速度、动作触发规则或 reduced-motion 行为。

## 愿望失败降级

愿望页保留 `fetchWishData()` 的整体成功语义，不在 store 内把部分失败伪装为完整成功。

页面展示分为三种状态：

1. 正在同步且没有真实奖励：显示加载状态。
2. 同步成功：展示真实余额、奖励、申请与日记。
3. 同步失败且没有真实奖励：展示默认愿望目录，并在目录上方显示紧凑的“数据暂未同步”提示、说明余额和申请记录可能不是最新、提供“重新同步”按钮。

默认目录卡片保持可浏览，但操作按钮禁用并标记“同步后可申请”。只有从数据库加载出的真实奖励才允许打开提交弹窗。这样既不会用失败面板遮挡目录，也不会把 `standard-*` 默认字符串 ID 发送给要求 UUID 的 RPC。

若此前已有成功加载的真实数据，后续刷新失败时继续保留现有内容，只显示同步提示，不清空已加载状态。

## 测试

- `src/lib/companionAssets.test.ts`
  - 有效装备外观保持不变。
  - 旧/未知外观回退到伙伴基础外观。
  - 未知伙伴类型回退到默认游侠。
  - 缩略图始终使用 `Body.png`。
- `src/components/companion/ChibiComposer.test.tsx`
  - 图片未加载或加载失败时不会把 broken image 传给 canvas。
  - 静态 `Body.png` 兜底存在并具有正确替代文本。
- `src/pages/WishShopPage.test.tsx`
  - 拉取失败时展示默认目录与紧凑同步提示。
  - 默认奖励不可打开申请弹窗。
  - 重试动作再次调用 `fetchWishData()`。
- 运行相关定向测试、完整 `npm test`、`npm run build`、`npm run docs:check`。
- 浏览器在 `/companion` 和 `/wish-shop` 验证：无破图、伙伴可见、无 `drawImage` 异常、愿望失败降级可读且不能误提交。

## 风险控制

- 静态兜底只影响渲染，不写回数据库，因此不会覆盖用户现有装备。
- 旧外观兼容发生在展示层；后续用户正常切换或装备时仍由现有 store 写入规范 variant。
- 愿望失败态不修改余额，默认目录只读，避免产生错误兑换。
- 本次修复达到用户可见 Bug 门槛，完成后更新 UI 迭代记录与伙伴、愿望领域文档。
