import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { AnimatePresence, motion } from 'framer-motion'
import { WISH_REWARD_GROUPS, groupWishRewards, resolveVisibleWishRewards, type WishRedemptionStatus as RedemptionStatus } from '../lib/wishRewards'
import { useWishStore, type WishReward } from '../stores/wishStore'
import { WishBalanceBadge } from '../components/wish/WishBalanceBadge'
import { WishRedemptionStatus } from '../components/wish/WishRedemptionStatus'
import { WishRewardCard } from '../components/wish/WishRewardCard'

function isActiveRedemptionStatus(status: RedemptionStatus) {
  return status === 'pending_parent_review' || status === 'approved_pending_fulfillment'
}

function formatShortDate(value: string) {
  return new Date(value).toLocaleDateString('zh-CN', { month: 'short', day: 'numeric' })
}

export default function WishShopPage() {
  const navigate = useNavigate()
  const {
    balance,
    rewards,
    redemptions,
    diaryEntries,
    isLoading,
    message,
    fetchWishData,
    submitRedemption,
    clearMessage,
  } = useWishStore()
  const [selectedReward, setSelectedReward] = useState<WishReward | null>(null)
  const [childNote, setChildNote] = useState('')
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState<string | null>(null)

  useEffect(() => {
    fetchWishData().catch(() => undefined)
  }, [fetchWishData])

  useEffect(() => {
    if (!message) return
    const timer = window.setTimeout(() => clearMessage(), 2200)
    return () => window.clearTimeout(timer)
  }, [message, clearMessage])

  const visibleRewards = useMemo(() => resolveVisibleWishRewards(rewards) as WishReward[], [rewards])
  const groupedRewards = useMemo(() => groupWishRewards(visibleRewards), [visibleRewards])
  const activeRedemptions = redemptions.filter(redemption => isActiveRedemptionStatus(redemption.status))
  const recentDiaryEntries = diaryEntries.slice(0, 4)

  const openRequestDialog = (reward: WishReward) => {
    setSelectedReward(reward)
    setChildNote('')
    setSubmitError(null)
  }

  const closeRequestDialog = () => {
    if (isSubmitting) return
    setSelectedReward(null)
    setChildNote('')
    setSubmitError(null)
  }

  const handleSubmit = async () => {
    if (!selectedReward) return
    setIsSubmitting(true)
    setSubmitError(null)
    try {
      const ok = await submitRedemption(selectedReward, childNote.trim())
      if (ok) {
        setSelectedReward(null)
        setChildNote('')
      } else {
        setSubmitError('愿望币还不够哦')
      }
    } catch {
      setSubmitError('愿望暂时没有提交成功，等一下再试试')
    } finally {
      setIsSubmitting(false)
    }
  }

  return (
    <div className="p-4 space-y-5 pb-6">
      <div className="flex items-center justify-between gap-3">
        <motion.button
          type="button"
          whileTap={{ scale: 0.92 }}
          onClick={() => navigate(-1)}
          className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-white text-lg shadow-md shadow-gray-100/70 border border-gray-100"
          aria-label="返回"
        >
          ←
        </motion.button>
        <div className="min-w-0 flex-1 text-center">
          <h1 className="truncate text-2xl font-extrabold bg-gradient-to-r from-kid-primary to-kid-pink bg-clip-text text-transparent">
            愿望商店
          </h1>
          <p className="mt-1 truncate text-xs font-bold text-gray-400">用认真练习攒下的小愿望</p>
        </div>
        <WishBalanceBadge available={balance.available} frozen={balance.frozen} />
      </div>

      <AnimatePresence>
        {message && (
          <motion.div
            initial={{ opacity: 0, y: -10 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -10 }}
            className="rounded-2xl border border-purple-200 bg-gradient-to-r from-purple-50 to-pink-50 p-4 text-center text-sm font-extrabold text-kid-primary"
          >
            {message}
          </motion.div>
        )}
      </AnimatePresence>

      <section className="rounded-3xl bg-gradient-to-r from-emerald-50 via-cyan-50 to-purple-50 p-4 border border-cyan-100">
        <div className="flex items-center gap-3">
          <span className="text-3xl">🌈</span>
          <div className="min-w-0">
            <p className="font-extrabold text-kid-text">每天完成三科练习，就能攒一枚愿望币</p>
            <p className="mt-1 text-xs leading-relaxed text-gray-500">小目标慢慢实现，爸妈确认后愿望币会先冻结起来。</p>
          </div>
        </div>
      </section>

      {activeRedemptions.length > 0 && (
        <section>
          <h2 className="mb-3 px-1 text-lg font-extrabold text-kid-text">正在等待的愿望</h2>
          <div className="space-y-3">
            {activeRedemptions.map(redemption => (
              <div key={redemption.id} className="rounded-3xl border border-amber-100 bg-white p-4 shadow-sm shadow-amber-100/40">
                <div className="flex min-w-0 items-start justify-between gap-3">
                  <div className="min-w-0 flex-1">
                    <p className="break-words text-sm font-extrabold text-kid-text">{redemption.reward_name}</p>
                    <p className="mt-1 text-xs font-bold text-amber-500">🎁 {redemption.reward_cost} 枚</p>
                    {redemption.child_note && (
                      <p className="mt-2 break-words text-xs leading-relaxed text-gray-500">{redemption.child_note}</p>
                    )}
                  </div>
                  <WishRedemptionStatus status={redemption.status} />
                </div>
              </div>
            ))}
          </div>
        </section>
      )}

      <section className="space-y-5">
        {isLoading && rewards.length === 0 && (
          <div className="rounded-3xl border border-gray-100 bg-white p-5 text-center text-sm font-bold text-gray-400">
            正在加载愿望...
          </div>
        )}

        {WISH_REWARD_GROUPS.map(group => {
          const groupRewards = groupedRewards[group.id]
          if (groupRewards.length === 0) return null

          return (
            <div key={group.id}>
              <div className="mb-3 flex items-end justify-between gap-3 px-1">
                <h2 className="text-lg font-extrabold text-kid-text">{group.label}</h2>
                <span className="shrink-0 text-xs font-bold text-gray-400">
                  {group.max === Infinity ? `${group.min}+` : `${group.min}-${group.max}`} 枚
                </span>
              </div>
              <div className="grid gap-3">
                {groupRewards.map(reward => (
                  <WishRewardCard
                    key={reward.id}
                    reward={reward}
                    available={balance.available}
                    onRequest={openRequestDialog}
                  />
                ))}
              </div>
            </div>
          )
        })}

        {!isLoading && rewards.length === 0 && (
          <p className="px-1 text-center text-xs font-bold leading-relaxed text-gray-400">
            这是默认愿望清单，爸妈还可以在家长愿望管理里添加专属奖励。
          </p>
        )}
      </section>

      {recentDiaryEntries.length > 0 && (
        <section>
          <h2 className="mb-3 px-1 text-lg font-extrabold text-kid-text">最近的愿望日记</h2>
          <div className="space-y-2">
            {recentDiaryEntries.map(entry => (
              <div key={entry.id} className="flex items-start gap-3 rounded-2xl bg-white px-4 py-3 border border-gray-100">
                <span className="mt-0.5 text-lg">📖</span>
                <div className="min-w-0 flex-1">
                  <div className="flex min-w-0 items-center justify-between gap-3">
                    <p className="min-w-0 truncate text-sm font-extrabold text-kid-text">{entry.title}</p>
                    <span className="shrink-0 text-[11px] font-bold text-gray-400">{formatShortDate(entry.created_at)}</span>
                  </div>
                  <p className="mt-1 break-words text-xs leading-relaxed text-gray-500">{entry.description}</p>
                </div>
              </div>
            ))}
          </div>
        </section>
      )}

      <AnimatePresence>
        {selectedReward && (
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            className="fixed inset-0 z-50 flex items-end justify-center bg-black/45 p-4"
            onClick={closeRequestDialog}
          >
            <motion.div
              initial={{ y: 40, opacity: 0 }}
              animate={{ y: 0, opacity: 1 }}
              exit={{ y: 40, opacity: 0 }}
              className="w-full max-w-md rounded-3xl bg-white p-5 shadow-2xl"
              onClick={event => event.stopPropagation()}
              role="dialog"
              aria-modal="true"
              aria-label="提交愿望"
            >
              <div className="flex min-w-0 items-start justify-between gap-3">
                <div className="min-w-0">
                  <p className="break-words text-lg font-extrabold text-kid-text">{selectedReward.name}</p>
                  <p className="mt-1 break-words text-sm leading-relaxed text-gray-500">{selectedReward.description}</p>
                </div>
                <span className="shrink-0 rounded-full bg-orange-50 px-3 py-1.5 text-sm font-extrabold text-kid-warning">
                  🎁 {selectedReward.cost}
                </span>
              </div>

              <label className="mt-4 block text-sm font-extrabold text-kid-text" htmlFor="wish-note">
                想和爸妈说的话
              </label>
              <textarea
                id="wish-note"
                value={childNote}
                onChange={event => setChildNote(event.target.value)}
                rows={3}
                maxLength={120}
                className="mt-2 w-full resize-none rounded-2xl border border-gray-200 bg-gray-50 p-3 text-sm font-bold text-kid-text outline-none focus:border-kid-primary focus:bg-white"
                placeholder="可以不写，也可以说说为什么想要这个愿望"
              />
              <div className="mt-1 text-right text-[11px] font-bold text-gray-400">{childNote.length}/120</div>

              {submitError && <p className="mt-2 text-sm font-bold text-rose-500">{submitError}</p>}

              <div className="mt-4 grid grid-cols-2 gap-3">
                <button
                  type="button"
                  onClick={closeRequestDialog}
                  disabled={isSubmitting}
                  className="rounded-2xl bg-gray-100 py-3 text-sm font-extrabold text-gray-500 disabled:opacity-60"
                >
                  再想想
                </button>
                <button
                  type="button"
                  onClick={handleSubmit}
                  disabled={isSubmitting}
                  className="rounded-2xl bg-gradient-to-r from-kid-primary to-kid-pink py-3 text-sm font-extrabold text-white shadow-md shadow-purple-200/50 disabled:opacity-60"
                >
                  {isSubmitting ? '提交中...' : '提交愿望'}
                </button>
              </div>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  )
}
