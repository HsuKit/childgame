import {
  existsSync,
  readdirSync,
  readFileSync,
  statSync,
} from 'node:fs'
import { dirname, join, relative, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

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

const VALID_STATUSES = new Set([
  'planned',
  'in-progress',
  'completed',
  'paused',
])

const VALID_DOMAINS = new Set([
  'auth-profile',
  'quiz-question-bank',
  'companion-shop',
  'wish-parent',
  'leaderboard-pk',
  'platform',
  'documentation',
])

const REQUIRED_ITERATION_SECTIONS = [
  '背景与目标',
  '范围',
  '关联上下文',
  '实施摘要',
  '决策与原因',
  '验证结果',
  '风险与遗留',
  'Git 关联',
]

function isFile(path) {
  return existsSync(path) && statSync(path).isFile()
}

function isDirectory(path) {
  return existsSync(path) && statSync(path).isDirectory()
}

function displayPath(root, path) {
  return relative(root, path).split('\\').join('/')
}

function parseFrontMatter(markdown) {
  const lines = markdown.split(/\r?\n/)
  if (lines[0]?.trim() !== '---') {
    return {}
  }

  const closingIndex = lines.findIndex(
    (line, index) => index > 0 && line.trim() === '---',
  )
  if (closingIndex === -1) {
    return {}
  }

  const frontMatter = {}
  for (const line of lines.slice(1, closingIndex)) {
    const match = line.match(/^([A-Za-z][A-Za-z0-9_-]*):\s*(.*)$/)
    if (!match) {
      continue
    }

    const [, key, rawValue] = match
    const value = rawValue.trim()
    if (value.startsWith('[') && value.endsWith(']')) {
      frontMatter[key] = value
        .slice(1, -1)
        .split(',')
        .map((item) => item.trim())
        .filter(Boolean)
    } else {
      frontMatter[key] = value
    }
  }

  return frontMatter
}

function sectionBody(markdown, heading) {
  const lines = markdown.split(/\r?\n/)
  const headingIndex = lines.findIndex((line) => {
    const match = line.match(/^##\s+(.+?)\s*$/)
    return match?.[1] === heading
  })

  if (headingIndex === -1) {
    return null
  }

  const nextHeadingOffset = lines
    .slice(headingIndex + 1)
    .findIndex((line) => /^##(?:\s|$)/.test(line))
  const endIndex =
    nextHeadingOffset === -1
      ? lines.length
      : headingIndex + 1 + nextHeadingOffset

  return lines.slice(headingIndex + 1, endIndex).join('\n').trim()
}

function localLinks(markdown) {
  const targets = []
  const linkPattern = /\[[^\]]*]\(([^)]+)\)/g

  for (const match of markdown.matchAll(linkPattern)) {
    let target = match[1].trim()
    if (
      !target ||
      target.startsWith('#') ||
      target.startsWith('http://') ||
      target.startsWith('https://') ||
      target.startsWith('mailto:')
    ) {
      continue
    }

    target = target.split('#', 1)[0].trim()
    if (target.startsWith('<') && target.endsWith('>')) {
      target = target.slice(1, -1)
    }
    if (target) {
      targets.push(target)
    }
  }

  return targets
}

function markdownFiles(root) {
  const files = []
  for (const filename of [
    'AGENTS.md',
    'CLAUDE.md',
    'GEMINI.md',
    'PROJECT_INFO.md',
  ]) {
    const path = join(root, filename)
    if (isFile(path)) {
      files.push(path)
    }
  }

  const docsRoot = join(root, 'docs/ai')
  if (isDirectory(docsRoot)) {
    const visit = (directory) => {
      for (const entry of readdirSync(directory, { withFileTypes: true })) {
        const path = join(directory, entry.name)
        if (entry.isDirectory()) {
          visit(path)
        } else if (entry.isFile() && entry.name.endsWith('.md')) {
          files.push(path)
        }
      }
    }
    visit(docsRoot)
  }

  return files.sort()
}

function validateLocalLinks(root, errors) {
  for (const sourcePath of markdownFiles(root)) {
    const markdown = readFileSync(sourcePath, 'utf8')
    for (const target of localLinks(markdown)) {
      const targetPath = resolve(dirname(sourcePath), target)
      if (!isFile(targetPath)) {
        errors.push(
          `${displayPath(root, sourcePath)}: broken local link "${target}"`,
        )
      }
    }
  }
}

function iterationFiles(root) {
  const directory = join(root, 'docs/ai/iterations')
  if (!isDirectory(directory)) {
    return []
  }

  return readdirSync(directory, { withFileTypes: true })
    .filter(
      (entry) =>
        entry.isFile() &&
        entry.name !== 'README.md' &&
        !entry.name.startsWith('_'),
    )
    .map((entry) => entry.name)
    .sort()
}

function validateIterations(root, errors) {
  const directory = join(root, 'docs/ai/iterations')
  const ledgerPath = join(directory, 'README.md')
  const ledger = isFile(ledgerPath) ? readFileSync(ledgerPath, 'utf8') : ''
  const ids = new Map()

  for (const filename of iterationFiles(root)) {
    const path = join(directory, filename)
    const markdown = readFileSync(path, 'utf8')
    const frontMatter = parseFrontMatter(markdown)
    const prefix = `docs/ai/iterations/${filename}`
    const filenameMatch = filename.match(
      /^(\d{4})-(\d{2})-(\d{2})-([a-z0-9]+(?:-[a-z0-9]+)*)\.md$/,
    )

    if (!filenameMatch) {
      errors.push(`${prefix}: invalid iteration filename`)
    } else {
      const [, year, month, day, slug] = filenameMatch
      const expectedId = `ITER-${year}${month}${day}-${slug.toUpperCase()}`
      if (frontMatter.id !== expectedId) {
        errors.push(`${prefix}: id must be ${expectedId}`)
      }
    }

    if (typeof frontMatter.id === 'string' && frontMatter.id) {
      if (ids.has(frontMatter.id)) {
        errors.push(
          `${prefix}: duplicate iteration id "${frontMatter.id}" (also used by ${ids.get(frontMatter.id)})`,
        )
      } else {
        ids.set(frontMatter.id, filename)
      }
    }

    if (
      typeof frontMatter.title !== 'string' ||
      !frontMatter.title.trim()
    ) {
      errors.push(`${prefix}: title must not be empty`)
    }

    if (!VALID_STATUSES.has(frontMatter.status)) {
      errors.push(`${prefix}: invalid status "${frontMatter.status ?? ''}"`)
    }

    if (
      !Array.isArray(frontMatter.domains) ||
      frontMatter.domains.length === 0
    ) {
      errors.push(`${prefix}: domains must be a non-empty array`)
    } else {
      for (const domain of frontMatter.domains) {
        if (!VALID_DOMAINS.has(domain)) {
          errors.push(`${prefix}: invalid domain "${domain}"`)
        }
      }
    }

    for (const field of ['created', 'updated']) {
      if (
        typeof frontMatter[field] !== 'string' ||
        !/^\d{4}-\d{2}-\d{2}$/.test(frontMatter[field])
      ) {
        errors.push(`${prefix}: ${field} must be YYYY-MM-DD`)
      }
    }

    const sections = new Map()
    for (const heading of REQUIRED_ITERATION_SECTIONS) {
      const body = sectionBody(markdown, heading)
      sections.set(heading, body)
      if (body === null) {
        errors.push(`${prefix}: missing required section "${heading}"`)
      }
    }

    if (frontMatter.status === 'completed') {
      for (const heading of ['验证结果', '风险与遗留']) {
        if (sections.get(heading) === '') {
          errors.push(`${prefix}: ${heading} must not be empty`)
        }
      }
    }

    if (!ledger.includes(`](./${filename})`)) {
      errors.push(`${prefix}: missing from iteration ledger`)
    }
  }
}

function validateDecisionLedger(root, errors) {
  const directory = join(root, 'docs/ai/decisions')
  if (!isDirectory(directory)) {
    return
  }

  const ledgerPath = join(directory, 'README.md')
  const ledger = isFile(ledgerPath) ? readFileSync(ledgerPath, 'utf8') : ''
  const decisionPattern =
    /^ADR-\d{4}-[a-z0-9]+(?:-[a-z0-9]+)*\.md$/

  for (const entry of readdirSync(directory, { withFileTypes: true })) {
    if (
      entry.isFile() &&
      decisionPattern.test(entry.name) &&
      !ledger.includes(`](./${entry.name})`)
    ) {
      errors.push(
        `docs/ai/decisions/${entry.name}: missing from decision ledger`,
      )
    }
  }
}

export function validateDocs(root) {
  const absoluteRoot = resolve(root)
  const errors = []

  for (const requiredFile of REQUIRED_FILES) {
    if (!isFile(join(absoluteRoot, requiredFile))) {
      errors.push(`missing required file: ${requiredFile}`)
    }
  }

  validateLocalLinks(absoluteRoot, errors)
  validateIterations(absoluteRoot, errors)
  validateDecisionLedger(absoluteRoot, errors)

  return errors.sort()
}

const currentFile = fileURLToPath(import.meta.url)
if (process.argv[1] && resolve(process.argv[1]) === currentFile) {
  const errors = validateDocs(process.cwd())
  if (errors.length > 0) {
    console.error(`Documentation check failed (${errors.length}):`)
    for (const error of errors) {
      console.error(`- ${error}`)
    }
    process.exitCode = 1
  } else {
    console.log('Documentation check passed.')
  }
}
