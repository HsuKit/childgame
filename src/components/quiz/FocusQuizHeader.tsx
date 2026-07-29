import { X } from 'lucide-react'
import { ProgressBar } from '../ui/ProgressBar'

interface FocusQuizHeaderProps {
  title: string
  current: number
  total: number
  onExit: () => void
  detail?: string
}

export function FocusQuizHeader({ title, current, total, onExit, detail }: FocusQuizHeaderProps) {
  return (
    <header className="border-b border-adventure-border bg-white/95 px-4 py-3 backdrop-blur">
      <div className="mx-auto max-w-2xl">
        <div className="flex items-center gap-3">
          <button
            type="button"
            onClick={onExit}
            aria-label={`退出${title}`}
            className="grid min-h-11 min-w-11 shrink-0 place-items-center rounded-[14px] border border-adventure-border bg-white text-adventure-muted transition hover:border-adventure-primary/40 hover:text-adventure-text active:scale-95"
          >
            <X aria-hidden="true" className="h-5 w-5" />
          </button>
          <div className="min-w-0 flex-1">
            <div className="flex items-center justify-between gap-3">
              <h1 className="truncate text-base font-black text-adventure-text">{title}</h1>
              <span className="shrink-0 text-sm font-extrabold text-adventure-muted">
                第 {current} / {total} 题
              </span>
            </div>
            <ProgressBar
              value={current}
              max={total}
              label={`${title}答题进度`}
              className="mt-2 h-2.5"
              barClassName="bg-gradient-to-r from-adventure-primary to-violet-400"
            />
          </div>
        </div>
        {detail && (
          <p className="mt-2 pl-14 text-xs font-bold leading-5 text-adventure-muted">{detail}</p>
        )}
      </div>
    </header>
  )
}
