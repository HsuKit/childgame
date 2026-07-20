const points = ['拼音与音节', '常用字识读', '字词搭配', '简单句', '标点初步', '短文信息', '生活表达']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]
const scenes = [
  { char: '花', pinyin: 'huā', word: '花朵', pair: '美丽的花朵', sentence: '花园里开着红花', text: '小雨给花浇水。花抬起了头。', fact: '小雨给花浇水', speak: '请问，我可以给花浇水吗？' },
  { char: '鸟', pinyin: 'niǎo', word: '小鸟', pair: '快乐的小鸟', sentence: '小鸟在树上唱歌', text: '一只小鸟落在树枝上。它唱起了歌。', fact: '小鸟在树枝上唱歌', speak: '请轻一点，不要吓到小鸟。' },
  { char: '书', pinyin: 'shū', word: '图书', pair: '有趣的图书', sentence: '我在教室里读书', text: '明明借了一本书。看完后，他把书放回书架。', fact: '明明把书放回书架', speak: '这本书我看完了，谢谢你。' },
  { char: '水', pinyin: 'shuǐ', word: '河水', pair: '清清的河水', sentence: '杯子里有温水', text: '运动以后，乐乐先擦汗，再慢慢喝水。', fact: '乐乐运动后慢慢喝水', speak: '请给我一杯温水，谢谢。' },
  { char: '月', pinyin: 'yuè', word: '月亮', pair: '弯弯的月亮', sentence: '月亮挂在夜空中', text: '天黑了，月亮升起来。星星也亮了。', fact: '天黑后月亮和星星亮了', speak: '妈妈，我们一起看月亮吧！' },
  { char: '雨', pinyin: 'yǔ', word: '下雨', pair: '细细的小雨', sentence: '小雨点落在窗上', text: '放学时下雨了。东东和同学合用一把伞。', fact: '东东和同学合用雨伞', speak: '我们一起打伞回家吧。' },
  { char: '山', pinyin: 'shān', word: '高山', pair: '高高的山峰', sentence: '远处有一座高山', text: '山脚有一条小路。大家沿着小路慢慢走。', fact: '大家沿着山脚小路走', speak: '山路有点滑，请慢慢走。' },
  { char: '鱼', pinyin: 'yú', word: '小鱼', pair: '游动的小鱼', sentence: '小鱼在水里游', text: '池水很清。三条小鱼在水草旁游来游去。', fact: '三条小鱼在水草旁游', speak: '请不要往池塘里扔东西。' },
  { char: '风', pinyin: 'fēng', word: '大风', pair: '轻轻的春风', sentence: '春风吹动柳条', text: '风吹来了。树叶轻轻摇动，风车也转起来。', fact: '风让树叶摇动、风车转动', speak: '风有点大，请把帽子戴好。' },
  { char: '云', pinyin: 'yún', word: '白云', pair: '软软的白云', sentence: '白云在天空中飘', text: '蓝天上有几朵白云。一会儿像小羊，一会儿像棉花。', fact: '白云的样子会变化', speak: '你看，那朵云像什么？' },
  { char: '家', pinyin: 'jiā', word: '回家', pair: '温暖的家', sentence: '放学后我按时回家', text: '爸爸在做饭，妈妈在摆碗。我也来帮忙。', fact: '一家人在准备晚饭', speak: '我来摆筷子，可以吗？' },
  { char: '门', pinyin: 'mén', word: '大门', pair: '打开的大门', sentence: '老师轻轻关上门', text: '上课铃响了。小文轻轻关门，回到座位。', fact: '小文关门后回到座位', speak: '对不起，我来晚了。' },
  { char: '手', pinyin: 'shǒu', word: '小手', pair: '干净的小手', sentence: '饭前要认真洗手', text: '做完手工，小美的手上有胶水。她先洗手再吃点心。', fact: '小美洗手后吃点心', speak: '请借我用一下洗手液。' },
  { char: '车', pinyin: 'chē', word: '汽车', pair: '行驶的汽车', sentence: '汽车在路上行驶', text: '红灯亮了，汽车停下来。绿灯亮后，汽车再出发。', fact: '汽车看信号灯通行', speak: '现在是红灯，请等一等。' },
  { char: '星', pinyin: 'xīng', word: '星星', pair: '闪亮的星星', sentence: '星星在夜空中闪', text: '夜里，天文老师带大家看星星。大家排队使用望远镜。', fact: '大家排队用望远镜看星星', speak: '请排好队，大家轮流看。' },
]

