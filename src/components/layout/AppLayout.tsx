import { Outlet } from 'react-router-dom'
import { GuestGate } from '../auth/GuestGate'
import { PhoneBindBanner } from '../auth/PhoneBindBanner'
import { BottomNav } from './BottomNav'
import { EvolutionCelebration } from '../companion/EvolutionCelebration'

export function AppLayout() {
  return (
    <GuestGate>
      <div className="min-h-screen flex flex-col max-w-md mx-auto bg-white shadow-lg relative">
        <PhoneBindBanner />
        <main className="flex-1 overflow-y-auto pb-20">
          <Outlet />
        </main>
        <BottomNav />
        <EvolutionCelebration />
      </div>
    </GuestGate>
  )
}
