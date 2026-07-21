import { motion } from 'framer-motion'
import { useAuthStore } from '../stores/authStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { useNavigate } from 'react-router-dom'

export default function ProfilePage() {
  const { profile, signOut } = useAuthStore()
  const { balance } = usePointsStore()
  const { today } = useCheckinStore()
  const navigate = useNavigate()

  if (!profile) return <div className="p-6 text-center animate-pulse text-4xl">👤</div>

  const menuItems = [
    { icon: '🐾', label: '切换伙伴', to: '/companion/select', color: 'from-purple-50 to-violet-50' },
    { icon: '📅', label: '打卡日历', to: '/checkin', color: 'from-orange-50 to-amber-50' },
    { icon: '📝', label: '错题复习', to: '/mistakes', color: 'from-amber-50 to-yellow-50' },
  ]

  return (
    <div className="p-4 space-y-5">
      {/* Profile Header */}
      <div className="text-center">
        <motion.div
          whileHover={{ scale: 1.05 }}
          className="w-24 h-24 bg-gradient-to-br from-purple-200 via-pink-200 to-orange-200 rounded-full flex items-center justify-center mx-auto shadow-lg shadow-purple-200/50"
        >
          <span className="text-4xl">👤</span>
        </motion.div>
        <h1 className="text-2xl font-extrabold mt-3 text-kid-text">{profile.nickname}</h1>
        <div className="flex items-center justify-center gap-2 mt-1">
          <span className="bg-purple-100 text-purple-600 text-sm font-bold px-3 py-1 rounded-full">
            {profile.grade}年级
          </span>
          {today && <StreakBadge count={today.streak_count} />}
        </div>
      </div>

      {/* Points Card */}
      <div className="bg-gradient-to-r from-kid-primary to-kid-pink rounded-3xl p-6 text-white shadow-lg shadow-purple-300/40">
        <p className="text-sm text-white/70 font-medium">我的积分</p>
        <div className="flex items-end gap-2 mt-1">
          <span className="text-4xl font-extrabold">{balance}</span>
          <span className="text-xl mb-1">⭐</span>
        </div>
      </div>

      {/* Menu */}
      <div className="grid gap-3">
        {menuItems.map(({ icon, label, to, color }) => (
          <motion.button
            key={to}
            whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.97 }}
            onClick={() => navigate(to)}
            className={`bg-gradient-to-r ${color} rounded-2xl p-4 text-left font-bold text-kid-text flex items-center gap-3 shadow-sm`}
          >
            <span className="text-2xl">{icon}</span>
            <span className="flex-1">{label}</span>
            <span className="text-gray-400">→</span>
          </motion.button>
        ))}
        {!profile?.phone && (
          <div className="bg-gradient-to-r from-yellow-50 to-amber-50 rounded-2xl p-4 border border-yellow-200">
            <p className="text-sm text-yellow-700">⚠️ 游客模式 · 建议绑定手机号永久保存数据</p>
          </div>
        )}
        <button
          onClick={() => signOut()}
          className="text-center text-gray-400 font-medium py-3 text-sm hover:text-red-400 transition-colors"
        >
          退出登录
        </button>
      </div>
    </div>
  )
}
