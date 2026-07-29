import { fireEvent, render, screen } from '@testing-library/react'
import { describe, expect, it, vi } from 'vitest'
import { ResultHero } from './ResultHero'

describe('ResultHero', () => {
  it('keeps rewards hidden while settlement is pending', () => {
    render(<ResultHero score={8} total={10} status="settling" points={80} />)

    expect(screen.getByText('正在结算奖励')).toBeVisible()
    expect(screen.queryByText(/已获得/)).not.toBeInTheDocument()
  })

  it('shows earned rewards only after settlement succeeds', () => {
    render(<ResultHero score={8} total={10} status="success" points={80} experience={40} />)

    expect(screen.getByText('已获得 80 积分')).toBeVisible()
    expect(screen.getByText('伙伴经验 +40')).toBeVisible()
  })

  it('offers recovery when settlement fails', () => {
    const onRetry = vi.fn()
    render(<ResultHero score={8} total={10} status="error" onRetry={onRetry} />)

    fireEvent.click(screen.getByRole('button', { name: '重新结算' }))
    expect(onRetry).toHaveBeenCalledOnce()
  })
})
