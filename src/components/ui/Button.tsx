import { LoaderCircle } from 'lucide-react'
import type { ButtonHTMLAttributes, ReactNode } from 'react'

export type ButtonVariant = 'primary' | 'secondary' | 'ghost' | 'danger'

interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: ButtonVariant
  loading?: boolean
  icon?: ReactNode
}

const variants: Record<ButtonVariant, string> = {
  primary: 'bg-adventure-primary text-white shadow-lg shadow-indigo-200/50 hover:bg-adventure-primary-strong',
  secondary: 'bg-adventure-primary-soft text-adventure-primary hover:bg-indigo-100',
  ghost: 'border border-adventure-border bg-white text-adventure-text hover:border-adventure-primary/40',
  danger: 'bg-adventure-danger-soft text-red-700 hover:bg-red-100',
}

export function Button({
  variant = 'primary',
  loading = false,
  icon,
  children,
  className = '',
  disabled,
  ...props
}: ButtonProps) {
  const accessibleLabel = props['aria-label'] ?? (typeof children === 'string' ? children : undefined)

  return (
    <button
      {...props}
      aria-busy={loading}
      aria-label={accessibleLabel}
      disabled={disabled || loading}
      className={`inline-flex min-h-12 items-center justify-center gap-2 rounded-[14px] px-5 py-3 font-extrabold transition duration-200 active:scale-[0.97] disabled:cursor-not-allowed disabled:opacity-50 ${variants[variant]} ${className}`}
    >
      {loading ? <LoaderCircle aria-hidden="true" className="h-5 w-5 animate-spin" /> : icon}
      <span className={loading ? 'opacity-75' : ''}>{children}</span>
    </button>
  )
}
