import { beforeEach, describe, expect, it, vi } from 'vitest'

const mocks = vi.hoisted(() => ({
  getSession: vi.fn(),
  signInAnonymously: vi.fn(),
  profileResult: vi.fn(),
}))

vi.mock('../lib/supabase', () => ({
  supabase: {
    auth: {
      getSession: mocks.getSession,
      signInAnonymously: mocks.signInAnonymously,
      signOut: vi.fn(),
    },
    from: vi.fn(() => ({
      select: vi.fn(() => ({
        eq: vi.fn(() => ({
          single: mocks.profileResult,
          maybeSingle: mocks.profileResult,
        })),
      })),
    })),
  },
}))

import { useAuthStore } from './authStore'

const anonymousUser = { id: 'user-1', is_anonymous: true }

describe('initAuth', () => {
  beforeEach(() => {
    vi.clearAllMocks()
    useAuthStore.setState({
      user: null,
      profile: null,
      isLoading: true,
      isNewUser: false,
      authError: null,
    } as never)
  })

  it('waits for anonymous sign-in before completing bootstrap', async () => {
    mocks.getSession.mockResolvedValue({ data: { session: null }, error: null })
    mocks.signInAnonymously.mockResolvedValue({ data: { user: anonymousUser }, error: null })
    mocks.profileResult.mockResolvedValue({ data: null, error: null })

    await useAuthStore.getState().initAuth()

    expect(mocks.signInAnonymously).toHaveBeenCalledOnce()
    expect(useAuthStore.getState()).toMatchObject({
      user: { id: 'user-1', isAnonymous: true },
      isNewUser: true,
      isLoading: false,
      authError: null,
    })
  })

  it('keeps the gate closed and exposes an error when sign-in fails', async () => {
    mocks.getSession.mockResolvedValue({ data: { session: null }, error: null })
    mocks.signInAnonymously.mockResolvedValue({ data: { user: null }, error: new Error('Failed to fetch') })

    await useAuthStore.getState().initAuth()

    expect(useAuthStore.getState()).toMatchObject({
      user: null,
      isLoading: false,
      isNewUser: false,
      authError: '连接服务失败，请检查网络后重试',
    })
  })

  it('loads an existing profile', async () => {
    const profile = { id: 'user-1', nickname: '小明', grade: 3 }
    mocks.getSession.mockResolvedValue({ data: { session: { user: anonymousUser } }, error: null })
    mocks.profileResult.mockResolvedValue({ data: profile, error: null })

    await useAuthStore.getState().initAuth()

    expect(useAuthStore.getState()).toMatchObject({
      user: { id: 'user-1', isAnonymous: true },
      profile,
      isNewUser: false,
      authError: null,
    })
  })
})
