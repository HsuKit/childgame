import { motion } from 'framer-motion'

type Part = 'Body' | 'Head' | 'Left Arm' | 'Right Arm' | 'Left Leg' | 'Right Leg' | 'Left Hand' | 'Right Hand'

interface Props {
  variant: string      // 'ranger' | 'warrior' | 'druid'
  expression?: number  // 1-3 face variant, default 1
  accessory?: string   // 'Bow' | 'Sword' | null
  size?: 'small' | 'normal' | 'large'
  animate?: boolean
  onClick?: () => void
}

const PART_ORDER: (Part | 'Face')[] = [
  'Left Leg', 'Right Leg', 'Body', 'Left Arm', 'Right Arm', 'Left Hand', 'Right Hand', 'Head',
]

const sizeMap = { small: 64, normal: 100, large: 140 }

function partPath(variant: string, part: string): string {
  return `/assets/companions/${variant}/${part}.png`
}

export function ChibiComposer({ variant, expression = 1, accessory, size = 'normal', animate = true, onClick }: Props) {
  const px = sizeMap[size]
  const faceFile = `Face 0${Math.min(3, Math.max(1, expression))}`

  return (
    <motion.div
      onClick={onClick}
      animate={animate ? { y: [0, -4, 0] } : {}}
      transition={{ repeat: Infinity, duration: 3, ease: 'easeInOut' }}
      className="relative mx-auto cursor-pointer"
      style={{ width: px, height: px * 1.3 }}
      whileHover={onClick ? { scale: 1.05 } : {}}
      whileTap={onClick ? { scale: 0.95 } : {}}
    >
      {PART_ORDER.map((part, i) => (
        <img
          key={part}
          src={part === 'Head' ? partPath(variant, faceFile) : partPath(variant, part)}
          alt={part}
          className="absolute inset-0 w-full h-full object-contain pointer-events-none"
          style={{ zIndex: i + 1 }}
        />
      ))}
      {/* Accessory overlay */}
      {accessory && (
        <img
          src={partPath(variant, accessory)}
          alt={accessory}
          className="absolute inset-0 w-full h-full object-contain pointer-events-none"
          style={{ zIndex: 10 }}
        />
      )}
    </motion.div>
  )
}
