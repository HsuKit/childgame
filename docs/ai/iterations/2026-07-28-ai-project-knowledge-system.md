---
id: ITER-20260728-AI-PROJECT-KNOWLEDGE-SYSTEM
title: AI 项目知识与迭代追踪体系
status: in-progress
domains: [documentation]
created: 2026-07-28
updated: 2026-07-28
---

## 背景与目标

建立按需加载的 AI 项目上下文与可追溯迭代记录，减少重复探索和无关 token 消耗，同时让现状、历史和决策可以相互核验。

## 范围

本迭代覆盖统一 AI 入口、核心与 domain 文档、ADR 体系、重要历史回填、文档 validator 及 `PROJECT_INFO` 兼容入口。

## 关联上下文

- [设计规格](../../superpowers/specs/2026-07-28-ai-project-knowledge-system-design.md)
- [实施计划](../../superpowers/plans/2026-07-28-ai-project-knowledge-system.md)

## 实施摘要

工作仍在进行中。Task 1 已完成文档校验器及其测试；Task 2 已完成统一 AI 入口、知识库索引、迭代模板和当前 ledger 记录。核心/domain、ADR、历史回填和 `PROJECT_INFO` 兼容入口尚未完成。

## 决策与原因

采用单一规则入口、按业务域路由、现状与历史分层、ledger 筛选和 ADR 按需读取，以控制上下文规模并保留重要改动的证据链。

## 验证结果

Task 2 已验证：`node --test scripts/tests/docs-check.test.mjs` 21/21 通过；`AGENTS.md` 为 53 行；`CLAUDE.md` 与 `GEMINI.md` 完全一致；`git diff --check` 通过。知识体系尚未完成，因此当前未执行最终仓库级全量文档验证。

## 风险与遗留

必需的核心/domain 文档、ADR、历史回填及 `PROJECT_INFO` 仍待后续任务完成；在这些文件补齐前运行全量文档校验会失败。

## Git 关联

当前工作位于功能分支 `codex/ai-project-knowledge-system`，最终提交关联尚待本迭代完成后补充。
