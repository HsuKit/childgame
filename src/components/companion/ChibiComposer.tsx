import { useEffect, useRef } from 'react'
import { motion } from 'framer-motion'

interface Props {
  variant: string
  size?: 'small' | 'normal' | 'large'
  onClick?: () => void
}

const SIZE = { small: 100, normal: 160, large: 240 }
const TOTAL = 18

export function ChibiComposer({ variant, size = 'normal', onClick }: Props) {
  const canvasRef = useRef<HTMLCanvasElement>(null)
  const rafRef = useRef(0)

  useEffect(() => {
    const base = variant.replace(/_\d+$/, '')
    const pad = (n: number) => String(n).padStart(3, '0')
    let cancelled = false
    const images: HTMLImageElement[] = []
    let loaded = 0

    for (let i = 0; i < TOTAL; i++) {
      const img = new Image()
      img.onload = () => { loaded++; if (loaded === TOTAL && !cancelled) start() }
      img.src = `/assets/companions/${variant}/idle/0_${base}_Idle_${pad(i)}.png`
      images.push(img)
    }

    function start() {
      const canvas = canvasRef.current
      if (!canvas || cancelled) return
      const ctx = canvas.getContext('2d')!
      const px = SIZE[size]
      const s = px * 2
      canvas.width = s
      canvas.height = s
      let frame = 0
      let last = 0
      const delay = 120

      function draw(time: number) {
        if (cancelled) return
        if (time - last >= delay) {
          last = time
          ctx.clearRect(0, 0, s, s)
          if (images[frame]) ctx.drawImage(images[frame], 0, 0, s, s)
          frame = (frame + 1) % TOTAL
        }
        rafRef.current = requestAnimationFrame(draw)
      }
      rafRef.current = requestAnimationFrame(draw)
    }

    return () => { cancelled = true; cancelAnimationFrame(rafRef.current) }
  }, [variant])

  const px = SIZE[size]

  return (
    <motion.div onClick={onClick}
      animate={{ y: [0, -2, 0] }}
      transition={{ repeat: Infinity, duration: 2.5, ease: 'easeInOut' }}
      className="relative mx-auto cursor-pointer"
      style={{ width: px, height: px }}
      whileHover={onClick ? { scale: 1.05 } : {}}
      whileTap={onClick ? { scale: 0.95 } : {}}
    >
      <canvas ref={canvasRef} className="w-full h-full" />
    </motion.div>
  )
}
