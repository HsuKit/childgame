import { writeFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = join(dirname(fileURLToPath(import.meta.url)), '..')
const points = ['较大数认识', '乘法', '除法', '分数初步', '质量与时间', '周长与面积', '数据表达', '两步问题', '规律发现']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]
const contexts = ['春游准备', '运动会记录', '图书节任务', '科学角观察', '劳动课统计', '班级义卖', '校园种植', '社团活动', '家庭采购', '社区服务', '阅读分享', '手工作品展', '节水行动', '旧物回收', '健康打卡', '研学计划']

function choice(stem, correct, distractors, position, explanation) {
  const correctText = String(correct)
  const used = new Set([correctText])
  const options = distractors.map((value, index) => {
    let candidate = String(value)
    const match = candidate.match(/^-?\d+/)
    while (used.has(candidate)) {
      candidate = match
        ? candidate.replace(match[0], String(Number(match[0]) + index + 1))
        : `${candidate}${index + 1}`
    }
    used.add(candidate)
    return candidate
  })
  options.splice(position, 0, correctText)
  return { stem, options, answer: position, explanation }
}

function mathChoice(point, i, difficulty, position) {
  const n = i + 2
  const occurrence = Math.floor(i / points.length)
  if (difficulty === 3) return mathHardChoice(point, i, position)
  if (point === '较大数认识') {
    const value = 1200 + n * 37
    return choice(`社区图书角有${value}本书，其中数字“${String(value)[1]}”在百位上，它表示多少？`, Number(String(value)[1]) * 100,
      [Number(String(value)[1]), Number(String(value)[1]) * 10, Number(String(value)[1]) * 1000], position,
      `百位上的数字表示几个百，所以表示${Number(String(value)[1]) * 100}。`)
  }
  if (point === '乘法') {
    const a = 12 + (n % 28), b = 2 + (n % 7), answer = a * b
    return choice(`手工课每组要用${a}张彩纸，${b}个小组一共要用多少张？`, `${answer}张`, [`${answer - b}张`, `${answer + a}张`, `${a + b}张`], position, `${a}×${b}=${answer}，所以一共要用${answer}张。`)
  }
  if (point === '除法') {
    const b = 2 + (n % 7), q = 4 + (n % 11), total = b * q
    return choice(`把${total}颗棋子平均装进${b}个盒子，每盒有多少颗？`, `${q}颗`, [`${q - 1}颗`, `${q + b}颗`, `${total - b}颗`], position, `${total}÷${b}=${q}，每盒有${q}颗。`)
  }
  if (point === '分数初步') {
    const d = 4 + (occurrence % 7), a = 1 + Math.floor(occurrence / 7), b = a + 1
    return choice(`一张纸平均分成${d}份，涂了${a}份。再涂1份后，涂色部分是这张纸的几分之几？`, `${b}/${d}`, [`${a}/${d}`, `${d}/${b}`, `1/${d}`], position, `原来涂${a}份，再涂1份是${b}份，占${b}/${d}。`)
  }
  if (point === '质量与时间') {
    const start = 8 + (n % 4), minutes = 20 + (n % 4) * 10, endM = minutes % 60, endH = start + Math.floor(minutes / 60)
    return choice(`科技活动在${start}:00开始，持续${minutes}分钟，结束时间是几点？`, `${endH}:${String(endM).padStart(2, '0')}`, [`${start}:${String(endM).padStart(2, '0')}`, `${endH + 1}:${String(endM).padStart(2, '0')}`, `${start + 2}:00`], position, `从${start}:00经过${minutes}分钟，结束时间是${endH}:${String(endM).padStart(2, '0')}。`)
  }
  if (point === '周长与面积') {
    const length = 6 + (n % 8), width = 2 + (n % 4), answer = difficulty === 1 ? 2 * (length + width) : length * width
    const unit = difficulty === 1 ? '厘米' : '平方厘米'
    const ask = difficulty === 1 ? '周长' : '面积'
    return choice(`长方形卡片长${length}厘米、宽${width}厘米，它的${ask}是多少？`, `${answer}${unit}`, [`${length + width}${unit}`, `${length * 2}${unit}`, `${answer + width}${unit}`], position, difficulty === 1 ? `周长是（${length}+${width}）×2=${answer}厘米。` : `面积是${length}×${width}=${answer}平方厘米。`)
  }
  if (point === '数据表达') {
    const a = 5 + occurrence, b = a + 3, c = a - 2
    return choice(`三组回收废纸数量为：一组${a}千克、二组${b}千克、三组${c}千克。二组比三组多多少千克？`, `${b - c}千克`, [`${b - a}千克`, `${a - c}千克`, `${a + b + c}千克`], position, `比较二组和三组，${b}-${c}=${b - c}千克。`)
  }
  if (point === '两步问题') {
    const a = 18 + n, sold = 3 + (n % 7), added = 5 + (n % 8), answer = a - sold + added
    return choice(`书架原有${a}本故事书，借出${sold}本，又放回${added}本，现在有多少本？`, `${answer}本`, [`${a - sold}本`, `${a + added}本`, `${answer + sold}本`], position, `先算借出后有${a}-${sold}=${a - sold}本，再加放回的${added}本，共${answer}本。`)
  }
  const start = 2 + (n % 6), step = 2 + (n % 5), answer = start + step * 4
  return choice(`观察数列：${start}，${start + step}，${start + 2 * step}，${start + 3 * step}，下一个数是多少？`, answer, [answer - step, answer + step, answer + 2 * step], position, `相邻两个数都增加${step}，所以下一个数是${answer}。`)
}

