import test from 'node:test'
import assert from 'node:assert/strict'
import { mkdtempSync, writeFileSync } from 'node:fs'
import { tmpdir } from 'node:os'
import { join } from 'node:path'
import { validateDirectory } from '../validate-questions.mjs'

const valid = {
  id: 'g2-math-addition-001', subject: 'math', grade: 2, difficulty: 1,
  type: 'choice', knowledgePoint: '加法与减法', skill: 'apply', tags: [],
  content: { stem: '23+15等于多少？', options: ['28', '38', '39', '48'], answer: 1, explanation: '23+15=38。' },
  reviewStatus: 'approved', version: 1,
}

function fixture(rows) {
  const directory = mkdtempSync(join(tmpdir(), 'childgame-questions-'))
  writeFileSync(join(directory, 'grade2-math.json'), JSON.stringify(rows), 'utf8')
  return directory
}

test('invalid files return a blocking report with file and question id', () => {
  const result = validateDirectory(fixture([{ ...valid, difficulty: 9 }]), { auditCollections: false })
  assert.equal(result.exitCode, 1)
  assert.match(result.output, /grade2-math\.json:1/)
  assert.match(result.output, /g2-math-addition-001/)
})

test('valid files return a compact type and difficulty summary', () => {
  const result = validateDirectory(fixture([valid]), { auditCollections: false })
  assert.equal(result.exitCode, 0)
  assert.match(result.output, /grade 2 math/)
  assert.match(result.output, /choice=1/)
  assert.match(result.output, /difficulty 1=1/)
})
