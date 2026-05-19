import { NavLink } from 'react-router-dom'

const links = [
  { to: '/', label: '首页', icon: '🏠' },
  { to: '/companion', label: '伙伴', icon: '🐾' },
  { to: '/quiz', label: '答题', icon: '📝' },
  { to: '/shop', label: '商城', icon: '🛍️' },
  { to: '/profile', label: '我的', icon: '👤' },
]

export function BottomNav() {
  return (
    <nav className="fixed bottom-0 left-0 right-0 max-w-md mx-auto bg-white border-t flex justify-around py-2 z-50">
      {links.map(({ to, label, icon }) => (
        <NavLink
          key={to}
          to={to}
          className={({ isActive }) =>
            `flex flex-col items-center text-xs gap-1 px-3 py-1 rounded-xl transition-colors
             ${isActive ? 'text-kid-primary font-bold' : 'text-gray-400'}`
          }
        >
          <span className="text-xl">{icon}</span>
          {label}
        </NavLink>
      ))}
    </nav>
  )
}
