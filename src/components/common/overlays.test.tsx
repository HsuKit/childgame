import { fireEvent, render, screen } from '@testing-library/react'
import { afterEach, describe, expect, it, vi } from 'vitest'
import { GradeSelect } from '../auth/GradeSelect'
import { PhoneBindBanner } from '../auth/PhoneBindBanner'
import { SwitchConfirmDialog } from '../companion/SwitchConfirmDialog'
import { useAuthStore } from '../../stores/authStore'
import { ErrorBoundary } from './ErrorBoundary'

afterEach(() => {
  useAuthStore.setState({ user: null, profile: null })
})

describe('global auth and overlay accessibility', () => {
  it('gives grade controls accessible labels and large targets', () => {
    render(<GradeSelect />)
    expect(screen.getByLabelText('昵称')).toBeVisible()
    expect(screen.getByRole('button', { name: '选择 1 年级' })).toHaveClass('min-h-14')
  })

  it('exposes switch confirmation as a titled modal dialog', () => {
    render(<SwitchConfirmDialog companionName="星星" cost={500} onConfirm={() => undefined} onCancel={() => undefined} />)
    expect(screen.getByRole('dialog', { name: '切换到星星？' })).toHaveAttribute('aria-modal', 'true')
  })

  it('keeps error recovery keyboard reachable', () => {
    vi.spyOn(console, 'error').mockImplementation(() => undefined)
    function Broken(): never { throw new Error('boom') }
    render(<ErrorBoundary><Broken /></ErrorBoundary>)
    const recovery = screen.getByRole('button', { name: '重新加载' })
    recovery.focus()
    expect(recovery).toHaveFocus()
  })

  it('uses descriptive phone binding action text', () => {
    useAuthStore.setState({
      user: { isAnonymous: true } as never,
      profile: { phone: null } as never,
      bindPhone: vi.fn(),
    })
    render(<PhoneBindBanner />)
    fireEvent.click(screen.getByRole('button', { name: '绑定手机号以保存学习数据' }))
    expect(screen.getByLabelText('家长手机号')).toBeVisible()
  })
})
