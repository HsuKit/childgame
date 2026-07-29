import { Map, PawPrint, Shield, Trophy } from 'lucide-react'
import { Link, useLocation } from 'react-router-dom'
import { getRouteMeta } from '../../lib/navigation'

const destinations = [
  { to: '/', section: 'adventure', label: '冒险', icon: Map },
  { to: '/companion', section: 'companion', label: '伙伴', icon: PawPrint },
  { to: '/rewards', section: 'rewards', label: '奖励', icon: Trophy },
  { to: '/profile', section: 'camp', label: '营地', icon: Shield },
] as const

export function BottomNav() {
  const location = useLocation()
  const activeSection = getRouteMeta(`${location.pathname}${location.search}`).section

  return (
    <nav
      aria-label="主要导航"
      className="fixed inset-x-0 bottom-0 z-50 mx-auto grid w-full max-w-2xl grid-cols-4 border-t border-adventure-border bg-white/95 px-2 pt-2 pb-[max(.65rem,env(safe-area-inset-bottom))] shadow-[0_-12px_32px_rgba(45,55,92,.10)] backdrop-blur-xl sm:bottom-4 sm:rounded-[22px] sm:border"
    >
      {destinations.map(({ to, section, label, icon: Icon }) => {
        const isActive = section === activeSection

        return (
          <Link
            key={to}
            to={to}
            aria-label={label}
            aria-current={isActive ? 'page' : undefined}
            className={`group mx-1 flex min-h-14 min-w-0 flex-col items-center justify-center gap-1 rounded-[16px] px-2 text-[11px] font-bold transition active:scale-95 ${
              isActive
                ? 'bg-adventure-primary-soft text-adventure-primary'
                : 'text-slate-400 hover:bg-slate-50 hover:text-adventure-text'
            }`}
          >
            <Icon aria-hidden="true" className="h-5 w-5" strokeWidth={isActive ? 2.7 : 2.2} />
            <span>{label}</span>
          </Link>
        )
      })}
    </nav>
  )
}
