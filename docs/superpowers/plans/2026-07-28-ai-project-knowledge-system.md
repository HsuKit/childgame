# AI Project Knowledge System Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a token-efficient, multi-AI project knowledge base with routed context loading, traceable iterations, key historical backfill, and deterministic documentation checks.

**Architecture:** Keep `AGENTS.md` as the single short instruction entry point and place current-state knowledge under `docs/ai`. Store historical intent and outcomes in one-page iteration records, and reserve ADRs for durable cross-iteration decisions. A dependency-free Node.js checker validates required files, front matter, indexes, sections, and local links.

**Tech Stack:** Markdown, Node.js ESM, `node:test`, npm scripts, Git

**Design:** `docs/superpowers/specs/2026-07-28-ai-project-knowledge-system-design.md`

---

## File Map

### AI entry points

- Create `AGENTS.md`: authoritative short rules, reading sequence, task routing, and iteration completion checklist.
- Create `CLAUDE.md`: compatibility pointer to `AGENTS.md`.
- Create `GEMINI.md`: compatibility pointer to `AGENTS.md`.
- Modify `PROJECT_INFO.md`: retain the human quick-start and point detailed technical context to `docs/ai/README.md`.

### Current-state knowledge

- Create `docs/ai/README.md`: knowledge-base index, source-of-truth rules, and loading guidance.
- Create `docs/ai/project-overview.md`: product, users, capabilities, stack, environments, and deployment.
- Create `docs/ai/architecture.md`: runtime boundaries, routes, stores, Supabase data flow, question pipeline, and deployment.
- Create `docs/ai/repository-map.md`: directory responsibilities, high-value files, tests, and change-impact map.
- Create `docs/ai/conventions.md`: code, testing, database, question-bank, security, Git, and documentation rules.
- Create `docs/ai/domains/auth-profile.md`: anonymous auth, profile, grade, and onboarding context.
- Create `docs/ai/domains/quiz-question-bank.md`: daily quiz, challenge, questions, results, mistakes, and curation.
- Create `docs/ai/domains/companion-shop.md`: companions, points, items, animation, switching, and unlocks.
- Create `docs/ai/domains/wish-parent.md`: wish coins, redemptions, parent actions, and reports.
- Create `docs/ai/domains/leaderboard-pk.md`: rankings and PK lifecycle.

### Durable decisions

- Create `docs/ai/decisions/README.md`: ADR index and creation threshold.
- Create `docs/ai/decisions/ADR-0001-canonical-question-json.md`: canonical JSON is the question content source.
- Create `docs/ai/decisions/ADR-0002-idempotent-reward-ledgers.md`: reward settlement uses ledgers, references, and database idempotency.
- Create `docs/ai/decisions/ADR-0003-single-authoritative-ai-entry.md`: `AGENTS.md` is authoritative; tool-specific files only delegate.

### Iteration tracking

- Create `docs/ai/iterations/_template.md`: reusable required structure.
- Create `docs/ai/iterations/README.md`: reverse-chronological iteration ledger.
- Create eleven `docs/ai/iterations/YYYY-MM-DD-slug.md` records for ten historical stages plus this documentation-system iteration.

### Validation

- Create `scripts/check-docs.mjs`: reusable validator and command-line entry point.
- Create `scripts/tests/docs-check.test.mjs`: temporary-fixture tests for valid docs and expected failures.
- Modify `package.json`: add `docs:check`.

---

### Task 1: Build the Documentation Validator With Tests

**Files:**

- Create: `scripts/tests/docs-check.test.mjs`
- Create: `scripts/check-docs.mjs`

- [ ] **Step 1: Write fixture-based failing tests**

Create `scripts/tests/docs-check.test.mjs`. The fixture helper must create the required entry files, core files, five domain files, both indexes, and one valid completed iteration. Add four tests:

```js
import test from 'node:test'
import assert from 'node:assert/strict'
import { mkdtempSync, mkdirSync, writeFileSync } from 'node:fs'
import { tmpdir } from 'node:os'
import { join } from 'node:path'
import { validateDocs } from '../check-docs.mjs'

const requiredFiles = [
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

const iteration = `---
id: ITER-20260728-DOCS-SYSTEM
title: AI 项目知识体系
status: completed
domains: [documentation]
created: 2026-07-28
updated: 2026-07-28
---

## 背景与目标
建立按需加载的知识体系。

## 范围
项目文档和校验。

## 关联上下文
[知识库](../README.md)

## 实施摘要
已创建入口和知识文档。

## 决策与原因
使用单一权威入口。

