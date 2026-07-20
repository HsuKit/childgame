const points = ['数的认识', '数的比较', '基本加法', '基本减法', '位置与顺序', '常见图形', '钟表初步', '分类统计', '一步问题']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]
const contexts = ['整理书包', '水果分享', '操场游戏', '图书角', '积木乐园', '动物观察', '班级值日', '美术课堂', '春游准备', '家庭晚餐', '校园花园', '玩具商店', '运动小组', '生日会', '公交站', '手工活动']
const shapeBasics = [
  ['钟面的外圈没有角，它像什么平面图形？', '圆', ['三角形', '正方形', '长方形'], '钟面的外圈像圆。'],
  ['一面小旗有3条直边和3个角，它像什么图形？', '三角形', ['圆', '正方形', '长方形'], '三角形有3条边和3个角。'],
  ['书本的封面有4条直边，上下一样长、左右一样长，它像什么图形？', '长方形', ['圆', '三角形', '球'], '书本封面通常像长方形。'],
  ['一块方巾有4条一样长的直边，它像什么图形？', '正方形', ['圆', '三角形', '长方体'], '正方形的4条边一样长。'],
  ['一枚硬币的平平一面像什么图形？', '圆', ['三角形', '正方形', '长方形'], '硬币的平面外形像圆。'],
  ['小屋尖尖的屋顶轮廓像什么平面图形？', '三角形', ['圆', '正方形', '长方形'], '尖屋顶的轮廓常像三角形。'],
  ['教室的门又高又长，它的正面像什么图形？', '长方形', ['圆', '三角形', '正方体'], '门的正面通常像长方形。'],
  ['方格纸上的一个小方格，4条边一样长，它是什么图形？', '正方形', ['圆', '三角形', '长方体'], '小方格是正方形。'],
  ['一个圆环的边一直弯曲，一个角也没有。它是什么图形？', '圆', ['三角形', '正方形', '长方形'], '边弯曲且没有角的平面图形是圆。'],
  ['用3根直小棒首尾相连，能围成什么图形？', '三角形', ['圆', '正方形', '长方形'], '3根直小棒首尾相连能围成三角形。'],
  ['黑板的正面很长，有4个角，它像什么图形？', '长方形', ['圆', '三角形', '球'], '黑板的正面通常像长方形。'],
  ['地面上的方砖有4条直边，每条都一样长。它像什么图形？', '正方形', ['圆', '三角形', '长方体'], '四条边一样长的地砖正面像正方形。'],
]

function choice(stem, correct, wrong, position, explanation) {
  const answer = String(correct), used = new Set([answer])
  const options = wrong.map((item, i) => { let value = String(item); while (used.has(value)) value = `${value}${i + 1}`; used.add(value); return value })
  options.splice(position, 0, answer); return { stem, options, answer: position, explanation }
}

