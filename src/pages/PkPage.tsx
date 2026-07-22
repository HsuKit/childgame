import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { motion } from 'framer-motion'
import { supabase } from '../lib/supabase'
import { useAuthStore } from '../stores/authStore'
import { SUBJECT_LABELS, SUBJECT_EMOJIS } from '../lib/constants'
import { buildCreatorPkQuizPath } from '../lib/pkUtils'
import type { Subject } from '../lib/constants'

function genCode(): string { return String(Math.floor(100000 + Math.random() * 900000)) }

export default function PkPage() {
  const navigate = useNavigate()
  const userId = useAuthStore(s => s.user?.id)
  const [mode, setMode] = useState<'menu' | 'create' | 'join'>('menu')
  const [subject, setSubject] = useState<Subject>('math')
  const [code, setCode] = useState('')
  const [created, setCreated] = useState('')
  const [createdChallengeId, setCreatedChallengeId] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)

  const handleCreate = async () => {
    if (!userId) return
    setLoading(true)
    const newCode = genCode()
    const { data, error: err } = await supabase.from('pk_challenges')
      .insert({ creator_id: userId, code: newCode, subject })
      .select('id')
      .single()
    setLoading(false)
    if (err || !data) { setError('创建失败'); return }
    setCreated(newCode)
    setCreatedChallengeId(data.id)
  }

  const handleJoin = async () => {
    if (!code.trim()) { setError('请输入挑战码'); return }
    if (!userId) return
    setLoading(true)
    const { data, error: err } = await supabase.from('pk_challenges').select('*').eq('code', code.trim()).eq('status', 'waiting').maybeSingle()
    setLoading(false)
    if (err || !data) { setError('挑战码无效或已过期'); return }
    if (data.creator_id === userId) { setError('不能加入自己的挑战'); return }
    // Join the challenge and start quiz
    navigate(`/pk/quiz?challenge=${data.id}&subject=${data.subject}`)
  }

  const startCreatorQuiz = () => {
    if (!createdChallengeId) {
      setError('挑战还没有准备好，请重新生成')
      return
    }
    navigate(buildCreatorPkQuizPath({ challengeId: createdChallengeId, subject }))
  }

  return (
    <div className="p-4 space-y-5 pb-6">
      <h1 className="text-2xl font-extrabold text-center bg-gradient-to-r from-red-400 to-orange-500 bg-clip-text text-transparent">
        ⚔️ 好友对战
      </h1>

      {error && (
        <div className="bg-red-50 border border-red-200 rounded-2xl p-4 text-center text-red-600 font-bold">
          {error}
          <button onClick={() => setError('')} className="ml-2 text-sm underline">关闭</button>
        </div>
      )}

      {mode === 'menu' && (
        <div className="grid gap-4">
          <motion.button whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.97 }}
            onClick={() => setMode('create')}
            className="bg-gradient-to-r from-red-400 to-orange-400 rounded-3xl p-6 text-white text-left shadow-lg shadow-orange-200/40">
            <span className="text-4xl">🎯</span>
            <p className="font-extrabold text-lg mt-2">创建挑战</p>
            <p className="text-sm text-white/80">生成挑战码，发给好友来对战</p>
          </motion.button>
          <motion.button whileHover={{ scale: 1.02 }} whileTap={{ scale: 0.97 }}
            onClick={() => setMode('join')}
            className="bg-gradient-to-r from-blue-400 to-cyan-400 rounded-3xl p-6 text-white text-left shadow-lg shadow-blue-200/40">
            <span className="text-4xl">🔢</span>
            <p className="font-extrabold text-lg mt-2">加入挑战</p>
            <p className="text-sm text-white/80">输入好友的挑战码，开始对战</p>
          </motion.button>
        </div>
      )}

      {mode === 'create' && (
        <div className="space-y-4">
          <div className="card">
            <h2 className="font-bold mb-3">选择对战科目</h2>
            <div className="grid grid-cols-3 gap-3">
              {(['math', 'chinese', 'english'] as Subject[]).map(s => (
                <button key={s} onClick={() => setSubject(s)}
                  className={`p-3 rounded-2xl font-bold transition-all
                    ${subject === s ? 'bg-purple-100 border-2 border-purple-400' : 'bg-gray-50 border border-gray-200'}`}>
                  <span className="text-xl">{SUBJECT_EMOJIS[s]}</span>
                  <p className="text-xs mt-1">{SUBJECT_LABELS[s]}</p>
                </button>
              ))}
            </div>
          </div>

          {created ? (
            <div className="card text-center">
              <p className="text-4xl mb-2">🎉</p>
              <p className="font-bold">挑战已创建!</p>
              <p className="text-3xl font-extrabold text-kid-primary my-3 tracking-widest">{created}</p>
              <p className="text-xs text-gray-400 mb-4">把这个挑战码发给好友</p>
              <button onClick={startCreatorQuiz} className="btn-play w-full">
                我先答题 →
              </button>
            </div>
          ) : (
            <button onClick={handleCreate} disabled={loading}
              className="btn-primary w-full">
              {loading ? '创建中...' : '生成挑战码'}
            </button>
          )}

          <button onClick={() => setMode('menu')} className="w-full py-3 text-gray-400 font-bold">
            返回
          </button>
        </div>
      )}

      {mode === 'join' && (
        <div className="space-y-4">
          <div className="card">
            <h2 className="font-bold mb-3">输入挑战码</h2>
            <input type="text" value={code} onChange={e => setCode(e.target.value)}
              placeholder="输入6位挑战码"
              maxLength={6}
              className="w-full text-center text-2xl font-extrabold tracking-widest py-4 rounded-2xl border-2 border-purple-200 outline-none focus:border-kid-primary" />
          </div>
          <button onClick={handleJoin} disabled={loading}
            className="btn-play w-full">
            {loading ? '加入中...' : '加入挑战!'}
          </button>
          <button onClick={() => setMode('menu')} className="w-full py-3 text-gray-400 font-bold">
            返回
          </button>
        </div>
      )}
    </div>
  )
}
