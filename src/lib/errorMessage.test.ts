import { describe, expect, it } from 'vitest'
import { getErrorMessage } from './errorMessage'

describe('getErrorMessage', () => {
  it('normalizes network failures', () => {
    expect(getErrorMessage(new Error('Failed to fetch'), '操作失败')).toBe('连接服务失败，请检查网络后重试')
  })

  it('uses a safe fallback for unknown errors', () => {
    expect(getErrorMessage({ unexpected: true }, '创建失败，请重试')).toBe('创建失败，请重试')
  })
})
