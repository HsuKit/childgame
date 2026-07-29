import { useEffect } from 'react'
import { useAuthStore } from '../../stores/authStore'
import { GradeSelect } from './GradeSelect'
import { StatePanel } from '../ui/StatePanel'

export function GuestGate({ children }: { children: React.ReactNode }) {
  const { user, profile, isLoading, isNewUser, authError, initAuth } = useAuthStore()

  useEffect(() => { initAuth() }, [initAuth])

  if (isLoading) {
    return <div className="min-h-dvh bg-adventure-bg p-4"><div className="mx-auto mt-[20vh] max-w-lg"><StatePanel tone="loading" title="正在进入学习世界" message="正在同步你的冒险档案。" /></div></div>
  }

  if (authError) {
    return (
      <div className="min-h-dvh bg-adventure-bg p-4"><div className="mx-auto mt-[20vh] max-w-lg"><StatePanel tone="error" title="暂时连接不上学习世界" message={authError} actionLabel="重新连接" onAction={() => void initAuth()} /></div></div>
    )
  }

  if (user && isNewUser) return <GradeSelect />

  if (!user || !profile) {
    return <div className="min-h-dvh bg-adventure-bg p-4"><div className="mx-auto mt-[20vh] max-w-lg"><StatePanel tone="loading" title="正在准备冒险档案" /></div></div>
  }

  return <>{children}</>
}
