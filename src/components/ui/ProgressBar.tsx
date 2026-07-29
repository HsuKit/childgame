interface ProgressBarProps {
  value: number
  max: number
  label: string
  className?: string
  barClassName?: string
}

export function ProgressBar({
  value,
  max,
  label,
  className = '',
  barClassName = 'bg-adventure-primary',
}: ProgressBarProps) {
  const safeMax = Math.max(1, max)
  const safeValue = Math.min(safeMax, Math.max(0, value))

  return (
    <div
      role="progressbar"
      aria-label={label}
      aria-valuemin={0}
      aria-valuemax={safeMax}
      aria-valuenow={safeValue}
      className={`h-2 overflow-hidden rounded-full bg-slate-200 ${className}`}
    >
      <div
        className={`h-full rounded-full transition-[width] duration-300 ${barClassName}`}
        style={{ width: `${(safeValue / safeMax) * 100}%` }}
      />
    </div>
  )
}
