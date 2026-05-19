import { useEffect } from 'react'
import { useAuthStore } from '../../stores/authStore'
import { GradeSelect } from './GradeSelect'

export function GuestGate({ children }: { children: React.ReactNode }) {
  const { user, isLoading, isNewUser, signInAnonymously, initAuth } = useAuthStore()

  useEffect(() => { initAuth() }, [initAuth])

  useEffect(() => {
    if (!isLoading && !user) signInAnonymously()
  }, [isLoading, user, signInAnonymously])

  if (isLoading) {
    return <div className="min-h-screen flex items-center justify-center"><div className="animate-bounce text-4xl">🎮</div></div>
  }

  if (isNewUser) return <GradeSelect />

  return <>{children}</>
}
