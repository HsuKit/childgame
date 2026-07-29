import { render, screen } from '@testing-library/react'
import { describe, expect, it, vi } from 'vitest'
import { Button } from './Button'
import { PageHeader } from './PageHeader'
import { ProgressBar } from './ProgressBar'
import { StatePanel } from './StatePanel'
import { Surface } from './Surface'

describe('shared UI primitives', () => {
  it('exposes loading state without losing the button label', () => {
    render(<Button loading>提交愿望</Button>)

    expect(screen.getByRole('button', { name: '提交愿望' })).toBeDisabled()
    expect(screen.getByRole('button')).toHaveAttribute('aria-busy', 'true')
  })

  it('exposes determinate progress to assistive technology', () => {
    render(<ProgressBar value={4} max={10} label="语文进度" />)

    expect(screen.getByRole('progressbar', { name: '语文进度' })).toHaveAttribute('aria-valuenow', '4')
    expect(screen.getByRole('progressbar')).toHaveAttribute('aria-valuemax', '10')
  })

  it('renders an error recovery action', () => {
    const onRetry = vi.fn()
    render(
      <StatePanel
        tone="error"
        title="暂时没有加载成功"
        message="请检查网络后再试"
        actionLabel="重试"
        onAction={onRetry}
      />,
    )

    screen.getByRole('button', { name: '重试' }).click()
    expect(onRetry).toHaveBeenCalledOnce()
  })

  it('gives a page back action an explicit accessible name', () => {
    render(<PageHeader title="愿望商店" onBack={() => undefined} backLabel="返回奖励中心" />)

    expect(screen.getByRole('button', { name: '返回奖励中心' })).toBeVisible()
    expect(screen.getByRole('heading', { name: '愿望商店' })).toBeVisible()
  })

  it('renders a labeled surface region', () => {
    render(<Surface aria-label="今日任务">三科任务</Surface>)

    expect(screen.getByRole('region', { name: '今日任务' })).toBeVisible()
  })
})
