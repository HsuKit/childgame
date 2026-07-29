import { useEffect, useRef } from 'react'
import { Outlet, useLocation } from 'react-router-dom'
import { GuestGate } from '../auth/GuestGate'
import { PhoneBindBanner } from '../auth/PhoneBindBanner'
import { BottomNav } from './BottomNav'
import { EvolutionCelebration } from '../companion/EvolutionCelebration'
import { getRouteMeta } from '../../lib/navigation'

export function AppLayout() {
  const location = useLocation()
  const mainRef = useRef<HTMLElement | null>(null)
  const routeMeta = getRouteMeta(`${location.pathname}${location.search}`)

  useEffect(() => {
    if (!mainRef.current) return
    mainRef.current.scrollTop = 0
    mainRef.current.focus({ preventScroll: true })
  }, [location.pathname, location.search])

  return (
    <GuestGate>
      <div className="relative mx-auto flex min-h-dvh w-full max-w-6xl flex-col bg-adventure-bg lg:border-x lg:border-adventure-border">
        <PhoneBindBanner />
        <main
          ref={mainRef}
          id="main-content"
          tabIndex={-1}
          className={`flex-1 overflow-y-auto ${
            routeMeta.layout === 'standard' ? 'pb-24 sm:pb-28' : ''
          }`}
        >
          <Outlet />
        </main>
        {routeMeta.layout === 'standard' && <BottomNav />}
        <EvolutionCelebration />
      </div>
    </GuestGate>
  )
}
