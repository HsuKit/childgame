const points = ['分数与百分数', '比', '比例', '圆', '空间观念', '负数初步', '统计与可能性', '综合建模', '策略选择']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]
const contexts = ['毕业项目展', '校园节能周', '社区运动会', '湿地调查站', '图书漂流节', '科学实验室', '城市规划馆', '传统工艺坊', '公益义卖场', '气象观测组', '研学路线设计', '健康数据中心', '公园改造计划', '班级预算会', '交通调查组', '农业实践园']

function gcd(a, b) { while (b) [a, b] = [b, a % b]; return a }
function ratio(a, b) { const d = gcd(a, b); return `${a / d}:${b / d}` }
function choice(stem, correct, wrong, position, explanation) {
  const answer = String(correct), used = new Set([answer])
  const options = wrong.map((item, i) => { let value = String(item); while (used.has(value)) value = `${value}${i + 1}`; used.add(value); return value })
  options.splice(position, 0, answer); return { stem, options, answer: position, explanation }
}

function mathChoice(point, serial, difficulty, position) {
  const block = Math.floor(serial / points.length), k = block + 3, hard = difficulty === 3
  if (point === '分数与百分数') {
    const total = 100 + k * 20, percent = 20 + (k % 4) * 5, part = total * percent / 100
    if (hard) { const after = part * 1.2; return choice(`某类材料原占总量的${percent}%，改进后该类数量增加20%，总量暂不变。现在该类相当于原总量的百分之几？`, `${percent * 1.2}%`, [`${percent + 20}%`, `${percent - 20}%`, `${percent / 1.2}%`], position, `以原总量为单位1，原来占${percent}%，增加20%后是${percent}%×1.2=${percent * 1.2}%。`) }
    return choice(`${total}件作品中有${percent}%获推荐，获推荐多少件？`, `${part}件`, [`${percent}件`, `${total - part}件`, `${part + 10}件`], position, `${total}×${percent}%=${part}件。`)
  }
  if (point === '比') {
    const a = 6 + k, b = 9 + k * 2
    if (hard) { const sum = a + b, total = sum * 4; return choice(`甲、乙两组人数比为${a}:${b}，总人数是${total}。甲组有多少人？`, `${a * 4}人`, [`${b * 4}人`, `${total / 2}人`, `${sum}人`], position, `比的总份数是${sum}，每份${total}÷${sum}=4人，甲组${a}×4=${a * 4}人。`) }
    return choice(`把${a}:${b}化成最简整数比。`, ratio(a, b), [`${a + b}:1`, `${b}:${a}`, `${a}:${b + 1}`], position, `同时除以最大公因数，最简比是${ratio(a, b)}。`)
  }
  if (point === '比例') {
    const scale = 3 + k % 4, x = 5 + k
    if (hard) return choice(`地图上${scale}厘米表示实际${scale * 4}千米。另一段图上长${x}厘米，实际长多少千米？`, `${x * 4}千米`, [`${x + 4}千米`, `${x * scale}千米`, `${x / 4}千米`], position, `每厘米表示4千米，${x}厘米表示${x * 4}千米。`)
    return choice(`比例x:${x * scale}=${1}:${scale}中，x可以取下面哪个数？`, x, [x + 1, x * scale, scale], position, `${x}:${x * scale}同时除以${x}，正好等于1:${scale}。`)
  }
  if (point === '圆') {
    const r = 3 + k % 5, circumference = 2 * 3.14 * r, area = 3.14 * r * r
    if (hard) return choice(`圆形花坛半径${r}米，沿外圈铺一周边条并在内部铺草。边条长度和草地面积分别是多少？（π取3.14）`, `${circumference.toFixed(2)}米，${area.toFixed(2)}平方米`, [`${area.toFixed(2)}米，${circumference.toFixed(2)}平方米`, `${(3.14 * r).toFixed(2)}米，${(2 * r * r).toFixed(2)}平方米`, `${2 * r}米，${r * r}平方米`], position, `周长=2πr=${circumference.toFixed(2)}米，面积=πr²=${area.toFixed(2)}平方米。`)
    return choice(`半径${r}厘米的圆，周长是多少？（π取3.14）`, `${circumference.toFixed(2)}厘米`, [`${area.toFixed(2)}厘米`, `${(3.14 * r).toFixed(2)}厘米`, `${2 * r}厘米`], position, `圆周长=2πr=2×3.14×${r}=${circumference.toFixed(2)}厘米。`)
  }
  if (point === '空间观念') {
    const edge = 3 + k % 4
    if (hard) return choice(`一个无盖正方体收纳盒棱长${edge}分米，制作外壳至少需要多少平方分米材料？`, `${5 * edge * edge}平方分米`, [`${6 * edge * edge}平方分米`, `${edge ** 3}平方分米`, `${4 * edge}平方分米`], position, `无盖正方体有5个面，每面${edge * edge}平方分米，共${5 * edge * edge}平方分米。`)
    return choice(`棱长${edge}厘米的正方体有几个完全相同的正方形面？`, '6个', ['4个', '8个', `${edge}个`], position, '正方体有6个完全相同的正方形面。')
  }
  if (point === '负数初步') {
    const below = 4 + k, rise = 6 + k % 4, final = -below + rise
    if (hard) return choice(`清晨气温为-${below}℃，中午上升${rise}℃，夜间又下降3℃，夜间气温是多少？`, `${final - 3}℃`, [`${below + rise - 3}℃`, `${final}℃`, `${-below - rise - 3}℃`], position, `从-${below}开始，上升${rise}再下降3：-${below}+${rise}-3=${final - 3}℃。`)
    return choice(`海拔0米以下${below}米记作什么？`, `-${below}米`, [`+${below}米`, '0米', `${below * 2}米`], position, '以海平面为0，低于海平面用负数表示。')
  }
  if (point === '统计与可能性') {
    const red = 2 + k % 4, blue = red + 3, green = 1 + k % 3, total = red + blue + green
    if (hard) return choice(`袋中有${red}个红球、${blue}个蓝球、${green}个绿球。要使摸到红球与蓝球的可能性相同，至少应增加多少个红球？`, `${blue - red}个`, [`${red}个`, `${green}个`, `${total}个`], position, `球除颜色外相同，数量相等时可能性相同，应增加${blue}-${red}=${blue - red}个红球。`)
    return choice(`袋中有${red}个红球、${blue}个蓝球、${green}个绿球，任意摸一个，哪种颜色最可能？`, '蓝球', ['红球', '绿球', '三种一样'], position, `蓝球有${blue}个，数量最多，所以摸到的可能性最大。`)
  }
  if (point === '综合建模') {
    const speed = 45 + k, hours = 2 + k % 3, rest = 20 + k, distance = speed * hours + rest
    if (hard) return choice(`研学车前${hours}小时平均每小时行${speed}千米，休息后又行${rest}千米。若全程计划${distance + 30}千米，还剩多少千米？`, '30千米', [`${distance}千米`, `${rest + 30}千米`, `${speed + hours + rest}千米`], position, `已行${speed}×${hours}+${rest}=${distance}千米，计划比它多30千米，所以还剩30千米。`)
    return choice(`每小时行${speed}千米，${hours}小时行多少千米？`, `${speed * hours}千米`, [`${speed + hours}千米`, `${speed * hours + rest}千米`, `${speed}千米`], position, `路程=速度×时间=${speed}×${hours}=${speed * hours}千米。`)
  }
  const item = 8 + k, count = 5 + k % 4, discount = 12 + k % 5, full = item * count, final = full - discount
  if (hard) return choice(`购买${count}件单价${item}元的用品，可选择“总价减${discount}元”或“按八五折付款”。哪种方案更省？`, final < full * 0.85 ? `减${discount}元更省` : final > full * 0.85 ? '八五折更省' : '两种一样', [`原价付款更省`, `只看优惠数字无法比较`, final < full * .85 ? '八五折更省' : `减${discount}元更省`], position, `原价${full}元，减价后${final}元，八五折后${(full * .85).toFixed(2)}元，比较实际付款额即可。`)
  return choice(`解决“比较两种优惠方案”时，最可靠的策略是什么？`, '分别算出实际付款额再比较', ['只比较“折”和“减”的字数', '选择广告颜色更亮的', '不看原价直接猜'], position, '不同优惠形式要转化为同一指标——实际付款额——再比较。')
}

