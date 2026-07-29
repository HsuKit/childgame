import {
  BookOpen,
  Calculator,
  CheckCircle2,
  ChevronRight,
  Languages,
  RotateCcw,
  Swords,
  Users,
} from 'lucide-react'
import type { LucideIcon } from 'lucide-react'
import { Link } from 'react-router-dom'
import { DAILY_QUESTIONS_PER_SUBJECT } from '../../lib/constants'
import type { Subject } from '../../lib/constants'
import { ProgressBar } from '../ui/ProgressBar'
import { Surface } from '../ui/Surface'

interface AdventureMapProps {
  progress: Record<Subject, number>
  challengeDone: boolean
  mistakes: number
  reinforcing: number
}

interface MissionConfig {
  subject: Subject
  title: string
  description: string
  icon: LucideIcon
  iconClass: string
  barClass: string
}

const missions: MissionConfig[] = [
  {
    subject: 'chinese',
    title: '语文森林',
    description: '读故事、认词语，收集新的知识叶片',
    icon: BookOpen,
    iconClass: 'bg-rose-50 text-rose-600',
    barClass: 'bg-rose-500',
  },
  {
    subject: 'math',
    title: '数学山谷',
    description: '解开数字谜题，跨过思考的小河',
    icon: Calculator,
    iconClass: 'bg-sky-50 text-sky-600',
    barClass: 'bg-adventure-sky',
  },
  {
    subject: 'english',
    title: '英语海湾',
    description: '认识单词伙伴，发现新的表达方式',
    icon: Languages,
    iconClass: 'bg-emerald-50 text-emerald-600',
    barClass: 'bg-adventure-success',
  },
]

