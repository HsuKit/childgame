import { useCompanionStore } from '../stores/companionStore'
import { CompanionStats } from '../components/companion/CompanionStats'
import { STARTER_COMPANIONS } from '../data/companionTypes'

function getCompanionImage(type: string): string {
  return STARTER_COMPANIONS.find(c => c.id === type)?.baseImage ?? '/companions/default.png'
}

export default function CompanionPage() {
  const { companion } = useCompanionStore()

  if (!companion) {
    return <div className="p-6 text-center"><p className="text-4xl mb-4">🐣</p><p className="text-gray-400">还没有伙伴</p></div>
  }

  const equipped = (companion.equipped_items as string[]) || []

  return (
    <div className="p-6">
      <div className="text-center mb-6">
        <div className="w-32 h-32 bg-gradient-to-b from-purple-100 to-blue-100 rounded-full flex items-center justify-center mx-auto overflow-hidden">
          <img src={getCompanionImage(companion.companion_type)} alt={companion.name} className="w-24 h-24 object-contain" />
        </div>
        <h1 className="text-2xl font-bold mt-4">{companion.name}</h1>
        <p className="text-sm text-gray-400">Lv.{companion.level}</p>
      </div>
      <div className="card mb-4">
        <h2 className="font-bold mb-3">状态</h2>
        <CompanionStats hunger={companion.hunger} mood={companion.mood} exp={companion.exp} level={companion.level} />
      </div>
      <div className="card">
        <h2 className="font-bold mb-3">已装备道具</h2>
        {equipped.length === 0
          ? <p className="text-gray-400 text-sm">还没有装备，去商城看看吧!</p>
          : <div className="flex gap-2 flex-wrap">{equipped.map((itemId, i) => <span key={i} className="bg-purple-50 px-3 py-1 rounded-full text-sm">🎀 {itemId}</span>)}</div>
        }
      </div>
    </div>
  )
}
