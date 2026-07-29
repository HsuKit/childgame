import { render, screen } from '@testing-library/react'
import { describe, expect, it } from 'vitest'
import { CompanionStats } from './CompanionStats'

describe('CompanionStats', () => {
  it('exposes labeled progress for hunger, mood, and experience', () => {
    render(<CompanionStats hunger={70} mood={85} exp={30} level={1} />)

    expect(screen.getByRole('progressbar', { name: '饱腹状态' })).toHaveAttribute('aria-valuenow', '70')
    expect(screen.getByRole('progressbar', { name: '心情状态' })).toHaveAttribute('aria-valuenow', '85')
    expect(screen.getByRole('progressbar', { name: '经验进度' })).toBeVisible()
  })
})
