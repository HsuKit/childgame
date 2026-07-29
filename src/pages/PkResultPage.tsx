import { useEffect, useState } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'
import { getPkResultState } from '../lib/pkUtils'
import { ResultHero } from '../components/results/ResultHero'
import { Button } from '../components/ui/Button'
import { Surface } from '../components/ui/Surface'
import { StatePanel } from '../components/ui/StatePanel'

export default function PkResultPage() {
  const [params] = useSearchParams()
  const navigate = useNavigate()
  const challengeId = params.get('challenge')
  const userId = useAuthStore(s => s.user?.id)
  const [data, setData] = useState<any>(null)

  useEffect(() => {
    if (!challengeId) { navigate('/pk'); return }
    let active = true
    let timer: ReturnType<typeof setTimeout> | undefined

    const load = async () => {
      const { data } = await supabase.from('pk_challenges').select('*').eq('id', challengeId).single()
      if (!active) return
      setData(data)
      if (data?.creator_score === null || data?.opponent_score === null) {
        timer = setTimeout(load, 2000)
      }
    }

    load()
    return () => {
      active = false
      if (timer) clearTimeout(timer)
    }
  }, [challengeId, navigate])

  if (!data) return <div className="mx-auto max-w-lg px-4 py-10"><StatePanel tone="loading" title="正在读取对战结果" message="正在同步双方成绩。" /></div>

  const { myScore, oppScore, oppDone, iWon, tie } = getPkResultState({
    creatorId: data.creator_id,
    currentUserId: userId,
    creatorScore: data.creator_score,
    opponentScore: data.opponent_score,
  })

  return (
    <div className="min-h-dvh bg-adventure-bg px-4 py-8 sm:py-12">
      <main className="mx-auto w-full max-w-lg space-y-4">
        <ResultHero
          score={myScore ?? 0}
          total={10}
          status={oppDone ? 'success' : 'settling'}
          title={!oppDone ? '等待对手完成' : iWon ? '对战胜利' : tie ? '本局平手' : '对战完成'}
          subtitle={!oppDone ? '挑战码已发给好友，页面会自动同步成绩。' : '这一局已结算，看看双方表现。'}
          settlingLabel="等待对手完成"
          successLabel="对战已结算"
        />
        <div className="grid grid-cols-2 gap-3">
          <Surface tone="soft" className="text-center">
            <p className="text-xs font-bold text-adventure-muted">我的成绩</p>
            <p className="mt-1 text-3xl font-black text-adventure-primary">{myScore ?? '—'}<span className="text-base">/10</span></p>
          </Surface>
          <Surface className="text-center">
            <p className="text-xs font-bold text-adventure-muted">对手成绩</p>
            <p className="mt-1 text-3xl font-black text-adventure-text">{oppScore ?? '—'}<span className="text-base">/10</span></p>
          </Surface>
        </div>
        <div className="grid gap-3 pt-2 sm:grid-cols-2">
          <Button onClick={() => navigate('/pk')}>返回对战大厅</Button>
          <Button variant="ghost" onClick={() => navigate('/')}>返回冒险地图</Button>
        </div>
      </main>
    </div>
  )
}
