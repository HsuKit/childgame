import { motion } from 'framer-motion'
import type { CompanionTypeDef } from '../../data/companionTypes'

interface Props {
  companions: CompanionTypeDef[]
  selected: string | null
  onSelect: (id: string) => void
  onNext: () => void
}

export function CompanionSelect({ companions, selected, onSelect, onNext }: Props) {
  return (
    <div className="flex-1 flex flex-col items-center justify-center gap-6">
      <div className="grid grid-cols-2 gap-4">
        {companions.map(c => (
          <motion.button key={c.id} whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}
            onClick={() => onSelect(c.id)}
            className={`p-4 rounded-3xl border-2 transition-all
              ${selected === c.id ? 'border-kid-primary bg-purple-50 shadow-lg' : 'border-gray-200 bg-white hover:border-purple-300'}`}>
            <img src={`/assets/companions/${c.baseVariant}/Body.png`} alt={c.name} className="w-24 h-24 mx-auto object-contain" />
            <p className="text-center font-bold mt-2">{c.name}</p>
            <p className="text-xs text-gray-400 text-center">{c.description}</p>
          </motion.button>
        ))}
      </div>
      <button onClick={onNext} disabled={!selected} className="btn-primary text-lg px-12">选好了!</button>
    </div>
  )
}
