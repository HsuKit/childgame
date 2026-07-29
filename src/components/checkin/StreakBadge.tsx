import { Flame, Star } from 'lucide-react'

export function StreakBadge({ count }: { count: number }) {
  const Icon = count >= 3 ? Flame : Star
  return (
    <div className="inline-flex items-center gap-2 rounded-full bg-adventure-warning-soft px-4 py-2">
      <Icon aria-hidden="true" className={`h-4 w-4 ${count >= 3 ? 'fill-orange-400 text-orange-500' : 'fill-amber-300 text-amber-500'}`} />
      <span className="font-bold text-orange-700">连续 {count} 天</span>
    </div>
  )
}
