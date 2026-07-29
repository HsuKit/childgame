import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { AnimatePresence, motion } from 'framer-motion'
import {
  getRedemptionStatusLabel,
  groupParentWishRedemptions,
  type WishRewardType,
} from '../lib/wishRewards'
import { useWishStore, type DiaryEntry, type WishRedemption } from '../stores/wishStore'
import { BookHeart, Gift, LockKeyhole, WalletCards } from 'lucide-react'
import { PageHeader } from '../components/ui/PageHeader'
import { StatePanel } from '../components/ui/StatePanel'
import { Surface } from '../components/ui/Surface'
import { getParentWishQueueCounts } from '../lib/parentWishView'

const REWARD_TYPE_OPTIONS: Array<{ value: WishRewardType; label: string }> = [
  { value: 'companionship', label: '陪伴' },
  { value: 'experience', label: '体验' },
  { value: 'item', label: '物品' },
  { value: 'open_wish', label: '开放愿望' },
]

const REWARD_TYPE_LABELS: Record<WishRewardType, string> = {
  companionship: '陪伴',
  experience: '体验',
  item: '物品',
  open_wish: '开放愿望',
}

function formatShortDate(value: string | null) {
  if (!value) return '未记录'
  return new Date(value).toLocaleDateString('zh-CN', { month: 'short', day: 'numeric' })
}

function ParentNoteInput({
  id,
  value,
  disabled,
  onChange,
}: {
  id: string
  value: string
  disabled: boolean
  onChange: (value: string) => void
}) {
  return (
    <textarea
      id={id}
      value={value}
      onChange={(event) => onChange(event.target.value)}
      rows={2}
      maxLength={120}
      disabled={disabled}
      className="mt-2 w-full resize-none rounded-2xl border border-gray-200 bg-gray-50 p-3 text-sm font-bold text-kid-text outline-none focus:border-kid-primary focus:bg-white disabled:opacity-60"
      placeholder="给孩子的一句话，可以留空"
    />
  )
}

function RedemptionCard({
  redemption,
  note,
  isBusy,
  mode,
  onNoteChange,
  onApprove,
  onReject,
  onFulfill,
}: {
  redemption: WishRedemption
  note: string
  isBusy: boolean
  mode: 'review' | 'fulfill'
  onNoteChange: (value: string) => void
  onApprove: () => void
  onReject: () => void
  onFulfill: () => void
}) {
  return (
    <div className="rounded-3xl border border-gray-100 bg-white p-4 shadow-sm shadow-gray-100">
      <div className="flex min-w-0 items-start justify-between gap-3">
        <div className="min-w-0 flex-1">
          <p className="break-words text-base font-extrabold text-kid-text">{redemption.reward_name}</p>
          <div className="mt-1 flex flex-wrap items-center gap-2 text-xs font-bold text-gray-400">
            <span className="rounded-full bg-orange-50 px-2.5 py-1 text-kid-warning">{redemption.reward_cost} 枚</span>
            <span>{REWARD_TYPE_LABELS[redemption.reward_type]}</span>
            <span>{formatShortDate(redemption.requested_at)}</span>
          </div>
        </div>
        <span className="shrink-0 rounded-full border border-amber-200 bg-amber-50 px-2.5 py-1 text-[11px] font-extrabold text-amber-600">
          {getRedemptionStatusLabel(redemption.status)}
        </span>
      </div>

      {redemption.child_note && (
        <p className="mt-3 break-words rounded-2xl bg-purple-50 p-3 text-xs font-bold leading-relaxed text-gray-600">
          孩子说：{redemption.child_note}
        </p>
      )}

      {mode === 'review' ? (
        <>
          <label className="mt-3 block text-sm font-extrabold text-kid-text" htmlFor={`parent-note-${redemption.id}`}>
            家长备注
          </label>
          <ParentNoteInput
            id={`parent-note-${redemption.id}`}
            value={note}
            disabled={isBusy}
            onChange={onNoteChange}
          />
          <div className="mt-3 grid grid-cols-2 gap-3">
            <button
              type="button"
              onClick={onReject}
              disabled={isBusy}
              className="rounded-2xl bg-rose-50 py-3 text-sm font-extrabold text-rose-500 disabled:opacity-60"
            >
              {isBusy ? '处理中...' : '退回'}
            </button>
            <button
              type="button"
              onClick={onApprove}
              disabled={isBusy}
              className="rounded-2xl bg-gradient-to-r from-kid-primary to-kid-pink py-3 text-sm font-extrabold text-white shadow-md shadow-purple-200/50 disabled:opacity-60"
            >
              {isBusy ? '处理中...' : '同意'}
            </button>
          </div>
        </>
      ) : (
        <div className="mt-3 space-y-3">
          {redemption.parent_note && (
            <p className="break-words rounded-2xl bg-emerald-50 p-3 text-xs font-bold leading-relaxed text-gray-600">
              家长备注：{redemption.parent_note}
            </p>
          )}
          <button
            type="button"
            onClick={onFulfill}
            disabled={isBusy}
            className="w-full rounded-2xl bg-emerald-500 py-3 text-sm font-extrabold text-white shadow-md shadow-emerald-100 disabled:opacity-60"
          >
            {isBusy ? '记录中...' : '标记为已兑现'}
          </button>
        </div>
      )}
    </div>
  )
}