function mathHardChoice(point, i, position) {
  const k = Math.floor(i / points.length) + 2
  if (point === '较大数认识') {
    const value = 3000 + k * 124
    return choice(`仓库原有${value}件物品，运走${k * 100}件。剩下物品数的百位数字是多少？`, String(Math.floor((value - k * 100) / 100) % 10), ['0', '2', '8'], position, `先算${value}-${k * 100}=${value - k * 100}，再看百位数字。`)
  }
  if (point === '乘法') {
    const boxes = 3 + k % 4, each = 18 + k, used = 7 + k % 5, answer = boxes * each - used
    return choice(`${boxes}盒贴纸，每盒${each}张。布置展板用去${used}张，还剩多少张？`, `${answer}张`, [`${boxes * each}张`, `${answer + boxes}张`, `${answer - used}张`], position, `先算${boxes}×${each}=${boxes * each}张，再减${used}张，剩${answer}张。`)
  }
  if (point === '除法') {
    const groups = 4 + k % 3, per = 7 + k % 5, extra = 2 + k % 3, total = groups * per + extra
    return choice(`${total}名同学，每${groups}人组成一组。最多组成几个完整小组，还剩几人？`, `${per}组，剩${extra}人`, [`${per + 1}组，剩0人`, `${per}组，剩${groups - extra}人`, `${groups}组，剩${extra}人`], position, `${total}÷${groups}=${per}……${extra}，可组成${per}个完整小组，剩${extra}人。`)
  }
  if (point === '分数初步') {
    const d = 6 + k % 4
    return choice(`一盒点心平均分成${d}份，小雨吃了2份，小林吃了3份。两人一共吃了这盒点心的几分之几？`, `5/${d}`, [`3/${d}`, `2/${d}`, `${d}/5`], position, `分母不变，把吃掉的份数相加：2+3=5，所以是5/${d}。`)
  }
  if (point === '质量与时间') {
    const start = 8 + k % 3, first = 35, rest = 10, second = 25
    const total = first + rest + second, endH = start + Math.floor(total / 60), endM = total % 60
    return choice(`活动${start}:00开始，先参观${first}分钟，休息${rest}分钟，再体验${second}分钟。全部结束是几点？`, `${endH}:${String(endM).padStart(2, '0')}`, [`${start}:60`, `${endH}:${String(second).padStart(2, '0')}`, `${endH + 1}:10`], position, `总用时${first}+${rest}+${second}=${total}分钟，即1小时10分钟，结束时间是${endH}:${String(endM).padStart(2, '0')}。`)
  }
  if (point === '周长与面积') {
    const length = 8 + k, width = 4 + k % 3, removed = 2 * width, answer = length * width - removed
    return choice(`长${length}米、宽${width}米的长方形花坛中，有一块2米×${width}米的区域铺石子，其余种花。种花面积是多少？`, `${answer}平方米`, [`${length * width}平方米`, `${2 * (length + width)}平方米`, `${answer + width}平方米`], position, `花坛面积${length}×${width}=${length * width}，石子区面积2×${width}=${removed}，种花面积是${answer}平方米。`)
  }
  if (point === '数据表达') {
    const mon = 12 + k, tue = 9 + k, wed = 15 + k, answer = mon + tue + wed
    return choice(`图书借阅记录：周一${mon}本、周二${tue}本、周三${wed}本。三天共借出多少本？`, `${answer}本`, [`${wed - tue}本`, `${mon + tue}本`, `${answer - mon}本`], position, `把三天数据相加：${mon}+${tue}+${wed}=${answer}本。`)
  }
  if (point === '两步问题') {
    const rows = 4 + k % 3, each = 8 + k, absent = 3 + k % 4, answer = rows * each - absent
    return choice(`礼堂安排${rows}排座位，每排${each}个。已有${absent}个座位损坏，可用座位有多少个？`, `${answer}个`, [`${rows * each}个`, `${answer + rows}个`, `${each - absent}个`], position, `先算座位总数${rows}×${each}=${rows * each}，再减损坏的${absent}个，得${answer}个。`)
  }
  const start = 2 + k, answer = start + 1 + 2 + 3 + 4
  return choice(`数列从${start}开始，依次加1、加2、加3。按照这个规律，下一次加4后得到多少？`, answer, [answer - 4, answer + 1, answer + 4], position, `依次计算：${start}+1+2+3+4=${answer}。`)
}

