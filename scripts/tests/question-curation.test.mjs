import test from 'node:test'
import assert from 'node:assert/strict'
import { curateSubject } from '../curate-grade2.mjs'
import { auditQuestionSet } from '../lib/question-audit.mjs'

const blueprint = {
  total: 140, types: { choice: 105, fill: 21, match: 14 },
  difficulties: { 1: 70, 2: 49, 3: 21 }, maxKnowledgePointShare: 0.2,
  knowledgePoints: ['一', '二', '三', '四', '五'], reviewedSimilarityExceptions: [],
}

function candidates() {
  const result = []
  let index = 0
  for (const type of ['choice', 'fill', 'match']) {
    for (const difficulty of [1, 2, 3]) {
      for (let count = 0; count < 60; count += 1) {
        const content = type === 'choice'
          ? { stem: `题${index}`, options: ['甲', '乙', '丙', '丁'], answer: index % 4, explanation: `解析${index}` }
          : type === 'fill'
            ? { stem: `填${index}___`, answer: String(index), explanation: `解析${index}` }
            : { stem: `连${index}`, left: ['甲', '乙'], right: ['一', '二'], matches: [[0, 0], [1, 1]], explanation: `解析${index}` }
        result.push({
          id: `g2-math-test-${index++}`, subject: 'math', grade: 2, difficulty, type,
          knowledgePoint: blueprint.knowledgePoints[index % 5], skill: 'apply', tags: [], content,
          reviewStatus: 'draft', version: 1,
        })
      }
    }
  }
  return result
}

test('curates exact quotas, coverage and balanced answer positions', () => {
  const result = curateSubject(candidates(), blueprint)
  assert.equal(result.questions.length, 140)
  assert.ok(result.questions.every(question => question.reviewStatus === 'reviewed'))
  const report = auditQuestionSet(result.questions.map(question => ({ ...question, reviewStatus: 'approved' })), blueprint)
  assert.deepEqual(report.errors, [])
  assert.deepEqual(report.warnings, [])
  assert.deepEqual(report.stats.answerPositions, [27, 26, 26, 26])
})

test('fails clearly when exact quotas cannot be met', () => {
  assert.throws(() => curateSubject(candidates().filter(question => question.type !== 'match'), blueprint), /No feasible type\/difficulty allocation/)
})
