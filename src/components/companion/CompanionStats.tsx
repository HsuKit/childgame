import { LEVEL_THRESHOLDS } from '../../lib/constants'

interface Props { hunger: number; mood: number; exp: number; level: number }

function StatBar({ value, color, emoji }: { value: number; color: string; emoji: string }) {
  return (
    <div className="flex items-center gap-1 text-xs">
      <span>{emoji}</span>
      <div className="flex-1 h-2 bg-gray-200 rounded-full overflow-hidden">
        <div className={`h-full ${color} rounded-full transition-all duration-500`} style={{ width: `${value}%` }} />
      </div>
      <span className="text-gray-400 w-8 text-right">{value}</span>
    </div>
  )
}

export function CompanionStats({ hunger, mood, exp, level }: Props) {
  const currentLevelExp = LEVEL_THRESHOLDS[level - 1] || 0
  const nextLevelExp = LEVEL_THRESHOLDS[level] || currentLevelExp
  const expPct = nextLevelExp > currentLevelExp ? ((exp - currentLevelExp) / (nextLevelExp - currentLevelExp)) * 100 : 100

  return (
    <div className="space-y-1 mt-2">
      <StatBar value={hunger} color="bg-orange-400" emoji="🍖" />
      <StatBar value={mood} color="bg-pink-400" emoji="💖" />
      <StatBar value={expPct} color="bg-kid-primary" emoji="✨" />
    </div>
  )
}
