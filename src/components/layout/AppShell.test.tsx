import { render, screen } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import { describe, expect, it } from 'vitest'
import { BottomNav } from './BottomNav'

describe('BottomNav', () => {
  it('renders exactly four labeled destinations', () => {
    render(
      <MemoryRouter initialEntries={['/']}>
        <BottomNav />
      </MemoryRouter>,
    )

    expect(screen.getAllByRole('link')).toHaveLength(4)
    expect(screen.getByRole('link', { name: /冒险/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /伙伴/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /奖励/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /营地/ })).toBeVisible()
  })

  it('marks rewards active for a nested reward route', () => {
    render(
      <MemoryRouter initialEntries={['/leaderboard']}>
        <BottomNav />
      </MemoryRouter>,
    )

    expect(screen.getByRole('link', { name: /奖励/ })).toHaveAttribute('aria-current', 'page')
  })

  it('marks adventure active for a nested learning route', () => {
    render(
      <MemoryRouter initialEntries={['/mistakes']}>
        <BottomNav />
      </MemoryRouter>,
    )

    expect(screen.getByRole('link', { name: /冒险/ })).toHaveAttribute('aria-current', 'page')
  })
})