function mathFill(point, i, difficulty) {
  const n = i + 3
  if (difficulty === 3 && point === '数据表达') {
    const first = 20 + i, second = 15 + i, third = 18 + i
    return { stem: `三天收集废电池数量分别是${first}节、${second}节、${third}节，共收集___节。`, answer: String(first + second + third), explanation: `把三天数量相加：${first}+${second}+${third}=${first + second + third}节。` }
  }
  if (difficulty === 3 && point === '两步问题') {
    const each = 7 + i % 5, used = 8 + i % 4, answer = each * 4 - used
    return { stem: `4袋卡片，每袋${each}张，用去${used}张后还剩___张。`, answer: String(answer), explanation: `先算4袋有${each}×4=${each * 4}张，再减去${used}张，剩${answer}张。` }
  }
  if (difficulty === 3 && point === '规律发现') {
    const start = 3 + i % 7, answer = start + 1 + 2 + 3 + 4
    return { stem: `按“依次加1、加2、加3、加4”的规律填数：${start}，${start + 1}，${start + 3}，${start + 6}，___。`, answer: String(answer), explanation: `最后一次加4，${start + 6}+4=${answer}。` }
  }
  const variants = {
    较大数认识: [`${(30 + n) * 100}里面有___个百。`, String(30 + n), `每100个组成1个百，所以共有${30 + n}个百。`],
    乘法: [`${20 + n} × ${2 + n % 6} = ___`, String((20 + n) * (2 + n % 6)), `用乘法计算两个因数的积。`],
    除法: [`${(3 + n % 6) * (5 + n % 9)} ÷ ${3 + n % 6} = ___`, String(5 + n % 9), `根据乘除法关系求商。`],
    分数初步: [`把一个苹果平均分成${4 + n % 5}份，每份是它的___。`, `1/${4 + n % 5}`, `平均分成几份，每份就是几分之一。`],
    质量与时间: [`2千克 = ___克`, '2000', `1千克是1000克，2千克是2000克。`],
    周长与面积: [`边长${3 + n % 8}厘米的正方形，周长是___厘米。`, String((3 + n % 8) * 4), `正方形周长等于边长乘4。`],
    数据表达: [`调查结果是喜欢足球${8 + n}人、篮球${5 + n}人，喜欢足球的比篮球多___人。`, '3', `用${8 + n}-${5 + n}=3。`],
    两步问题: [`一盒彩笔${6 + n % 5}支，买3盒后送出${2 + n % 4}支，还剩___支。`, String((6 + n % 5) * 3 - (2 + n % 4)), `先求3盒总数，再减去送出的数量。`],
    规律发现: [`按规律填数：${n}，${n + 3}，${n + 6}，___。`, String(n + 9), `每次增加3，所以下一个数是${n + 9}。`],
  }
  const [stem, answer, explanation] = variants[point]
  return { stem, answer, explanation }
}

