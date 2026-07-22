import { useEffect, useRef } from 'react'
import { Outlet, useLocation } from 'react-router-dom'
import { GuestGate } from '../auth/GuestGate'
import { PhoneBindBanner } from '../auth/PhoneBindBanner'
import { BottomNav } from './BottomNav'
import { EvolutionCelebration } from '../companion/EvolutionCelebration'

export function AppLayout() {
  const location = useLocation()
  const mainRef = useRef<HTMLElement | null>(null)

  useEffect(() => {
    if (mainRef.current) mainRef.current.scrollTop = 0
  }, [location.pathname, location.search])

  return (
    <GuestGate>
      <div className="min-h-screen flex flex-col max-w-md mx-auto bg-white shadow-lg relative">
        <PhoneBindBanner />
        <main ref={mainRef} className="flex-1 overflow-y-auto pb-20">
          <Outlet />
        </main>
        <BottomNav />
        <EvolutionCelebration />
      </div>
    </GuestGate>
  )
}
