import { useEffect, useState } from 'react'
import { motion, AnimatePresence, useReducedMotion } from 'framer-motion'
import { Star } from 'lucide-react'

export function PointsFlyAnimation({ amount }: { amount: number }) {
  const [show, setShow] = useState(true)
  const reduceMotion = useReducedMotion()
  useEffect(() => { const timer = setTimeout(() => setShow(false), 2000); return () => clearTimeout(timer) }, [])

  return (
    <AnimatePresence>
      {show && (
        <motion.div initial={reduceMotion ? { opacity: 0 } : { opacity: 0, scale: 0.3, y: 50 }} animate={{ opacity: 1, scale: 1, y: 0 }}
          exit={reduceMotion ? { opacity: 0 } : { opacity: 0, scale: 1.3, y: -80 }}
          className="pointer-events-none fixed inset-0 z-[70] flex items-center justify-center">
          <div className="rounded-[22px] border border-amber-100 bg-white/95 px-8 py-6 text-center shadow-2xl shadow-amber-100/60">
            <motion.div animate={reduceMotion ? undefined : { rotate: [0, -10, 10, -10, 0] }} transition={{ duration: 0.5 }}>
              <Star aria-hidden="true" className="mx-auto h-12 w-12 fill-amber-300 text-amber-500" />
            </motion.div>
            <p role="status" className="mt-2 text-3xl font-black text-adventure-primary">+{amount} 积分</p>
          </div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
