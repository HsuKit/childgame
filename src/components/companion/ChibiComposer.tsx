import { useState, useEffect, useRef } from 'react'
import { motion } from 'framer-motion'

interface Props {
  variant: string
  size?: 'small' | 'normal' | 'large'
  animate?: boolean
  onClick?: () => void
}

const sizeMap = { small: 100, normal: 160, large: 240 }
const TOTAL = 18

function framePath(variant: string, n: number): string {
  const base = variant.replace(/_\d+$/, '')
  return `/assets/companions/${variant}/idle/0_${base}_Idle_${String(n).padStart(3, '0')}.png`
}

export function ChibiComposer({ variant, size = 'normal', animate = true, onClick }: Props) {
  const [frame, setFrame] = useState(0)
  const [loaded, setLoaded] = useState<Set<number>>(new Set([0]))
  const preloadRef = useRef<HTMLImageElement | null>(null)

  useEffect(() => {
    if (!animate) return
    const interval = setInterval(() => setFrame(f => (f + 1) % TOTAL), 100)
    return () => clearInterval(interval)
  }, [animate])

  // Preload next frame
  useEffect(() => {
    const next = (frame + 1) % TOTAL
    if (!loaded.has(next)) {
      const img = new Image()
      img.src = framePath(variant, next)
      img.onload = () => setLoaded(prev => new Set([...prev, next]))
    }
  }, [frame, variant])

  const px = sizeMap[size]

  return (
    <motion.div
      onClick={onClick}
      animate={animate ? { y: [0, -2, 0] } : {}}
      transition={{ repeat: Infinity, duration: 2.5, ease: 'easeInOut' }}
      className="relative mx-auto cursor-pointer"
      style={{ width: px, height: px }}
      whileHover={onClick ? { scale: 1.05 } : {}}
      whileTap={onClick ? { scale: 0.95 } : {}}
    >
      <img
        src={framePath(variant, frame)}
        alt=""
        className="w-full h-full object-contain pointer-events-none"
        style={{ opacity: loaded.has(frame) ? 1 : 0, transition: 'opacity 0.05s' }}
      />
    </motion.div>
  )
}
