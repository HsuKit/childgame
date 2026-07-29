import { render, screen } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import { describe, expect, it } from 'vitest'
import { AdventureMap } from './AdventureMap'

describe('AdventureMap', () => {
  it('shows all three subject missions and their progress', () => {
    render(
      <MemoryRouter>
        <AdventureMap
          progress={{ chinese: 4, math: 0, english: 10 }}
          challengeDone={false}
          mistakes={2}
          reinforcing={1}
        />
      </MemoryRouter>,
    )

    expect(screen.getByRole('link', { name: /语文森林.*4.*10/ })).toHaveAttribute('href', '/quiz?subject=chinese')
    expect(screen.getByRole('link', { name: /数学山谷.*0.*10/ })).toHaveAttribute('href', '/quiz?subject=math')
    expect(screen.getByRole('link', { name: /英语海湾.*10.*10/ })).toHaveAttribute('href', '/quiz?subject=english')
  })

  it('shows challenge and mistake branches with text status', () => {
    render(
      <MemoryRouter>
        <AdventureMap
          progress={{ chinese: 10, math: 10, english: 10 }}
          challengeDone
          mistakes={2}
          reinforcing={1}
        />
      </MemoryRouter>,
    )

    expect(screen.getByRole('link', { name: /每日挑战.*已完成/ })).toBeVisible()
    expect(screen.getByRole('link', { name: /错题修炼.*待订正 2.*巩固 1/ })).toBeVisible()
  })
})
