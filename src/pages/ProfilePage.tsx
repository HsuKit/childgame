import { useAuthStore } from '../stores/authStore'
import { usePointsStore } from '../stores/pointsStore'
import { useCheckinStore } from '../stores/checkinStore'
import { StreakBadge } from '../components/checkin/StreakBadge'
import { useNavigate } from 'react-router-dom'

export default function ProfilePage() {
  const { profile, user, signOut } = useAuthStore()
  const { balance } = usePointsStore()
  const { today } = useCheckinStore()
  const navigate = useNavigate()

  if (!profile) return <div className="p-6 text-center animate-pulse">加载中...</div>

  return (
    <div className="p-6">
      <div className="text-center mb-6">
        <div className="w-20 h-20 bg-purple-100 rounded-full flex items-center justify-center text-3xl mx-auto">👤</div>
        <h1 className="text-xl font-bold mt-3">{profile.nickname}</h1>
        <p className="text-gray-400">{profile.grade}年级</p>
        {today && <StreakBadge count={today.streak_count} />}
      </div>
      <div className="card mb-4">
        <div className="flex justify-between items-center">
          <span className="font-bold">我的积分</span>
          <span className="text-xl font-bold text-kid-primary">{balance} ⭐</span>
        </div>
      </div>
      <div className="grid gap-3">
        <button onClick={() => navigate('/companion/select')} className="card text-left font-bold">切换伙伴 →</button>
        <button onClick={() => navigate('/checkin')} className="card text-left font-bold">打卡日历 →</button>
        {!profile?.phone && (
          <div className="card bg-yellow-50"><p className="text-sm text-yellow-700">⚠️ 游客模式，数据仅在本设备。建议绑定手机号永久保存。</p></div>
        )}
        <button onClick={() => signOut()} className="card text-left text-red-400 font-bold">退出登录</button>
      </div>
    </div>
  )
}
