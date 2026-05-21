import { useState, useEffect } from 'react'
import { motion } from 'framer-motion'

interface Props {
  variant: string
  size?: 'small' | 'normal' | 'large'
  onClick?: () => void
}

const sizeMap = { small: 100, normal: 160, large: 240 }

export function ChibiComposer({ variant, size = 'normal', onClick }: Props) {
  const [frame, setFrame] = useState(0)
  const base = variant.replace(/_\d+$/, '')

  useEffect(() => {
    const interval = setInterval(() => setFrame(f => (f + 1) % 18), 120)
    return () => clearInterval(interval)
  }, [])

  const px = sizeMap[size]
  const pad = (n: number) => String(n).padStart(3, '0')

  return (
    <motion.div
      onClick={onClick}
      animate={{ y: [0, -2, 0] }}
      transition={{ repeat: Infinity, duration: 2.5, ease: 'easeInOut' }}
      className="relative mx-auto cursor-pointer"
      style={{ width: px, height: px }}
      whileHover={onClick ? { scale: 1.05 } : {}}
      whileTap={onClick ? { scale: 0.95 } : {}}
    >
      {/* Fade between adjacent frames to avoid flash */}
      {[frame, (frame + 1) % 18].map((f, i) => (
        <img
          key={f}
          src={`/assets/companions/${variant}/idle/0_${base}_Idle_${pad(f)}.png`}
          alt=""
          className="absolute inset-0 w-full h-full object-contain pointer-events-none"
          style={{ opacity: i === 0 ? 1 : 0, transition: 'opacity 0.08s' }}
        />
      ))}
    </motion.div>
  )
}
