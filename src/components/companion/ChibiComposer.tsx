import { useState, useEffect } from 'react'
import { motion } from 'framer-motion'

interface Props {
  variant: string
  size?: 'small' | 'normal' | 'large'
  animate?: boolean
  onClick?: () => void
}

const sizeMap = { small: 80, normal: 140, large: 220 }

export function ChibiComposer({ variant, size = 'normal', animate = true, onClick }: Props) {
  const [frame, setFrame] = useState(0)
  const totalFrames = 18

  useEffect(() => {
    if (!animate) return
    const interval = setInterval(() => setFrame(f => (f + 1) % totalFrames), 100)
    return () => clearInterval(interval)
  }, [animate])

  const px = sizeMap[size]
  // Remove _N suffix from variant for filename (Forest_Ranger_1 → Forest_Ranger)
  const base = variant.replace(/_\d+$/, '')
  const framePath = `/assets/companions/${variant}/idle/0_${base}_Idle_${String(frame).padStart(3, '0')}.png`

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
        src={framePath}
        alt="companion"
        className="w-full h-full object-contain pointer-events-none"
      />
    </motion.div>
  )
}
