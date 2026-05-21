import { useEffect, useRef, useState, useCallback } from 'react'
import { motion } from 'framer-motion'

interface Props {
  variant: string
  size?: 'small' | 'normal' | 'large'
  hasWeapon?: boolean
  onAction?: () => void
  onClick?: () => void
}

const SIZE = { small: 100, normal: 160, large: 240 }
const TOTAL_IDLE = 18

type AnimType = 'idle' | 'throw' | 'attack'

function getActionName(variant: string, type: AnimType): string {
  if (type === 'attack') {
    return (variant === 'Forest_Ranger_1' || variant === 'Forest_Ranger_2') ? 'Shooting_in_The_Air' : 'Slashing_in_The_Air'
  }
  if (type === 'throw') return 'Throwing_in_The_Air'
  return 'Idle'
}

function getFramePath(variant: string, type: AnimType, frame: number): string {
  const base = variant.replace(/_\d+$/, '')
  const folder = type === 'idle' ? 'idle' : type === 'attack' ? 'attack' : 'throw'
  const actionName = getActionName(variant, type)
  return `/assets/companions/${variant}/${folder}/0_${base}_${actionName}_${String(frame).padStart(3, '0')}.png`
}

export function ChibiComposer({ variant, size = 'normal', hasWeapon = false, onAction, onClick }: Props) {
  const canvasRef = useRef<HTMLCanvasElement>(null)
  const rafRef = useRef(0)
  const animRef = useRef<AnimType>('idle')
  const actionTimerRef = useRef(0)
  const [, forceRender] = useState(0)

  const triggerAction = useCallback(() => {
    animRef.current = hasWeapon ? 'attack' : 'throw'
    forceRender(n => n + 1)
    onAction?.()
    clearTimeout(actionTimerRef.current)
    actionTimerRef.current = window.setTimeout(() => {
      animRef.current = 'idle'
      forceRender(n => n + 1)
    }, 1200)
  }, [hasWeapon, onAction])

  // Expose trigger via onClick
  const handleClick = () => {
    onClick?.()
    triggerAction()
  }

  useEffect(() => {
    // Preload: idle + throw + attack
    const types: AnimType[] = ['idle', 'throw', 'attack']
    const images: Record<string, HTMLImageElement[]> = {}
    let cancelled = false

    for (const t of types) {
      const total = t === 'idle' ? TOTAL_IDLE : 12
      images[t] = []
      for (let i = 0; i < total; i++) {
        const img = new Image()
        img.src = getFramePath(variant, t, i)
        images[t].push(img)
      }
    }

    // Wait a frame for preload to start
    const startTimeout = setTimeout(() => {
      if (cancelled) return
      const canvas = canvasRef.current
      if (!canvas) return
      const ctx = canvas.getContext('2d')!
      const px = SIZE[size]
      const s = px * 2
      canvas.width = s
      canvas.height = s

      let frame = 0
      let last = 0
      const idleDelay = 120
      const actionDelay = 100

      function draw(time: number) {
        if (cancelled) return
        const currentType = animRef.current
        const imgs = images[currentType] || images.idle
        const total = currentType === 'idle' ? TOTAL_IDLE : 9
        const delay = currentType === 'idle' ? idleDelay : actionDelay

        if (time - last >= delay) {
          last = time
          ctx.clearRect(0, 0, s, s)
          const idx = frame % imgs.length
          if (imgs[idx]) ctx.drawImage(imgs[idx], 0, 0, s, s)
          frame = (frame + 1) % total
        }
        rafRef.current = requestAnimationFrame(draw)
      }
      rafRef.current = requestAnimationFrame(draw)
    }, 200)

    return () => { cancelled = true; clearTimeout(startTimeout); cancelAnimationFrame(rafRef.current) }
  }, [variant, size])

  const px = SIZE[size]

  return (
    <motion.div onClick={handleClick}
      animate={{ y: [0, -2, 0] }}
      transition={{ repeat: Infinity, duration: 2.5, ease: 'easeInOut' }}
      className="relative mx-auto cursor-pointer"
      style={{ width: px, height: px }}
      whileHover={{ scale: 1.05 }}
      whileTap={{ scale: 0.95 }}
    >
      <canvas ref={canvasRef} className="w-full h-full" />
    </motion.div>
  )
}
