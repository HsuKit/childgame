import { describe, expect, it } from 'vitest'
import {
  DEFAULT_COMPANION_VARIANT,
  getCompanionThumbnailPath,
  resolveCompanionVariant,
} from './companionAssets'

describe('companionAssets', () => {
  it('keeps an equipped outfit that belongs to the current companion', () => {
    expect(resolveCompanionVariant('ranger', 'Forest_Ranger_2')).toBe('Forest_Ranger_2')
  })

  it('falls back to the current companion base variant for a stale outfit', () => {
    expect(resolveCompanionVariant('warrior', 'ranger')).toBe('Skeleton_Warrior_1')
  })

  it('falls back to the ranger when the companion type is unknown', () => {
    expect(resolveCompanionVariant('legacy-type', 'missing')).toBe(DEFAULT_COMPANION_VARIANT)
  })

  it('uses the stable body image for thumbnails', () => {
    expect(getCompanionThumbnailPath('Valkyrie_1'))
      .toBe('/assets/companions/Valkyrie_1/Body.png')
  })
})