## 验证结果
\`node --test scripts/tests/docs-check.test.mjs\` 通过。

## 风险与遗留
无已知遗留。

## Git 关联
未提交。
`

function fixture() {
  const root = mkdtempSync(join(tmpdir(), 'childgame-docs-'))
  for (const relative of requiredFiles) {
    const target = join(root, relative)
    mkdirSync(join(target, '..'), { recursive: true })
    writeFileSync(target, '# Fixture\n', 'utf8')
  }
  writeFileSync(
    join(root, 'docs/ai/iterations/2026-07-28-docs-system.md'),
    iteration,
    'utf8',
  )
  writeFileSync(
    join(root, 'docs/ai/iterations/README.md'),
    '# 迭代台账\n\n[AI 项目知识体系](./2026-07-28-docs-system.md)\n',
    'utf8',
  )
  return root
}

test('accepts a complete indexed documentation fixture', () => {
  assert.deepEqual(validateDocs(fixture()), [])
})

test('rejects an iteration missing from the ledger', () => {
  const root = fixture()
  writeFileSync(join(root, 'docs/ai/iterations/README.md'), '# 迭代台账\n', 'utf8')
  assert.match(validateDocs(root).join('\n'), /missing from iteration ledger/)
})

test('rejects a completed iteration without verification evidence', () => {
  const root = fixture()
  const file = join(root, 'docs/ai/iterations/2026-07-28-docs-system.md')
  writeFileSync(file, iteration.replace(
    '## 验证结果\n`node --test scripts/tests/docs-check.test.mjs` 通过。',
    '## 验证结果\n',
  ), 'utf8')
  assert.match(validateDocs(root).join('\n'), /验证结果 must not be empty/)
})

test('rejects duplicate iteration ids', () => {
  const root = fixture()
  writeFileSync(
    join(root, 'docs/ai/iterations/2026-07-29-duplicate-record.md'),
    iteration,
    'utf8',
  )
  writeFileSync(
    join(root, 'docs/ai/iterations/README.md'),
    '# 迭代台账\n\n'
      + '[AI 项目知识体系](./2026-07-28-docs-system.md)\n'
      + '[重复记录](./2026-07-29-duplicate-record.md)\n',
    'utf8',
  )
  assert.match(validateDocs(root).join('\n'), /duplicate iteration id/)
})

test('rejects a broken local markdown link', () => {
  const root = fixture()
  const file = join(root, 'docs/ai/project-overview.md')
  writeFileSync(file, '# Overview\n\n[Missing](./missing.md)\n', 'utf8')
  assert.match(validateDocs(root).join('\n'), /broken local link/)
})
```

- [ ] **Step 2: Run the tests and confirm the expected failure**

Run:

```bash
node --test scripts/tests/docs-check.test.mjs
```

Expected: FAIL with `ERR_MODULE_NOT_FOUND` for `scripts/check-docs.mjs`.

- [ ] **Step 3: Implement the dependency-free validator**

Create `scripts/check-docs.mjs` with these exported and CLI behaviors:

```js
import {
  existsSync,
  readdirSync,
  readFileSync,
  statSync,
} from 'node:fs'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

