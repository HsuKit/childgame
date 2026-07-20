import { mkdirSync, readFileSync, writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { validateQuestion } from './lib/question-schema.mjs'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')

function textOf(question) {
  return JSON.stringify(question.content).toLowerCase()
}

function classification(knowledgePoint, question, tag) {
  const skill = question.difficulty === 1 ? 'understand' : question.difficulty === 2 ? 'apply' : 'reason'
  return { knowledgePoint, skill, tags: [tag ?? (question.type === 'match' ? '信息匹配' : '基础题库迁移')] }
}

function classifyChinese(question) {
  const text = textOf(question)
  if (/拼音|声调|读音|声母|韵母|几画|笔画|偏旁|部首|结构|错别字|同音字|形近字/.test(text)) return classification('字音字形', question, '字词基础')
  if (/近义|反义/.test(text)) return classification('近义词与反义词', question, '词义辨析')
  if (/《|古诗|诗句|诗人|作者是谁|下一句|明月|春眠|春风|瀑布|鹳雀楼|李白|王维|孟浩然/.test(text)) return classification('古诗名句', question, '传统文化')
  if (/修辞|比作|像.{0,12}(一样|什么)|运用了什么|选词|填什么|括号|哪句话|句子/.test(text)) return classification('句式运用', question, '句子运用')
  if (/“[^”]{1,4}”字|哪个字|什么字|加一笔|第[一二三四五六七八九]笔|可以组成什么词/.test(text)) return classification('字音字形', question, '字词基础')
  if (/礼貌|场景|生活|介绍|打电话|请问|谢谢|对不起|应该说|人物|职业|医生|老师|消防员|农民|节日|日期|交通工具|天气|季节|动物.{0,8}(家|叫声|食物)|谚语/.test(text)) return classification('生活语言', question, '情境表达')
  if (/量词|一（|一\(|搭配|成语|叠词|词语/.test(text)) return classification('量词与搭配', question, '词语运用')
  if (/排序|排列|先后顺序|连成一句/.test(text)) return classification('句子排序', question, '语序')
  if (/背诵|名句/.test(text)) return classification('古诗名句', question, '传统文化')
  if (/阅读|短文|故事|根据文章|根据短文|这段话|文中/.test(text)) return classification('段落信息', question, '阅读理解')
  if (/句子|标点|问号|感叹号|把字句|被字句|括号|扩写|缩写|关联词|造句/.test(text)) return classification('句式运用', question, '句子运用')
  return classification('量词与搭配', question, '词语运用')
}

function classifyMath(question) {
  const text = textOf(question)
  if (/钟|时间|时针|分针|小时|分钟|人民币|元钱|几元|角钱|几角|分币/.test(text)) return classification('时间与人民币', question, '生活计量')
  if (/厘米|毫米|分米|米长|长度|测量|尺/.test(text)) return classification('长度与测量', question, '测量')
  if (/方向|东|南|西|北|图形|角|边形|对称|锐角|钝角|直角/.test(text)) return classification('方向与图形', question, '空间观念')
  if (/统计|数据|分类|调查|表格|最多|最少/.test(text)) return classification('数据分类', question, '数据分析')
  if (/÷|除以|平均|每份|每组|可以分成|能装几/.test(text)) return classification('除法初步', question, '数量关系')
  if (/×|乘以|乘法|口诀|每.{0,4}(个|只|本|盒|排).{0,8}(一共|共有)/.test(text)) return classification('表内乘法', question, '数量关系')
  const operations = (text.match(/[+＋\-－×÷]/g) ?? []).length
  if (operations >= 2 || /又|再|剩下后|先.*再|两步/.test(text)) return classification('两步问题', question, '生活情境')
  if (/[+＋\-－]|加法|减法|相差|多多少|少多少|一共|还剩/.test(text)) return classification('加法与减法', question, '计算与应用')
  return null
}

function classifyEnglish(question) {
  const text = textOf(question)
  if (/复数|单数|many|two |three |four |these|those/.test(text)) return classification('单数与复数', question, '词形运用')
  if (/\bcan\b|会做|能力/.test(text)) return classification('can的表达', question, '功能表达')
  if (/\blike\b|\bhave\b|喜欢|拥有/.test(text)) return classification('like与have', question, '功能表达')
  if (/阅读|短文|passage|根据.*回答|read and|句子和意思|图片描述/.test(text)) return classification('短文信息', question, '阅读理解')
  if (/指令|stand up|sit down|open|close|clap|touch|stamp|wave/.test(text)) return classification('常用动作', question, '动作表达')
  if (/\bi ___|\bshe ___|\bhe ___|\byou ___|\bthis ___|\bit ___/.test(text)) return classification('简单问答', question, '句型运用')
  if (/对话|回答|问句|what|where|who|how|is this|are you|do you/.test(text)) return classification('简单问答', question, '情境交际')
  if (/早上好|下午好|晚上好|谢谢|再见|对不起|hello|good morning|goodbye|thank/.test(text)) return classification('生活对话', question, '日常交际')
  if (/动作|run|jump|swim|walk|sing|dance|read|write|eat|drink|see|look/.test(text)) return classification('常用动作', question, '动作表达')
  return classification('日常名词', question, '主题词汇')
}

export function defaultClassifier(question) {
  if (question.subject === 'chinese') return classifyChinese(question)
  if (question.subject === 'math') return classifyMath(question)
  if (question.subject === 'english') return classifyEnglish(question)
  return null
}

function normalizedContent(question) {
  const content = structuredClone(question.content)
  if (question.subject === 'english' && question.type === 'fill') {
    if (typeof content.answer === 'string') content.answer = content.answer.trim().toLowerCase()
    if (Array.isArray(content.acceptableAnswers)) {
      content.acceptableAnswers = content.acceptableAnswers.map(answer => answer.trim().toLowerCase())
    }
  }
  return content
}

export function normalizeLegacyQuestions(rows, classifier = defaultClassifier) {
  const accepted = []
  const rejected = []
  for (const row of rows) {
    const metadata = classifier(row)
    if (!metadata) {
      rejected.push({ sourceId: row.id, reason: 'knowledge-point-ambiguous' })
      continue
    }
    const canonical = {
      id: `g${row.grade}-${row.subject}-legacy-${row.id.replaceAll('-', '').slice(0, 12)}`,
      subject: row.subject,
      grade: row.grade,
      difficulty: row.difficulty,
      type: row.type,
      knowledgePoint: metadata.knowledgePoint,
      skill: metadata.skill,
      tags: metadata.tags,
      content: normalizedContent(row),
      reviewStatus: 'draft',
      version: 1,
    }
    const errors = validateQuestion(canonical)
    if (errors.length) {
      rejected.push({ sourceId: row.id, reason: 'schema-invalid', errors })
      continue
    }
    accepted.push(canonical)
  }
  return { accepted, rejected }
}

export function main() {
  const source = JSON.parse(readFileSync(join(root, 'data/question-candidates/source/grade2-source.json'), 'utf8'))
  const result = normalizeLegacyQuestions(source)
  const candidateDirectory = join(root, 'data/question-candidates')
  const auditDirectory = join(root, 'data/question-audits')
  mkdirSync(candidateDirectory, { recursive: true })
  mkdirSync(auditDirectory, { recursive: true })
  for (const subject of ['chinese', 'math', 'english']) {
    const questions = result.accepted.filter(question => question.subject === subject)
    writeFileSync(join(candidateDirectory, `grade2-${subject}.json`), `${JSON.stringify(questions, null, 2)}\n`, 'utf8')
  }
  writeFileSync(join(auditDirectory, 'grade2-normalization-rejections.json'), `${JSON.stringify(result.rejected, null, 2)}\n`, 'utf8')
  return result
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  const result = main()
  console.log(`Normalized ${result.accepted.length} candidates; rejected ${result.rejected.length}.`)
}
