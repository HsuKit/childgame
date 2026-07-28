import assert from 'node:assert/strict'
import { spawnSync } from 'node:child_process'
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
import { fileURLToPath } from 'node:url'

import { validateDocs } from '../check-docs.mjs'

const CHECK_DOCS_SCRIPT = fileURLToPath(
  new URL('../check-docs.mjs', import.meta.url),
)
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

function iterationMarkdown({
  id = 'ITER-20260728-DOCS-SYSTEM',
  title = 'AI 项目知识体系',
  status = 'completed',
  domains = '[documentation]',
  created = '2026-07-28',
  updated = '2026-07-28',
  validation = 'node 测试通过',
} = {}) {
  return `---
id: ${id}
title: ${title}
status: ${status}
domains: ${domains}
created: ${created}
updated: ${updated}
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

function replaceFixtureIteration(root, filename, markdown) {
  if (filename !== ITERATION_FILE) {
    rmSync(join(root, 'docs/ai/iterations', ITERATION_FILE))
  }
  writeFixtureFile(root, `docs/ai/iterations/${filename}`, markdown)
  writeFixtureFile(
    root,
    'docs/ai/iterations/README.md',
    `# Iterations\n\n- [Current](./${filename})\n`,
  )
}

test('complete indexed documentation fixture is valid', (t) => {
  const root = createFixture(t)

  assert.deepEqual(validateDocs(root), [])
})

test('reports a missing required file', (t) => {
  const root = createFixture(t)
  rmSync(join(root, 'CLAUDE.md'))

  assert.deepEqual(validateDocs(root), [
    'missing required file: CLAUDE.md',
  ])
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

test('reports malformed iteration front matter explicitly', (t) => {
  const root = createFixture(t)
  const malformed = iterationMarkdown().replace(
    'updated: 2026-07-28\n---',
    'updated: 2026-07-28',
  )
  replaceFixtureIteration(root, ITERATION_FILE, malformed)

  assert.deepEqual(
    validateDocs(root).filter((error) => error.includes('front matter')),
    [
      `docs/ai/iterations/${ITERATION_FILE}: invalid front matter`,
    ],
  )
})

test('accepts paired quotes in front matter scalars', (t) => {
  const root = createFixture(t)
  replaceFixtureIteration(
    root,
    ITERATION_FILE,
    iterationMarkdown({
      id: '"ITER-20260728-DOCS-SYSTEM"',
      title: "'AI 项目知识体系'",
      status: '"completed"',
      domains: '["documentation"]',
      created: "'2026-07-28'",
      updated: '"2026-07-28"',
    }),
  )

  assert.deepEqual(validateDocs(root), [])
})

test('reports an invalid iteration filename', (t) => {
  const root = createFixture(t)
  const filename = 'Docs-System.md'
  replaceFixtureIteration(root, filename, iterationMarkdown())

  assert.deepEqual(validateDocs(root), [
    `docs/ai/iterations/${filename}: invalid iteration filename`,
  ])
})

test('reports an empty iteration title', (t) => {
  const root = createFixture(t)
  replaceFixtureIteration(
    root,
    ITERATION_FILE,
    iterationMarkdown({ title: '' }),
  )

  assert.deepEqual(validateDocs(root), [
    `docs/ai/iterations/${ITERATION_FILE}: title must not be empty`,
  ])
})

test('reports an invalid iteration status', (t) => {
  const root = createFixture(t)
  replaceFixtureIteration(
    root,
    ITERATION_FILE,
    iterationMarkdown({ status: 'done' }),
  )

  assert.deepEqual(validateDocs(root), [
    `docs/ai/iterations/${ITERATION_FILE}: invalid status "done"`,
  ])
})

test('reports an invalid iteration domain', (t) => {
  const root = createFixture(t)
  replaceFixtureIteration(
    root,
    ITERATION_FILE,
    iterationMarkdown({ domains: '[documentation, unknown]' }),
  )

  assert.deepEqual(validateDocs(root), [
    `docs/ai/iterations/${ITERATION_FILE}: invalid domain "unknown"`,
  ])
})

test('reports a missing required iteration section', (t) => {
  const root = createFixture(t)
  replaceFixtureIteration(
    root,
    ITERATION_FILE,
    iterationMarkdown().replace('## Git 关联', '### Git 关联'),
  )

  assert.deepEqual(validateDocs(root), [
    `docs/ai/iterations/${ITERATION_FILE}: missing required section "Git 关联"`,
  ])
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

test('reports an ADR missing from the decision ledger', (t) => {
  const root = createFixture(t)
  const filename = 'ADR-0001-documentation-validator.md'
  writeFixtureFile(
    root,
    `docs/ai/decisions/${filename}`,
    '# Documentation validator\n',
  )

  assert.deepEqual(validateDocs(root), [
    `docs/ai/decisions/${filename}: missing from decision ledger`,
  ])
})

test('accepts valid leap-day dates', (t) => {
  const root = createFixture(t)
  const filename = '2024-02-29-leap-day.md'
  replaceFixtureIteration(
    root,
    filename,
    iterationMarkdown({
      id: 'ITER-20240229-LEAP-DAY',
      created: '2024-02-29',
      updated: '2024-02-29',
    }),
  )

  assert.deepEqual(validateDocs(root), [])
})

test('reports impossible filename and front matter dates', (t) => {
  const root = createFixture(t)
  const filename = '2026-13-40-docs-system.md'
  replaceFixtureIteration(
    root,
    filename,
    iterationMarkdown({
      id: 'ITER-20261340-DOCS-SYSTEM',
      created: '2026-13-40',
      updated: '2023-02-29',
    }),
  )

  assert.deepEqual(validateDocs(root), [
    `docs/ai/iterations/${filename}: created must be YYYY-MM-DD and a valid calendar date`,
    `docs/ai/iterations/${filename}: filename date must be YYYY-MM-DD and a valid calendar date`,
    `docs/ai/iterations/${filename}: updated must be YYYY-MM-DD and a valid calendar date`,
  ])
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

test('CLI reports success on stdout with exit code zero', (t) => {
  const root = createFixture(t)

  const result = spawnSync(process.execPath, [CHECK_DOCS_SCRIPT], {
    cwd: root,
    encoding: 'utf8',
  })

  assert.equal(result.status, 0)
  assert.equal(result.stdout, 'Documentation check passed.\n')
  assert.equal(result.stderr, '')
})

test('CLI reports failures on stderr with exit code one', (t) => {
  const root = createFixture(t)
  rmSync(join(root, 'CLAUDE.md'))

  const result = spawnSync(process.execPath, [CHECK_DOCS_SCRIPT], {
    cwd: root,
    encoding: 'utf8',
  })

  assert.equal(result.status, 1)
  assert.equal(result.stdout, '')
  assert.equal(
    result.stderr,
    [
      'Documentation check failed (1):',
      '- missing required file: CLAUDE.md',
      '',
    ].join('\n'),
  )
})
