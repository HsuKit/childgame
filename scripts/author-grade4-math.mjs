const points = ['多位数运算', '运算律', '小数初步', '角', '几何关系', '平均数', '数据分析', '多步问题', '数量关系']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]
const contexts = ['校园读书节', '社区运动会', '科技体验日', '环保调查', '班级义卖', '农场实践', '博物馆研学', '图书馆服务', '城市交通', '健康监测', '手工设计', '气象观察', '节能行动', '社团成果展', '家庭预算', '公园测绘']

function choice(stem, correct, distractors, position, explanation) {
  const correctText = String(correct), used = new Set([correctText])
  const options = distractors.map((value, index) => {
    let candidate = String(value), match = candidate.match(/^-?\d+(?:\.\d+)?/)
    while (used.has(candidate)) candidate = match ? candidate.replace(match[0], String(Number(match[0]) + index + 1)) : `${candidate}${index + 1}`
    used.add(candidate); return candidate
  })
  options.splice(position, 0, correctText)
  return { stem, options, answer: position, explanation }
}

function hardChoice(point, i, position) {
  const k = Math.floor(i / points.length) + 3
  if (point === '多位数运算') {
    const first = 1250 + k * 36, added = 480 + k * 12, used = 325 + k * 8, answer = first + added - used
    return choice(`仓库原有${first}本练习册，新到${added}本，发出${used}本后还剩多少本？`, `${answer}本`, [`${first + added}本`, `${answer + used}本`, `${first - used}本`], position, `先加新到的，再减发出的：${first}+${added}-${used}=${answer}本。`)
  }
  if (point === '运算律') {
    const a = 25, b = 16 + k, c = 4, answer = a * b * c
    return choice(`计算25×${b}×4，选择最简便的结果。`, answer, [answer - 100, answer + 25, b * 29], position, `利用乘法交换律和结合律，先算25×4=100，再算100×${b}=${answer}。`)
  }
  if (point === '小数初步') {
    const price = 12.5 + k, second = 8.6 + k / 10, paid = 30 + k, answer = (paid - price - second).toFixed(1)
    return choice(`买文具分别花${price.toFixed(1)}元和${second.toFixed(1)}元，付${paid}元，应找回多少元？`, `${answer}元`, [`${(paid - price).toFixed(1)}元`, `${(price + second).toFixed(1)}元`, `${(Number(answer) + 1).toFixed(1)}元`], position, `先求总价${price.toFixed(1)}+${second.toFixed(1)}=${(price + second).toFixed(1)}元，再用${paid}减总价，找回${answer}元。`)
  }
  if (point === '角') {
    const first = 35 + k, second = 55 - k, answer = first + second
    return choice(`两个相邻角分别是${first}°和${second}°，合成的角是多少度，属于哪类角？`, `${answer}°，直角`, [`${answer}°，锐角`, `${Math.abs(first - second)}°，锐角`, `180°，平角`], position, `两个角相加是${first}+${second}=${answer}°，90°的角是直角。`)
  }
  if (point === '几何关系') {
    if (k % 2 === 0) return choice('方格纸上两条道路分别沿横线和竖线修建，它们相交形成的四个角是什么角？', '都是直角', ['都是锐角', '都是钝角', '两个锐角两个钝角'], position, '横线和竖线互相垂直，相交形成四个直角。')
    return choice('长方形纸上画出两条对边并向两端延长，这两条直线的位置关系是什么？', '互相平行', ['互相垂直', '相交成锐角', '完全重合'], position, '长方形的两条对边互相平行，延长后也不会相交。')
  }
  if (point === '平均数') {
    const values = [72 + k, 76 + k, 80 + k, 84 + k], sum = values.reduce((a, b) => a + b), answer = sum / 4
    return choice(`四次跳绳成绩是${values.join('、')}下，平均每次多少下？`, `${answer}下`, [`${values[1]}下`, `${sum}下`, `${answer + 4}下`], position, `总数${sum}除以4，平均数是${answer}下。`)
  }
  if (point === '数据分析') {
    const a = 18 + k, b = 24 + k, c = 21 + k, d = 27 + k, answer = b + d - a - c
    return choice(`四周回收量为${a}、${b}、${c}、${d}千克。偶数周合计比奇数周合计多多少千克？`, `${answer}千克`, [`${d - a}千克`, `${b + d}千克`, `${a + c}千克`], position, `偶数周是${b}+${d}，奇数周是${a}+${c}，相差${answer}千克。`)
  }
  if (point === '多步问题') {
    const rows = 6 + k % 3, each = 24 + k, absent = 8 + k, answer = rows * each - absent
    return choice(`礼堂有${rows}排座位，每排${each}个，其中${absent}个维修中。可用座位有多少个？`, `${answer}个`, [`${rows * each}个`, `${answer + rows}个`, `${each - absent}个`], position, `总座位${rows}×${each}=${rows * each}个，减去维修的${absent}个，得${answer}个。`)
  }
  const speed = 55 + k, hours = 3, restDistance = 40 + k, answer = speed * hours + restDistance
  return choice(`汽车前${hours}小时每小时行${speed}千米，之后又行${restDistance}千米，全程多少千米？`, `${answer}千米`, [`${speed + hours + restDistance}千米`, `${speed * hours}千米`, `${answer - hours}千米`], position, `前${hours}小时行${speed}×${hours}=${speed * hours}千米，再加${restDistance}千米，共${answer}千米。`)
}

