import { COMPANION_TYPES } from '../data/companionTypes'

export const DEFAULT_COMPANION_VARIANT = 'Forest_Ranger_1'

export function resolveCompanionVariant(
  companionType: string,
  equippedOutfit: string | null | undefined,
): string {
  const definition = COMPANION_TYPES.find(type => type.id === companionType)
  if (!definition) return DEFAULT_COMPANION_VARIANT

  return equippedOutfit && definition.outfitVariants.includes(equippedOutfit)
    ? equippedOutfit
    : definition.baseVariant
}

export function getCompanionThumbnailPath(variant: string): string {
  return `/assets/companions/${variant}/Body.png`
}
