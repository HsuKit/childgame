import { useEffect, useState } from 'react'
import { supabase } from '../../lib/supabase'

// Shop items mapped to Craftpix accessories
const NAME_TO_ACCESSORY: Record<string, string> = {
  '蝴蝶结':   'Bow',
  '墨镜':     'Sword',      // Will be replaced — using Sword as placeholder for now
  '小围巾':   'SlashFX',    // Will be replaced
  '金色皮肤': 'Face 02',    // Different face as "skin" effect
  '星空背景': 'Face 03',
}

export function EquipmentOverlay({ itemIds, variant }: { itemIds: string[]; variant: string }) {
  const [accessories, setAccessories] = useState<string[]>([])

  useEffect(() => {
    if (!itemIds || itemIds.length === 0) { setAccessories([]); return }
    supabase.from('shop_items').select('id,name').in('id', itemIds).then(({ data }) => {
      if (!data) return
      const parts = data.map(item => NAME_TO_ACCESSORY[item.name]).filter(Boolean)
      setAccessories(parts)
    })
  }, [itemIds])

  if (accessories.length === 0) return null

  return (
    <div className="absolute inset-0 pointer-events-none z-15">
      {accessories.map((acc, i) => (
        <img
          key={i}
          src={`/assets/companions/${variant}/${acc}.png`}
          alt={acc}
          className="absolute inset-0 w-full h-full object-contain"
          style={{ zIndex: 11 + i, opacity: 0.9 }}
        />
      ))}
    </div>
  )
}