function mathChoice(point, i, difficulty, position) {
  if (difficulty === 3) return hardChoice(point, i, position)
  const occurrence = Math.floor(i / points.length), k = occurrence + 3
  if (point === '多位数运算') { const a = 2340 + k * 47, b = 560 + k * 19, answer = difficulty === 1 ? a + b : a - b; return choice(`${difficulty === 1 ? '计算总数' : '比较差值'}：${a}${difficulty === 1 ? '+' : '-'}${b}=？`, answer, [answer - 100, answer + 10, a + b + 1], position, `列竖式计算得到${answer}。`) }
  if (point === '运算律') { const b = 12 + k, answer = 25 * b * 4; return choice(`怎样简便计算25×${b}×4？结果是多少？`, answer, [25 * (b + 4), answer - 100, answer + 4], position, `先交换并结合25和4，25×4×${b}=100×${b}=${answer}。`) }
  if (point === '小数初步') { const a = 3 + k / 10, b = 2 + (k + 2) / 10, answer = (a + b).toFixed(1); return choice(`两段彩带长${a.toFixed(1)}米和${b.toFixed(1)}米，一共多长？`, `${answer}米`, [`${Math.abs(a - b).toFixed(1)}米`, `${(a + b + 1).toFixed(1)}米`, `${Math.round(a + b)}米`], position, `小数点对齐相加，${a.toFixed(1)}+${b.toFixed(1)}=${answer}米。`) }
  if (point === '角') { const degree = 30 + occurrence * 5; const kind = degree < 90 ? '锐角' : degree === 90 ? '直角' : '钝角'; return choice(`一个角是${degree}°，它是什么角？`, kind, ['平角', kind === '锐角' ? '钝角' : '锐角', '周角'], position, `${degree}°${degree < 90 ? '小于' : degree === 90 ? '等于' : '大于'}90°，所以是${kind}。`) }
  if (point === '几何关系') return choice(`长方形相邻两条边的位置关系是什么？`, '互相垂直', ['互相平行', '完全重合', '没有关系'], position, '长方形相邻两边相交成直角，所以互相垂直。')
  if (point === '平均数') { const a = 60 + k * 2, b = a + 6, c = a + 3, answer = (a + b + c) / 3; return choice(`三次测量结果是${a}、${b}、${c}厘米，平均是多少厘米？`, `${answer}厘米`, [`${b}厘米`, `${a + b + c}厘米`, `${answer + 3}厘米`], position, `总数除以3：（${a}+${b}+${c}）÷3=${answer}厘米。`) }
  if (point === '数据分析') { const a = 12 + k, b = a + 5, c = a - 3; return choice(`统计表记录甲${a}票、乙${b}票、丙${c}票，谁最多？`, '乙', ['甲', '丙', '一样多'], position, `${b}最大，所以乙最多。`) }
  if (point === '多步问题') { const first = 120 + k * 5, used = 30 + k, added = 45 + k, answer = first - used + added; return choice(`原有${first}盒彩笔，发出${used}盒，又运来${added}盒，现在有多少盒？`, `${answer}盒`, [`${first - used}盒`, `${first + added}盒`, `${answer + used}盒`], position, `先减发出的，再加运来的：${first}-${used}+${added}=${answer}盒。`) }
  const price = 8 + k, count = 4 + k % 3, answer = price * count
  return choice(`每本练习册${price}元，买${count}本需要多少元？`, `${answer}元`, [`${price + count}元`, `${answer - price}元`, `${answer + count}元`], position, `总价=单价×数量，${price}×${count}=${answer}元。`)
}