const fillFactories = {
  分数与百分数: i => [`${25 + i}%写成小数是___。`, String((25 + i) / 100), '百分数除以100化成小数。'],
  比: i => [`${8 + i}:${12 + i}化简时，两项要同时除以它们的最大公___数。`, '因', '化简比要同时除以最大公因数。'],
  比例: i => [`比例2:5=x:${15 + i * 5}，x=___。`, String((15 + i * 5) * 2 / 5), '根据比例基本性质求未知项。'],
  圆: i => [`直径${6 + i % 5}厘米的圆，半径是___厘米。`, String((6 + i % 5) / 2), '半径是直径的一半。'],
  空间观念: i => [`长方体长${4 + i}厘米、宽3厘米、高2厘米，体积是___立方厘米。`, String((4 + i) * 6), '长方体体积=长×宽×高。'],
  负数初步: i => [`比0低${3 + i}的数记作___。`, String(-(3 + i)), '低于基准0用负数表示。'],
  统计与可能性: i => [`袋中白球8个、黑球${3 + i % 4}个，摸到___球的可能性更大。`, '白', '数量越多，在随机摸取中可能性越大。'],
  综合建模: i => [`单价${7 + i}元，数量4件，总价是___元。`, String((7 + i) * 4), '总价=单价×数量。'],
  策略选择: () => ['比较不同单位的数据前，应先统一___。', '单位', '统一单位后才能直接比较。'],
}

