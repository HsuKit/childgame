import { describe, expect, it } from 'vitest'
import { buildCreatorPkQuizPath } from './pkUtils'

describe('buildCreatorPkQuizPath', () => {
  it('uses the saved challenge id so the creator score can be written back', () => {
    expect(buildCreatorPkQuizPath({ challengeId: 'challenge-1', subject: 'math' }))
      .toBe('/pk/quiz?challenge=challenge-1&subject=math')
  })
})