function mathFill(point, i, difficulty) {
  const k = i + 4
  const values = {
    多位数运算: [`${3400 + k * 10}+${600 + k}=___`, String(4000 + k * 11), '按相同数位相加。'],
    运算律: [`125×8×${2 + k % 5}=___`, String(1000 * (2 + k % 5)), '先算125×8=1000，再乘另一个因数。'],
    小数初步: [`${(5 + k / 10).toFixed(1)}+1.2=___`, (6.2 + k / 10).toFixed(1), '小数点对齐后相加。'],
    角: ['一个平角是___度。', '180', '平角的两条边在一条直线上，是180°。'],
    几何关系: ['同一平面内永不相交的两条直线互相___。', '平行', '同一平面内不相交的两条直线互相平行。'],
    平均数: [`三个数${k}、${k + 3}、${k + 6}的平均数是___。`, String(k + 3), '三个等距数的平均数是中间数。'],
    数据分析: [`四天读书页数为${k}、${k + 2}、${k + 4}、${k + 6}页，共读___页。`, String(k * 4 + 12), '把四天的数据相加。'],
    多步问题: [`每箱${10 + k % 8}瓶，4箱喝掉${5 + k % 4}瓶，还剩___瓶。`, String((10 + k % 8) * 4 - (5 + k % 4)), '先算总瓶数，再减喝掉的。'],
    数量关系: [`一辆车每小时行${50 + k % 20}千米，3小时行___千米。`, String((50 + k % 20) * 3), '路程=速度×时间。'],
  }
  const [stem, answer, explanation] = values[point]
  return { stem, answer, explanation }
}

function mathMatch(point, i) {
  const definitions = {
    多位数运算: [['2300+700', '5600-600', '125×8', '3600÷9'], ['3000', '5000', '1000', '400']],
    运算律: [['a+b=b+a', 'a×b=b×a', '(a+b)+c=a+(b+c)', 'a×(b+c)=a×b+a×c'], ['加法交换', '乘法交换', '加法结合', '乘法分配']],
    小数初步: [['0.5', '1.2', '2.05', '3.8'], ['五个十分之一', '一点二', '二点零五', '三点八']],
    角: [['45°', '90°', '120°', '180°'], ['锐角', '直角', '钝角', '平角']],
    几何关系: [['长方形对边', '长方形邻边', '两条平行线', '两条垂线'], ['互相平行', '互相垂直', '永不相交', '相交成直角']],
    平均数: [['2,4,6', '5,5,5', '10,20,30', '3,6,9'], ['平均4', '平均5', '平均20', '平均6']],
    数据分析: [['最大值', '最小值', '总数', '平均数'], ['找最大数据', '找最小数据', '全部相加', '总数除以份数']],
    多步问题: [['先加后减', '先乘后加', '先除后减', '先乘后除'], ['库存变化', '总量再增加', '平均分后用去', '总量再平均']],
    数量关系: [['单价×数量', '路程÷时间', '路程÷速度', '工作总量÷时间'], ['总价', '速度', '时间', '工作效率']],
  }
  const [left, answers] = definitions[point], order = [2, 0, 3, 1], right = order.map(x => answers[x]), lookup = Object.fromEntries(order.map((x, j) => [x, j]))
  return { stem: `${contexts[Math.floor(i / points.length) % contexts.length]}：把${point}内容与正确结果或含义连起来`, left, right, matches: left.map((_, j) => [j, lookup[j]]), explanation: `根据${point}的定义、运算或数量关系逐项配对。` }
}

export function authorGrade4Math() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    const point = points[serial % points.length]
    const content = type === 'choice' ? mathChoice(point, serial, difficulty, serial % 4) : type === 'fill' ? mathFill(point, serial, difficulty) : mathMatch(point, serial)
    if (type !== 'match') content.stem = `${contexts[Math.floor(serial / points.length) % contexts.length]}：${content.stem}`
    questions.push({ id: `g4-math-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'math', grade: 4, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', difficulty > 1 ? '综合应用' : '基础巩固'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