const requiredFiles = [
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

const statuses = new Set(['planned', 'in-progress', 'completed', 'paused'])
const domains = new Set([
  'auth-profile',
  'quiz-question-bank',
  'companion-shop',
  'wish-parent',
  'leaderboard-pk',
  'platform',
  'documentation',
])
const sections = [
  '背景与目标',
  '范围',
  '关联上下文',
  '实施摘要',
  '决策与原因',
  '验证结果',
  '风险与遗留',
  'Git 关联',
]

function parseFrontMatter(text) {
  if (!text.startsWith('---\n')) return null
  const end = text.indexOf('\n---\n', 4)
  if (end === -1) return null
  const metadata = {}
  for (const line of text.slice(4, end).split('\n')) {
    const separator = line.indexOf(':')
    if (separator === -1) continue
    const key = line.slice(0, separator).trim()
    const raw = line.slice(separator + 1).trim()
    metadata[key] = raw.startsWith('[') && raw.endsWith(']')
      ? raw.slice(1, -1).split(',').map((value) => value.trim()).filter(Boolean)
      : raw.replace(/^['"]|['"]$/g, '')
  }
  return { metadata, body: text.slice(end + 5) }
}

function sectionBody(body, title) {
  const heading = `## ${title}`
  const start = body.indexOf(heading)
  if (start === -1) return null
  const contentStart = start + heading.length
  const next = body.indexOf('\n## ', contentStart)
  return body.slice(contentStart, next === -1 ? body.length : next).trim()
}

function localLinks(text) {
  const links = []
  const pattern = /\[[^\]]+\]\(([^)]+)\)/g
  for (const match of text.matchAll(pattern)) {
    const target = match[1].split('#')[0].trim()
    if (
      target
      && !target.startsWith('#')
      && !target.startsWith('http://')
      && !target.startsWith('https://')
      && !target.startsWith('mailto:')
    ) {
      links.push(target)
    }
  }
  return links
}

function markdownFiles(root) {
  const files = []
  function visit(directory) {
    for (const entry of readdirSync(directory, { withFileTypes: true })) {
      const target = join(directory, entry.name)
      if (entry.isDirectory()) visit(target)
      else if (entry.name.endsWith('.md')) files.push(target)
    }
  }
  for (const relative of ['AGENTS.md', 'CLAUDE.md', 'GEMINI.md', 'PROJECT_INFO.md']) {
    const target = join(root, relative)
    if (existsSync(target)) files.push(target)
  }
  const knowledgeRoot = join(root, 'docs/ai')
  if (existsSync(knowledgeRoot)) visit(knowledgeRoot)
  return files
}

export function validateDocs(root) {
  const errors = []
  for (const relative of requiredFiles) {
    if (!existsSync(join(root, relative))) errors.push(`missing required file: ${relative}`)
  }

  for (const source of markdownFiles(root)) {
    const text = readFileSync(source, 'utf8')
    for (const target of localLinks(text)) {
      const resolved = resolve(dirname(source), target)
      if (!existsSync(resolved) || !statSync(resolved).isFile()) {
        errors.push(`${source}: broken local link ${target}`)
      }
    }
  }

  const directory = join(root, 'docs/ai/iterations')
  if (!existsSync(directory)) return errors.sort()
  const ledgerPath = join(directory, 'README.md')
  const ledger = existsSync(ledgerPath) ? readFileSync(ledgerPath, 'utf8') : ''
  const iterationFiles = readdirSync(directory)
    .filter((name) => name.endsWith('.md') && name !== 'README.md' && !name.startsWith('_'))
  const ids = new Set()

  for (const name of iterationFiles) {
    const file = join(directory, name)
    const parsed = parseFrontMatter(readFileSync(file, 'utf8'))
    if (!parsed) {
      errors.push(`${name}: missing valid front matter`)
      continue
    }
    const { metadata, body } = parsed
    const filename = name.match(/^(\d{4}-\d{2}-\d{2})-([a-z0-9]+(?:-[a-z0-9]+)*)\.md$/)
    if (!filename) errors.push(`${name}: invalid iteration filename`)
    const expectedId = filename
      ? `ITER-${filename[1].replaceAll('-', '')}-${filename[2].toUpperCase()}`
      : null
    if (metadata.id !== expectedId) errors.push(`${name}: id must be ${expectedId}`)
    if (ids.has(metadata.id)) errors.push(`${name}: duplicate iteration id ${metadata.id}`)
    ids.add(metadata.id)
    if (!metadata.title) errors.push(`${name}: title is required`)
    if (!statuses.has(metadata.status)) errors.push(`${name}: invalid status ${metadata.status}`)
    if (!Array.isArray(metadata.domains) || metadata.domains.length === 0) {
      errors.push(`${name}: domains must be a non-empty list`)
    } else {
      for (const domain of metadata.domains) {
        if (!domains.has(domain)) errors.push(`${name}: invalid domain ${domain}`)
      }
    }
    for (const key of ['created', 'updated']) {
      if (!/^\d{4}-\d{2}-\d{2}$/.test(metadata[key] ?? '')) {
        errors.push(`${name}: ${key} must use YYYY-MM-DD`)
      }
    }
    for (const section of sections) {
      const content = sectionBody(body, section)
      if (content === null) errors.push(`${name}: missing section ${section}`)
      if (metadata.status === 'completed' && ['验证结果', '风险与遗留'].includes(section) && !content) {
        errors.push(`${name}: ${section} must not be empty when completed`)
      }
    }
    if (!ledger.includes(`](./${name})`)) {
      errors.push(`${name}: missing from iteration ledger`)
    }
  }

  const decisionsDirectory = join(root, 'docs/ai/decisions')
  if (existsSync(decisionsDirectory)) {
    const indexPath = join(decisionsDirectory, 'README.md')
    const index = existsSync(indexPath) ? readFileSync(indexPath, 'utf8') : ''
    for (const name of readdirSync(decisionsDirectory)) {
      if (/^ADR-\d{4}-[a-z0-9-]+\.md$/.test(name) && !index.includes(`](./${name})`)) {
        errors.push(`${name}: missing from decision index`)
      }
    }
  }

  return errors.sort()
}

const currentFile = fileURLToPath(import.meta.url)
if (process.argv[1] && resolve(process.argv[1]) === currentFile) {
  const errors = validateDocs(process.cwd())
  if (errors.length > 0) {
    console.error(`Documentation check failed (${errors.length}):`)
    for (const error of errors) console.error(`- ${error}`)
    process.exitCode = 1
  } else {
    console.log('Documentation check passed.')
  }
}
```

- [ ] **Step 4: Run the validator tests**

Run:

```bash
node --test scripts/tests/docs-check.test.mjs
```

Expected: five tests pass.

- [ ] **Step 5: Commit the validator**

```bash
git add scripts/check-docs.mjs scripts/tests/docs-check.test.mjs
git commit -m "test: add AI documentation validator"
```

---

### Task 2: Create the Single AI Entry and Knowledge Index

**Files:**

- Create: `AGENTS.md`
- Create: `CLAUDE.md`
- Create: `GEMINI.md`
- Create: `docs/ai/README.md`
- Create: `docs/ai/iterations/_template.md`
- Create: `docs/ai/iterations/2026-07-28-ai-project-knowledge-system.md`
- Create: `docs/ai/iterations/README.md`

- [ ] **Step 1: Write the root AI contract**

Create `AGENTS.md` in Chinese and keep it below 160 lines. Include:

- Product summary: a React/Supabase learning and motivation app for grades 1–6.
- Mandatory first read: `docs/ai/README.md`.
- Rule to identify the task domain before opening detailed files.
- A routing table containing every route from the approved design.
- Rules that canonical question JSON lives in `data/questions`, migrations are additive/idempotent, secrets never enter docs, and verified code/migrations override stale prose.
- A rule not to load all domains, iterations, specs, or plans at startup.
- The important-change definition from the design.
- A completion checklist requiring iteration outcome, ledger, affected current-state docs, ADR assessment, tests, and `npm run docs:check`.

- [ ] **Step 2: Write tool compatibility pointers**

Create `CLAUDE.md` and `GEMINI.md` with the same minimal content:

```md
# 项目 AI 入口

开始任何任务前，请先读取并遵守根目录 [`AGENTS.md`](./AGENTS.md)。项目规则和按需上下文路由只在该文件维护，本文件不复制规则。
```

- [ ] **Step 3: Write the knowledge-base index**

Create `docs/ai/README.md` with these sections:

- `使用方式`: `AGENTS.md` → relevant core/domain doc → ledger → one to three iterations → ADR if needed.
- `文档地图`: links to all four core documents, all five domain documents, iteration ledger, and decision index.
- `事实来源`: code/tests, migrations, canonical question JSON, Git, current-state docs, iterations, ADRs, specs/plans.
- `维护原则`: current state versus history, link instead of copy, unknown facts stay explicit, no secrets.
- `更新触发`: which document types change for architecture, domain behavior, long-term decisions, and important iterations.

- [ ] **Step 4: Create the reusable iteration template**

Create `docs/ai/iterations/_template.md` with the exact front matter keys and eight required headings from the design. Under each heading, add one sentence explaining what must be recorded. Use `status: planned`, `domains: [documentation]`, and example dates `2000-01-01`; the validator excludes underscore-prefixed templates.

- [ ] **Step 5: Register the current implementation**

Create `docs/ai/iterations/2026-07-28-ai-project-knowledge-system.md` with:

- `id: ITER-20260728-AI-PROJECT-KNOWLEDGE-SYSTEM`
- `status: in-progress`
- `domains: [documentation]`
- Links to the approved design and this plan.
- Scope covering entry files, core/domain docs, ADRs, history backfill, validator, and `PROJECT_INFO.md`.
- Implementation, verification, risks, and Git fields that truthfully state work is in progress and not yet verified.

Create `docs/ai/iterations/README.md` with the approved columns and one row linking this in-progress iteration.

- [ ] **Step 6: Check local links**

Run:

```bash
node --test scripts/tests/docs-check.test.mjs
```

Expected: five tests pass. Do not run the repository-level validator yet because the remaining required knowledge files are created in later tasks.

- [ ] **Step 7: Commit the entry layer**

```bash
git add AGENTS.md CLAUDE.md GEMINI.md docs/ai/README.md docs/ai/iterations
git commit -m "docs: add routed AI project entry"
```

---

### Task 3: Document the Current Project and Repository Architecture

**Files:**

- Create: `docs/ai/project-overview.md`
- Create: `docs/ai/architecture.md`
- Create: `docs/ai/repository-map.md`
- Create: `docs/ai/conventions.md`

- [ ] **Step 1: Write the project overview from verified sources**

Use `package.json`, `src/App.tsx`, `PROJECT_INFO.md`, deployment configs, and `.env.example`. Include:

- Children in grades 1–6 and the daily learning/motivation goal.
- Current capabilities: three subjects, daily quiz, challenge, mistakes, companions, points/shop, check-ins, wish rewards, parent report, leaderboard, and PK.
- Exact stack versions at the major-version level.
- Local commands: `npm install`, `npm run dev`, `npm test`, `npm run test:questions`, `npm run questions:validate`, `npm run build`, and the future `npm run docs:check`.
- Environment variable names only, never values.
- Netlify as the current Git-triggered frontend deployment and Supabase as auth/database/RLS/functions.

- [ ] **Step 2: Write the runtime architecture**

Use `src/App.tsx`, stores, `src/lib/questionRepository.ts`, `src/lib/supabase.ts`, migrations, and deployment configs. Include:

- Browser → React Router pages → Zustand stores/lib repositories → Supabase.
- Route groups and their owning domains.
- Anonymous authentication and profile/companion onboarding.
- Question content path: canonical JSON → validation/release scripts → idempotent migration → approved database rows → repository/composer → quiz/challenge.
- Answer path: UI card → quiz store → `quiz_records` → check-in/reward/mistake side effects.
- Reward path: points ledger and wish coin ledger; database constraints/RPCs provide idempotency.
- Client error boundaries and recoverable store errors.
- Netlify SPA routing and Supabase migrations.

- [ ] **Step 3: Write the repository map**

Document only stable high-value boundaries:

| Path | Responsibility |
| --- | --- |
| `src/pages/` | Route-level orchestration |
| `src/components/` | Domain and shared UI |
| `src/stores/` | Zustand state and Supabase orchestration |
| `src/lib/` | Pure rules, repositories, Supabase client, utilities |
| `src/data/` | Client configuration and fallback/sample data |
| `data/questions/` | Canonical reviewed question content |
| `data/question-*` | Candidate, audit, blueprint, and release artifacts |
| `scripts/lib/` | Question schema, audit, release, SQL, explanation logic |
| `scripts/tests/` | Node tests for offline pipelines |
| `supabase/migrations/` | Ordered database evolution |
| `supabase/functions/` | Edge functions; not part of runtime quiz generation |
| `docs/superpowers/` | Approved designs and implementation plans |
| `docs/ai/` | Current AI context, iterations, and ADRs |

Add a change-impact table for routes, stores, question schema, rewards, migrations, companion assets, and deployment.

- [ ] **Step 4: Write project conventions**

Record concrete existing commands and rules:

- TypeScript strict mode; keep pure rules in `src/lib` with colocated Vitest tests.
- Store changes require state-transition tests when behavior is non-trivial.
- Offline question scripts use `node:test`.
- Database changes use new numbered migrations; do not edit an applied migration to alter production history.
- Question JSON is canonical; AI output starts as draft and cannot go directly to production.
- Never expose service-role credentials; browser code uses only public client configuration.
- Preserve unrelated dirty-worktree changes.
- Important iterations update the ledger and current-state docs before completion.
- Verification is proportional to scope; the full documentation-system rollout runs all test suites and build.

- [ ] **Step 5: Review architecture claims against code**

Run targeted searches:

```bash
rg -n "create\\(|persist\\(|supabase|award|quiz_records|mistake" src/stores src/lib src/pages
rg -n "^create table|^create or replace function|enable row level security" supabase/migrations
```

Expected: every table, RPC, store, and data-flow claim in the documents has a matching code or migration source. Remove or qualify any unverified claim.

- [ ] **Step 6: Commit the current-state architecture**

```bash
git add docs/ai/project-overview.md docs/ai/architecture.md docs/ai/repository-map.md docs/ai/conventions.md
git commit -m "docs: map current project architecture"
```

---

### Task 4: Document the Five Business Domains

**Files:**

- Create: `docs/ai/domains/auth-profile.md`
- Create: `docs/ai/domains/quiz-question-bank.md`
- Create: `docs/ai/domains/companion-shop.md`
- Create: `docs/ai/domains/wish-parent.md`
- Create: `docs/ai/domains/leaderboard-pk.md`

- [ ] **Step 1: Document auth and profile**

Inspect `src/stores/authStore.ts`, auth components, profile/onboarding pages, `src/lib/supabase.ts`, and migrations `001` and `004`. Record:

- Anonymous sign-in and profile creation/recovery flow.
- Grade selection and phone-binding boundary.
- Companion onboarding dependency.
- Relevant pages, components, store methods, tables, and tests.
- Invariants: user-owned rows use `auth.uid()`, onboarding must recover partial state, and secrets are not client-stored.

- [ ] **Step 2: Document quiz and question bank**

Inspect quiz/challenge/result/mistake pages, quiz and mistake stores, question repository/composer/content libs, `docs/question-bank-workflow.md`, `data/question-blueprint.json`, and migrations `005`–`012`, `014`, and `016`. Record:

- Daily quiz and mixed-subject challenge flows.
- Choice/fill/match/grid rendering and answer normalization.
- Balanced history-aware composition.
- Canonical question lifecycle from draft to approved migration.
- Quiz records, mistake state transitions, parent summary dependency, and related tests.
- Invariants: approved database questions only, stable external IDs, non-destructive publication, and exact validation before release.

- [ ] **Step 3: Document companions, points, and shop**

Inspect companion pages/components/store/data, shop store/page, points store, migrations `001`, `004`, and companion assets. Record:

- Initial selection, switching, ownership, unlock chain, outfits, weapons, animation, and evolution.
- Points transaction ledger and shop purchase flow.
- Asset location and configuration touch points.
- Invariants around persisted ownership, paid switching, and companion row reuse.

- [ ] **Step 4: Document wishes and parent surfaces**

Inspect wish pages/components/store/rules, parent report files, migrations `012`, `013`, and `015`. Record:

- Daily wish-coin settlement and streak bonuses.
- Available/frozen/spent balance.
- Redemption states and parent approve/reject/fulfill flow.
- Reward catalog and diary.
- Same-account parent report boundary.
- RPC and ledger idempotency invariants.

- [ ] **Step 5: Document leaderboard and PK**

Inspect leaderboard/PK pages, `src/lib/pkUtils.ts`, relevant store access, and migration `003`. Record:

- Leaderboard data source and display boundary.
- PK creation/join/wait/quiz/result lifecycle.
- Polling or refresh behavior and failure states.
- Shared quiz-record and reward dependencies.
- Related tests and known boundaries.

- [ ] **Step 6: Run a domain link and path audit**

Run:

```bash
rg -n "src/|supabase/|data/|docs/" docs/ai/domains
```

Expected: every referenced path exists and domain documents link to authoritative workflow/spec material instead of duplicating it.

- [ ] **Step 7: Commit the domain guides**

```bash
git add docs/ai/domains
git commit -m "docs: add AI business domain guides"
```

---

### Task 5: Record Durable Architecture Decisions

**Files:**

- Create: `docs/ai/decisions/README.md`
- Create: `docs/ai/decisions/ADR-0001-canonical-question-json.md`
- Create: `docs/ai/decisions/ADR-0002-idempotent-reward-ledgers.md`
- Create: `docs/ai/decisions/ADR-0003-single-authoritative-ai-entry.md`

- [ ] **Step 1: Create the ADR index**

Define ADR statuses `accepted`, `superseded`, and `deprecated`. State that ADRs are only for durable cross-iteration decisions. Add a table linking all three ADRs with date, status, and affected domains.

- [ ] **Step 2: Write ADR-0001**

Record:

- Context: earlier runtime/generated question paths created consistency and audit problems.
- Decision: `data/questions` reviewed JSON is canonical; Supabase is a runtime copy published through validation and idempotent migrations.
- Consequences: content edits require versioning/validation; runtime AI generation remains disabled; database-only edits can drift and must be reconciled.
- Alternatives rejected: production-time AI generation and hand-authored SQL as the content source.

- [ ] **Step 3: Write ADR-0002**

Record:

- Context: retries and multiple completion paths can duplicate points or wish rewards.
- Decision: represent rewards as transactions, attach stable references, enforce uniqueness/RPC transitions in the database, and serialize client settlement where needed.
- Consequences: balance is derived, state transitions are explicit, retries are safe, and migrations/tests are required when settlement changes.
- Alternatives rejected: client-only balance mutation and read-before-write checks without constraints.

- [ ] **Step 4: Write ADR-0003**

Record:

- Context: multiple AI tools recognize different instruction files.
- Decision: only `AGENTS.md` contains project rules; `CLAUDE.md` and `GEMINI.md` delegate to it.
- Consequences: no rule drift, shorter startup context, and tool-specific files cannot add conflicting behavior.
- Alternatives rejected: duplicated full instructions and one unsupported tool-specific entry.

- [ ] **Step 5: Commit the ADRs**

```bash
git add docs/ai/decisions
git commit -m "docs: record durable project decisions"
```

---

### Task 6: Backfill Foundation and Companion History

**Files:**

- Create: `docs/ai/iterations/2026-05-19-project-phase-one.md`
- Create: `docs/ai/iterations/2026-05-20-companion-evolution.md`
- Modify: `docs/ai/iterations/README.md`

- [ ] **Step 1: Record project phase one**

Use `docs/superpowers/specs/2026-05-19-childgame-design.md`, `docs/superpowers/plans/2026-05-19-childgame-phase1.md`, migration `001`, and commits `b28a6a7` through `8f5e0d6`. Summarize the initial companion, quiz, points, shop, check-in, challenge, and multiple question-type foundation. Mark unknown deployment details explicitly rather than inferring them.

- [ ] **Step 2: Record companion evolution**

Use `docs/superpowers/specs/2026-05-20-companion-upgrade-design.md` and commits `36958e7`, `40246d6`, `7a7d1ce`, `da3d9aa`, `8481339` through `2d8150e`, and `d595dc9` through `cbe1c07`. Summarize interaction feedback, evolution, sprite animation, equipment, switching, ownership, and unlock-chain outcomes.

- [ ] **Step 3: Add both records to the ledger**

Keep the current 2026-07-28 row first. Add the two historical rows in descending date order with domains, status `completed`, record links, and related spec/plan links.

- [ ] **Step 4: Commit the first history batch**

```bash
git add docs/ai/iterations
git commit -m "docs: backfill foundation and companion history"
```

---

### Task 7: Backfill Reliability, Auth, and Question-Bank History

**Files:**

- Create: `docs/ai/iterations/2026-07-20-core-reliability.md`
- Create: `docs/ai/iterations/2026-07-20-auth-companion-recovery.md`
- Create: `docs/ai/iterations/2026-07-20-question-bank-system.md`
- Modify: `docs/ai/iterations/README.md`

- [ ] **Step 1: Record core reliability**

Use the matching July 20 spec/plan and commits `7168ddc` and `55be6cb`. Capture guarded initialization, settlement, and daily-flow reliability changes only where verified by the four-file design and diff.

- [ ] **Step 2: Record auth and companion recovery**

Use the matching July 20 spec/plan and commits `b01a673` and `b45590e`. Capture anonymous authentication recovery, profile recovery, and partial companion-onboarding recovery.

- [ ] **Step 3: Record the question-bank system as one capability stage**

Use the question-bank design, infrastructure/grade plans, `docs/question-bank-workflow.md`, migrations `005`–`011`, and commits `187678f` through `f5616f4`. Summarize:

- Canonical schema and validation.
- Audit, release, SQL generation, and non-destructive publishing.
- Balanced history-aware runtime composition.
- Grade 1–6 reviewed releases.

Do not create one record per grade.

- [ ] **Step 4: Update the ledger**

Add all three records under 2026-07-20, ordered so the question-bank stage is easy to find. Link every existing spec and plan that directly belongs to each record.

- [ ] **Step 5: Commit the second history batch**

```bash
git add docs/ai/iterations
git commit -m "docs: backfill reliability auth and question history"
```

---

### Task 8: Backfill Recent Product and Data-Quality History

**Files:**

- Create: `docs/ai/iterations/2026-07-21-mistake-review-parent-report.md`
- Create: `docs/ai/iterations/2026-07-22-wish-rewards.md`
- Create: `docs/ai/iterations/2026-07-22-choice-answer-normalization.md`
- Create: `docs/ai/iterations/2026-07-22-child-friendly-explanations.md`
- Create: `docs/ai/iterations/2026-07-28-english-difficulty.md`
- Modify: `docs/ai/iterations/README.md`

- [ ] **Step 1: Record mistake review and parent report**

Use the matching July 21 spec/plan, migration `012`, and commits `9fbb372` through `caec097`. Capture selected-answer persistence, mistake state transitions, review pages, and same-account parent summary.

- [ ] **Step 2: Record wish rewards**

Use the motivation design, wish plan, migrations `013` and `015`, and commits `d37d5ec` through `bad910a` that affect wishes. Capture the wish ledger, daily settlement, frozen balance, redemption states, parent management, catalog, and integrity fixes.

- [ ] **Step 3: Record choice-answer normalization**

Use the matching July 22 spec/plan, migration `014`, and commits `d28145c` and `84c7d6e`. Capture compatibility normalization across repository, quiz, and mistake views.

- [ ] **Step 4: Record child-friendly explanations**

Use the matching July 22 spec/plan and commit `0f0488e`. Capture shared explanation rendering and content normalization without repeating question data.

- [ ] **Step 5: Record English difficulty optimization**

Use commit `aff8597`, migration `016`, authoring scripts, and `scripts/tests/english-difficulty.test.mjs`. State that no separate approved spec or plan exists for this historical change.

- [ ] **Step 6: Update the ledger and commit**

Add all five rows in reverse chronological order, then run:

```bash
git add docs/ai/iterations
git commit -m "docs: backfill recent product iteration history"
```

---

### Task 9: Enable Repository Checks and Finish the Current Iteration

**Files:**

- Modify: `package.json`
- Modify: `PROJECT_INFO.md`
- Modify: `docs/ai/iterations/2026-07-28-ai-project-knowledge-system.md`
- Modify: `docs/ai/iterations/README.md`
- Modify if verification finds drift: `AGENTS.md`
- Modify if verification finds drift: `docs/ai/*.md`
- Modify if verification finds drift: `docs/ai/domains/*.md`
- Modify if verification finds drift: `docs/ai/decisions/*.md`

- [ ] **Step 1: Add the npm documentation command**

Add this exact script to `package.json`:

```json
"docs:check": "node scripts/check-docs.mjs"
```

Keep all existing scripts unchanged.

- [ ] **Step 2: Update the human project handbook**

Near the start of `PROJECT_INFO.md`, add:

```md
> AI 开发上下文、完整架构、目录职责和迭代历史统一维护在 [`docs/ai/README.md`](./docs/ai/README.md)。本文件只保留面向人的快速操作手册。
```

Remove or shorten only sections that directly contradict verified current behavior. Do not copy the full AI knowledge base into this file.

- [ ] **Step 3: Run the focused validator tests**

Run:

```bash
node --test scripts/tests/docs-check.test.mjs
```

Expected: five tests pass.

- [ ] **Step 4: Run the repository documentation check**

Run:

```bash
npm run docs:check
```

Expected: `Documentation check passed.`

Fix every reported missing file, invalid iteration field, missing index row, empty completed section, and broken local link. Re-run until it passes.

- [ ] **Step 5: Run existing application and pipeline verification**

Run:

```bash
npm test
npm run test:questions
npm run questions:validate
npm run build
```

Expected:

- Vitest exits successfully.
- All Node pipeline tests, including docs-check tests, pass.
- Question validation exits successfully with its grade/subject summary.
- TypeScript and Vite production build complete successfully.

- [ ] **Step 6: Finalize the current iteration record**

Change the current record to `status: completed`. Replace in-progress statements with:

- A concise list of the entry, core, domain, ADR, iteration, and validator files created.
- Exact verification commands and observed passing results from Steps 3–5.
- Any real warnings or limitations discovered; otherwise `无已知遗留`.
- The implementation branch and available implementation commit hashes. If the final documentation commit does not yet exist, state that the final closeout commit is pending instead of inventing a hash.

Update the ledger status to `completed`.

- [ ] **Step 7: Re-run checks after finalizing the record**

Run:

```bash
npm run docs:check
git diff --check
git status --short
```

Expected: documentation passes, Git reports no whitespace errors, and status lists only the intended closeout files.

- [ ] **Step 8: Commit the completed system**

```bash
git add package.json PROJECT_INFO.md AGENTS.md docs/ai scripts/check-docs.mjs scripts/tests/docs-check.test.mjs
git commit -m "docs: complete AI project knowledge system"
```

- [ ] **Step 9: Verify the final commit and clean worktree**

Run:

```bash
git show --stat --oneline --summary HEAD
git status --short
```

Expected: the final commit contains only intended project-knowledge changes and `git status --short` is empty.

---

## Completion Review

Before declaring the implementation complete:

- Confirm every approved design section maps to a task above.
- Confirm `AGENTS.md` remains a routing layer rather than a project encyclopedia.
- Confirm tool-specific entry files contain no duplicated rules.
- Confirm each domain guide identifies code, data, tests, invariants, and related history.
- Confirm all eleven iteration records appear in the ledger.
- Confirm ADRs are limited to durable decisions.
- Confirm documentation contains environment variable names but no credential values.
- Confirm `npm run docs:check`, application tests, question tests, question validation, and build all pass with fresh output.
