import { describe, expect, it } from 'vitest'
import { getRouteMeta } from './navigation'

describe('getRouteMeta', () => {
  it.each([
    ['/', 'adventure', 'standard'],
    ['/quiz?subject=math', 'adventure', 'focus'],
    ['/quiz/result?subject=math', 'adventure', 'focus'],
    ['/challenge', 'adventure', 'focus'],
    ['/challenge/result', 'adventure', 'focus'],
    ['/pk', 'adventure', 'standard'],
    ['/pk/quiz?challenge=test', 'adventure', 'focus'],
    ['/pk/result?challenge=test', 'adventure', 'focus'],
    ['/mistakes', 'adventure', 'standard'],
    ['/mistakes/record-1', 'adventure', 'focus'],
    ['/checkin', 'adventure', 'standard'],
    ['/companion', 'companion', 'standard'],
    ['/companion/select', 'companion', 'focus'],
    ['/shop', 'companion', 'standard'],
    ['/rewards', 'rewards', 'standard'],
    ['/wish-shop', 'rewards', 'standard'],
    ['/leaderboard', 'rewards', 'standard'],
    ['/profile', 'camp', 'standard'],
    ['/parent-report', 'camp', 'standard'],
    ['/parent-wishes', 'camp', 'standard'],
  ] as const)('maps %s to %s/%s', (path, section, layout) => {
    expect(getRouteMeta(path)).toMatchObject({ section, layout })
  })

  it('falls back to the adventure standard shell', () => {
    expect(getRouteMeta('/unknown')).toMatchObject({
      section: 'adventure',
      layout: 'standard',
    })
  })
})
