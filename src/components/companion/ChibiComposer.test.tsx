import { act, render, screen } from '@testing-library/react'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'
import { ChibiComposer } from './ChibiComposer'

class BrokenImage {
  complete = true
  naturalWidth = 0
  naturalHeight = 0
  src = ''
}

class LoadedImage {
  complete = true
  naturalWidth = 320
  naturalHeight = 320
  src = ''
}

describe('ChibiComposer', () => {
  const drawImage = vi.fn()
  const clearRect = vi.fn()
  let frameCallback: FrameRequestCallback | undefined

  beforeEach(() => {
    vi.useFakeTimers()
    vi.stubGlobal('Image', BrokenImage)
    vi.stubGlobal('requestAnimationFrame', vi.fn((callback: FrameRequestCallback) => {
      frameCallback = callback
      return 1
    }))
    vi.stubGlobal('cancelAnimationFrame', vi.fn())
    vi.spyOn(HTMLCanvasElement.prototype, 'getContext').mockReturnValue({
      clearRect,
      drawImage,
    } as unknown as CanvasRenderingContext2D)
  })

  afterEach(() => {
    vi.useRealTimers()
    vi.unstubAllGlobals()
    vi.restoreAllMocks()
    drawImage.mockClear()
    clearRect.mockClear()
    frameCallback = undefined
  })

  it('shows a complete static fallback with useful alternative text', () => {
    render(<ChibiComposer variant="Forest_Ranger_1" />)

    expect(screen.getByRole('img', { name: '伙伴静态形象' }))
      .toHaveAttribute('src', '/assets/companions/Forest_Ranger_1/idle/0_Forest_Ranger_Idle_000.png')
  })

  it('does not draw broken animation images to the canvas', () => {
    render(<ChibiComposer variant="Forest_Ranger_1" />)

    act(() => {
      vi.advanceTimersByTime(200)
      frameCallback?.(240)
    })

    expect(drawImage).not.toHaveBeenCalled()
  })

  it('hides the static fallback after an animation frame is drawable', () => {
    vi.stubGlobal('Image', LoadedImage)
    render(<ChibiComposer variant="Forest_Ranger_1" />)

    act(() => {
      vi.advanceTimersByTime(200)
      frameCallback?.(240)
    })

    expect(drawImage).toHaveBeenCalled()
    expect(screen.getByRole('img', { name: '伙伴静态形象' }))
      .toHaveClass('opacity-0')
  })
})
