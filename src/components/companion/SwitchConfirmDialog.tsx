import { motion, AnimatePresence } from 'framer-motion'
import { RefreshCw } from 'lucide-react'
import { Button } from '../ui/Button'

interface Props {
  companionName: string
  cost: number
  onConfirm: () => void
  onCancel: () => void
}

export function SwitchConfirmDialog({ companionName, cost, onConfirm, onCancel }: Props) {
  return (
    <AnimatePresence>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/50 p-4"
        onClick={onCancel}>
        <motion.div initial={{ scale: 0.8 }} animate={{ scale: 1 }}
          role="dialog" aria-modal="true" aria-labelledby="switch-companion-title"
          className="w-full max-w-sm rounded-[22px] bg-white p-6 text-center shadow-2xl"
          onClick={e => e.stopPropagation()}>
          <RefreshCw aria-hidden="true" className="mx-auto mb-3 h-9 w-9 text-adventure-primary" />
          <h3 id="switch-companion-title" className="text-lg font-extrabold text-adventure-text">切换到{companionName}？</h3>
          <p className="mt-2 text-sm text-adventure-muted">
            首次解锁需要 <span className="font-bold text-amber-600">{cost} 积分</span>
          </p>
          <p className="mt-1 text-xs text-adventure-muted">切换后保留等级和已解锁外观。</p>
          <div className="mt-5 grid grid-cols-2 gap-3">
            <Button variant="ghost" onClick={onCancel}>取消</Button>
            <Button onClick={onConfirm}>确认解锁</Button>
          </div>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  )
}
