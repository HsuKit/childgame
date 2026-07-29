import { CheckCircle2, LoaderCircle, RotateCcw, Sparkles, Trophy } from 'lucide-react'
import { Button } from '../ui/Button'

export type SettlementStatus = 'settling' | 'success' | 'error'

interface ResultHeroProps {
  score: number
  total: number
  status: SettlementStatus
  points?: number
  experience?: number
  onRetry?: () => void
  title?: string
  subtitle?: string
  settlingLabel?: string
  successLabel?: string
}

export function ResultHero({
  score,
  total,
  status,
  points,
  experience,
  onRetry,
  title = '关卡完成',
  subtitle,
  settlingLabel = '正在结算奖励',
  successLabel = '奖励已结算',
}: ResultHeroProps) {
  const percent = Math.round((score / Math.max(1, total)) * 100)

  return (
    <section className="overflow-hidden rounded-[24px] border border-indigo-100 bg-white text-center shadow-2xl shadow-indigo-100/60">
      <div className="bg-gradient-to-br from-indigo-50 via-white to-amber-50 px-5 py-7 sm:px-8">
        <div className="mx-auto grid h-16 w-16 place-items-center rounded-[20px] bg-white text-adventure-primary shadow-lg shadow-indigo-100">
          <Trophy aria-hidden="true" className="h-9 w-9" />
        </div>
        <p className="eyebrow mt-4">冒险结算</p>
        <h1 className="mt-1 text-2xl font-black tracking-[-0.03em] text-adventure-text sm:text-3xl">{title}</h1>
        {subtitle && <p className="mt-2 text-sm leading-6 text-adventure-muted">{subtitle}</p>}
        <p className="mt-5 text-5xl font-black tracking-tight text-adventure-primary">{percent}<span className="text-2xl"> 分</span></p>
        <p className="mt-1 text-sm font-bold text-adventure-muted">答对 {score} / {total} 题</p>
      </div>

      <div className="border-t border-adventure-border px-5 py-5">
        {status === 'settling' && (
          <p role="status" className="flex items-center justify-center gap-2 font-extrabold text-adventure-primary">
            <LoaderCircle aria-hidden="true" className="h-5 w-5 animate-spin" />
            {settlingLabel}
          </p>
        )}
        {status === 'success' && (
          <div role="status" className="space-y-2">
            <p className="flex items-center justify-center gap-2 font-extrabold text-emerald-700">
              <CheckCircle2 aria-hidden="true" className="h-5 w-5" />
              {successLabel}
            </p>
            {typeof points === 'number' && <p className="font-black text-adventure-text">已获得 {points} 积分</p>}
            {typeof experience === 'number' && (
              <p className="flex items-center justify-center gap-1 text-sm font-bold text-adventure-muted">
                <Sparkles aria-hidden="true" className="h-4 w-4 text-amber-500" />
                伙伴经验 +{experience}
              </p>
            )}
          </div>
        )}
        {status === 'error' && (
          <div role="alert">
            <p className="font-extrabold text-red-700">奖励结算遇到问题，请重试。</p>
            {onRetry && <Button variant="danger" icon={<RotateCcw aria-hidden="true" className="h-4 w-4" />} onClick={onRetry} className="mt-3">重新结算</Button>}
          </div>
        )}
      </div>
    </section>
  )
}
