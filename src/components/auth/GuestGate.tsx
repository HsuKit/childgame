import { useEffect } from 'react'
import { useAuthStore } from '../../stores/authStore'
import { GradeSelect } from './GradeSelect'

export function GuestGate({ children }: { children: React.ReactNode }) {
  const { user, profile, isLoading, isNewUser, authError, initAuth } = useAuthStore()

  useEffect(() => { initAuth() }, [initAuth])

  if (isLoading) {
    return <div className="min-h-screen flex items-center justify-center"><div className="animate-bounce text-4xl">🎮</div></div>
  }

  if (authError) {
    return (
      <div className="min-h-screen flex flex-col items-center justify-center gap-4 p-6 text-center bg-gradient-to-b from-purple-50 to-blue-50">
        <span className="text-5xl">🔌</span>
        <h1 className="text-xl font-extrabold text-kid-text">暂时连接不上学习世界</h1>
        <p className="text-sm text-gray-500" role="alert">{authError}</p>
        <button onClick={() => void initAuth()} className="btn-primary px-8">重新连接</button>
      </div>
    )
  }

  if (user && isNewUser) return <GradeSelect />

  if (!user || !profile) {
    return <div className="min-h-screen flex items-center justify-center"><div className="animate-bounce text-4xl">🎮</div></div>
  }

  return <>{children}</>
}
