import { NavLink } from 'react-router-dom'
import { motion } from 'framer-motion'

const links = [
  { to: '/', label: '首页', icon: '🏠' },
  { to: '/companion', label: '伙伴', icon: '🐾' },
  { to: '/shop', label: '衣柜', icon: '🛍️' },
  { to: '/wish-shop', label: '愿望', icon: '🎁' },
  { to: '/leaderboard', label: '排行', icon: '🏆' },
  { to: '/profile', label: '我的', icon: '👤' },
]

export function BottomNav() {
  return (
    <nav className="fixed bottom-0 left-0 right-0 max-w-md mx-auto bg-white/90 backdrop-blur-md border-t border-gray-100 flex justify-around py-1 z-50 rounded-t-3xl shadow-lg shadow-gray-200/50">
      {links.map(({ to, label, icon }) => (
        <NavLink key={to} to={to} className="min-w-0 flex-1">
          {({ isActive }) => (
            <motion.div
              whileTap={{ scale: 0.9 }}
              className={`mx-0.5 flex min-w-0 flex-col items-center gap-0.5 rounded-2xl py-1 text-[11px] transition-all
                ${isActive ? 'text-kid-primary font-bold scale-105' : 'text-gray-400'}`}
            >
              <span className={`text-lg leading-none ${isActive ? 'drop-shadow-md' : ''}`}>{icon}</span>
              <span className="max-w-full truncate">{label}</span>
              {isActive && (
                <motion.div layoutId="nav-dot" className="w-1 h-1 rounded-full bg-kid-primary mt-0.5" />
              )}
            </motion.div>
          )}
        </NavLink>
      ))}
    </nav>
  )
}
