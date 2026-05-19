import { useEffect, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'

export function PointsFlyAnimation({ amount }: { amount: number }) {
  const [show, setShow] = useState(true)
  useEffect(() => { const timer = setTimeout(() => setShow(false), 2000); return () => clearTimeout(timer) }, [])

  return (
    <AnimatePresence>
      {show && (
        <motion.div initial={{ opacity: 0, scale: 0.3, y: 50 }} animate={{ opacity: 1, scale: 1, y: 0 }}
          exit={{ opacity: 0, scale: 1.5, y: -100 }}
          className="fixed inset-0 flex items-center justify-center z-50 pointer-events-none">
          <div className="text-center">
            <motion.div animate={{ rotate: [0, -10, 10, -10, 0] }} transition={{ duration: 0.5 }} className="text-6xl">⭐</motion.div>
            <p className="text-3xl font-bold text-kid-primary mt-2">+{amount}</p>
          </div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