function choice(stem, correct, wrong, position, explanation) { const options = [...wrong]; options.splice(position, 0, correct); return { stem, options, answer: position, explanation } }

function chineseChoice(point, serial, difficulty, position) {
  const s = scenes[Math.floor(serial / points.length)], hard = difficulty === 3
  if (point === '拼音与音节') return hard
    ? choice(`“${s.word}”中“${s.char}”的正确读音是哪一个？`, s.pinyin, [`${s.pinyin.replace(/[āáǎàēéěèīíǐìōóǒòūúǔùǖǘǚǜ]/g, 'a')}`, 'mā', 'lè'], position, `“${s.char}”在“${s.word}”中读${s.pinyin}。`)
    : choice(`“${s.char}”的正确拼音是？`, s.pinyin, ['mā', 'lè', 'tǔ'], position, `“${s.char}”读${s.pinyin}。`)
  if (point === '常用字识读') return choice(`哪个词中有“${s.char}”字？`, s.word, ['木头', '早上', '同学'], position, `“${s.word}”中含有“${s.char}”字。`)
  if (point === '字词搭配') return choice(`哪个词语搭配最合适？`, s.pair, ['香香的石头', '方方的歌声', '冰冷的太阳'], position, `“${s.pair}”符合事物特点，搭配自然。`)
  if (point === '简单句') return hard
    ? choice(`把“谁、在哪里、做什么”说清楚，哪句话最完整？`, s.sentence, [`${s.char}很好。`, '在那里做。', '真漂亮呀。'], position, `“${s.sentence}”把事物和动作说清楚了。`)
    : choice(`哪句话意思完整？`, `${s.sentence}。`, [`在${s.char}。`, '很很漂亮。', '我和。'], position, '完整的句子能把谁或什么、怎么样说清楚。')
  if (point === '标点初步') {
    const ask = s.speak.includes('？') || s.speak.includes('吗') || s.speak.includes('什么')
    return choice(`句子“${s.speak.replace(/[。！？]$/, '')}___”末尾应填什么标点？`, ask ? '？' : s.speak.includes('！') ? '！' : '。', ['，', ask ? '。' : '？', '、'], position, ask ? '这是问句，末尾用问号。' : s.speak.includes('！') ? '语气较强，末尾用感叹号。' : '这是陈述句，末尾用句号。')
  }
  if (point === '短文信息') return hard
    ? choice(`读短文：“${s.text}”下面哪句话把短文的主要事情说清楚了？`, s.fact, ['短文只写了一个颜色', '文中谁也没有行动', '事情发生在海底'], position, `短文的关键信息是“${s.fact}”。`)
    : choice(`读短文：“${s.text}”短文写了什么？`, s.fact, ['小朋友在月球上', '所有东西都不见了', '大家一直在睡觉'], position, `从短文中可以找到“${s.fact}”。`)
  return choice(`在这个生活情境中，哪句话最清楚、最有礼貌？`, s.speak, ['快点，必须听我的！', '我什么也不说。', '把话说得别人听不懂。'], position, `“${s.speak}”把意思说清楚，也注意了礼貌。`)
}

