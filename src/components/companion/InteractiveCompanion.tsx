import { useState, useCallback, useEffect, useRef } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { useCompanionStore } from '../../stores/companionStore'
import { COMPANION_TYPES } from '../../data/companionTypes'
import { ChibiComposer } from './ChibiComposer'

export function InteractiveCompanion({ size = 'normal' }: { size?: 'small' | 'normal' | 'large' }) {
  const { companion } = useCompanionStore()
  const [hearts, setHearts] = useState<Array<{ id: number; x: number; y: number; drift: number; icon: string }>>([])
  const lastTapTimeRef = useRef(0)
  const tapCountRef = useRef(0)
  const effectIdRef = useRef(0)
  const timersRef = useRef(new Set<ReturnType<typeof setTimeout>>())

  useEffect(() => () => {
    timersRef.current.forEach(timer => clearTimeout(timer))
    timersRef.current.clear()
  }, [])

  const emitHearts = useCallback((x: number, y: number) => {
    const now = Date.now()
    tapCountRef.current = now - lastTapTimeRef.current < 400 ? tapCountRef.current + 1 : 0
    lastTapTimeRef.current = now
    const id = ++effectIdRef.current
    setHearts(prev => [...prev, {
      id,
      x,
      y,
      drift: (Math.random() - 0.5) * 40,
      icon: tapCountRef.current >= 3 ? '⭐' : '💕',
    }])
    const timer = setTimeout(() => {
      timersRef.current.delete(timer)
      setHearts(prev => prev.filter(heart => heart.id !== id))
    }, 1000)
    timersRef.current.add(timer)
  }, [])

  const handlePointerDown = useCallback((e: React.PointerEvent<HTMLDivElement>) => {
    const rect = e.currentTarget.getBoundingClientRect()
    emitHearts(e.clientX - rect.left, e.clientY - rect.top)
  }, [emitHearts])

  const handleKeyDown = useCallback((e: React.KeyboardEvent<HTMLDivElement>) => {
    if (e.key !== 'Enter' && e.key !== ' ') return
    e.preventDefault()
    const rect = e.currentTarget.getBoundingClientRect()
    emitHearts(rect.width / 2, rect.height / 2)
  }, [emitHearts])

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
            animate={{ opacity: 0, scale: 1.2, y: h.y - 60, x: h.x + h.drift }}
            exit={{ opacity: 0 }} transition={{ duration: 0.8 }}
            className="absolute text-sm pointer-events-none z-20">
            {h.icon}
          </motion.div>
        ))}
      </AnimatePresence>

      <div onPointerDown={handlePointerDown} onKeyDown={handleKeyDown}
        role="button" tabIndex={0} aria-label="和伙伴互动" className="cursor-pointer touch-manipulation">
        <ChibiComposer variant={variant} size={size === 'large' ? 'large' : 'normal'}
          hasWeapon={((companion.equipped_items as string[]) || []).includes('weapon_sword')} />
      </div>

      <motion.div className="absolute -top-1 -right-1 bg-white rounded-full w-6 h-6 flex items-center justify-center text-xs shadow-md"
        animate={{ scale: [1, 1.1, 1] }} transition={{ duration: 2, repeat: Infinity }}>
        {companion.hunger < 30 ? '😢' : companion.mood > 80 ? '😄' : '😊'}
      </motion.div>
    </div>
  )
}
