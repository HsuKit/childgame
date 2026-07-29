import { fireEvent, render, screen } from '@testing-library/react'
import { describe, expect, it, vi } from 'vitest'
import { FocusQuizHeader } from './FocusQuizHeader'

describe('FocusQuizHeader', () => {
  it('exposes exit, question count, and accessible progress', () => {
    const onExit = vi.fn()

    render(<FocusQuizHeader title="数学山谷" current={4} total={10} onExit={onExit} />)

    fireEvent.click(screen.getByRole('button', { name: '退出数学山谷' }))
    expect(onExit).toHaveBeenCalledOnce()
    expect(screen.getByText('第 4 / 10 题')).toBeVisible()
    expect(screen.getByRole('progressbar')).toHaveAttribute('aria-valuenow', '4')
  })
})
