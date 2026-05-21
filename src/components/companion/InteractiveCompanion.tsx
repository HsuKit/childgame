import { useState, useCallback } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { useCompanionStore } from '../../stores/companionStore'
import { COMPANION_TYPES } from '../../data/companionTypes'
import { ChibiComposer } from './ChibiComposer'

export function InteractiveCompanion({ size = 'normal' }: { size?: 'small' | 'normal' | 'large' }) {
  const { companion } = useCompanionStore()
  const [tapCount, setTapCount] = useState(0)
  const [hearts, setHearts] = useState<Array<{ id: number; x: number; y: number }>>([])
  const [lastTapTime, setLastTapTime] = useState(0)

  const handleTap = useCallback((e: React.MouseEvent) => {
    const now = Date.now()
    const rect = e.currentTarget.getBoundingClientRect()
    const x = e.clientX - rect.left
    const y = e.clientY - rect.top
    if (now - lastTapTime < 400) setTapCount(c => c + 1)
    else setTapCount(0)
    setLastTapTime(now)
    setHearts(prev => [...prev, { id: Date.now(), x, y }])
    setTimeout(() => setHearts(prev => prev.slice(1)), 1000)
  }, [lastTapTime])

  if (!companion) return null

  const variant = companion.equipped_outfit
    || COMPANION_TYPES.find(c => c.id === companion.companion_type)?.baseVariant
    || 'Forest_Ranger_1'

  return (
    <div className="relative mx-auto flex justify-center">
      <AnimatePresence>
        {hearts.map(h => (
          <motion.div key={h.id}
            initial={{ opacity: 1, scale: 0, x: h.x, y: h.y }}
            animate={{ opacity: 0, scale: 1.2, y: h.y - 60, x: h.x + (Math.random() - 0.5) * 40 }}
            exit={{ opacity: 0 }} transition={{ duration: 0.8 }}
            className="absolute text-sm pointer-events-none z-20">
            {tapCount >= 3 ? '⭐' : '💕'}
          </motion.div>
        ))}
      </AnimatePresence>

      <div onClick={handleTap}>
        <ChibiComposer variant={variant} size={size === 'large' ? 'large' : 'normal'} />
      </div>

      <motion.div className="absolute -top-1 -right-1 bg-white rounded-full w-6 h-6 flex items-center justify-center text-xs shadow-md"
        animate={{ scale: [1, 1.1, 1] }} transition={{ duration: 2, repeat: Infinity }}>
        {companion.hunger < 30 ? '😢' : companion.mood > 80 ? '😄' : '😊'}
      </motion.div>
    </div>
  )
}
