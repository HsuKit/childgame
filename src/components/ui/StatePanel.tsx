import { AlertCircle, Inbox, LoaderCircle } from 'lucide-react'
import { Button } from './Button'

export type StatePanelTone = 'loading' | 'empty' | 'error'

interface StatePanelProps {
  tone: StatePanelTone
  title: string
  message?: string
  actionLabel?: string
  onAction?: () => void
  className?: string
}

const toneClasses: Record<StatePanelTone, string> = {
  loading: 'border-indigo-100 bg-adventure-primary-soft/45 text-adventure-primary',
  empty: 'border-adventure-border bg-white text-adventure-muted',
  error: 'border-red-100 bg-adventure-danger-soft/70 text-red-700',
}

export function StatePanel({
  tone,
  title,
  message,
  actionLabel,
  onAction,
  className = '',
}: StatePanelProps) {
  const Icon = tone === 'loading' ? LoaderCircle : tone === 'error' ? AlertCircle : Inbox

  return (
    <section
      aria-live={tone === 'error' ? 'assertive' : 'polite'}
      className={`flex min-h-48 flex-col items-center justify-center rounded-[18px] border p-6 text-center ${toneClasses[tone]} ${className}`}
    >
      <Icon
        aria-hidden="true"
        className={`h-9 w-9 ${tone === 'loading' ? 'animate-spin' : ''}`}
      />
      <h2 className="mt-3 text-lg font-extrabold text-adventure-text">{title}</h2>
      {message && <p className="mt-1 max-w-md text-sm leading-6 text-adventure-muted">{message}</p>}
      {actionLabel && onAction && (
        <Button variant={tone === 'error' ? 'danger' : 'secondary'} onClick={onAction} className="mt-4">
          {actionLabel}
        </Button>
      )}
    </section>
  )
}
