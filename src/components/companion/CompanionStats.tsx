import { LEVEL_THRESHOLDS } from '../../lib/constants'
import { Heart, Smile, Sparkles } from 'lucide-react'
import { ProgressBar } from '../ui/ProgressBar'

interface Props { hunger: number; mood: number; exp: number; level: number }

const bars = [
  { key: 'hunger', label: '饱腹', ariaLabel: '饱腹状态', icon: Heart, color: 'bg-gradient-to-r from-orange-400 to-amber-400', iconClass: 'text-orange-500' },
  { key: 'mood', label: '心情', ariaLabel: '心情状态', icon: Smile, color: 'bg-gradient-to-r from-pink-400 to-rose-400', iconClass: 'text-pink-500' },
  { key: 'exp', label: '经验', ariaLabel: '经验进度', icon: Sparkles, color: 'bg-gradient-to-r from-adventure-primary to-violet-400', iconClass: 'text-adventure-primary' },
] as const

export function CompanionStats({ hunger, mood, exp, level }: Props) {
  const currentLevelExp = LEVEL_THRESHOLDS[level - 1] || 0
  const nextLevelExp = LEVEL_THRESHOLDS[level] || currentLevelExp
  const expPct = nextLevelExp > currentLevelExp ? ((exp - currentLevelExp) / (nextLevelExp - currentLevelExp)) * 100 : 100
  const values = { hunger, mood, exp: expPct }

  return (
    <div className="mt-3 space-y-4">
      {bars.map(({ key, label, ariaLabel, icon: Icon, color, iconClass }) => (
        <div key={key}>
          <div className="mb-1.5 flex items-center gap-2 text-xs">
            <Icon aria-hidden="true" className={`h-4 w-4 ${iconClass}`} />
            <span className="font-bold text-adventure-muted">{label}</span>
            <span className="ml-auto font-extrabold text-adventure-text">
            {key === 'exp' ? `${Math.round(values[key])}%` : values[key]}
          </span>
          </div>
          <ProgressBar value={values[key]} max={100} label={ariaLabel} className="h-2.5" barClassName={color} />
        </div>
      ))}
    </div>
  )
}
