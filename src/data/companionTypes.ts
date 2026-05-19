export interface CompanionTypeDef {
  id: string
  name: string
  category: 'animal' | 'anime' | 'cyberpunk' | 'fantasy'
  baseImage: string
  rarity: 'common' | 'rare' | 'legendary'
  unlockCost: number
  description: string
  evolutionStages: string[]
}

export const STARTER_COMPANIONS: CompanionTypeDef[] = [
  {
    id: 'cat', name: '小猫咪', category: 'animal', baseImage: '/companions/cat.svg',
    rarity: 'common', unlockCost: 0, description: '一只活泼可爱的小猫咪，对世界充满好奇',
    evolutionStages: ['小猫咪', '大猫', '猫骑士', '星辰猫'],
  },
  {
    id: 'dog', name: '小狗狗', category: 'animal', baseImage: '/companions/dog.svg',
    rarity: 'common', unlockCost: 0, description: '忠诚又勇敢的小伙伴，永远在你身边',
    evolutionStages: ['小狗狗', '大狗', '狗将军', '烈焰犬'],
  },
  {
    id: 'dino', name: '小恐龙', category: 'animal', baseImage: '/companions/dino.svg',
    rarity: 'common', unlockCost: 0, description: '来自远古的小萌龙，有着无穷的力量',
    evolutionStages: ['小恐龙', '壮恐龙', '恐龙王', '雷霆龙'],
  },
  {
    id: 'fox', name: '小狐狸', category: 'animal', baseImage: '/companions/fox.svg',
    rarity: 'common', unlockCost: 0, description: '聪明机智的小狐狸，学习的好伙伴',
    evolutionStages: ['小狐狸', '灵狐', '九尾狐', '天狐'],
  },
]
