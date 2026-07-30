import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { AnimatePresence, motion } from 'framer-motion'
import { WISH_REWARD_GROUPS, groupWishRewards, resolveVisibleWishRewards, type WishRedemptionStatus as RedemptionStatus } from '../lib/wishRewards'
import { WISH_DIALOG_OVERLAY_CLASS, WISH_DIALOG_PANEL_CLASS } from '../lib/wishDialogLayout'
import { useWishStore, type WishReward } from '../stores/wishStore'
import { WishBalanceBadge } from '../components/wish/WishBalanceBadge'
import { WishRedemptionStatus } from '../components/wish/WishRedemptionStatus'
import { WishRewardCard } from '../components/wish/WishRewardCard'
import { BookHeart, Gift, Rainbow, RefreshCw, X } from 'lucide-react'
import { PageHeader } from '../components/ui/PageHeader'
import { StatePanel } from '../components/ui/StatePanel'
import { Button } from '../components/ui/Button'

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
  const [loadError, setLoadError] = useState(false)

  useEffect(() => {
    setLoadError(false)
    fetchWishData().catch(() => setLoadError(true))
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
  const isFallbackCatalog = rewards.length === 0
  const catalogReadOnly = isFallbackCatalog

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
    <div className="page-stack">
      <PageHeader
        eyebrow="奖励营地"
        title="愿望商店"
        subtitle="用认真练习攒下的愿望币，让小目标慢慢实现。"
        onBack={() => navigate(-1)}
        backLabel="返回奖励营地"
        trailing={<WishBalanceBadge available={balance.available} frozen={balance.frozen} />}
      />

      <AnimatePresence>
        {message && (
          <motion.div
            initial={{ opacity: 0, y: -10 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -10 }}
            role="status"
            className="rounded-[16px] border border-indigo-200 bg-adventure-primary-soft p-4 text-center text-sm font-extrabold text-adventure-primary"
          >
            {message}
          </motion.div>
        )}
      </AnimatePresence>

      <section className="rounded-[18px] border border-cyan-100 bg-gradient-to-r from-emerald-50 via-cyan-50 to-indigo-50 p-4">
        <div className="flex items-center gap-3">
          <span className="grid h-11 w-11 shrink-0 place-items-center rounded-[14px] bg-white text-cyan-600"><Rainbow aria-hidden="true" className="h-6 w-6" /></span>
          <div className="min-w-0">
            <p className="font-extrabold text-adventure-text">每天完成三科练习，就能攒一枚愿望币</p>
            <p className="mt-1 text-xs leading-relaxed text-adventure-muted">提交后由家长确认，处理期间愿望币会暂时冻结。</p>
          </div>
        </div>
      </section>

      {activeRedemptions.length > 0 && (
        <section>
          <h2 className="section-title mb-3">正在等待的愿望</h2>
          <div className="space-y-3">
            {activeRedemptions.map(redemption => (
              <div key={redemption.id} className="rounded-[18px] border border-amber-100 bg-white p-4 shadow-sm shadow-amber-100/40">
                <div className="flex min-w-0 items-start justify-between gap-3">
                  <div className="min-w-0 flex-1">
                    <p className="break-words text-sm font-extrabold text-adventure-text">{redemption.reward_name}</p>
                    <p className="mt-1 flex items-center gap-1 text-xs font-bold text-amber-600"><Gift aria-hidden="true" className="h-3.5 w-3.5" />{redemption.reward_cost} 枚</p>
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
        {isLoading && rewards.length === 0 && <StatePanel tone="loading" title="正在加载愿望" />}
        {loadError && (
          <div
            role="status"
            className="flex flex-col gap-3 rounded-[16px] border border-amber-200 bg-adventure-warning-soft p-4 sm:flex-row sm:items-center sm:justify-between"
          >
            <div>
              <p className="font-extrabold text-amber-900">数据暂未同步</p>
              <p className="mt-1 text-xs leading-relaxed text-amber-800">
                可以先浏览默认愿望；余额和申请记录恢复同步后才能提交。
              </p>
            </div>
            <Button
              variant="secondary"
              icon={<RefreshCw aria-hidden="true" className="h-4 w-4" />}
              onClick={() => {
                setLoadError(false)
                void fetchWishData().catch(() => setLoadError(true))
              }}
            >
              重新同步
            </Button>
          </div>
        )}

        {WISH_REWARD_GROUPS.map(group => {
          const groupRewards = groupedRewards[group.id]
          if (groupRewards.length === 0) return null

          return (
            <div key={group.id}>
              <div className="mb-3 flex items-end justify-between gap-3 px-1">
                <h2 className="section-title">{group.label}</h2>
                <span className="shrink-0 text-xs font-bold text-adventure-muted">
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
                    readOnly={catalogReadOnly}
                  />
                ))}
              </div>
            </div>
          )
        })}

        {!isLoading && isFallbackCatalog && (
          <p className="px-1 text-center text-xs font-bold leading-relaxed text-adventure-muted">
            这是默认愿望清单，爸妈还可以在家长愿望管理里添加专属奖励。
          </p>
        )}
      </section>

      {recentDiaryEntries.length > 0 && (
        <section>
          <h2 className="section-title mb-3">最近的愿望日记</h2>
          <div className="space-y-2">
            {recentDiaryEntries.map(entry => (
              <div key={entry.id} className="flex items-start gap-3 rounded-[16px] border border-adventure-border bg-white px-4 py-3">
                <BookHeart aria-hidden="true" className="mt-0.5 h-5 w-5 shrink-0 text-adventure-primary" />
                <div className="min-w-0 flex-1">
                  <div className="flex min-w-0 items-center justify-between gap-3">
                    <p className="min-w-0 truncate text-sm font-extrabold text-adventure-text">{entry.title}</p>
                    <span className="shrink-0 text-[11px] font-bold text-adventure-muted">{formatShortDate(entry.created_at)}</span>
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
            className={WISH_DIALOG_OVERLAY_CLASS}
            onClick={closeRequestDialog}
          >
            <motion.div
              initial={{ y: 40, opacity: 0 }}
              animate={{ y: 0, opacity: 1 }}
              exit={{ y: 40, opacity: 0 }}
              className={WISH_DIALOG_PANEL_CLASS}
              onClick={event => event.stopPropagation()}
              role="dialog"
              aria-modal="true"
              aria-labelledby="wish-dialog-title"
            >
              <div className="flex min-w-0 items-start justify-between gap-3">
                <div className="min-w-0">
                  <h2 id="wish-dialog-title" className="break-words text-lg font-extrabold text-adventure-text">{selectedReward.name}</h2>
                  <p className="mt-1 break-words text-sm leading-relaxed text-adventure-muted">{selectedReward.description}</p>
                </div>
                <button type="button" onClick={closeRequestDialog} disabled={isSubmitting} aria-label="关闭愿望提交窗口" className="grid min-h-11 min-w-11 place-items-center rounded-[14px] text-adventure-muted"><X aria-hidden="true" className="h-5 w-5" /></button>
              </div>
              <p className="mt-3 inline-flex items-center gap-1 rounded-full bg-adventure-warning-soft px-3 py-1.5 text-sm font-extrabold text-amber-700"><Gift aria-hidden="true" className="h-4 w-4" />{selectedReward.cost} 枚愿望币</p>

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

              {submitError && <p className="mt-2 text-sm font-bold text-rose-600" role="alert">{submitError}</p>}

              <div className="mt-4 grid grid-cols-2 gap-3">
                <Button variant="ghost"
                  onClick={closeRequestDialog}
                  disabled={isSubmitting}
                >
                  再想想
                </Button>
                <Button
                  onClick={handleSubmit}
                  disabled={isSubmitting}
                  loading={isSubmitting}
                >
                  {isSubmitting ? '提交中' : '提交愿望'}
                </Button>
              </div>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  )
}