const matchData = {
  分数与百分数: [['1/2', '1/4', '3/5', '0.8'], ['50%', '25%', '60%', '80%']],
  比: [['2:3', '4:5', '1:2', '3:4'], ['4:6', '8:10', '5:10', '9:12']],
  比例: [['2:3', '3:5', '4:7', '5:8'], ['6:9', '9:15', '8:14', '15:24']],
  圆: [['半径', '直径', '周长', '面积'], ['d÷2', '2r', '2πr', 'πr²']],
  空间观念: [['立方厘米', '立方分米', '平方米', '升'], ['小方块体积', '纸箱体积', '地面面积', '水箱容量']],
  负数初步: [['+5', '0', '-3', '-8'], ['高于基准5', '基准点', '低于基准3', '低于基准8']],
  统计与可能性: [['平均数', '中位数', '最大可能性', '不可能事件'], ['总数÷份数', '排序后的中间数', '数量最多', '概率为0']],
  综合建模: [['总价', '路程', '工作总量', '浓度'], ['单价×数量', '速度×时间', '效率×时间', '溶质÷溶液']],
  策略选择: [['画图', '列表', '假设', '倒推'], ['表示空间关系', '有序整理情况', '先设一种情况', '从结果回到条件']],
}

function mathMatch(point, serial) {
  const [left, answers] = matchData[point], order = [2, 0, 3, 1], right = order.map(i => answers[i]), lookup = Object.fromEntries(order.map((x, i) => [x, i]))
  const prompts = { 分数与百分数: '匹配等值的分数、小数与百分数', 比: '匹配能够化为同一最简比的两组比', 比例: '匹配可以组成比例的比', 圆: '匹配圆的概念与计算式', 空间观念: '匹配量的单位与生活对象', 负数初步: '匹配有理数与相对基准的含义', 统计与可能性: '匹配统计概念与求法或特征', 综合建模: '匹配实际数量与建模关系', 策略选择: '匹配解题策略与适用目的' }
  return { stem: `${contexts[Math.floor(serial / points.length) % contexts.length]}：${prompts[point]}。`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: `根据${point}的定义、等值关系或适用条件逐项配对。` }
}

export function authorGrade6Math() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    const point = points[serial % points.length], context = contexts[Math.floor(serial / points.length) % contexts.length]
    let content
    if (type === 'choice') content = mathChoice(point, serial, difficulty, serial % 4)
    else if (type === 'fill') { const [stem, answer, explanation] = fillFactories[point](serial - 105); content = { stem, answer, explanation } }
    else content = mathMatch(point, serial)
    if (type !== 'match') content.stem = `${context}：${content.stem}`
    questions.push({ id: `g6-math-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'math', grade: 6, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', difficulty > 1 ? '建模推理' : '基础巩固'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
