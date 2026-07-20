const points = ['小数运算', '分数运算', '因数与倍数', '简易方程', '平面图形面积', '体积初步', '统计', '综合应用']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]
const contexts = ['校园劳动周', '社区图书角', '科技节展台', '节水调查', '班级种植园', '城市规划馆', '健康运动营', '传统文化展', '家庭购物单', '湿地观察站', '校车调度表', '手工作品展', '气象记录组', '爱心义卖场', '研学路线图', '食堂营养周', '公园志愿岗', '学校广播站']

function gcd(a, b) { while (b) [a, b] = [b, a % b]; return a }
function fraction(a, b) { const d = gcd(a, b); return `${a / d}/${b / d}` }
function choice(stem, correct, wrong, position, explanation) {
  const answer = String(correct), used = new Set([answer])
  const options = wrong.map((item, index) => { let value = String(item); while (used.has(value)) value = `${value}${index + 1}`; used.add(value); return value })
  options.splice(position, 0, answer)
  return { stem, options, answer: position, explanation }
}

function mathChoice(point, serial, difficulty, position) {
  const block = Math.floor(serial / points.length), k = block + 2, deep = difficulty === 3
  if (point === '小数运算') {
    const price = 8.4 + k * 0.3, count = difficulty === 1 ? 1 : 3 + k % 3, paid = Math.ceil(price * count / 10) * 10 + (deep ? 20 : 10), cost = price * count, answer = deep ? paid - cost : difficulty === 2 ? cost : price + 2.6
    const stem = difficulty === 1 ? `${price.toFixed(1)}+2.6=？` : deep ? `每本笔记本${price.toFixed(1)}元，买${count}本，付${paid}元，应找回多少元？` : `每本笔记本${price.toFixed(1)}元，买${count}本共多少元？`
    return choice(stem, `${answer.toFixed(1)}元`, [`${(answer + price).toFixed(1)}元`, `${Math.abs(answer - 2.6).toFixed(1)}元`, `${(answer + 1).toFixed(1)}元`], position, deep ? `先算总价${price.toFixed(1)}×${count}=${cost.toFixed(1)}元，再用${paid}减总价，找回${answer.toFixed(1)}元。` : `按小数加法或乘法计算，结果是${answer.toFixed(1)}元。`)
  }
  if (point === '分数运算') {
    const den = 8 + (k % 3) * 4, a = 1 + k % 3, b = 2 + k % 4, sum = a + b, remain = den - sum
    if (deep) return choice(`一块试验田上午完成${a}/${den}，下午完成${b}/${den}，未完成部分占全田几分之几？`, fraction(remain, den), [fraction(sum, den), fraction(den - a, den), fraction(remain + 1, den)], position, `先算完成${a}/${den}+${b}/${den}=${fraction(sum, den)}，再用1减，未完成${fraction(remain, den)}。`)
    return choice(`同分母分数${a}/${den}+${b}/${den}=？`, fraction(sum, den), [fraction(Math.abs(b - a), den), `${sum}/${den + 1}`, fraction(sum + 1, den)], position, `分母不变，分子相加并约分：${a}/${den}+${b}/${den}=${fraction(sum, den)}。`)
  }
  if (point === '因数与倍数') {
    const n = 12 + k * 2, candidate = n * (difficulty + 1)
    if (deep) { const a = 6 + k % 4, b = 8 + k % 5, product = a * b; return choice(`${a}盒彩笔和${b}本册子要分别平均分给若干组且都无剩余，组数必须同时是什么？`, `${a}和${b}的公因数`, [`${product}的所有倍数`, `${a + b}的因数`, `只能是${product}`], position, '能同时整除两种数量的组数，必须是两个数的公因数。') }
    return choice(`${candidate}是${n}的什么数？`, '倍数', ['质数', '小数', '分数'], position, `${candidate}=${n}×${difficulty + 1}，所以${candidate}是${n}的倍数。`)
  }
  if (point === '简易方程') {
    const x = 5 + k, add = 8 + k % 5, times = 2 + k % 3
    if (deep) return choice(`方程${times}x+${add}=${times * x + add}中，x等于多少？`, x, [x + add, times * x, x - 1], position, `先减${add}，再除以${times}，得到x=${x}。`)
    return choice(`解方程x+${add}=${x + add}，x=？`, x, [x + add, add, x - add], position, `等式两边同时减${add}，得到x=${x}。`)
  }
  if (point === '平面图形面积') {
    const base = 8 + k, height = 5 + k % 4, rectangle = base * height, triangle = rectangle / 2
    if (deep) { const top = base - 3; const trapezoid = (base + top) * height / 2; return choice(`梯形花坛上底${top}米、下底${base}米、高${height}米，面积是多少？`, `${trapezoid}平方米`, [`${rectangle}平方米`, `${(base + top) * height}平方米`, `${base + top + height}平方米`], position, `梯形面积=（上底+下底）×高÷2，得${trapezoid}平方米。`) }
    return choice(`三角形标志底${base}厘米、高${height}厘米，面积是多少？`, `${triangle}平方厘米`, [`${rectangle}平方厘米`, `${base + height}平方厘米`, `${triangle + height}平方厘米`], position, `三角形面积=底×高÷2=${base}×${height}÷2=${triangle}平方厘米。`)
  }
  if (point === '体积初步') {
    const a = 4 + k % 4, b = 3 + k % 3, h = 5 + k % 5, volume = a * b * h
    if (deep) return choice(`长方体水箱长${a}分米、宽${b}分米、高${h}分米，已装水${volume - a * b}升，还能装多少升？`, `${a * b}升`, [`${volume}升`, `${volume - a * b}升`, `${a + b + h}升`], position, `容量${a}×${b}×${h}=${volume}升，减去已有水量，还能装${a * b}升。`)
    return choice(`长方体盒子长${a}厘米、宽${b}厘米、高${h}厘米，体积是多少？`, `${volume}立方厘米`, [`${a * b}立方厘米`, `${a + b + h}立方厘米`, `${volume + h}立方厘米`], position, `长方体体积=长×宽×高=${volume}立方厘米。`)
  }
  if (point === '统计') {
    const data = [12 + k, 15 + k, 18 + k, 11 + k], total = data.reduce((a, b) => a + b), average = total / 4
    if (deep) return choice(`四组回收量为${data.join('、')}千克。若第五组加入后平均数变为${average + 1}千克，第五组回收多少千克？`, `${average + 5}千克`, [`${average + 1}千克`, `${total}千克`, `${average + 4}千克`], position, `五组总量应为${average + 1}×5=${total + average + 5}，减原四组${total}，第五组是${average + 5}千克。`)
    return choice(`四天记录为${data.join('、')}，平均数是多少？`, average, [total, average + 2, data[1]], position, `总数${total}除以4，平均数是${average}。`)
  }
  const unit = 6 + k, count = 4 + k % 3, discount = 5 + k % 4, total = unit * count, final = total - discount
  if (deep) { const paid = Math.ceil(final / 50) * 50; return choice(`义卖品每件${unit}元，买${count}件后优惠${discount}元；用${paid}元付款，还剩多少元？`, `${paid - final}元`, [`${paid - total}元`, `${final}元`, `${paid - discount}元`], position, `先算${unit}×${count}-${discount}=${final}元，再算${paid}-${final}=${paid - final}元。`) }
  return choice(`每件作品${unit}元，买${count}件共多少元？`, `${total}元`, [`${unit + count}元`, `${total - unit}元`, `${total + count}元`], position, `总价=单价×数量=${unit}×${count}=${total}元。`)
}

