import { motion, AnimatePresence } from 'framer-motion'

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
        className="fixed inset-0 bg-black/50 flex items-center justify-center z-50"
        onClick={onCancel}>
        <motion.div initial={{ scale: 0.8 }} animate={{ scale: 1 }}
          className="bg-white rounded-3xl p-6 text-center mx-4 max-w-sm w-full"
          onClick={e => e.stopPropagation()}>
          <p className="text-4xl mb-3">🔄</p>
          <h3 className="text-lg font-extrabold text-kid-text">切换到{companionName}?</h3>
          <p className="text-sm text-gray-500 mt-2">
            每次更换伙伴需要扣除 <span className="text-kid-warning font-bold">{cost} ⭐</span>
          </p>
          <p className="text-xs text-gray-400 mt-1">切换后保留等级和已解锁外观</p>
          <div className="flex gap-3 mt-5">
            <button onClick={onCancel}
              className="flex-1 py-3 rounded-2xl bg-gray-100 font-bold text-gray-500">取消</button>
            <button onClick={onConfirm}
              className="flex-1 py-3 rounded-2xl bg-gradient-to-r from-kid-primary to-kid-primary-light text-white font-bold shadow-md">
              确认更换 ({cost}⭐)
            </button>
          </div>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  )
}