function mathMatch(point, i) {
  const base = i + 2
  const shuffled = values => ({ right: [values[2], values[0], values[3], values[1]], matches: [[0, 1], [1, 3], [2, 0], [3, 2]] })
  let left
  let answers
  let explanation
  if (point === '较大数认识') {
    left = ['3个千和2个百', '5个百和8个一', '7个千和4个十', '9个百和6个十']
    answers = ['3200', '508', '7040', '960']; explanation = '根据千位、百位、十位和个位表示的数值组成各数。'
  } else if (point === '乘法') {
    left = [12, 13, 14, 15].map(value => `${value}×${2 + i % 4}`)
    answers = [12, 13, 14, 15].map(value => String(value * (2 + i % 4))); explanation = '逐个计算乘法算式的积。'
  } else if (point === '除法') {
    const divisor = 2 + i % 4
    left = [6, 7, 8, 9].map(value => `${value * divisor}÷${divisor}`)
    answers = ['6', '7', '8', '9']; explanation = '根据乘除法关系计算每个商。'
  } else if (point === '分数初步') {
    left = ['平均分2份取1份', '平均分3份取1份', '平均分4份取3份', '平均分5份取2份']
    answers = ['1/2', '1/3', '3/4', '2/5']; explanation = '分母表示平均分的份数，分子表示取的份数。'
  } else if (point === '质量与时间') {
    left = ['2千克', '3000克', '1小时', '90分钟']; answers = ['2000克', '3千克', '60分钟', '1小时30分']; explanation = '1千克=1000克，1小时=60分钟。'
  } else if (point === '周长与面积') {
    left = ['边长3厘米正方形的周长', '长5厘米宽2厘米长方形的面积', '长6厘米宽3厘米长方形的周长', '边长4厘米正方形的面积']
    answers = ['12厘米', '10平方厘米', '18厘米', '16平方厘米']; explanation = '分别使用正方形、长方形的周长或面积公式。'
  } else if (point === '数据表达') {
    left = ['一班8票、二班12票', '晴天9天、雨天4天', '篮球15人、足球11人', '红花7朵、黄花7朵']
    answers = ['二班多4票', '晴天多5天', '篮球多4人', '两种一样多']; explanation = '读取每组数据并比较相差数量。'
  } else if (point === '两步问题') {
    left = ['20-6+3', '5×4-2', '36÷4+5', '8+7×2']; answers = ['17', '18', '14', '22']; explanation = '按先乘除后加减的顺序计算两步算式。'
  } else {
    left = ['2,4,6,8', '3,6,9,12', '20,18,16,14', '1,2,4,8']; answers = ['下一个是10', '下一个是15', '下一个是12', '下一个是16']; explanation = '分别寻找加2、加3、减2和乘2的规律。'
  }
  return { stem: `第${i + 1}组${point}练习：把左边内容与正确结果连起来`, left, ...shuffled(answers), explanation }
}

export function authorGrade3Subject(subject) {
  if (subject !== 'math') throw new Error(`Grade-3 authoring is not implemented for ${subject} yet.`)
  const questions = []
  let serial = 0
  for (const [type, difficulty, count] of distribution) {
    for (let index = 0; index < count; index += 1) {
      const point = points[serial % points.length]
      const content = type === 'choice' ? mathChoice(point, serial, difficulty, serial % 4)
        : type === 'fill' ? mathFill(point, serial, difficulty) : mathMatch(point, serial)
      content.stem = `${contexts[Math.floor(serial / points.length) % contexts.length]}：${content.stem}`
      questions.push({ id: `g3-math-authored-${String(serial + 1).padStart(3, '0')}`, subject, grade: 3, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', difficulty > 1 ? '情境应用' : '基础巩固'], content, reviewStatus: 'reviewed', version: 1 })
      serial += 1
    }
  }
  return questions
}

export function main() {
  const questions = authorGrade3Subject('math')
  writeFileSync(join(root, 'data/questions/grade3-math.json'), `${JSON.stringify(questions, null, 2)}\n`, 'utf8')
}

if (process.argv[1] === fileURLToPath(import.meta.url)) main()