function mathChoice(point, serial, difficulty, position) {
  const block = Math.floor(serial / points.length), k = block + 2, hard = difficulty === 3
  if (point === '数的认识') {
    const n = 10 + k % 10
    if (hard) return choice(`一个数比${n}大1，又比${n + 2}小1，这个数是多少？`, n + 1, [n, n + 2, n - 1], position, `同时符合两个条件的数是${n + 1}。`)
    return choice(`${n}里面有几个十和几个一？`, `1个十和${n - 10}个一`, [`${n}个十和0个一`, `0个十和${n}个一`, `1个十和${n - 9}个一`], position, `${n}=10+${n - 10}，所以有1个十和${n - 10}个一。`)
  }
  if (point === '数的比较') {
    const a = 5 + k, b = a + (hard ? 2 : 1)
    if (hard) return choice(`小红有${a}颗星，小明比小红多2颗。谁的星多？`, '小明', ['小红', '一样多', '不能判断'], position, `小明有${a}+2=${a + 2}颗，比${a}颗多。`)
    return choice(`${a}和${b}，哪个数大？`, b, [a, a - 1, '一样大'], position, `${b}排在${a}后面，所以${b}大。`)
  }
  if (point === '基本加法') {
    const a = 3 + k % 6, b = 2 + k % 5, sum = a + b
    if (hard) return choice(`盒里有${a}支笔，又放进一些后共有${sum + 2}支。放进了多少支？`, b + 2, [sum, a, b], position, `用总数减原有数：${sum + 2}-${a}=${b + 2}支。`)
    return choice(`${a}+${b}=？`, sum, [sum - 1, sum + 1, a], position, `把${a}和${b}合起来是${sum}。`)
  }
  if (point === '基本减法') {
    const total = 12 + k % 7, used = 3 + k % 5, remain = total - used
    if (hard) return choice(`原有${total}个气球，送出一些后还剩${remain - 1}个。送出了多少个？`, used + 1, [remain - 1, used, total], position, `用原有数减剩下数：${total}-${remain - 1}=${used + 1}个。`)
    return choice(`${total}-${used}=？`, remain, [remain - 1, remain + 1, used], position, `从${total}里去掉${used}，还剩${remain}。`)
  }
  if (point === '位置与顺序') {
    const place = 3 + k % 5
    if (hard) return choice(`从左数，小兔排第${place}。它左边有几个小动物？`, place - 1, [place, place + 1, 1], position, `排第${place}，前面也就是左边有${place - 1}个。`)
    if (k % 3 === 0) return choice('书包在椅子下面。椅子在书包的哪边？', '上面', ['下面', '左边', '右边'], position, '书包在椅子下面，椅子就在书包上面。')
    if (k % 3 === 1) return choice('小猫在小狗的左边。小狗在小猫的哪边？', '右边', ['左边', '上边', '下面'], position, '两个物体左右位置相反，小狗在小猫右边。')
    return choice('小鸟在树枝上面。树枝在小鸟的哪边？', '下面', ['上面', '左边', '右边'], position, '小鸟在树枝上面，树枝就在小鸟下面。')
  }
  if (point === '常见图形') {
    if (hard && k % 2 === 0) return choice('一个图形有4条直边，4个角，四条边一样长。它最可能是什么图形？', '正方形', ['圆', '三角形', '长方体'], position, '正方形有4条一样长的直边和4个角。')
    if (hard) return choice('一个平面图形有3条直边和3个角。它是什么图形？', '三角形', ['圆', '正方形', '长方体'], position, '三角形有3条直边和3个角。')
    const [stem, answer, wrong, explanation] = shapeBasics[block % shapeBasics.length]
    return choice(stem, answer, wrong, position, explanation)
  }
  if (point === '钟表初步') {
    const hour = 6 + k % 6
    if (hard) return choice(`活动${hour}时开始，1小时后结束。结束时间是？`, `${hour + 1}时`, [`${hour}时`, `${hour - 1}时`, `${hour + 2}时`], position, `${hour}时过1小时是${hour + 1}时。`)
    return choice(`分针指向12，时针指向${hour}，现在是？`, `${hour}时`, [`${hour}时半`, `${hour + 1}时`, '12时'], position, `分针指12表示整时，时针指${hour}就是${hour}时。`)
  }
  if (point === '分类统计') {
    const apples = 3 + k % 4, pears = apples + 2, bananas = 2 + k % 3
    if (hard) return choice(`苹果${apples}个，梨${pears}个，香蕉${bananas}个。梨比苹果多几个？`, pears - apples, [pears, apples, pears + apples], position, `${pears}-${apples}=${pears - apples}个。`)
    return choice(`苹果${apples}个，梨${pears}个，香蕉${bananas}个。哪种水果最多？`, '梨', ['苹果', '香蕉', '一样多'], position, `梨有${pears}个，数量最多。`)
  }
  const first = 5 + k % 7, added = 2 + k % 5
  if (hard) { const now = first + added; return choice(`车上原有${first}人，又上来${added}人。车限坐20人，现在的人数是？`, `${now}人，没有超过20人`, [`${first}人，超过20人`, `${added}人，没有超过20人`, `${20 - now}人，超过20人`], position, `只需一次加法：${first}+${added}=${now}，${now}比20小，没有超过限坐人数。`) }
  return choice(`篮子里有${first}个苹果，又放入${added}个，现在有多少个？`, `${first + added}个`, [`${first}个`, `${added}个`, `${first - added}个`], position, `求现在一共有多少，用加法：${first}+${added}=${first + added}个。`)
}

