import { useEffect, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { useCompanionStore } from '../../stores/companionStore'
import { useCheckinStore } from '../../stores/checkinStore'

const MESSAGES: Record<string, string[]> = {
  hungry: [
    '主人我好饿... 能给我点吃的吗?',
    '肚子咕咕叫了... 🍞',
    '没力气学习了，先喂我吧!',
  ],
  happy: [
    '今天心情好好呀! 一起去答题吧!',
    '和主人在一起最开心了! 💕',
    '耶! 又是美好的一天!',
  ],
  idle: [
    '主人，今天还没答题哦...',
    '快来陪我玩吧!',
    '我等得都快睡着啦... 😴',
    '今天也要加油学习呀!',
  ],
  levelUp: [
    '我变强了! 谢谢你陪我学习!',
    '又升级啦! 主人太厉害了!',
    '我们是最强的搭档! 💪',
  ],
  streak: [
    '连续打卡太棒了! 坚持下去!',
    '你是最努力的小主人!',
    '每天都在进步，我好骄傲! 🔥',
  ],
}

export function SpeechBubble() {
  const { companion } = useCompanionStore()
  const { today } = useCheckinStore()
  const [message, setMessage] = useState('')
  const [visible, setVisible] = useState(false)

  useEffect(() => {
    if (!companion) return

    let category = 'idle'
    if (companion.hunger < 30) category = 'hungry'
    else if (companion.mood > 80) category = 'happy'
    if (today && today.streak_count >= 7) category = 'streak'

    const msgs = MESSAGES[category] || MESSAGES.idle
    const msg = msgs[Math.floor(Math.random() * msgs.length)]
    setMessage(msg)
    setVisible(true)

    const timer = setTimeout(() => setVisible(false), 4000)
    return () => clearTimeout(timer)
  }, [companion?.hunger, companion?.mood, today?.streak_count])

  if (!message) return null

  return (
    <AnimatePresence>
      {visible && (
        <motion.div
          initial={{ opacity: 0, y: 10, scale: 0.9 }}
          animate={{ opacity: 1, y: 0, scale: 1 }}
          exit={{ opacity: 0, y: -10 }}
          className="relative bg-white rounded-2xl px-4 py-2 text-sm shadow-md max-w-[200px] mx-auto mb-2"
        >
          <p>{message}</p>
          <div className="absolute -bottom-1.5 left-1/2 -translate-x-1/2 w-3 h-3 bg-white rotate-45" />
        </motion.div>
      )}
    </AnimatePresence>
  )
}
