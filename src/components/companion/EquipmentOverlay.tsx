import { motion } from 'framer-motion'
import { useEffect, useState } from 'react'
import { supabase } from '../../lib/supabase'

interface ItemVisual { emoji: string; position: string; size: string }

// Name-based mapping (stable, doesn't depend on UUID)
const NAME_MAP: Record<string, ItemVisual> = {
  '蝴蝶结':   { emoji: '🎀', position: '-top-1 -right-1', size: 'text-base' },
  '墨镜':     { emoji: '🕶️', position: 'top-1 left-0 right-0 mx-auto', size: 'text-lg' },
  '小围巾':   { emoji: '🧣', position: '-bottom-1 left-0 right-0 mx-auto', size: 'text-base' },
  '金色皮肤': { emoji: '✨', position: 'inset-0 flex items-center justify-center', size: 'text-xl' },
  '星空背景': { emoji: '🌟', position: 'inset-0 flex items-center justify-center', size: 'text-2xl' },
}

export function EquipmentOverlay({ itemIds, size }: { itemIds: string[]; size: 'small' | 'normal' | 'large' }) {
  const [visuals, setVisuals] = useState<ItemVisual[]>([])
  const containerSizes = { small: 'w-16 h-16', normal: 'w-24 h-24', large: 'w-32 h-32' }

  useEffect(() => {
    if (!itemIds || itemIds.length === 0) { setVisuals([]); return }
    // Resolve UUIDs to names via DB
    supabase.from('shop_items').select('id,name').in('id', itemIds).then(({ data }) => {
      if (!data) return
      const found = data.flatMap(item => {
        const v = NAME_MAP[item.name]
        return v ? [v] : []
      })
      setVisuals(found)
    })
  }, [itemIds])

  if (visuals.length === 0) return null

  return (
    <div className={`absolute ${containerSizes[size]} pointer-events-none`}>
      {visuals.map((v, i) => (
        <motion.div
          key={i}
          className={`absolute ${v.position} ${v.size} z-20`}
          animate={v.emoji === '✨' ? { opacity: [0.4, 1, 0.4] } : { y: [0, -2, 0] }}
          transition={{ repeat: Infinity, duration: 2 }}
        >
          {v.emoji}
        </motion.div>
      ))}
    </div>
  )
}
