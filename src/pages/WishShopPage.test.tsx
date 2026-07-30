import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import WishShopPage from './WishShopPage'

const wishStoreMocks = vi.hoisted(() => ({
  fetchWishData: vi.fn(),
  submitRedemption: vi.fn(),
  clearMessage: vi.fn(),
}))

vi.mock('../stores/wishStore', () => ({
  useWishStore: () => ({
    balance: { totalEarned: 0, frozen: 0, spent: 0, available: 0 },
    rewards: [],
    redemptions: [],
    diaryEntries: [],
    isLoading: false,
    message: null,
    fetchWishData: wishStoreMocks.fetchWishData,
    submitRedemption: wishStoreMocks.submitRedemption,
    clearMessage: wishStoreMocks.clearMessage,
  }),
}))

describe('WishShopPage synchronization fallback', () => {
  beforeEach(() => {
    vi.clearAllMocks()
    wishStoreMocks.fetchWishData.mockRejectedValue(new Error('network unavailable'))
  })

  it('keeps the default catalog visible as read-only after synchronization fails', async () => {
    render(<MemoryRouter><WishShopPage /></MemoryRouter>)

    expect(await screen.findByText('数据暂未同步')).toBeInTheDocument()
    expect(screen.getByText('一张喜欢的贴纸')).toBeInTheDocument()
    expect(screen.getAllByText('同步后可申请').length).toBeGreaterThan(0)
    expect(screen.queryByText('愿望清单加载失败')).not.toBeInTheDocument()
  })

  it('does not open a request dialog for a fallback reward', async () => {
    render(<MemoryRouter><WishShopPage /></MemoryRouter>)
    const sticker = await screen.findByRole('button', { name: '一张喜欢的贴纸' })

    fireEvent.click(sticker)

    expect(screen.queryByRole('dialog')).not.toBeInTheDocument()
    expect(wishStoreMocks.submitRedemption).not.toHaveBeenCalled()
  })

  it('retries synchronization from the compact warning', async () => {
    render(<MemoryRouter><WishShopPage /></MemoryRouter>)
    const retry = await screen.findByRole('button', { name: '重新同步' })

    fireEvent.click(retry)

    await waitFor(() => expect(wishStoreMocks.fetchWishData).toHaveBeenCalledTimes(2))
  })
})
