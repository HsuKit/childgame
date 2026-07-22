import { describe, expect, it } from 'vitest'
import { WISH_DIALOG_PANEL_CLASS, WISH_DIALOG_OVERLAY_CLASS } from './wishDialogLayout'

describe('wish dialog layout classes', () => {
  it('keeps the redemption dialog above the bottom nav with safe scrolling room', () => {
    expect(WISH_DIALOG_OVERLAY_CLASS).toContain('z-[70]')
    expect(WISH_DIALOG_PANEL_CLASS).toContain('max-h-[calc(100dvh-2rem)]')
    expect(WISH_DIALOG_PANEL_CLASS).toContain('overflow-y-auto')
    expect(WISH_DIALOG_PANEL_CLASS).toContain('pb-[calc(1.25rem+env(safe-area-inset-bottom))]')
  })
})
