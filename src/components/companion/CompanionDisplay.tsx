import { motion } from 'framer-motion'
import { useNavigate } from 'react-router-dom'
import { useCompanionStore } from '../../stores/companionStore'
import { CompanionStats } from './CompanionStats'
import { STARTER_COMPANIONS } from '../../data/companionTypes'

function getCompanionImage(type: string): string {
  const def = STARTER_COMPANIONS.find(c => c.id === type)
  return def?.baseImage ?? '/companions/default.png'
}

export function CompanionDisplay() {
  const { companion, isLoading } = useCompanionStore()
  const navigate = useNavigate()

  if (isLoading) return <div className="animate-pulse h-64 bg-gray-100 rounded-3xl" />

  if (!companion) {
    return (
      <div className="card text-center py-12">
        <p className="text-4xl mb-4">🐣</p>
        <p className="font-bold mb-4">你还没有伙伴!</p>
        <button onClick={() => navigate('/companion/select')} className="btn-primary">选择一个伙伴</button>
      </div>
    )
  }

  return (
    <motion.div whileTap={{ scale: 0.98 }} onClick={() => navigate('/companion')} className="card cursor-pointer">
      <div className="flex items-center gap-4">
        <motion.div animate={{ y: [0, -5, 0] }} transition={{ repeat: Infinity, duration: 2 }}
          className="w-24 h-24 bg-gradient-to-b from-purple-100 to-blue-100 rounded-full flex items-center justify-center overflow-hidden">
          <img src={getCompanionImage(companion.companion_type)} alt={companion.name} className="w-20 h-20 object-contain" />
        </motion.div>
        <div className="flex-1">
          <div className="flex items-center gap-2">
            <h2 className="text-lg font-bold">{companion.name}</h2>
            <span className="text-xs bg-purple-100 text-kid-primary px-2 py-1 rounded-full">Lv.{companion.level}</span>
          </div>
          <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
        </div>
      </div>
    </motion.div>
  )
}
