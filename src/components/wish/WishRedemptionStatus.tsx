import { getRedemptionStatusLabel, type WishRedemptionStatus as Status } from '../../lib/wishRewards'

interface WishRedemptionStatusProps {
  status: Status
}

const statusStyles: Record<Status, string> = {
  pending_parent_review: 'bg-amber-50 text-amber-600 border-amber-200',
  approved_pending_fulfillment: 'bg-emerald-50 text-emerald-600 border-emerald-200',
  fulfilled: 'bg-sky-50 text-sky-600 border-sky-200',
  rejected: 'bg-rose-50 text-rose-500 border-rose-200',
  cancelled: 'bg-gray-50 text-gray-500 border-gray-200',
}

export function WishRedemptionStatus({ status }: WishRedemptionStatusProps) {
  return (
    <span className={`inline-flex max-w-full items-center rounded-full border px-2.5 py-1 text-[11px] font-extrabold ${statusStyles[status]}`}>
      <span className="min-w-0 truncate">{getRedemptionStatusLabel(status)}</span>
    </span>
  )
}
