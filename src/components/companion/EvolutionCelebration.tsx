import { useEffect, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { useCompanionStore } from '../../stores/companionStore'
import { COMPANION_TYPES } from '../../data/companionTypes'

const PARTICLE_COLORS = ['#FF6B6B', '#6C5CE7', '#FFD43B', '#51CF66', '#FF922B', '#FF69B4']

function getEvolutionName(type: string): string {
  const def = COMPANION_TYPES.find(c => c.id === type)
  return def?.name ?? type
}

export function EvolutionCelebration() {
  const { companion, justEvolved, clearEvolved } = useCompanionStore()
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

  return (
    <AnimatePresence>
      {show && (
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          className="fixed inset-0 bg-black/60 flex items-center justify-center z-50"
        >
          {/* Particles */}
          {particles.map(p => (
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
            initial={{ scale: 0, rotate: -10 }}
            animate={{ scale: 1, rotate: 0 }}
            transition={{ type: 'spring', duration: 0.6 }}
            className="bg-white rounded-3xl p-8 text-center mx-4 max-w-sm w-full"
          >
            <motion.div
              animate={{ scale: [1, 1.2, 1], rotate: [0, 5, -5, 0] }}
              transition={{ duration: 0.8, delay: 0.3 }}
              className="text-6xl mb-4"
            >
              ✨
            </motion.div>

            <h2 className="text-2xl font-bold text-kid-primary">{companion.name}</h2>
            <p className="text-lg mt-2 font-bold text-purple-600">进化了!</p>

            <div className="flex items-center justify-center gap-4 mt-4">
              <div className="text-center">
                <p className="text-xs text-gray-400">进化前</p>
                <p className="font-bold text-gray-500 line-through">{getEvolutionName(companion.companion_type)}</p>
              </div>
              <span className="text-2xl">➡️</span>
              <div className="text-center">
                <p className="text-xs text-gray-400">进化后</p>
                <p className="font-bold text-kid-primary text-lg">{getEvolutionName(companion.companion_type)}</p>
              </div>
            </div>

            <p className="text-sm text-gray-400 mt-4">Lv.{companion.level} · 继续加油!</p>
          </motion.div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
