import { ArrowLeft } from 'lucide-react'
import type { ReactNode } from 'react'

interface PageHeaderProps {
  title: string
  subtitle?: string
  eyebrow?: string
  onBack?: () => void
  backLabel?: string
  trailing?: ReactNode
  className?: string
}

export function PageHeader({
  title,
  subtitle,
  eyebrow,
  onBack,
  backLabel = '返回',
  trailing,
  className = '',
}: PageHeaderProps) {
  return (
    <header className={`flex min-w-0 items-start gap-3 ${className}`}>
      {onBack && (
        <button
          type="button"
          onClick={onBack}
          aria-label={backLabel}
          className="grid min-h-11 min-w-11 shrink-0 place-items-center rounded-[14px] border border-adventure-border bg-white text-adventure-text transition active:scale-95"
        >
          <ArrowLeft aria-hidden="true" className="h-5 w-5" />
        </button>
      )}
      <div className="min-w-0 flex-1">
        {eyebrow && <p className="eyebrow mb-1">{eyebrow}</p>}
        <h1 className="break-words text-2xl font-black tracking-[-0.03em] text-adventure-text sm:text-3xl">
          {title}
        </h1>
        {subtitle && <p className="mt-1 text-sm leading-6 text-adventure-muted">{subtitle}</p>}
      </div>
      {trailing && <div className="shrink-0">{trailing}</div>}
    </header>
  )
}
