import { describe, expect, it } from 'vitest'
import {
  formatLocalDate,
  getCalendarCells,
  getLocalDayRange,
  getMonthRange,
  isCurrentMonth,
  moveMonth,
} from './dateUtils'

describe('moveMonth', () => {
  it('moves January 31 to the first day of February', () => {
    expect(moveMonth(new Date(2026, 0, 31), 1)).toEqual(new Date(2026, 1, 1))
  })

  it('moves across year boundaries', () => {
    expect(moveMonth(new Date(2026, 11, 20), 1)).toEqual(new Date(2027, 0, 1))
    expect(moveMonth(new Date(2026, 0, 20), -1)).toEqual(new Date(2025, 11, 1))
  })
})

describe('local date helpers', () => {
  it('formats dates from local calendar fields', () => {
    expect(formatLocalDate(new Date(2026, 6, 2, 23, 30))).toBe('2026-07-02')
  })

  it('returns the first and last local dates in a month', () => {
    expect(getMonthRange(new Date(2024, 1, 20))).toEqual({
      start: '2024-02-01',
      end: '2024-02-29',
    })
  })

  it('builds leading blanks and every day in the month', () => {
    const cells = getCalendarCells(new Date(2026, 6, 20))
    expect(cells.slice(0, 3)).toEqual([null, null, null])
    expect(cells.slice(3)).toEqual(Array.from({ length: 31 }, (_, index) => index + 1))
  })

  it('compares month and year together', () => {
    const now = new Date(2026, 6, 20)
    expect(isCurrentMonth(new Date(2026, 6, 1), now)).toBe(true)
    expect(isCurrentMonth(new Date(2025, 6, 1), now)).toBe(false)
  })

  it('creates ISO bounds from local midnights', () => {
    const date = new Date(2026, 6, 20, 23, 30)
    const expectedStart = new Date(2026, 6, 20).toISOString()
    const expectedEnd = new Date(2026, 6, 21).toISOString()
    expect(getLocalDayRange(date)).toEqual({ start: expectedStart, end: expectedEnd })
  })
})
