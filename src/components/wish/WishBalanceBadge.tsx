import { motion } from 'framer-motion'

interface WishBalanceBadgeProps {
  available: number
  frozen?: number
  onClick?: () => void
}

export function WishBalanceBadge({ available, frozen = 0, onClick }: WishBalanceBadgeProps) {
  const content = (
    <>
      <span className="shrink-0 text-lg leading-none">🎁</span>
      <span className="min-w-0 truncate font-extrabold text-kid-primary">{available}</span>
      {frozen > 0 && (
        <span className="min-w-0 truncate text-[10px] font-bold text-amber-500">冻 {frozen}</span>
      )}
    </>
  )

  if (onClick) {
    return (
      <motion.button
        type="button"
        whileTap={{ scale: 0.95 }}
        onClick={onClick}
        className="inline-flex max-w-full items-center gap-1.5 rounded-full bg-white/90 px-3 py-2 text-sm shadow-md shadow-purple-100/60 border border-purple-100"
        aria-label={`愿望币 ${available}${frozen > 0 ? `，冻结 ${frozen}` : ''}`}
      >
        {content}
      </motion.button>
    )
  }

  return (
    <div className="inline-flex max-w-full items-center gap-1.5 rounded-full bg-white/90 px-3 py-2 text-sm shadow-md shadow-purple-100/60 border border-purple-100">
      {content}
    </div>
  )
}
