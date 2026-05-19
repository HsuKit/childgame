import { useState } from 'react'
import { useAuthStore } from '../../stores/authStore'

export function GradeSelect() {
  const createProfile = useAuthStore(s => s.createProfile)
  const [grade, setGrade] = useState(0)
  const [nickname, setNickname] = useState('')

  const handleStart = async () => {
    if (grade < 1 || !nickname.trim()) return
    await createProfile(nickname.trim(), grade)
  }

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-6 bg-gradient-to-b from-purple-100 to-blue-100">
      <h1 className="text-3xl font-bold text-kid-primary mb-2">欢迎来到知识冒险!</h1>
      <p className="text-gray-500 mb-8">先告诉我你是谁吧</p>
      <input
        type="text" placeholder="输入你的昵称" value={nickname}
        onChange={e => setNickname(e.target.value)} maxLength={12}
        className="w-64 px-4 py-3 rounded-2xl border-2 border-purple-200 focus:border-kid-primary outline-none text-center mb-6"
      />
      <p className="text-gray-500 mb-4">选择你的年级</p>
      <div className="grid grid-cols-3 gap-3 mb-8">
        {[1, 2, 3, 4, 5, 6].map(g => (
          <button key={g} onClick={() => setGrade(g)}
            className={`w-20 h-20 rounded-2xl text-xl font-bold transition-all
              ${grade === g ? 'bg-kid-primary text-white scale-110 shadow-lg' : 'bg-white text-kid-text hover:bg-purple-50'}`}>
            {g}年级
          </button>
        ))}
      </div>
      <button onClick={handleStart} disabled={grade < 1 || !nickname.trim()}
        className="btn-primary text-xl px-12">
        开始冒险!
      </button>
    </div>
  )
}
