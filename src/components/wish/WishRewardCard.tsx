import { motion } from 'framer-motion'
import type { WishReward } from '../../stores/wishStore'

interface WishRewardCardProps {
  reward: WishReward
  available: number
  onRequest: (reward: WishReward) => void
}

const typeLabels: Record<WishReward['type'], string> = {
  item: '物品',
  companionship: '陪伴',
  experience: '体验',
  open_wish: '小愿望',
}

const typeEmoji: Record<WishReward['type'], string> = {
  item: '🎒',
  companionship: '🤝',
  experience: '🎡',
  open_wish: '✨',
}

export function WishRewardCard({ reward, available, onRequest }: WishRewardCardProps) {
  const canAfford = available >= reward.cost

  return (
    <motion.button
      type="button"
      whileHover={{ scale: 1.01 }}
      whileTap={{ scale: 0.97 }}
      onClick={() => onRequest(reward)}
      className={`w-full rounded-3xl border p-4 text-left shadow-sm transition-all ${
        canAfford
          ? 'bg-white border-purple-100 shadow-purple-100/50'
          : 'bg-gray-50 border-gray-200 shadow-gray-100/40'
      }`}
    >
      <div className="flex min-w-0 items-start gap-3">
        <div className={`flex h-12 w-12 shrink-0 items-center justify-center rounded-2xl text-2xl ${
          canAfford ? 'bg-gradient-to-br from-purple-50 to-pink-50' : 'bg-white text-gray-400'
        }`}>
          {typeEmoji[reward.type]}
        </div>

        <div className="min-w-0 flex-1">
          <div className="flex min-w-0 items-start justify-between gap-3">
            <div className="min-w-0">
              <p className="break-words text-sm font-extrabold leading-snug text-kid-text">{reward.name}</p>
              <p className="mt-1 break-words text-xs leading-relaxed text-gray-400">{reward.description}</p>
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
              {canAfford ? '可以提交愿望' : `还差 ${reward.cost - available} 枚`}
            </span>
            <span className="shrink-0 rounded-full bg-gradient-to-r from-kid-warning to-kid-secondary px-3 py-1.5 text-xs font-extrabold text-white shadow-sm shadow-orange-200/50">
              🎁 {reward.cost}
            </span>
          </div>
        </div>
      </div>
    </motion.button>
  )
}
