import { ArrowRight, BarChart3, CalendarDays, LogOut, NotebookPen, PawPrint, Phone, Shield, Sparkles, Star } from 'lucide-react'
import type { LucideIcon } from 'lucide-react'
import { useNavigate } from 'react-router-dom'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { Button } from '../components/ui/Button'
import { PageHeader } from '../components/ui/PageHeader'
import { StatePanel } from '../components/ui/StatePanel'
import { Surface } from '../components/ui/Surface'
import { useAuthStore } from '../stores/authStore'
import { useCheckinStore } from '../stores/checkinStore'
import { usePointsStore } from '../stores/pointsStore'

interface CampLink {
  icon: LucideIcon
  label: string
  description: string
  to: string
  tone: string
}

export default function ProfilePage() {
  const { profile, signOut } = useAuthStore()
  const { balance } = usePointsStore()
  const { today } = useCheckinStore()
  const navigate = useNavigate()

  if (!profile) return <StatePanel tone="loading" title="正在准备你的营地" />

  const campLinks: CampLink[] = [
    { icon: CalendarDays, label: '打卡日历', description: '查看连续学习与每日完成', to: '/checkin', tone: 'bg-adventure-warning-soft text-amber-700' },
    { icon: NotebookPen, label: '错题复习', description: '回到还没掌握的知识点', to: '/mistakes', tone: 'bg-rose-50 text-rose-600' },
    { icon: BarChart3, label: '家长报告', description: '查看今日学习数据与薄弱点', to: '/parent-report', tone: 'bg-sky-50 text-sky-700' },
    { icon: Sparkles, label: '家长愿望管理', description: '确认、兑现和维护奖励', to: '/parent-wishes', tone: 'bg-emerald-50 text-emerald-700' },
    { icon: PawPrint, label: '选择伙伴', description: '创建或切换冒险伙伴', to: '/companion/select', tone: 'bg-adventure-primary-soft text-adventure-primary' },
  ]

  return (
    <div className="page-stack">
      <PageHeader eyebrow="我的营地" title="个人中心" subtitle="查看身份、学习连续记录和家长工具。" />

      <Surface tone="soft" className="bg-gradient-to-br from-indigo-50 via-white to-rose-50">
        <div className="flex items-center gap-4">
          <span className="grid h-16 w-16 shrink-0 place-items-center rounded-[20px] bg-white text-adventure-primary shadow-lg shadow-indigo-100">
            <Shield aria-hidden="true" className="h-8 w-8" />
          </span>
          <div className="min-w-0 flex-1">
            <h2 className="truncate text-2xl font-black text-adventure-text">{profile.nickname}</h2>
            <p className="mt-1 text-sm font-bold text-adventure-muted">{profile.grade} 年级冒险者</p>
          </div>
          {today && <StreakBadge count={today.streak_count} />}
        </div>
      </Surface>

      <div className="grid grid-cols-2 gap-3">
        <Surface className="text-center">
          <Star aria-hidden="true" className="mx-auto h-6 w-6 fill-amber-300 text-amber-500" />
          <p className="mt-2 text-xs font-bold text-adventure-muted">当前积分</p>
          <p className="mt-1 text-3xl font-black text-adventure-text">{balance}</p>
        </Surface>
        <Surface className="text-center">
          <CalendarDays aria-hidden="true" className="mx-auto h-6 w-6 text-adventure-primary" />
          <p className="mt-2 text-xs font-bold text-adventure-muted">连续学习</p>
          <p className="mt-1 text-3xl font-black text-adventure-text">{today?.streak_count ?? 0}<span className="text-sm"> 天</span></p>
        </Surface>
      </div>

      <section>
        <h2 className="section-title mb-3">营地入口</h2>
        <div className="grid gap-3 md:grid-cols-2">
          {campLinks.map(({ icon: Icon, label, description, to, tone }) => (
            <button key={to} type="button" onClick={() => navigate(to)} className="group flex min-h-20 items-center gap-3 rounded-[18px] border border-adventure-border bg-white p-4 text-left transition hover:border-adventure-primary/35 hover:shadow-lg hover:shadow-slate-200/40">
              <span className={`grid h-11 w-11 shrink-0 place-items-center rounded-[14px] ${tone}`}><Icon aria-hidden="true" className="h-5 w-5" /></span>
              <span className="min-w-0 flex-1">
                <span className="block font-extrabold text-adventure-text">{label}</span>
                <span className="mt-0.5 block text-xs leading-5 text-adventure-muted">{description}</span>
              </span>
              <ArrowRight aria-hidden="true" className="h-5 w-5 shrink-0 text-adventure-muted transition group-hover:translate-x-1" />
            </button>
          ))}
        </div>
      </section>

      <Surface className="flex items-start gap-3">
        <Phone aria-hidden="true" className={`mt-0.5 h-5 w-5 shrink-0 ${profile.phone ? 'text-emerald-600' : 'text-amber-600'}`} />
        <div>
          <p className="font-extrabold text-adventure-text">{profile.phone ? '账号已绑定手机号' : '当前为游客模式'}</p>
          <p className="mt-1 text-xs leading-5 text-adventure-muted">{profile.phone ? '学习数据会持续保存在账号中。' : '建议绑定手机号，避免更换设备后数据丢失。'}</p>
        </div>
      </Surface>

      <Button variant="ghost" icon={<LogOut aria-hidden="true" className="h-4 w-4" />} onClick={() => signOut()} className="w-full">退出登录</Button>
    </div>
  )
}
