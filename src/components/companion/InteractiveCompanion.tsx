import { useState, useCallback } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { useCompanionStore } from '../../stores/companionStore'
import { COMPANION_TYPES } from '../../data/companionTypes'
import { ChibiComposer } from './ChibiComposer'

function getEvolutionName(type: string, stage: number): string {
  const def = COMPANION_TYPES.find(c => c.id === type)
  return def?.name ?? type
}

export function InteractiveCompanion({ size = 'normal' }: { size?: 'small' | 'normal' | 'large' }) {
  const { companion } = useCompanionStore()
  const [tapCount, setTapCount] = useState(0)
  const [hearts, setHearts] = useState<Array<{ id: number; x: number; y: number }>>([])
  const [lastTapTime, setLastTapTime] = useState(0)
  const containerSizes = { small: 'w-16', normal: 'w-24', large: 'w-32' }

  const handleTap = useCallback((e: React.MouseEvent) => {
    const now = Date.now()
    const rect = e.currentTarget.getBoundingClientRect()
    const x = e.clientX - rect.left
    const y = e.clientY - rect.top
    if (now - lastTapTime < 400) setTapCount(c => c + 1)
    else setTapCount(0)
    setLastTapTime(now)
    const id = Date.now()
    setHearts(prev => [...prev, { id, x, y }])
    setTimeout(() => setHearts(prev => prev.filter(h => h.id !== id)), 1000)
  }, [lastTapTime])

  if (!companion) return null

  const stage = companion.level >= 20 ? 4 : companion.level >= 10 ? 3 : companion.level >= 5 ? 2 : 1
  const variant = companion.equipped_outfit || COMPANION_TYPES.find(c => c.id === companion.companion_type)?.baseVariant || 'Forest_Ranger_1'
  const expression = companion.hunger < 30 ? 3 : companion.mood > 80 ? 1 : 2

  return (
    <div className={`relative ${containerSizes[size]} mx-auto`}>
      <AnimatePresence>
        {hearts.map(h => (
          <motion.div key={h.id}
            initial={{ opacity: 1, scale: 0, x: h.x, y: h.y }}
            animate={{ opacity: 0, scale: 1, y: h.y - 50, x: h.x + (Math.random() - 0.5) * 30 }}
            exit={{ opacity: 0 }} transition={{ duration: 0.8 }}
            className="absolute text-xs pointer-events-none z-20">
            {tapCount >= 3 ? '⭐' : '💕'}
          </motion.div>
        ))}
      </AnimatePresence>

      <div onClick={handleTap}>
        <ChibiComposer variant={variant} expression={expression}
          size={size === 'large' ? 'large' : 'normal'} />
      </div>

      <motion.div className="absolute -top-2 -right-2 bg-white rounded-full w-7 h-7 flex items-center justify-center text-sm shadow-md"
        animate={{ scale: [1, 1.1, 1] }} transition={{ duration: 2, repeat: Infinity }}>
        {companion.hunger < 30 ? '😢' : companion.mood > 80 ? '😄' : '😊'}
      </motion.div>

      <div className="text-center mt-1">
        <span className="text-xs bg-gradient-to-r from-amber-100 to-orange-100 text-amber-700 px-2 py-0.5 rounded-full font-bold">
          {getEvolutionName(companion.companion_type, stage)}
        </span>
      </div>
    </div>
  )
}
