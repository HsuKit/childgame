import { ArrowRight, BookOpen, Calculator, CheckCircle2, Gift, Languages, Target } from 'lucide-react'
import { useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { PageHeader } from '../components/ui/PageHeader'
import { ProgressBar } from '../components/ui/ProgressBar'
import { StatePanel } from '../components/ui/StatePanel'
import { Surface } from '../components/ui/Surface'
import { useMistakeStore } from '../stores/mistakeStore'

export default function ParentReportPage() {
  const navigate = useNavigate()
  const { report, isLoading, error, fetchParentReport } = useMistakeStore()

  useEffect(() => { fetchParentReport().catch(() => undefined) }, [fetchParentReport])

  return (
    <div className="page-stack">
      <PageHeader eyebrow="家长工具" title="今日学习报告" subtitle="用清晰的数据了解完成情况、正确率和需要继续巩固的知识点。" onBack={() => navigate('/profile')} backLabel="返回我的营地" />

      <button type="button" onClick={() => navigate('/parent-wishes')} className="group flex w-full items-center gap-3 rounded-[18px] border border-indigo-100 bg-adventure-primary-soft p-4 text-left">
        <span className="grid h-11 w-11 shrink-0 place-items-center rounded-[14px] bg-white text-adventure-primary"><Gift aria-hidden="true" className="h-5 w-5" /></span>
        <span className="min-w-0 flex-1">
          <span className="block font-extrabold text-adventure-text">家长愿望管理</span>
          <span className="mt-1 block text-xs leading-5 text-adventure-muted">确认孩子的愿望、创建奖励并记录兑现。</span>
        </span>
        <ArrowRight aria-hidden="true" className="h-5 w-5 text-adventure-primary transition group-hover:translate-x-1" />
      </button>

      {isLoading && <StatePanel tone="loading" title="正在生成今日报告" />}
      {error && <StatePanel tone="error" title="报告加载失败" message={error} actionLabel="重新加载" onAction={() => void fetchParentReport().catch(() => undefined)} />}
      {!isLoading && !error && !report && <StatePanel tone="empty" title="暂无报告数据" message="完成答题后，这里会出现今日学习情况。" />}

      {report && (
        <>
          <div className="grid grid-cols-2 gap-3 md:grid-cols-4">
            {[
              { label: '今日完成', value: report.totalAnswered, tone: 'text-adventure-primary' },
              { label: '正确率', value: `${report.accuracy}%`, tone: 'text-emerald-600' },
              { label: '待订正', value: report.reviewProgress.needsCorrection, tone: 'text-amber-600' },
              { label: '已掌握', value: report.reviewProgress.mastered, tone: 'text-sky-600' },
            ].map(item => (
              <Surface key={item.label} className="text-center">
                <p className="text-xs font-bold text-adventure-muted">{item.label}</p>
                <p className={`mt-2 text-3xl font-black ${item.tone}`}>{item.value}</p>
              </Surface>
            ))}
          </div>

          <Surface>
            <div className="mb-3 flex items-center justify-between gap-3">
              <h2 className="section-title flex items-center gap-2"><Target aria-hidden="true" className="h-5 w-5 text-adventure-primary" />今日正确率</h2>
              <span className="font-black text-adventure-primary">{report.accuracy}%</span>
            </div>
            <ProgressBar value={report.accuracy} max={100} label="今日答题正确率" className="h-3" barClassName="bg-gradient-to-r from-adventure-primary to-emerald-400" />
          </Surface>

          <Surface>
            <h2 className="section-title mb-3">今日科目完成</h2>
            <div className="grid grid-cols-3 gap-2 text-center text-sm">
              {[
                { label: '语文', value: report.subjectCounts.chinese, icon: BookOpen, tone: 'bg-rose-50 text-rose-600' },
                { label: '数学', value: report.subjectCounts.math, icon: Calculator, tone: 'bg-sky-50 text-sky-600' },
                { label: '英语', value: report.subjectCounts.english, icon: Languages, tone: 'bg-emerald-50 text-emerald-600' },
              ].map(({ label, value, icon: Icon, tone }) => (
                <div key={label} className={`rounded-[16px] p-3 ${tone}`}>
                  <Icon aria-hidden="true" className="mx-auto h-5 w-5" />
                  <p className="mt-1 text-xs font-bold">{label}</p>
                  <p className="mt-1 text-xl font-black">{value}</p>
                </div>
              ))}
            </div>
          </Surface>

          <Surface>
            <h2 className="section-title mb-2">薄弱知识点</h2>
            {report.weakKnowledgePoints.length === 0 && (
              <p className="flex items-center gap-2 text-sm font-semibold text-emerald-700"><CheckCircle2 aria-hidden="true" className="h-5 w-5" />暂时没有明显薄弱点。</p>
            )}
            {report.weakKnowledgePoints.map(item => (
              <div key={item.knowledgePoint} className="flex items-center justify-between gap-3 border-b border-adventure-border py-3 last:border-b-0">
                <span className="font-bold text-adventure-text">{item.knowledgePoint}</span>
                <span className="text-right text-xs leading-5 text-adventure-muted">{item.activeCount} 道未掌握 · 错 {item.wrongCount} 次</span>
              </div>
            ))}
          </Surface>
        </>
      )}
    </div>
  )
}
