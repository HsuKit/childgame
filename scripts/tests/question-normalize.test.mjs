import test from 'node:test'
import assert from 'node:assert/strict'
import { normalizeLegacyQuestions } from '../normalize-legacy-questions.mjs'

const legacy = {
  id: '472cd6b2-81dc-4d1d-baa6-bc059bc90638', subject: 'chinese', grade: 2,
  difficulty: 1, type: 'choice', source: 'builtin',
  content: { stem: '下面哪个字读“huā”？', options: ['花', '草', '树', '叶'], answer: 0, explanation: '“花”的拼音是huā。' },
}

test('normalizes legacy content into a deterministic canonical draft', () => {
  const classifier = () => ({ knowledgePoint: '字音字形', skill: 'recall', tags: ['拼音'] })
  const first = normalizeLegacyQuestions([legacy], classifier)
  const second = normalizeLegacyQuestions([legacy], classifier)
  assert.deepEqual(first, second)
  assert.equal(first.accepted[0].id, 'g2-chinese-legacy-472cd6b281dc')
  assert.equal(first.accepted[0].reviewStatus, 'draft')
  assert.equal(first.accepted[0].version, 1)
  assert.deepEqual(first.accepted[0].content, legacy.content)
  assert.equal('source' in first.accepted[0], false)
})

test('rejects ambiguous metadata rather than inventing a knowledge point', () => {
  const result = normalizeLegacyQuestions([legacy], () => null)
  assert.deepEqual(result.accepted, [])
  assert.deepEqual(result.rejected, [{ sourceId: legacy.id, reason: 'knowledge-point-ambiguous' }])
})
