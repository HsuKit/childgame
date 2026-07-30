import { beforeEach, describe, expect, it, vi } from 'vitest'
import { POINTS } from '../lib/constants'

const mocks = vi.hoisted(() => ({
  from: vi.fn(),
  getAuthState: vi.fn(),
  addPoints: vi.fn(),
  awardDailyWishCoins: vi.fn(),
}))

vi.mock('../lib/supabase', () => ({
  supabase: {
    from: mocks.from,
  },
}))

vi.mock('./authStore', () => ({
  useAuthStore: {
    getState: mocks.getAuthState,
  },
}))

vi.mock('./pointsStore', () => ({
  usePointsStore: {
    getState: () => ({ addPoints: mocks.addPoints }),
  },
}))

vi.mock('./wishStore', () => ({
  useWishStore: {
    getState: () => ({ awardDailyWishCoins: mocks.awardDailyWishCoins }),
  },
}))

import { useCheckinStore } from './checkinStore'

function makeUpdateQuery(data: unknown) {
  const query = {
    eq: vi.fn(),
    select: vi.fn(),
    single: vi.fn().mockResolvedValue({ data, error: null }),
  }
  query.eq.mockReturnValue(query)
  query.select.mockReturnValue(query)
  return query
}

function makeUpdateQueryWithError(data: unknown, error: unknown = null) {
  const query = makeUpdateQuery(data)
  query.single.mockResolvedValue({ data, error })
  return query
}

function makeSelectQuery(data: unknown) {
  const query = {
    eq: vi.fn(),
    maybeSingle: vi.fn().mockResolvedValue({ data, error: null }),
  }
  query.eq.mockReturnValue(query)
  return {
    select: vi.fn(() => query),
  }
}

beforeEach(() => {
  vi.clearAllMocks()
  mocks.getAuthState.mockReturnValue({ user: { id: 'user-1' } })
  mocks.addPoints.mockResolvedValue(undefined)
  mocks.awardDailyWishCoins.mockResolvedValue(3)
  useCheckinStore.setState({
    today: {
      chinese_done: true,
      math_done: true,
      english_done: false,
      streak_count: 4,
      bonus_points: 0,
    },
    isLoading: false,
  })
})

describe('markSubjectDone', () => {
  it('returns 0 and skips wish coin awarding for a non-final subject', async () => {
    const partialCheckIn = {
      id: 'check-1',
      chinese_done: true,
      math_done: false,
      english_done: false,
      streak_count: 4,
      bonus_points: 0,
    }
    const subjectUpdate = makeUpdateQuery(partialCheckIn)
    mocks.from.mockReturnValueOnce({ update: vi.fn(() => subjectUpdate) })

    const amount = await useCheckinStore.getState().markSubjectDone('chinese')

    expect(amount).toBe(0)
    expect(mocks.addPoints).not.toHaveBeenCalled()
    expect(mocks.awardDailyWishCoins).not.toHaveBeenCalled()
    expect(useCheckinStore.getState().today).toMatchObject({ chinese_done: true })
  })

  it('retries the idempotent wish coin award when final completion was already bonused', async () => {
    const alreadyBonusedCheckIn = {
      id: 'check-1',
      chinese_done: true,
      math_done: true,
      english_done: true,
      streak_count: 5,
      bonus_points: POINTS.DAILY_ALL_COMPLETE,
    }
    const subjectUpdate = makeUpdateQuery(alreadyBonusedCheckIn)
    mocks.from.mockReturnValueOnce({ update: vi.fn(() => subjectUpdate) })

    const amount = await useCheckinStore.getState().markSubjectDone('english')

    expect(amount).toBe(3)
    expect(mocks.addPoints).not.toHaveBeenCalled()
    expect(mocks.awardDailyWishCoins).toHaveBeenCalledWith('check-1')
  })

  it('returns wish coins awarded by the daily completion RPC on the final subject', async () => {
    const completedCheckIn = {
      id: 'check-1',
      chinese_done: true,
      math_done: true,
      english_done: true,
      streak_count: 4,
      bonus_points: 0,
    }
    const subjectUpdate = makeUpdateQuery(completedCheckIn)
    const bonusUpdate = makeUpdateQuery({
      ...completedCheckIn,
      streak_count: 5,
      bonus_points: POINTS.DAILY_ALL_COMPLETE,
    })
    mocks.from
      .mockReturnValueOnce({ update: vi.fn(() => subjectUpdate) })
      .mockReturnValueOnce({ update: vi.fn(() => bonusUpdate) })

    const amount = await useCheckinStore.getState().markSubjectDone('english')

    expect(amount).toBe(3)
    expect(mocks.addPoints).toHaveBeenCalledWith(POINTS.DAILY_ALL_COMPLETE, 'checkin_bonus', 'check-1')
    expect(mocks.awardDailyWishCoins).toHaveBeenCalledWith('check-1')
    expect(useCheckinStore.getState().today).toMatchObject({
      english_done: true,
      streak_count: 5,
      bonus_points: POINTS.DAILY_ALL_COMPLETE,
    })
  })

  it('still settles wish coins when another request already claimed the completion bonus', async () => {
    const completedCheckIn = {
      id: 'check-1',
      chinese_done: true,
      math_done: true,
      english_done: true,
      streak_count: 4,
      bonus_points: 0,
    }
    const subjectUpdate = makeUpdateQuery(completedCheckIn)
    const bonusUpdate = makeUpdateQueryWithError(null)
    mocks.from
      .mockReturnValueOnce({ update: vi.fn(() => subjectUpdate) })
      .mockReturnValueOnce({ update: vi.fn(() => bonusUpdate) })

    const amount = await useCheckinStore.getState().markSubjectDone('english')

    expect(amount).toBe(3)
    expect(mocks.addPoints).not.toHaveBeenCalled()
    expect(mocks.awardDailyWishCoins).toHaveBeenCalledWith('check-1')
  })
})

describe('fetchToday', () => {
  it('retries daily wish settlement for an already completed check-in', async () => {
    const completedCheckIn = {
      id: 'check-1',
      chinese_done: true,
      math_done: true,
      english_done: true,
      streak_count: 5,
      bonus_points: POINTS.DAILY_ALL_COMPLETE,
    }
    mocks.from.mockReturnValueOnce(makeSelectQuery(completedCheckIn))

    await useCheckinStore.getState().fetchToday()

    expect(mocks.awardDailyWishCoins).toHaveBeenCalledWith('check-1')
  })
})
