import { motion } from 'framer-motion'

export function StreakBadge({ count }: { count: number }) {
  const emoji = count >= 30 ? '🔥🔥🔥' : count >= 7 ? '🔥🔥' : count >= 3 ? '🔥' : '⭐'
  return (
    <motion.div animate={{ scale: [1, 1.1, 1] }} transition={{ repeat: Infinity, duration: 2 }}
      className="inline-flex items-center gap-2 bg-gradient-to-r from-orange-100 to-yellow-100 px-4 py-2 rounded-full">
      <span>{emoji}</span>
      <span className="font-bold text-orange-500">连续{count}天</span>
    </motion.div>
  )
}
