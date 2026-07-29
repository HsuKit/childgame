import type { HTMLAttributes } from 'react'

export type SurfaceTone = 'plain' | 'soft' | 'elevated'

interface SurfaceProps extends HTMLAttributes<HTMLElement> {
  tone?: SurfaceTone
}

const tones: Record<SurfaceTone, string> = {
  plain: 'border-adventure-border bg-white',
  soft: 'border-indigo-100 bg-adventure-primary-soft/55',
  elevated: 'border-white bg-white shadow-xl shadow-slate-200/45',
}

export function Surface({ tone = 'plain', className = '', children, ...props }: SurfaceProps) {
  return (
    <section
      {...props}
      className={`rounded-[18px] border p-5 ${tones[tone]} ${className}`}
    >
      {children}
    </section>
  )
}
