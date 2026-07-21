import { useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useMistakeStore } from '../stores/mistakeStore'

export default function ParentReportPage() {
  const navigate = useNavigate()
  const { report, isLoading, error, fetchParentReport } = useMistakeStore()

  useEffect(() => { fetchParentReport().catch(() => undefined) }, [fetchParentReport])

  return (
    <div className="p-4 space-y-4">
      <div className="flex items-center justify-between">
        <button onClick={() => navigate('/profile')} className="text-kid-primary font-bold">← 返回</button>
        <h1 className="text-xl font-extrabold">家长报告</h1>
        <div className="w-12" />
      </div>

      {isLoading && <p className="text-center text-gray-400 py-8">正在生成今日报告...</p>}
      {error && <p className="text-center text-red-400 py-8">{error}</p>}
      {!isLoading && !error && !report && (
        <div className="card text-center py-8">
          <p className="font-bold text-kid-text">暂无报告数据</p>
          <p className="text-xs text-gray-400 mt-1">完成答题后这里会出现今日学习情况</p>
        </div>
      )}

      {report && (
        <>
          <div className="grid grid-cols-2 gap-3">
            <div className="card text-center">
              <p className="text-xs text-gray-400">今日完成</p>
              <p className="text-3xl font-extrabold text-kid-primary">{report.totalAnswered}</p>
            </div>
            <div className="card text-center">
              <p className="text-xs text-gray-400">正确率</p>
              <p className="text-3xl font-extrabold text-kid-success">{report.accuracy}%</p>
            </div>
            <div className="card text-center">
              <p className="text-xs text-gray-400">待订正</p>
              <p className="text-3xl font-extrabold text-amber-500">{report.reviewProgress.needsCorrection}</p>
            </div>
            <div className="card text-center">
              <p className="text-xs text-gray-400">已掌握</p>
              <p className="text-3xl font-extrabold text-green-500">{report.reviewProgress.mastered}</p>
            </div>
          </div>

          <div className="card">
            <h2 className="font-extrabold mb-3">今日科目完成</h2>
            <div className="grid grid-cols-3 gap-2 text-center text-sm">
              <div className="rounded-2xl bg-red-50 p-3">
                <p className="text-gray-400">语文</p>
                <p className="font-extrabold text-red-500">{report.subjectCounts.chinese}</p>
              </div>
              <div className="rounded-2xl bg-blue-50 p-3">
                <p className="text-gray-400">数学</p>
                <p className="font-extrabold text-blue-500">{report.subjectCounts.math}</p>
              </div>
              <div className="rounded-2xl bg-green-50 p-3">
                <p className="text-gray-400">英语</p>
                <p className="font-extrabold text-green-500">{report.subjectCounts.english}</p>
              </div>
            </div>
          </div>

          <div className="card">
            <h2 className="font-extrabold mb-3">薄弱知识点</h2>
            {report.weakKnowledgePoints.length === 0 && <p className="text-sm text-gray-400">暂时没有明显薄弱点</p>}
            {report.weakKnowledgePoints.map(item => (
              <div key={item.knowledgePoint} className="flex items-center justify-between border-b border-gray-100 py-3 last:border-b-0">
                <span className="font-bold text-kid-text">{item.knowledgePoint}</span>
                <span className="text-xs text-gray-500">{item.activeCount} 道未掌握 · 错 {item.wrongCount} 次</span>
              </div>
            ))}
          </div>
        </>
      )}
    </div>
  )
}
