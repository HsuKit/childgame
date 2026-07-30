import test from 'node:test'
import assert from 'node:assert/strict'
import { auditQuestionSet } from '../lib/question-audit.mjs'

const blueprint = {
  total: 140,
  types: { choice: 105, fill: 21, match: 14 },
  difficulties: { 1: 70, 2: 49, 3: 21 },
  maxKnowledgePointShare: 0.2,
  knowledgePoints: ['知识点一', '知识点二', '知识点三', '知识点四', '知识点五'],
  reviewedSimilarityExceptions: [],
}

function makeQuestions() {
  const types = [...Array(105).fill('choice'), ...Array(21).fill('fill'), ...Array(14).fill('match')]
  const difficulties = [...Array(70).fill(1), ...Array(49).fill(2), ...Array(21).fill(3)]
  return types.map((type, index) => ({
    id: `g2-math-item-${String(index + 1).padStart(3, '0')}`,
    subject: 'math',
    grade: 2,
    difficulty: difficulties[index],
    type,
    knowledgePoint: blueprint.knowledgePoints[index % blueprint.knowledgePoints.length],
    skill: index % 2 ? 'apply' : 'understand',
    tags: [],
    reviewStatus: 'approved',
    version: 1,
    content: {
      stem: `题${index + 1}内容`,
      ...(type === 'choice' ? {
        options: ['甲', '乙', '丙', '丁'],
        answer: index % 4,
      } : type === 'fill' ? {
        answer: `答案${index + 1}`,
      } : {
        left: ['左一', '左二'], right: ['右一', '右二'], matches: [[0, 0], [1, 1]],
      }),
      explanation: `第${index + 1}题解析`,
    },
  }))
}

test('accepts a collection meeting every quota', () => {
  const report = auditQuestionSet(makeQuestions(), blueprint)
  assert.deepEqual(report.errors, [])
  assert.deepEqual(report.warnings, [])
  assert.equal(report.stats.total, 140)
})

test('reports type, difficulty, knowledge point and answer-position quota violations', () => {
  const questions = makeQuestions()
  questions[104].type = 'fill'
  questions[69].difficulty = 2
  for (let index = 0; index < 30; index += 1) questions[index].knowledgePoint = '知识点一'
  for (const question of questions.filter(question => question.type === 'choice')) question.content.answer = 0

  const errors = auditQuestionSet(questions, blueprint).errors.join('\n')
  assert.match(errors, /choice expected 105 got 104/)
  assert.match(errors, /fill expected 21 got 22/)
  assert.match(errors, /difficulty 1 expected 70 got 69/)
  assert.match(errors, /知识点一 exceeds 20%/)
  assert.match(errors, /choice answer position A deviates by more than 3/)
})

test('rejects duplicate ids and normalized stems', () => {
  const questions = makeQuestions()
  questions[1].id = questions[0].id
  questions[2].content = structuredClone(questions[0].content)
  questions[2].content.stem = `  ${questions[0].content.stem}  `
  const errors = auditQuestionSet(questions, blueprint).errors.join('\n')
  assert.match(errors, /duplicate id/)
  assert.match(errors, /duplicate normalized question/)
})

test('blocks near-duplicate stems unless their pair is reviewed', () => {
  const questions = makeQuestions()
  questions[0].content.stem = '小明有10颗糖，送出2颗，还剩多少颗？'
  questions[1].content.stem = '小明有10颗糖，送出3颗，还剩多少颗？'
  const first = auditQuestionSet(questions, blueprint)
  assert.ok(first.warnings.some(warning => warning.includes('near-duplicate stems')))
  assert.equal(first.publishable, false)

  const pair = [questions[0].id, questions[1].id].sort().join('|')
  const reviewed = auditQuestionSet(questions, {
    ...blueprint,
    reviewedSimilarityExceptions: [pair],
  })
  assert.equal(reviewed.warnings.length, 0)
  assert.equal(reviewed.publishable, true)
})

test('rejects unknown and missing blueprint knowledge points', () => {
  const questions = makeQuestions()
  questions[0].knowledgePoint = '教材专属单元'
  const errors = auditQuestionSet(questions, {
    ...blueprint,
    knowledgePoints: [...blueprint.knowledgePoints, '从未覆盖的知识点'],
  }).errors.join('\n')
  assert.match(errors, /unknown knowledge point 教材专属单元/)
  assert.match(errors, /knowledge point 从未覆盖的知识点 has no questions/)
})

test('rejects grade-3 collections with too few or overly concentrated templates', () => {
  const questions = makeQuestions().map((question, index) => ({
    ...question,
    id: question.id.replace('g2-', 'g3-'),
    grade: 3,
    tags: [`模板:template-${index % 9}`],
  }))
  const tooFew = auditQuestionSet(questions, {
    ...blueprint,
    requiredTemplateGrades: [3],
    minTemplateCount: 10,
    maxTemplateShare: 0.15,
  })
  assert.match(tooFew.errors.join('\n'), /at least 10 templates/)

  questions.forEach((question, index) => {
    question.tags = [`模板:${index < 30 ? 'overused' : `template-${index}`}`]
  })
  const concentrated = auditQuestionSet(questions, {
    ...blueprint,
    requiredTemplateGrades: [3],
    minTemplateCount: 10,
    maxTemplateShare: 0.15,
  })
  assert.match(concentrated.errors.join('\n'), /template overused exceeds 15%/)
})
