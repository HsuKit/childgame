import assert from 'node:assert/strict'
import {
  mkdirSync,
  mkdtempSync,
  readFileSync,
  rmSync,
  writeFileSync,
} from 'node:fs'
import { tmpdir } from 'node:os'
import { dirname, join } from 'node:path'
import test from 'node:test'

import { validateDocs } from '../check-docs.mjs'

const ITERATION_FILE = '2026-07-28-docs-system.md'
const REQUIRED_FILES = [
  'AGENTS.md',
  'CLAUDE.md',
  'GEMINI.md',
  'docs/ai/README.md',
  'docs/ai/project-overview.md',
  'docs/ai/architecture.md',
  'docs/ai/repository-map.md',
  'docs/ai/conventions.md',
  'docs/ai/domains/auth-profile.md',
  'docs/ai/domains/quiz-question-bank.md',
  'docs/ai/domains/companion-shop.md',
  'docs/ai/domains/wish-parent.md',
  'docs/ai/domains/leaderboard-pk.md',
  'docs/ai/decisions/README.md',
  'docs/ai/iterations/README.md',
  'docs/ai/iterations/_template.md',
]

function iterationMarkdown({ validation = 'node 测试通过' } = {}) {
  return `---
id: ITER-20260728-DOCS-SYSTEM
title: AI 项目知识体系
status: completed
domains: [documentation]
created: 2026-07-28
updated: 2026-07-28
---

## 背景与目标

建立可校验的项目知识文档。

## 范围

文档校验器与对应测试。

## 关联上下文

[AI 文档索引](../README.md)

## 实施摘要

实现文档结构、链接和迭代元数据校验。

## 决策与原因

只使用 Node.js 内置模块，避免增加依赖。

## 验证结果

${validation}

## 风险与遗留

无已知遗留

## Git 关联

未提交
`
}

function writeFixtureFile(root, relativePath, content) {
  const absolutePath = join(root, relativePath)
  mkdirSync(dirname(absolutePath), { recursive: true })
  writeFileSync(absolutePath, content)
}

function createFixture(t) {
  const root = mkdtempSync(join(tmpdir(), 'docs-check-'))
  t.after(() => rmSync(root, { recursive: true, force: true }))

  for (const relativePath of REQUIRED_FILES) {
    writeFixtureFile(root, relativePath, `# ${relativePath}\n`)
  }

  writeFixtureFile(
    root,
    'docs/ai/iterations/README.md',
    `# Iterations\n\n- [AI 项目知识体系](./${ITERATION_FILE})\n`,
  )
  writeFixtureFile(
    root,
    `docs/ai/iterations/${ITERATION_FILE}`,
    iterationMarkdown(),
  )

  return root
}

test('complete indexed documentation fixture is valid', (t) => {
  const root = createFixture(t)

  assert.deepEqual(validateDocs(root), [])
})

test('reports an iteration missing from the ledger', (t) => {
  const root = createFixture(t)
  writeFixtureFile(root, 'docs/ai/iterations/README.md', '# Iterations\n')

  assert.ok(
    validateDocs(root).some((error) =>
      error.includes('missing from iteration ledger'),
    ),
  )
})

test('reports an empty completed iteration validation section', (t) => {
  const root = createFixture(t)
  writeFixtureFile(
    root,
    `docs/ai/iterations/${ITERATION_FILE}`,
    iterationMarkdown({ validation: '' }),
  )

  assert.ok(
    validateDocs(root).some((error) =>
      error.includes('验证结果 must not be empty'),
    ),
  )
})

test('reports duplicate iteration ids', (t) => {
  const root = createFixture(t)
  const duplicateFile = '2026-07-28-docs-system-copy.md'
  writeFixtureFile(
    root,
    `docs/ai/iterations/${duplicateFile}`,
    iterationMarkdown(),
  )
  const ledgerPath = join(root, 'docs/ai/iterations/README.md')
  writeFileSync(
    ledgerPath,
    `${readFileSync(ledgerPath, 'utf8')}- [Duplicate](./${duplicateFile})\n`,
  )

  assert.ok(
    validateDocs(root).some((error) =>
      error.includes('duplicate iteration id'),
    ),
  )
})

test('reports broken local Markdown links', (t) => {
  const root = createFixture(t)
  writeFixtureFile(
    root,
    'docs/ai/project-overview.md',
    '# Project overview\n\n[Missing](./missing.md)\n',
  )

  assert.ok(
    validateDocs(root).some((error) => error.includes('broken local link')),
  )
})
