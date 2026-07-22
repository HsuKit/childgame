import { describe, expect, it } from 'vitest'
import { buildCreatorPkQuizPath, getPkResultState } from './pkUtils'

describe('buildCreatorPkQuizPath', () => {
  it('uses the saved challenge id so the creator score can be written back', () => {
    expect(buildCreatorPkQuizPath({ challengeId: 'challenge-1', subject: 'math' }))
      .toBe('/pk/quiz?challenge=challenge-1&subject=math')
  })
})

describe('getPkResultState', () => {
  it('uses opponent_score as the opponent score for the creator', () => {
    expect(getPkResultState({
      creatorId: 'creator-1',
      currentUserId: 'creator-1',
      creatorScore: 9,
      opponentScore: 8,
    })).toEqual({
      isCreator: true,
      myScore: 9,
      oppScore: 8,
      oppDone: true,
      iWon: true,
      tie: false,
    })
  })

  it('uses creator_score as the opponent score for the joined player', () => {
    expect(getPkResultState({
      creatorId: 'creator-1',
      currentUserId: 'opponent-1',
      creatorScore: 9,
      opponentScore: 8,
    })).toEqual({
      isCreator: false,
      myScore: 8,
      oppScore: 9,
      oppDone: true,
      iWon: false,
      tie: false,
    })
  })

  it('keeps waiting when the current user has finished but their opponent has not', () => {
    expect(getPkResultState({
      creatorId: 'creator-1',
      currentUserId: 'creator-1',
      creatorScore: 9,
      opponentScore: null,
    })).toMatchObject({
      myScore: 9,
      oppScore: null,
      oppDone: false,
    })
  })
})
