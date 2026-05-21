import { useState, useCallback } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import Lottie from 'lottie-react'
import { useCompanionStore } from '../../stores/companionStore'
import { STARTER_COMPANIONS } from '../../data/companionTypes'
import { EquipmentOverlay } from './EquipmentOverlay'
import { IDLE_PULSE } from '../../data/companionAnimations'

function getCompanionImage(type: string): string {
  return STARTER_COMPANIONS.find(c => c.id === type)?.baseImage ?? '/companions/default.png'
}

function getEvolutionName(type: string, stage: number): string {
  const def = STARTER_COMPANIONS.find(c => c.id === type)
  return def?.evolutionStages?.[stage - 1] ?? `阶段${stage}`
}

export function InteractiveCompanion({ size = 'normal' }: { size?: 'small' | 'normal' | 'large' }) {
  const { companion } = useCompanionStore()
  const [tapCount, setTapCount] = useState(0)
  const [hearts, setHearts] = useState<Array<{ id: number; x: number; y: number }>>([])
  const [lastTapTime, setLastTapTime] = useState(0)

  const sizeMap = { small: 'w-16 h-16', normal: 'w-24 h-24', large: 'w-32 h-32' }
  const imgSizeMap = { small: 'w-12 h-12', normal: 'w-20 h-20', large: 'w-28 h-28' }
  const containerSize = sizeMap[size]
  const imgSize = imgSizeMap[size]

  const handleTap = useCallback((e: React.MouseEvent) => {
    const now = Date.now()
    const rect = e.currentTarget.getBoundingClientRect()
    const x = e.clientX - rect.left
    const y = e.clientY - rect.top

    if (now - lastTapTime < 400) {
      setTapCount(c => c + 1)
    } else {
      setTapCount(0)
    }
    setLastTapTime(now)

    // Spawn heart particle
    const id = Date.now()
    setHearts(prev => [...prev, { id, x, y }])
    setTimeout(() => setHearts(prev => prev.filter(h => h.id !== id)), 1000)
  }, [lastTapTime])

  if (!companion) return null

  const stage = companion.level >= 20 ? 4 : companion.level >= 10 ? 3 : companion.level >= 5 ? 2 : 1
  const isDizzy = tapCount >= 3

  // Mood-based expression
  let moodEmoji = '😊'
  if (companion.hunger < 30) moodEmoji = '😢'
  else if (companion.hunger < 50) moodEmoji = '😐'
  else if (companion.mood > 80) moodEmoji = '😄'
  if (isDizzy) moodEmoji = '😵'

  return (
    <div className="relative">
      <motion.div
        onClick={handleTap}
        animate={
          isDizzy
            ? { rotate: [0, -15, 15, -10, 10, 0], scale: [1, 0.9, 1] }
            : { scale: [1, 1.03, 1], y: [0, -4, 0] }
        }
        transition={
          isDizzy
            ? { duration: 0.6 }
            : { repeat: Infinity, duration: 3, ease: 'easeInOut' }
        }
        className={`${containerSize} bg-gradient-to-b from-purple-100 to-blue-100 rounded-full flex items-center justify-center overflow-hidden mx-auto cursor-pointer
          shadow-lg hover:shadow-xl transition-shadow`}
        whileHover={{ scale: 1.08 }}
        whileTap={{ scale: 0.92 }}
      >
        {/* Lottie pulse behind companion */}
        <div className="absolute inset-0 opacity-30 pointer-events-none">
          <Lottie animationData={IDLE_PULSE} loop={true} />
        </div>
        <motion.img
          src={getCompanionImage(companion.companion_type)}
          alt={companion.name}
          className={`${imgSize} object-contain pointer-events-none relative z-10`}
          animate={{ rotate: [0, 1, -1, 0] }}
          transition={{ repeat: Infinity, duration: 4, ease: 'easeInOut' }}
        />
        <EquipmentOverlay itemIds={(companion.equipped_items as string[]) || []} size={size} />
      </motion.div>

      {/* Mood emoji bubble */}
      <motion.div
        className="absolute -top-1 -right-1 text-lg pointer-events-none"
        animate={{ scale: [1, 1.2, 1] }}
        transition={{ duration: 1.5, repeat: Infinity }}
      >
        {moodEmoji}
      </motion.div>

      {/* Hearts */}
      <AnimatePresence>
        {hearts.map(h => (
          <motion.div
            key={h.id}
            initial={{ opacity: 1, scale: 0, x: h.x - 30, y: h.y }}
            animate={{ opacity: 0, scale: 1, y: h.y - 60, x: h.x - 30 + (Math.random() - 0.5) * 40 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.8 }}
            className="absolute text-sm pointer-events-none z-10"
          >
            {tapCount >= 3 ? '⭐' : '💕'}
          </motion.div>
        ))}
      </AnimatePresence>

      {/* Evolution stage badge */}
      <div className="text-center mt-1">
        <span className="text-xs bg-gradient-to-r from-purple-100 to-pink-100 text-purple-600 px-2 py-0.5 rounded-full">
          {getEvolutionName(companion.companion_type, stage)}
        </span>
      </div>
    </div>
  )
}