const fillFactories = {
  小数运算: i => [`${(3.2 + i / 10).toFixed(1)}+1.8=___`, (5 + i / 10).toFixed(1), '小数点对齐相加。'],
  分数运算: i => [`${1 + i % 2}/8+${2 + i % 3}/8=___`, fraction(3 + i % 2 + i % 3, 8), '同分母分数分子相加并约分。'],
  因数与倍数: i => [`${12 + i}的最小倍数是___。`, String(12 + i), '一个非零自然数的最小倍数是它本身。'],
  简易方程: i => [`x+${6 + i}=${15 + i}，x=___。`, '9', '等式两边同时减去同一个数。'],
  平面图形面积: i => [`平行四边形底${8 + i}厘米、高4厘米，面积是___平方厘米。`, String((8 + i) * 4), '平行四边形面积=底×高。'],
  体积初步: i => [`棱长${2 + i % 4}厘米的正方体体积是___立方厘米。`, String((2 + i % 4) ** 3), '正方体体积=棱长×棱长×棱长。'],
  统计: i => [`数据${10 + i}、${12 + i}、${14 + i}的平均数是___。`, String(12 + i), '三个等距数的平均数是中间数。'],
  综合应用: i => [`每盒彩笔${8 + i}支，买3盒用去5支，还剩___支。`, String((8 + i) * 3 - 5), '先乘求总数，再减用去的。'],
}

