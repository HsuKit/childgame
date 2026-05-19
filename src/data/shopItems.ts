export interface ShopItemDef {
  id: string
  name: string
  type: 'food' | 'accessory' | 'skin' | 'background'
  emoji: string
  cost: number
  effect: { hunger?: number; mood?: number }
  description: string
}

export const SHOP_ITEMS: ShopItemDef[] = [
  { id: 'bread', name: '面包', type: 'food', emoji: '🍞', cost: 20, effect: { hunger: 20 }, description: '恢复20饱腹度' },
  { id: 'fish', name: '小鱼干', type: 'food', emoji: '🐟', cost: 30, effect: { hunger: 35 }, description: '恢复35饱腹度' },
  { id: 'cake', name: '蛋糕', type: 'food', emoji: '🎂', cost: 50, effect: { hunger: 50, mood: 10 }, description: '恢复50饱腹度，提升10心情' },
  { id: 'icecream', name: '冰淇淋', type: 'food', emoji: '🍦', cost: 80, effect: { hunger: 60, mood: 20 }, description: '恢复60饱腹度，提升20心情' },
  { id: 'bow', name: '蝴蝶结', type: 'accessory', emoji: '🎀', cost: 100, effect: { mood: 15 }, description: '提升15心情' },
  { id: 'sunglasses', name: '墨镜', type: 'accessory', emoji: '🕶️', cost: 150, effect: { mood: 20 }, description: '提升20心情，超酷!' },
  { id: 'scarf', name: '小围巾', type: 'accessory', emoji: '🧣', cost: 80, effect: { mood: 10 }, description: '提升10心情' },
  { id: 'goldskin', name: '金色皮肤', type: 'skin', emoji: '✨', cost: 300, effect: { mood: 30 }, description: '让你的伙伴闪闪发光' },
]
