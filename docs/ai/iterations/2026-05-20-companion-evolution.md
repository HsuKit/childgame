---
id: ITER-20260520-COMPANION-EVOLUTION
title: 伙伴互动、进化与角色资产演进
status: completed
domains: [companion-shop]
created: 2026-05-20
updated: 2026-07-28
---

## 背景与目标

第一版伙伴主要承担学习奖励的静态展示。2026-05-20 起的一组连续改动希望让伙伴具有可感知的反馈和成长：点击会回应、状态会触发对话、空闲时会活动，经验提升会进入进化阶段；随后又将简化 SVG 表现演进为可换装、可播放动作的 Craftpix 分层角色资产。

本记录是 2026-07-28 的历史回填，依据伙伴升级规格、相关提交和迁移整理；多个紧密衔接的提交被合并为一个能力阶段。记录描述当时实际演进，也保留当前文档已经识别但不能倒推为当时已解决的边界。

## 范围

包含：

- 伙伴点击反馈、粒子/动作效果、状态与随机发言气泡，以及呼吸、漂浮、发光、身体摇摆等空闲表现。
- 按等级计算进化阶段、升级检测和全屏庆祝反馈。
- 从 SVG/组合图层到 Craftpix 全身角色与逐帧 sprite 的资产路线，及预加载、交叉淡入和 Canvas 方案对闪帧问题的连续修正。
- 点击触发投掷/攻击动作、武器购买/装备/卸下、商城角色预览和外观切换。
- 新增女武神、石魔像、堕落天使等伙伴与多套 variant，锁定剪影、伙伴拥有标记、外观/武器一次购买、解锁链和切换收费规则。

明确不包含可证明的 AI 生成完全体资产、服务器事务化购买、完整迁移修复或规则一致性收敛；也不把后来发现的 level 20 不可达、字段迁移漂移和切换/拥有规则问题写成已经解决。

## 关联上下文

- [伙伴升级设计规格](../../superpowers/specs/2026-05-20-companion-upgrade-design.md)
- 本阶段没有独立实施计划；仓库中未找到与该规格对应的单独 plan。
- [004 伙伴类型目录同步迁移](../../../supabase/migrations/004_sync_companion_types.sql)
- [伙伴与商城业务域](../domains/companion-shop.md)
- [迭代账本](./README.md)

## 实施摘要

`40246d6` 用 `InteractiveCompanion` 和 `SpeechBubble` 加入点击反馈与状态/随机对话；`7a7d1ce` 增加阶段检测和进化庆祝；`da3d9aa` 补充空闲动画。随后 `8481339` 将 SVG 表现替换为 Craftpix chibi 分层角色，`23ebb05` 扩展角色切换、外观和配饰，`438a7e2` 改为 18 帧全身 idle sprite。`0799e60`、`f69405a`、`91d65e7` 依次尝试下一帧预加载、双帧交叉淡入和 8fps Canvas 绘制，以处理逐帧切换闪烁。

`2d8150e` 把点击扩展为投掷/武器攻击，并加入武器系统和商城动作预览；`d595dc9` 增加三类伙伴及九套 variant。`11336fd` 将外观和武器改为首次购买、之后免费切换；`d2cc822` 增加锁定剪影和积分提示；`543800e` 建立 `minotaur → valkyrie → golem → reaper → angel` 解锁链，并要求前一伙伴外观齐全；`c92c1d3` 引入 `owned_*` 标记以避免切回时重复付费；`cbe1c07` 最终明确只有最初三选一免费，后续未拥有伙伴切换收取 500 积分。

当前 `004_sync_companion_types.sql` 可证明数据库伙伴类型目录与后续前端角色 key 的同步，但它不包含 `evolution_stage` 或 `equipped_outfit` 列变更，不能作为这些字段已经完成数据库迁移的证据。

## 决策与原因

- 先用点击、对话、空闲动画和升级庆祝建立即时情感反馈，再逐步替换角色渲染资产，避免把交互价值绑死在单一美术方案上。
- 在 sprite 闪帧问题上连续试验预加载、双图交叉淡入和 Canvas；提交序列表明 Canvas 8fps 是该轮最终采用的渲染方向，但不能由此推断所有设备上的视觉问题都已验证消失。
- 用 `equipped_items` 中的 `outfit_*`、`weapon_*`、`owned_*` 标记承载购买和拥有状态，并以解锁链引导长期收集。
- 将 2026-05-20 至 2026-05-26 的 17 个紧密提交合并记录，因为它们围绕同一伙伴互动、资产和所有权模型持续迭代；其中后续修复也反映规则是在实现过程中逐步收敛，而非规格一次性完整落地。

## 验证结果

2026-07-28 回填时执行的文档验证为：`node --test scripts/tests/docs-check.test.mjs` 21/21 通过，`node scripts/check-docs.mjs` 通过，`git diff --check` 通过；本记录中的链接也由同一 checker 校验。

历史实现证据包括互动/气泡组件、进化庆祝与 store 变更、Craftpix 资产和 sprite 渲染器、动作/武器商城逻辑、新伙伴定义，以及拥有/解锁/切换规则的连续提交。指定历史提交的树中未找到自动化测试文件，规格和提交没有保存当时命令输出，因此未能从仓库资料确认当时的构建、浏览器兼容、资产完整性、数据库部署或手动验收结果。

## 风险与遗留

当前[伙伴与商城业务域](../domains/companion-shop.md)仍记录了 level 20 第四阶段不可达、`evolution_stage`/`equipped_outfit` 与有序迁移不一致、`equipped_items` 标记可能互相丢失、伙伴拥有/外观恢复键不一致，以及扣分与伙伴更新非事务等风险。这些问题不能因本阶段存在“进化”“永久拥有”或“免费切换”的提交标题而视为已解决。

伙伴规则和资产后来仍可能继续演进，应以当前 domain 文档、代码、迁移及[迭代账本](./README.md)共同核对；本记录只说明该能力阶段的历史意图和提交证据。

## Git 关联

- `36958e7` — `docs: B+C companion upgrade design spec (interaction + evolution)`
- `40246d6` — `feat: add interactive companion with tap feedback and speech bubble`
- `7a7d1ce` — `feat: add evolution system with stage detection and celebration animation`
- `da3d9aa` — `feat: add idle animations — breathing, floating, glow, body sway`
- `8481339` — `feat: replace SVG companions with Craftpix chibi layered characters`
- `23ebb05` — `feat: Craftpix chibi companion v2 — switching, outfits, accessories`
- `438a7e2` — `feat: full-body chibi animation with 18-frame idle sprite cycling`
- `0799e60` — `fix: preload next chibi frame, single img render to avoid flash`
- `f69405a` — `fix: dual-frame crossfade to eliminate sprite flash`
- `91d65e7` — `fix: clean Canvas-based sprite animation at 8fps`
- `2d8150e` — `feat: tap-triggered action animations, weapon system, shop preview`
- `d595dc9` — `feat: add 3 new companions — Valkyrie, Golem, Fallen Angel (9 variants)`
- `11336fd` — `fix: outfits and weapons unlocked once, free to switch`
- `d2cc822` — `feat: show locked companions as dark silhouettes with point costs`
- `543800e` — `feat: companion unlock chain — minotaur→valkyrie→golem→reaper→angel, requires prev all outfits`
- `c92c1d3` — `fix: owned companions permanently unlocked, no re-pay on switch back`
- `cbe1c07` — `fix: only initial 3-choose-1 is free, all later switches cost 500 points`

本次历史回填位于 `codex/ai-project-knowledge-system` 分支；原始资料未提供独立 PR 或发布记录，未能确认对应关联。
