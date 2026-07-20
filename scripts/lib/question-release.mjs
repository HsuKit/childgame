const subjects = ['chinese', 'math', 'english']

export function buildGradeRelease(grade) {
  if (!Number.isInteger(grade) || grade < 1 || grade > 6) throw new Error(`Invalid grade: ${grade}`)
  return {
    name: `grade${grade}-phase1`,
    expectedApproved: 420,
    files: subjects.map(subject => `grade${grade}-${subject}.json`),
    groups: subjects.map(subject => ({ grade, subject })),
  }
}

export function assertGradeReleaseReady({ approvedCount, passedReviewCount }) {
  if (approvedCount !== 420) throw new Error(`Expected 420 approved questions, got ${approvedCount}.`)
  if (passedReviewCount !== 60) throw new Error(`Expected 60 passed review rows, got ${passedReviewCount}.`)
}
