import { getCompanionThumbnailPath } from '../../lib/companionAssets'

interface CompanionThumbnailProps {
  variant: string
  name: string
  className?: string
}

export function CompanionThumbnail({
  variant,
  name,
  className = 'h-full w-full object-contain',
}: CompanionThumbnailProps) {
  return (
    <img
      src={getCompanionThumbnailPath(variant)}
      alt={name}
      className={className}
    />
  )
}