const fills = [
  ['拼音与音节', '“妈”的拼音是mā，声调是第___声。', '一'], ['常用字识读', '“小河”的“河”左边是三点___。', '水'],
  ['字词搭配', '弯弯的___亮挂在天空。', '月'], ['简单句', '“小鸟在树上___歌。”填一个合适的动作。', '唱'],
  ['标点初步', '“你叫什么名字___”末尾应填问号，写作___。', '？'], ['短文信息', '读：“小猫在睡觉。”小猫正在___。', '睡觉'],
  ['生活表达', '得到别人帮助后，可以说“___谢”。', '谢'], ['拼音与音节', '“雨”的拼音是___。', 'yǔ'],
  ['常用字识读', '“日”和“月”合在一起是“___”字。', '明'], ['字词搭配', '清清的___水慢慢流。', '河'],
  ['简单句', '“我在教室里___书。”填一个合适的动作。', '读'], ['标点初步', '“今天是星期一___”末尾用句号，写作___。', '。'],
  ['短文信息', '读：“东东拿伞去上学。”东东拿了___。', '伞'], ['生活表达', '不小心碰到同学，可以说“对不___”。', '起'],
  ['拼音与音节', '“山”的拼音是shān，声母是___。', 'sh'], ['常用字识读', '“森林”两个字都有“___”。', '木'],
  ['字词搭配', '高高的___峰上有白云。', '山'], ['简单句', '一句完整的话，末尾常要有标___。', '点'],
  ['标点初步', '表达惊喜“多美呀___”末尾可以用感叹号，写作___。', '！'], ['短文信息', '读：“红灯亮了，车停下。”车为什么停下？因为亮了___灯。', '红'],
  ['生活表达', '请别人帮忙时，可以先说“___问”。', '请'],
]

const matchSets = [
  ['拼音与音节', ['花', '鸟', '书', '月'], ['huā', 'niǎo', 'shū', 'yuè']],
  ['常用字识读', ['日', '月', '山', '水'], ['太阳', '月亮', '高山', '河水']],
  ['字词搭配', ['弯弯的', '清清的', '高高的', '闪闪的'], ['月亮', '河水', '山峰', '星星']],
  ['简单句', ['小鸟', '小鱼', '白云', '汽车'], ['在树上唱歌', '在水里游', '在天空飘', '在路上行驶']],
  ['标点初步', ['陈述句', '问句', '感叹句', '句中停顿'], ['。', '？', '！', '，']],
  ['短文信息', ['谁', '哪里', '做什么', '什么时候'], ['人物', '地点', '事情', '时间']],
  ['生活表达', ['请', '谢谢', '对不起', '没关系'], ['请求帮助', '表示感谢', '表示歉意', '接受道歉']],
]

function chineseMatch(serial) {
  const [point, left, answers] = matchSets[(serial - 126) % matchSets.length], order = [2, 0, 3, 1], right = order.map(i => answers[i]), lookup = Object.fromEntries(order.map((x, i) => [x, i]))
  const prompts = { 拼音与音节: '把汉字和正确拼音连起来', 常用字识读: '把常用字和词语连起来', 字词搭配: '把词语搭配连起来', 简单句: '把事物和它做的事情连起来', 标点初步: '把句子类型和标点连起来', 短文信息: '把阅读问题和信息类型连起来', 生活表达: '把礼貌用语和作用连起来' }
  return { point, content: { stem: `${serial < 133 ? '一年级语文小卡片' : '生活阅读练习'}：${prompts[point]}。`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: `根据${point}的基础知识逐项配对。` } }
}

export function authorGrade1Chinese() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    let point = points[serial % points.length], content
    if (type === 'choice') content = chineseChoice(point, serial, difficulty, serial % 4)
    else if (type === 'fill') { const [p, stem, answer] = fills[serial - 105]; point = p; content = { stem, answer, explanation: `结合一年级语文知识，填“${answer}”最合适。` } }
    else { const item = chineseMatch(serial); point = item.point; content = item.content }
    questions.push({ id: `g1-chinese-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'chinese', grade: 1, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', '低龄短句', difficulty > 1 ? '生活理解' : '基础识读'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