const fillFactories = {
  数的认识: i => [`15里面有1个十和___个一。`, '5', '15由1个十和5个一组成。'],
  数的比较: i => [`${8 + i}比${7 + i}___。`, '大', '后一个数比前一个数大1。'],
  基本加法: i => [`${3 + i % 5}+4=___。`, String(7 + i % 5), '把两个数合起来。'],
  基本减法: i => [`${12 + i % 5}-3=___。`, String(9 + i % 5), '从总数中去掉3。'],
  位置与顺序: () => ['从左数第1个，也就是最___边的一个。', '左', '从左开始数，第1个在最左边。'],
  常见图形: () => ['三角形有___个角。', '3', '三角形有3条边和3个角。'],
  钟表初步: () => ['分针指12，时针指8，是___时。', '8', '分针指12表示整时。'],
  分类统计: () => ['红球5个、蓝球3个，___球多。', '红', '5比3大，所以红球多。'],
  一步问题: i => [`有${6 + i}本书，又来2本，一共有___本。`, String(8 + i), '求一共用加法。'],
}

const matchData = {
  数的认识: [['10', '12', '15', '19'], ['1个十', '1个十2个一', '1个十5个一', '1个十9个一']],
  数的比较: [['3<5', '8>6', '7=7', '10>9'], ['5更大', '8更大', '一样大', '10更大']],
  基本加法: [['2+3', '4+4', '6+3', '7+5'], ['5', '8', '9', '12']],
  基本减法: [['8-3', '10-2', '12-3', '15-5'], ['5', '8', '9', '10']],
  位置与顺序: [['上', '下', '左', '右'], ['天空方向', '地面方向', '靠左方向', '靠右方向']],
  常见图形: [['圆', '三角形', '正方形', '长方形'], ['没有角', '3个角', '4条边一样长', '对边一样长']],
  钟表初步: [['6:00', '7:30', '8:00', '9:30'], ['6时', '7时半', '8时', '9时半']],
  分类统计: [['水果', '文具', '动物', '交通工具'], ['苹果', '铅笔', '小猫', '汽车']],
  一步问题: [['求一共', '求还剩', '求多几个', '求少几个'], ['用加法', '用减法', '较大数减较小数', '较大数减较小数']],
}

function mathMatch(point, serial) {
  const [left, answers] = matchData[point], order = [2, 0, 3, 1], right = order.map(i => answers[i]), lookup = Object.fromEntries(order.map((x, i) => [x, i]))
  const prompts = { 数的认识: '把数与组成连起来', 数的比较: '把比较式与意思连起来', 基本加法: '把加法算式与得数连起来', 基本减法: '把减法算式与得数连起来', 位置与顺序: '把位置词与方向连起来', 常见图形: '把图形与特点连起来', 钟表初步: '把钟面时间与读法连起来', 分类统计: '把物品与类别连起来', 一步问题: '把问题类型与合适的方法连起来' }
  return { stem: `${contexts[Math.floor(serial / points.length) % contexts.length]}：${prompts[point]}。`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: `根据${point}的基础知识逐项配对。` }
}

export function authorGrade1Math() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    const point = points[serial % points.length], context = contexts[Math.floor(serial / points.length) % contexts.length]
    let content
    if (type === 'choice') content = mathChoice(point, serial, difficulty, serial % 4)
    else if (type === 'fill') { const [stem, answer, explanation] = fillFactories[point](serial - 105); content = { stem, answer, explanation } }
    else content = mathMatch(point, serial)
    if (type !== 'match') content.stem = `${context}：${content.stem}`
    questions.push({ id: `g1-math-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'math', grade: 1, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', '低龄短句', difficulty > 1 ? '生活思考' : '基础认知'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
