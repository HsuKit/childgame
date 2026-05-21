import { LEVEL_THRESHOLDS } from '../../lib/constants'

interface Props { hunger: number; mood: number; exp: number; level: number }

const bars = [
  { key: 'hunger', label: '饱腹', emoji: '🍖', color: 'from-orange-400 to-amber-400', bg: 'bg-orange-100' },
  { key: 'mood', label: '心情', emoji: '💖', color: 'from-pink-400 to-rose-400', bg: 'bg-pink-100' },
  { key: 'exp', label: '经验', emoji: '✨', color: 'from-purple-400 to-violet-400', bg: 'bg-purple-100' },
] as const

export function CompanionStats({ hunger, mood, exp, level }: Props) {
  const currentLevelExp = LEVEL_THRESHOLDS[level - 1] || 0
  const nextLevelExp = LEVEL_THRESHOLDS[level] || currentLevelExp
  const expPct = nextLevelExp > currentLevelExp ? ((exp - currentLevelExp) / (nextLevelExp - currentLevelExp)) * 100 : 100
  const values = { hunger, mood, exp: expPct }

  return (
    <div className="space-y-2 mt-3">
      {bars.map(({ key, label, emoji, color, bg }) => (
        <div key={key} className="flex items-center gap-2 text-xs">
          <span className="w-4">{emoji}</span>
          <span className="w-8 text-gray-500 font-medium">{label}</span>
          <div className={`flex-1 h-3 ${bg} rounded-full overflow-hidden`}>
            <div
              className={`h-full bg-gradient-to-r ${color} rounded-full transition-all duration-700 ease-out`}
              style={{ width: `${Math.min(100, values[key])}%` }}
            />
          </div>
          <span className="w-10 text-right font-bold text-gray-400">
            {key === 'exp' ? `${Math.round(values[key])}%` : values[key]}
          </span>
        </div>
      ))}
    </div>
  )
}
