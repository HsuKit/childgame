import { motion } from 'framer-motion'
import type { CompanionTypeDef } from '../../data/companionTypes'
import { CheckCircle2 } from 'lucide-react'
import { Button } from '../ui/Button'

interface Props {
  companions: CompanionTypeDef[]
  selected: string | null
  onSelect: (id: string) => void
  onNext: () => void
}

export function CompanionSelect({ companions, selected, onSelect, onNext }: Props) {
  return (
    <div className="flex flex-1 flex-col items-center justify-center gap-6">
      <div className="grid w-full grid-cols-2 gap-3 sm:gap-4">
        {companions.map(c => (
          <motion.button key={c.id} whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}
            onClick={() => onSelect(c.id)}
            aria-pressed={selected === c.id}
            className={`relative rounded-[20px] border-2 p-4 transition-all
              ${selected === c.id ? 'border-adventure-primary bg-adventure-primary-soft shadow-lg shadow-indigo-100' : 'border-adventure-border bg-white hover:border-adventure-primary/40'}`}>
            {selected === c.id && <CheckCircle2 aria-hidden="true" className="absolute right-3 top-3 h-5 w-5 text-adventure-primary" />}
            <img src={`/assets/companions/${c.baseVariant}/Body.png`} alt={c.name} className="w-24 h-24 mx-auto object-contain" />
            <p className="mt-2 text-center font-extrabold text-adventure-text">{c.name}</p>
            <p className="mt-1 text-center text-xs leading-5 text-adventure-muted">{c.description}</p>
            {selected === c.id && <span className="mt-2 inline-block text-xs font-extrabold text-adventure-primary">已选择</span>}
          </motion.button>
        ))}
      </div>
      <Button onClick={onNext} disabled={!selected} className="w-full sm:w-auto sm:min-w-48">下一步：取名字</Button>
    </div>
  )
}
