import test from 'node:test'
import assert from 'node:assert/strict'
import { authorGrade1English } from '../author-grade1-english.mjs'
import { authorGrade3English } from '../author-grade3-english.mjs'
import { authorGrade4English } from '../author-grade4-english.mjs'
import { authorGrade5English } from '../author-grade5-english.mjs'
import { authorGrade6English } from '../author-grade6-english.mjs'

function stemText(question) {
  return question.content?.stem ?? ''
}

function averageLength(questions) {
  return questions.reduce((sum, question) => sum + stemText(question).length, 0) / questions.length
}

test('grade-3 English starts with short listen-and-read style questions', () => {
  const easyChoice = authorGrade3English()
    .filter(question => question.type === 'choice' && question.difficulty === 1)

  assert.ok(easyChoice.length > 0)
  assert.ok(easyChoice.every(question => question.tags.includes('听读入门')))
  assert.ok(easyChoice.every(question => stemText(question).length <= 120))
  assert.ok(averageLength(easyChoice) <= 75)
})

test('easy English choice stems stay grade-appropriate across authored grades', () => {
  const cases = [
    { grade: 1, questions: authorGrade1English(), max: 105, average: 70 },
    { grade: 3, questions: authorGrade3English(), max: 120, average: 75 },
    { grade: 4, questions: authorGrade4English(), max: 165, average: 115 },
    { grade: 5, questions: authorGrade5English(), max: 180, average: 130 },
    { grade: 6, questions: authorGrade6English(), max: 190, average: 145 },
  ]

  for (const item of cases) {
    const easyChoice = item.questions
      .filter(question => question.type === 'choice' && question.difficulty === 1)
    assert.ok(easyChoice.length > 0, `grade ${item.grade} has easy choice questions`)
    assert.ok(
      easyChoice.every(question => stemText(question).length <= item.max),
      `grade ${item.grade} has no easy choice stem over ${item.max} characters`,
    )
    assert.ok(
      averageLength(easyChoice) <= item.average,
      `grade ${item.grade} easy choice average stays under ${item.average} characters`,
    )
  }
})
