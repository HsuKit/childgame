import { motion } from 'framer-motion'
import { Gift, LockKeyhole } from 'lucide-react'

interface WishBalanceBadgeProps {
  available: number
  frozen?: number
  onClick?: () => void
}

export function WishBalanceBadge({ available, frozen = 0, onClick }: WishBalanceBadgeProps) {
  const content = (
    <>
      <Gift aria-hidden="true" className="h-4 w-4 shrink-0 text-adventure-primary" />
      <span className="min-w-0 truncate font-extrabold text-adventure-primary">{available}</span>
      {frozen > 0 && (
        <span className="inline-flex min-w-0 items-center gap-0.5 truncate text-[10px] font-bold text-amber-600"><LockKeyhole aria-hidden="true" className="h-3 w-3" />{frozen}</span>
      )}
    </>
  )

  if (onClick) {
    return (
      <motion.button
        type="button"
        whileTap={{ scale: 0.95 }}
        onClick={onClick}
        className="inline-flex min-h-11 max-w-full items-center gap-1.5 rounded-[14px] border border-indigo-100 bg-white px-3 py-2 text-sm shadow-md shadow-indigo-100/60"
        aria-label={`愿望币 ${available}${frozen > 0 ? `，冻结 ${frozen}` : ''}`}
      >
        {content}
      </motion.button>
    )
  }

  return (
    <div className="inline-flex min-h-11 max-w-full items-center gap-1.5 rounded-[14px] border border-indigo-100 bg-white px-3 py-2 text-sm shadow-md shadow-indigo-100/60">
      {content}
    </div>
  )
}
