import { ArrowRight, BookHeart, Gift, Trophy } from 'lucide-react'
import { useEffect } from 'react'
import { Link } from 'react-router-dom'
import { PageHeader } from '../components/ui/PageHeader'
import { Surface } from '../components/ui/Surface'
import { WishBalanceBadge } from '../components/wish/WishBalanceBadge'
import { useWishStore } from '../stores/wishStore'

export default function RewardsPage() {
  const {
    balance,
    redemptions,
    diaryEntries,
    fetchWishData,
  } = useWishStore()

  useEffect(() => {
    void fetchWishData().catch(() => undefined)
  }, [fetchWishData])

  const activeWishes = redemptions.filter(item => (
    item.status === 'pending_parent_review' || item.status === 'approved_pending_fulfillment'
  )).length

  return (
    <div className="page-stack">
      <PageHeader
        eyebrow="奖励营地"
        title="奖励营地"
        subtitle="看看努力积攒的愿望、荣誉与成长回忆"
        trailing={<WishBalanceBadge available={balance.available} frozen={balance.frozen} />}
      />

      <div className="grid gap-4 md:grid-cols-2">
        <Link to="/wish-shop" aria-label={`打开愿望商店，${activeWishes} 个进行中的愿望`}>
          <Surface className="group h-full overflow-hidden border-amber-100 bg-adventure-reward-soft transition hover:-translate-y-1 hover:shadow-xl hover:shadow-amber-100/60">
            <div className="flex items-start gap-4">
              <span className="grid h-12 w-12 shrink-0 place-items-center rounded-[16px] bg-white text-amber-600">
                <Gift aria-hidden="true" className="h-6 w-6" />
              </span>
              <div className="min-w-0 flex-1">
                <h2 className="text-lg font-black">愿望商店</h2>
                <p className="mt-1 text-sm leading-6 text-adventure-muted">
                  {activeWishes > 0 ? `${activeWishes} 个愿望正在实现路上` : '用每天的坚持兑换小愿望'}
                </p>
              </div>
              <ArrowRight aria-hidden="true" className="mt-2 h-5 w-5 text-amber-600 transition group-hover:translate-x-1" />
            </div>
          </Surface>
        </Link>

        <Link to="/leaderboard" aria-label="打开学习排行榜">
          <Surface className="group h-full overflow-hidden border-indigo-100 bg-adventure-primary-soft/70 transition hover:-translate-y-1 hover:shadow-xl hover:shadow-indigo-100/60">
            <div className="flex items-start gap-4">
              <span className="grid h-12 w-12 shrink-0 place-items-center rounded-[16px] bg-white text-adventure-primary">
                <Trophy aria-hidden="true" className="h-6 w-6" />
              </span>
              <div className="min-w-0 flex-1">
                <h2 className="text-lg font-black">学习排行榜</h2>
                <p className="mt-1 text-sm leading-6 text-adventure-muted">
                  看看本周与累计获得的学习荣誉
                </p>
              </div>
              <ArrowRight aria-hidden="true" className="mt-2 h-5 w-5 text-adventure-primary transition group-hover:translate-x-1" />
            </div>
          </Surface>
        </Link>
      </div>

      <Surface aria-label="成长回忆">
        <div className="flex items-center gap-3">
          <span className="grid h-11 w-11 place-items-center rounded-[14px] bg-adventure-success-soft text-adventure-success">
            <BookHeart aria-hidden="true" className="h-5 w-5" />
          </span>
          <div>
            <h2 className="font-extrabold">成长回忆</h2>
            <p className="text-sm text-adventure-muted">
              {diaryEntries.length > 0 ? `已经收藏 ${diaryEntries.length} 个努力瞬间` : '第一个愿望实现后，回忆会出现在这里'}
            </p>
          </div>
        </div>
      </Surface>
    </div>
  )
}
