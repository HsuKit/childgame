import { useEffect, useState } from 'react'
import { motion, AnimatePresence, useReducedMotion } from 'framer-motion'
import { useCompanionStore } from '../../stores/companionStore'
import { COMPANION_TYPES } from '../../data/companionTypes'
import { ArrowRight, Sparkles, X } from 'lucide-react'
import { Button } from '../ui/Button'

const PARTICLE_COLORS = ['#FF6B6B', '#6C5CE7', '#FFD43B', '#51CF66', '#FF922B', '#FF69B4']

function getEvolutionName(type: string): string {
  const def = COMPANION_TYPES.find(c => c.id === type)
  return def?.name ?? type
}

export function EvolutionCelebration() {
  const { companion, justEvolved, clearEvolved } = useCompanionStore()
  const reduceMotion = useReducedMotion()
  const [show, setShow] = useState(false)
  const [particles] = useState(() =>
    Array.from({ length: 30 }, (_, i) => ({
      id: i,
      x: Math.random() * 100,
      color: PARTICLE_COLORS[i % PARTICLE_COLORS.length],
      delay: Math.random() * 0.5,
      size: 4 + Math.random() * 8,
    }))
  )

  useEffect(() => {
    if (justEvolved && companion) {
      setShow(true)
      const timer = setTimeout(() => {
        setShow(false)
        clearEvolved()
      }, 3500)
      return () => clearTimeout(timer)
    }
  }, [justEvolved, companion, clearEvolved])

  if (!companion) return null

  const stage = companion.evolution_stage || 1
  const prevStage = stage - 1
  void prevStage
  const dismiss = () => {
    setShow(false)
    clearEvolved()
  }

  return (
    <AnimatePresence>
      {show && (
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          className="fixed inset-0 z-[70] flex items-center justify-center bg-slate-950/60 p-4 pb-[calc(1rem+env(safe-area-inset-bottom))]"
          role="dialog"
          aria-modal="true"
          aria-labelledby="evolution-title"
        >
          {/* Particles */}
          {!reduceMotion && particles.map(p => (
            <motion.div
              key={p.id}
              initial={{ opacity: 1, y: -20, x: `${p.x}vw`, rotate: 0, scale: 0 }}
              animate={{ opacity: [1, 1, 0], y: '100vh', rotate: 720, scale: [0, 1, 0.5] }}
              transition={{ duration: 2.5, delay: p.delay }}
              className="fixed top-0 pointer-events-none rounded-full"
              style={{ backgroundColor: p.color, width: p.size, height: p.size }}
            />
          ))}

          <motion.div
            initial={reduceMotion ? { opacity: 0 } : { scale: 0, rotate: -10 }}
            animate={reduceMotion ? { opacity: 1 } : { scale: 1, rotate: 0 }}
            transition={reduceMotion ? { duration: 0.15 } : { type: 'spring', duration: 0.6 }}
            className="relative max-h-[calc(100dvh-2rem)] w-full max-w-sm overflow-y-auto rounded-[24px] bg-white p-8 pb-[calc(2rem+env(safe-area-inset-bottom))] text-center"
          >
            <button type="button" onClick={dismiss} aria-label="关闭进化庆祝" className="absolute right-3 top-3 grid min-h-11 min-w-11 place-items-center rounded-[14px] text-adventure-muted"><X aria-hidden="true" className="h-5 w-5" /></button>
            <motion.div
              animate={reduceMotion ? undefined : { scale: [1, 1.2, 1], rotate: [0, 5, -5, 0] }}
              transition={{ duration: 0.8, delay: 0.3 }}
              className="mb-4"
            >
              <Sparkles aria-hidden="true" className="mx-auto h-12 w-12 text-adventure-primary" />
            </motion.div>

            <h2 id="evolution-title" className="text-2xl font-black text-adventure-primary">{companion.name}进化了</h2>

            <div className="flex items-center justify-center gap-4 mt-4">
              <div className="text-center">
                <p className="text-xs text-gray-400">进化前</p>
                <p className="font-bold text-gray-500 line-through">{getEvolutionName(companion.companion_type)}</p>
              </div>
              <ArrowRight aria-hidden="true" className="h-5 w-5 text-adventure-muted" />
              <div className="text-center">
                <p className="text-xs text-gray-400">进化后</p>
                <p className="font-bold text-kid-primary text-lg">{getEvolutionName(companion.companion_type)}</p>
              </div>
            </div>

            <p className="mt-4 text-sm text-adventure-muted">Lv.{companion.level} · 继续加油！</p>
            <Button onClick={dismiss} className="mt-5 w-full">继续冒险</Button>
          </motion.div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
