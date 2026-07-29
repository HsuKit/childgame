import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../../stores/companionStore'
import { CompanionStats } from './CompanionStats'
import { InteractiveCompanion } from './InteractiveCompanion'
import { SpeechBubble } from './SpeechBubble'
import { ArrowRight, Egg, PawPrint } from 'lucide-react'
import { Surface } from '../ui/Surface'

interface CompanionDisplayProps {
  compact?: boolean
}

export function CompanionDisplay({ compact = false }: CompanionDisplayProps) {
  const { companion, isLoading } = useCompanionStore()
  const navigate = useNavigate()

  if (isLoading) return <div className={`animate-pulse rounded-[18px] bg-white/60 ${compact ? 'h-24' : 'h-64'}`} />

  if (!companion) {
    if (compact) {
      return (
        <button type="button" onClick={() => navigate('/companion/select')} className="w-full text-left">
          <Surface className="flex items-center gap-3 border-indigo-100 bg-adventure-primary-soft/55">
            <span className="grid h-11 w-11 place-items-center rounded-[14px] bg-white text-adventure-primary">
              <Egg aria-hidden="true" className="h-5 w-5" />
            </span>
            <div className="min-w-0 flex-1">
              <p className="font-extrabold">选择一位冒险伙伴</p>
              <p className="text-xs text-adventure-muted">一起完成今天的知识地图</p>
            </div>
            <ArrowRight aria-hidden="true" className="h-5 w-5 text-adventure-primary" />
          </Surface>
        </button>
      )
    }

    return (
      <div className="card-gradient text-center py-10">
        <p className="text-5xl mb-4">🥚</p>
        <p className="font-extrabold text-lg mb-3 text-kid-text">还没有伙伴!</p>
        <button onClick={() => navigate('/companion/select')} className="btn-primary">选择伙伴 →</button>
      </div>
    )
  }

  if (compact) {
    return (
      <button type="button" onClick={() => navigate('/companion')} className="w-full text-left">
        <Surface className="flex items-center gap-3 border-indigo-100 bg-gradient-to-r from-white to-adventure-primary-soft/60 p-4">
          <span className="grid h-12 w-12 shrink-0 place-items-center overflow-hidden rounded-[15px] bg-white">
            <InteractiveCompanion size="small" />
          </span>
          <div className="min-w-0 flex-1">
            <div className="flex items-center gap-2">
              <p className="truncate font-black">{companion.name}</p>
              <span className="rounded-full bg-adventure-primary px-2 py-0.5 text-[10px] font-extrabold text-white">
                Lv.{companion.level}
              </span>
            </div>
            <p className="mt-0.5 inline-flex items-center gap-1 text-xs text-adventure-muted">
              <PawPrint aria-hidden="true" className="h-3.5 w-3.5" />
              正在地图入口等你
            </p>
          </div>
          <ArrowRight aria-hidden="true" className="h-5 w-5 text-adventure-primary" />
        </Surface>
      </button>
    )
  }

  return (
    <div className="card-gradient cursor-pointer" onClick={() => navigate('/companion')}>
      <SpeechBubble />
      <InteractiveCompanion />
      <div className="flex items-center gap-2 justify-center mt-1">
        <h2 className="text-lg font-extrabold text-kid-text">{companion.name}</h2>
        <span className="text-xs bg-gradient-to-r from-kid-primary to-kid-primary-light text-white px-2.5 py-0.5 rounded-full font-bold">
          Lv.{companion.level}
        </span>
      </div>
      <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
    </div>
  )
}