const matchData = {
  小数运算: [['2.5+1.5', '6.4-2.4', '1.2×5', '8.4÷2'], ['4', '4', '6', '4.2']],
  分数运算: [['1/4+1/4', '3/5-1/5', '2/3+1/3', '7/8-3/8'], ['1/2', '2/5', '1', '1/2']],
  因数与倍数: [['2', '3', '5', '12'], ['12的因数', '18的因数', '25的因数', '6的倍数']],
  简易方程: [['x+3=8', '2x=12', 'x-4=7', '3x+1=10'], ['x=5', 'x=6', 'x=11', 'x=3']],
  平面图形面积: [['长方形', '平行四边形', '三角形', '梯形'], ['长×宽', '底×高', '底×高÷2', '（上底+下底）×高÷2']],
  体积初步: [['立方厘米', '立方分米', '升', '毫升'], ['小方块体积', '纸箱体积', '水桶容量', '滴管容量']],
  统计: [['总数', '平均数', '最大值', '变化趋势'], ['全部相加', '总数÷份数', '最大的数', '观察增减']],
  综合应用: [['总价', '路程', '工作总量', '剩余量'], ['单价×数量', '速度×时间', '效率×时间', '原有-用去+增加']],
}

function mathMatch(point, serial) {
  const [left, answers] = matchData[point], order = [2, 0, 3, 1], right = order.map(i => answers[i]), lookup = Object.fromEntries(order.map((x, i) => [x, i]))
  const prompts = { 小数运算: '把每个小数算式与计算结果配对', 分数运算: '把每个分数算式与最简结果配对', 因数与倍数: '判断左边各数符合右边哪种整除关系', 简易方程: '把每个方程与它的解配对', 平面图形面积: '把图形名称与面积公式配对', 体积初步: '把体积或容积单位与生活实例配对', 统计: '把统计量与求法或含义配对', 综合应用: '把实际问题中的数量与对应关系式配对' }
  return { stem: `${contexts[Math.floor(serial / points.length) % contexts.length]}：${prompts[point]}。`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: `逐项运用${point}的定义和计算规则完成配对。` }
}

export function authorGrade5Math() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    const point = points[serial % points.length], context = contexts[Math.floor(serial / points.length) % contexts.length]
    let content
    if (type === 'choice') content = mathChoice(point, serial, difficulty, serial % 4)
    else if (type === 'fill') { const [stem, answer, explanation] = fillFactories[point](serial - 105); content = { stem, answer, explanation } }
    else content = mathMatch(point, serial)
    if (type !== 'match') content.stem = `${context}：${content.stem}`
    questions.push({ id: `g5-math-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'math', grade: 5, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', difficulty > 1 ? '综合应用' : '基础巩固'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
