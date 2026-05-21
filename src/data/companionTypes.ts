export interface CompanionTypeDef {
  id: string
  name: string
  category: 'starter' | 'rare' | 'legendary'
  baseVariant: string       // Default body variant (folder name)
  outfitVariants: string[]  // All body variants for this companion
  description: string
  unlockCost: number        // 0 = free
}

export const COMPANION_TYPES: CompanionTypeDef[] = [
  {
    id: 'ranger', name: '小游侠', category: 'starter',
    baseVariant: 'Forest_Ranger_1',
    outfitVariants: ['Forest_Ranger_1', 'Forest_Ranger_2', 'Forest_Ranger_3'],
    description: '森林中的弓箭手，敏捷而精准', unlockCost: 0,
  },
  {
    id: 'warrior', name: '小战士', category: 'starter',
    baseVariant: 'Skeleton_Warrior_1',
    outfitVariants: ['Skeleton_Warrior_1', 'Skeleton_Warrior_2', 'Skeleton_Warrior_3'],
    description: '身经百战的勇士，无畏无惧', unlockCost: 0,
  },
  {
    id: 'mage', name: '小法师', category: 'starter',
    baseVariant: 'Dark_Oracle_1',
    outfitVariants: ['Dark_Oracle_1', 'Dark_Oracle_2', 'Dark_Oracle_3'],
    description: '掌控暗影之力的神秘法师', unlockCost: 0,
  },
  {
    id: 'minotaur', name: '小牛魔', category: 'rare',
    baseVariant: 'Minotaur_1',
    outfitVariants: ['Minotaur_1', 'Minotaur_2', 'Minotaur_3'],
    description: '蛮荒之地的牛头战士', unlockCost: 500,
  },
  {
    id: 'reaper', name: '小死神', category: 'legendary',
    baseVariant: 'Reaper_Man_1',
    outfitVariants: ['Reaper_Man_1', 'Reaper_Man_2', 'Reaper_Man_3'],
    description: '来自暗影界的神秘使者', unlockCost: 1000,
  },
]

// Accessories available for all companions
export const ACCESSORIES = [
  { id: 'Bow', name: '弓箭', type: 'accessory', cost: 100, variant: 'Forest_Ranger_1' },
  { id: 'Sword', name: '长剑', type: 'accessory', cost: 150, variant: 'Forest_Ranger_1' },
  { id: 'SlashFX', name: '剑气特效', type: 'effect', cost: 200, variant: 'Forest_Ranger_1' },
  { id: 'Arrow', name: '箭袋', type: 'accessory', cost: 80, variant: 'Forest_Ranger_1' },
]
