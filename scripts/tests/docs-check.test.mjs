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

test('accepts angle-bracket and titled local Markdown links', (t) => {
  const root = createFixture(t)
  writeFixtureFile(root, 'docs/ai/existing.md', '# Existing\n')
  writeFixtureFile(
    root,
    'docs/ai/project-overview.md',
    [
      '# Project overview',
      '',
      '[Angle bracket](<./existing.md#existing>)',
      '[Optional title](./existing.md "Existing document")',
      '[Parenthesized title](./existing.md (Existing document))',
      '',
    ].join('\n'),
  )

  assert.deepEqual(validateDocs(root), [])
})

test('accepts normalized iteration and ADR ledger links', (t) => {
  const root = createFixture(t)
  const decisionFile = 'ADR-0001-documentation-validator.md'
  writeFixtureFile(
    root,
    `docs/ai/decisions/${decisionFile}`,
    '# Documentation validator\n',
  )
  writeFixtureFile(
    root,
    'docs/ai/iterations/README.md',
    `# Iterations\n\n- [Current](<./${ITERATION_FILE}#git-关联> "Current iteration")\n`,
  )
  writeFixtureFile(
    root,
    'docs/ai/decisions/README.md',
    `# Decisions\n\n- [Validator](./${decisionFile} (Accepted))\n`,
  )

  assert.deepEqual(validateDocs(root), [])
})

test('ignores ledger-like links inside code blocks and comments', (t) => {
  const root = createFixture(t)
  const decisionFile = 'ADR-0001-documentation-validator.md'
  writeFixtureFile(
    root,
    `docs/ai/decisions/${decisionFile}`,
    '# Documentation validator\n',
  )
  writeFixtureFile(
    root,
    'docs/ai/iterations/README.md',
    [
      '# Iterations',
      '',
      '```markdown',
      `- [Hidden](./${ITERATION_FILE})`,
      '```',
      `<!-- - [Hidden](./${ITERATION_FILE}) -->`,
      '',
    ].join('\n'),
  )
  writeFixtureFile(
    root,
    'docs/ai/decisions/README.md',
    [
      '# Decisions',
      '',
      '```markdown',
      `- [Hidden](./${decisionFile})`,
      '```',
      `<!-- - [Hidden](./${decisionFile}) -->`,
      '',
    ].join('\n'),
  )

  assert.deepEqual(validateDocs(root), [
    `docs/ai/decisions/${decisionFile}: missing from decision ledger`,
    `docs/ai/iterations/${ITERATION_FILE}: missing from iteration ledger`,
  ])
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

test('reports missing targets for every supported inline link syntax', (t) => {
  const root = createFixture(t)
  writeFixtureFile(
    root,
    'docs/ai/project-overview.md',
    [
      '# Project overview',
      '',
      '[Plain](./missing-plain.md)',
      '[Angle](<./missing-angle.md#heading>)',
      '[Double title](./missing-double.md "Missing")',
      "[Single title](./missing-single.md 'Missing')",
      '[Parenthesized title](./missing-parenthesized.md (Missing))',
      '',
    ].join('\n'),
  )

  assert.deepEqual(validateDocs(root), [
    'docs/ai/project-overview.md: broken local link "./missing-angle.md"',
    'docs/ai/project-overview.md: broken local link "./missing-double.md"',
    'docs/ai/project-overview.md: broken local link "./missing-parenthesized.md"',
    'docs/ai/project-overview.md: broken local link "./missing-plain.md"',
    'docs/ai/project-overview.md: broken local link "./missing-single.md"',
  ])
})