export function AdventureMap({
  progress,
  challengeDone,
  mistakes,
  reinforcing,
}: AdventureMapProps) {
  return (
    <section aria-labelledby="adventure-map-title" className="space-y-4">
      <div className="relative overflow-hidden rounded-[24px] bg-gradient-to-br from-sky-400 via-cyan-400 to-emerald-400 p-5 text-white shadow-xl shadow-sky-100 sm:p-7">
        <div className="absolute -right-10 -top-12 h-40 w-40 rounded-full bg-white/15" />
        <div className="absolute -bottom-16 -left-8 h-40 w-52 rounded-[50%] bg-amber-200/35" />
        <div className="relative">
          <p className="text-xs font-extrabold uppercase tracking-[0.14em] text-white/75">TODAY'S MAP</p>
          <h2 id="adventure-map-title" className="mt-1 text-2xl font-black tracking-[-0.03em]">
            今日知识地图
          </h2>
          <p className="mt-2 max-w-lg text-sm leading-6 text-white/85">
            沿着路线完成三科试炼，和伙伴一起打开今天的成长宝箱。
          </p>
        </div>
      </div>

      <div className="relative grid gap-3">
        <div aria-hidden="true" className="absolute bottom-10 left-7 top-10 hidden w-px border-l-2 border-dashed border-indigo-200 sm:block" />
        {missions.map(({ subject, title, description, icon: Icon, iconClass, barClass }, index) => {
          const completed = progress[subject]
          const isDone = completed >= DAILY_QUESTIONS_PER_SUBJECT

          return (
            <Link
              key={subject}
              to={`/quiz?subject=${subject}`}
              aria-label={`${title}，进度 ${completed}/${DAILY_QUESTIONS_PER_SUBJECT}${isDone ? '，已完成' : ''}`}
              className="group relative block rounded-[18px] focus-visible:outline-offset-4 sm:ml-3"
            >
              <Surface className="flex items-center gap-3 p-4 transition duration-200 group-hover:-translate-y-0.5 group-hover:border-adventure-primary/35 group-hover:shadow-lg group-hover:shadow-indigo-100/40 sm:gap-4">
                <span className={`relative z-10 grid h-12 w-12 shrink-0 place-items-center rounded-[15px] ${iconClass}`}>
                  <Icon aria-hidden="true" className="h-6 w-6" />
                  <span className="absolute -left-1 -top-1 grid h-5 w-5 place-items-center rounded-full bg-adventure-primary text-[10px] font-black text-white">
                    {index + 1}
                  </span>
                </span>
                <div className="min-w-0 flex-1">
                  <div className="flex items-center gap-2">
                    <h3 className="font-black text-adventure-text">{title}</h3>
                    {isDone && (
                      <span className="inline-flex items-center gap-1 text-xs font-bold text-adventure-success">
                        <CheckCircle2 aria-hidden="true" className="h-4 w-4" />
                        已完成
                      </span>
                    )}
                  </div>
                  <p className="mt-0.5 hidden text-xs text-adventure-muted sm:block">{description}</p>
                  <div className="mt-2 flex items-center gap-3">
                    <ProgressBar
                      value={completed}
                      max={DAILY_QUESTIONS_PER_SUBJECT}
                      label={`${title}进度`}
                      barClassName={barClass}
                      className="flex-1"
                    />
                    <span className="shrink-0 text-xs font-extrabold tabular-nums text-adventure-muted">
                      {completed}/{DAILY_QUESTIONS_PER_SUBJECT}
                    </span>
                  </div>
                </div>
                <ChevronRight aria-hidden="true" className="h-5 w-5 shrink-0 text-slate-300 transition group-hover:translate-x-1 group-hover:text-adventure-primary" />
              </Surface>
            </Link>
          )
        })}
      </div>

      <div className="grid gap-3 md:grid-cols-3">
        <Link
          to="/challenge"
          aria-label={`每日挑战，${challengeDone ? '已完成' : '等待挑战'}`}
          className="rounded-[18px]"
        >
          <Surface className="h-full transition hover:-translate-y-0.5 hover:border-orange-200 hover:shadow-lg">
            <div className="flex items-center gap-3">
              <span className="grid h-11 w-11 place-items-center rounded-[14px] bg-orange-50 text-orange-600">
                <Swords aria-hidden="true" className="h-5 w-5" />
              </span>
              <div>
                <h3 className="font-extrabold">每日挑战</h3>
                <p className="text-xs text-adventure-muted">{challengeDone ? '今日已完成' : '30 题混合闯关'}</p>
              </div>
            </div>
          </Surface>
        </Link>

        <Link
          to="/mistakes"
          aria-label={`错题修炼，待订正 ${mistakes} 道，巩固 ${reinforcing} 道`}
          className="rounded-[18px]"
        >
          <Surface className="h-full transition hover:-translate-y-0.5 hover:border-amber-200 hover:shadow-lg">
            <div className="flex items-center gap-3">
              <span className="grid h-11 w-11 place-items-center rounded-[14px] bg-amber-50 text-amber-700">
                <RotateCcw aria-hidden="true" className="h-5 w-5" />
              </span>
              <div>
                <h3 className="font-extrabold">错题修炼</h3>
                <p className="text-xs text-adventure-muted">待订正 {mistakes} · 巩固 {reinforcing}</p>
              </div>
            </div>
          </Surface>
        </Link>

        <Link to="/pk" aria-label="好友对战，创建或加入挑战" className="rounded-[18px]">
          <Surface className="h-full transition hover:-translate-y-0.5 hover:border-indigo-200 hover:shadow-lg">
            <div className="flex items-center gap-3">
              <span className="grid h-11 w-11 place-items-center rounded-[14px] bg-adventure-primary-soft text-adventure-primary">
                <Users aria-hidden="true" className="h-5 w-5" />
              </span>
              <div>
                <h3 className="font-extrabold">好友对战</h3>
                <p className="text-xs text-adventure-muted">和朋友一起闯关</p>
              </div>
            </div>
          </Surface>
        </Link>
      </div>
    </section>
  )
}
