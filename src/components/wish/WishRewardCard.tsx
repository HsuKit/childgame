import { motion } from 'framer-motion'
import type { WishReward } from '../../stores/wishStore'
import { Backpack, FerrisWheel, Gift, Sparkles, Users } from 'lucide-react'
import type { LucideIcon } from 'lucide-react'

interface WishRewardCardProps {
  reward: WishReward
  available: number
  onRequest: (reward: WishReward) => void
  readOnly?: boolean
}

const typeLabels: Record<WishReward['type'], string> = {
  item: '物品',
  companionship: '陪伴',
  experience: '体验',
  open_wish: '小愿望',
}

const typeIcons: Record<WishReward['type'], LucideIcon> = {
  item: Backpack,
  companionship: Users,
  experience: FerrisWheel,
  open_wish: Sparkles,
}

export function WishRewardCard({
  reward,
  available,
  onRequest,
  readOnly = false,
}: WishRewardCardProps) {
  const canAfford = !readOnly && available >= reward.cost
  const Icon = typeIcons[reward.type]

  return (
    <motion.button
      type="button"
      aria-label={reward.name}
      aria-disabled={readOnly}
      whileHover={readOnly ? undefined : { scale: 1.01 }}
      whileTap={readOnly ? undefined : { scale: 0.97 }}
      onClick={() => {
        if (!readOnly) onRequest(reward)
      }}
      className={`w-full rounded-[18px] border p-4 text-left shadow-sm transition-all ${
        canAfford
          ? 'bg-white border-purple-100 shadow-purple-100/50'
          : 'bg-gray-50 border-gray-200 shadow-gray-100/40'
      }`}
    >
      <div className="flex min-w-0 items-start gap-3">
        <div className={`flex h-12 w-12 shrink-0 items-center justify-center rounded-[16px] ${
          canAfford ? 'bg-gradient-to-br from-purple-50 to-pink-50' : 'bg-white text-gray-400'
        }`}>
          <Icon aria-hidden="true" className="h-6 w-6 text-adventure-primary" />
        </div>

        <div className="min-w-0 flex-1">
          <div className="flex min-w-0 items-start justify-between gap-3">
            <div className="min-w-0">
              <p className="break-words text-sm font-extrabold leading-snug text-adventure-text">{reward.name}</p>
              <p className="mt-1 break-words text-xs leading-relaxed text-adventure-muted">{reward.description}</p>
            </div>
            <div className={`shrink-0 rounded-full px-2 py-1 text-[10px] font-extrabold ${
              canAfford ? 'bg-purple-50 text-kid-primary' : 'bg-white text-gray-400'
            }`}>
              {typeLabels[reward.type]}
            </div>
          </div>

          <div className="mt-3 flex min-w-0 items-center justify-between gap-3">
            <span className={`min-w-0 break-words text-xs font-bold ${
              canAfford ? 'text-emerald-600' : 'text-amber-500'
            }`}>
              {readOnly
                ? '同步后可申请'
                : canAfford
                  ? '可以提交愿望'
                  : `还差 ${reward.cost - available} 枚`}
            </span>
            <span className="inline-flex shrink-0 items-center gap-1 rounded-full bg-adventure-warning-soft px-3 py-1.5 text-xs font-extrabold text-amber-700">
              <Gift aria-hidden="true" className="h-3.5 w-3.5" />{reward.cost}
            </span>
          </div>
        </div>
      </div>
    </motion.button>
  )
}