function DiaryRow({ entry }: { entry: DiaryEntry }) {
  return (
    <div className="flex items-start gap-3 rounded-2xl border border-gray-100 bg-white px-4 py-3">
      <span className="mt-0.5 shrink-0 text-lg">📖</span>
      <div className="min-w-0 flex-1">
        <div className="flex min-w-0 items-center justify-between gap-3">
          <p className="min-w-0 truncate text-sm font-extrabold text-kid-text">{entry.title}</p>
          <span className="shrink-0 text-[11px] font-bold text-gray-400">{formatShortDate(entry.created_at)}</span>
        </div>
        <p className="mt-1 break-words text-xs leading-relaxed text-gray-500">{entry.description}</p>
      </div>
    </div>
  )
}

export default function ParentWishPage() {
  const navigate = useNavigate()
  const {
    balance,
    redemptions,
    diaryEntries,
    isLoading,
    message,
    fetchWishData,
    createReward,
    approveRedemption,
    rejectRedemption,
    fulfillRedemption,
    clearMessage,
  } = useWishStore()
  const [parentNotes, setParentNotes] = useState<Record<string, string>>({})
  const [busyId, setBusyId] = useState<string | null>(null)
  const [formError, setFormError] = useState<string | null>(null)
  const [actionError, setActionError] = useState<string | null>(null)
  const [isCreating, setIsCreating] = useState(false)
  const [form, setForm] = useState({
    name: '',
    description: '',
    type: 'companionship' as WishRewardType,
    cost: '6',
    availability_note: '',
  })

  useEffect(() => {
    fetchWishData().catch(() => setActionError('愿望数据暂时没有加载成功'))
  }, [fetchWishData])

  useEffect(() => {
    if (!message) return
    const timer = window.setTimeout(() => clearMessage(), 2400)
    return () => window.clearTimeout(timer)
  }, [message, clearMessage])

  const parentGroups = useMemo(() => groupParentWishRedemptions(redemptions), [redemptions])
  const recentDiaryEntries = diaryEntries.slice(0, 6)
  const queueCounts = getParentWishQueueCounts(redemptions, recentDiaryEntries.length)

  const updateParentNote = (redemptionId: string, value: string) => {
    setParentNotes((current) => ({ ...current, [redemptionId]: value }))
  }

  const runRedemptionAction = async (
    redemption: WishRedemption,
    action: (note: string) => Promise<void>,
  ) => {
    if (busyId) return
    setBusyId(redemption.id)
    setActionError(null)
    try {
      await action((parentNotes[redemption.id] ?? '').trim())
      updateParentNote(redemption.id, '')
    } catch {
      setActionError('操作暂时没有成功，请稍后再试')
    } finally {
      setBusyId(null)
    }
  }

  const handleCreateReward = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    const name = form.name.trim()
    const description = form.description.trim()
    const cost = Number(form.cost)

    if (!name || !description || !Number.isInteger(cost) || cost <= 0) {
      setFormError('请填写名称、描述，并输入大于 0 的整数愿望币')
      return
    }

    setIsCreating(true)
    setFormError(null)
    try {
      await createReward({
        name,
        description,
        type: form.type,
        cost,
        availability_note: form.availability_note.trim() || null,
      })
      setForm({
        name: '',
        description: '',
        type: 'companionship',
        cost: '6',
        availability_note: '',
      })
    } catch {
      setFormError('自定义奖励暂时没有创建成功')
    } finally {
      setIsCreating(false)
    }
  }

  return (
    <div className="page-stack">
      <PageHeader eyebrow="家长工具" title="家长愿望管理" subtitle="确认、兑现和维护孩子的愿望奖励。" onBack={() => navigate('/parent-report')} backLabel="返回家长报告" />

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

      {actionError && (
        <div role="alert" className="rounded-[16px] border border-rose-100 bg-rose-50 p-3 text-sm font-bold text-rose-600">
          {actionError}
        </div>
      )}

      <Surface tone="soft" className="border-cyan-100 bg-gradient-to-r from-emerald-50 via-cyan-50 to-indigo-50">
        <p className="flex items-center gap-2 text-sm font-extrabold text-adventure-text"><WalletCards aria-hidden="true" className="h-5 w-5 text-adventure-primary" />愿望币余额</p>
        <div className="mt-3 grid grid-cols-2 gap-3">
          <div className="rounded-2xl bg-white/80 p-3">
            <p className="text-xs font-bold text-adventure-muted">可用</p>
            <p className="text-3xl font-extrabold text-emerald-600">{balance.available}</p>
          </div>
          <div className="rounded-2xl bg-white/80 p-3">
            <p className="flex items-center gap-1 text-xs font-bold text-adventure-muted"><LockKeyhole aria-hidden="true" className="h-3.5 w-3.5" />确认中冻结</p>
            <p className="text-3xl font-extrabold text-amber-600">{balance.frozen}</p>
          </div>
          <div className="rounded-2xl bg-white/80 p-3">
            <p className="text-xs font-bold text-gray-400">累计获得</p>
            <p className="text-2xl font-extrabold text-kid-primary">{balance.totalEarned}</p>
          </div>
          <div className="rounded-2xl bg-white/80 p-3">
            <p className="text-xs font-bold text-gray-400">已兑现花费</p>
            <p className="text-2xl font-extrabold text-kid-pink">{balance.spent}</p>
          </div>
        </div>
      </Surface>

      <section>
        <div className="mb-3 flex items-center justify-between gap-3 px-1">
          <h2 className="section-title">待家长确认</h2>
          <span className="shrink-0 rounded-full bg-amber-50 px-3 py-1 text-xs font-extrabold text-amber-600">
            {queueCounts.pendingReview} 个
          </span>
        </div>
        <div className="space-y-3">
          {isLoading && parentGroups.pendingReview.length === 0 && <StatePanel tone="loading" title="正在加载愿望" />}
          {!isLoading && parentGroups.pendingReview.length === 0 && (
            <StatePanel tone="empty" title="现在没有待确认愿望" />
          )}
          {parentGroups.pendingReview.map((redemption) => (
            <RedemptionCard
              key={redemption.id}
              redemption={redemption}
              mode="review"
              note={parentNotes[redemption.id] ?? ''}
              isBusy={busyId !== null}
              onNoteChange={(value) => updateParentNote(redemption.id, value)}
              onApprove={() => runRedemptionAction(redemption, (note) => approveRedemption(redemption, note))}
              onReject={() => runRedemptionAction(redemption, (note) => rejectRedemption(redemption, note))}
              onFulfill={() => undefined}
            />
          ))}
        </div>
      </section>

      <section>
        <div className="mb-3 flex items-center justify-between gap-3 px-1">
          <h2 className="section-title">已同意待兑现</h2>
          <span className="shrink-0 rounded-full bg-emerald-50 px-3 py-1 text-xs font-extrabold text-emerald-600">
            {queueCounts.pendingFulfillment} 个
          </span>
        </div>
        <div className="space-y-3">
          {!isLoading && parentGroups.pendingFulfillment.length === 0 && (
            <StatePanel tone="empty" title="暂时没有待兑现愿望" />
          )}
          {parentGroups.pendingFulfillment.map((redemption) => (
            <RedemptionCard
              key={redemption.id}
              redemption={redemption}
              mode="fulfill"
              note=""
              isBusy={busyId !== null}
              onNoteChange={() => undefined}
              onApprove={() => undefined}
              onReject={() => undefined}
              onFulfill={() => runRedemptionAction(redemption, () => fulfillRedemption(redemption))}
            />
          ))}
        </div>
      </section>

      <Surface>
        <h2 className="section-title flex items-center gap-2"><Gift aria-hidden="true" className="h-5 w-5 text-adventure-primary" />自定义奖励</h2>
        <form className="mt-3 space-y-3" onSubmit={handleCreateReward}>
          <label htmlFor="reward-name" className="text-sm font-extrabold text-adventure-text">奖励名称</label>
          <input
            id="reward-name"
            value={form.name}
            onChange={(event) => setForm((current) => ({ ...current, name: event.target.value }))}
            maxLength={40}
            className="w-full rounded-2xl border border-gray-200 bg-gray-50 p-3 text-sm font-bold text-kid-text outline-none focus:border-kid-primary focus:bg-white"
            placeholder="例如：一起去公园"
          />
          <label htmlFor="reward-description" className="text-sm font-extrabold text-adventure-text">奖励描述</label>
          <textarea
            id="reward-description"
            value={form.description}
            onChange={(event) => setForm((current) => ({ ...current, description: event.target.value }))}
            rows={3}
            maxLength={140}
            className="w-full resize-none rounded-2xl border border-gray-200 bg-gray-50 p-3 text-sm font-bold text-kid-text outline-none focus:border-kid-primary focus:bg-white"
            placeholder="奖励描述"
          />
          <div className="grid grid-cols-2 gap-3">
            <select
              value={form.type}
              onChange={(event) => setForm((current) => ({ ...current, type: event.target.value as WishRewardType }))}
              className="min-w-0 rounded-2xl border border-gray-200 bg-gray-50 p-3 text-sm font-bold text-kid-text outline-none focus:border-kid-primary focus:bg-white"
            >
              {REWARD_TYPE_OPTIONS.map((option) => (
                <option key={option.value} value={option.value}>{option.label}</option>
              ))}
            </select>
            <input
              value={form.cost}
              onChange={(event) => setForm((current) => ({ ...current, cost: event.target.value }))}
              inputMode="numeric"
              pattern="[0-9]*"
              className="min-w-0 rounded-2xl border border-gray-200 bg-gray-50 p-3 text-sm font-bold text-kid-text outline-none focus:border-kid-primary focus:bg-white"
              placeholder="愿望币"
            />
          </div>
          <input
            value={form.availability_note}
            onChange={(event) => setForm((current) => ({ ...current, availability_note: event.target.value }))}
            maxLength={80}
            className="w-full rounded-2xl border border-gray-200 bg-gray-50 p-3 text-sm font-bold text-kid-text outline-none focus:border-kid-primary focus:bg-white"
            placeholder="可用说明，例如周末或假期"
          />
          {formError && <p className="break-words text-sm font-bold text-rose-600" role="alert">{formError}</p>}
          <button
            type="submit"
            disabled={isCreating}
            className="w-full rounded-2xl bg-gradient-to-r from-kid-primary to-kid-pink py-3 text-sm font-extrabold text-white shadow-md shadow-purple-200/50 disabled:opacity-60"
          >
            {isCreating ? '创建中...' : '创建自定义奖励'}
          </button>
        </form>
      </Surface>

      <section>
        <h2 className="section-title mb-3 flex items-center gap-2"><BookHeart aria-hidden="true" className="h-5 w-5 text-adventure-primary" />最近愿望日记 <span className="text-xs text-adventure-muted">({queueCounts.recentDiary})</span></h2>
        <div className="space-y-2">
          {recentDiaryEntries.length === 0 && (
            <StatePanel tone="empty" title="愿望实现后会记录在这里" />
          )}
          {recentDiaryEntries.map((entry) => <DiaryRow key={entry.id} entry={entry} />)}
        </div>
      </section>
    </div>
  )
}
