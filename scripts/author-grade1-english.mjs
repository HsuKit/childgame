const points = ['字母与声音', '日常问候', '数字', '颜色', '家庭', '学校', '课堂指令', '图文匹配']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]
const scenes = [
  { word: 'cat', letter: 'c', sound: '/k/', greet: 'Good morning!', reply: 'Good morning!', number: 3, color: 'red', family: 'mother', familyRole: 'my mum', school: 'classroom', item: 'book', instruction: 'Open your book.', card: 'a red cat beside three books' },
  { word: 'dog', letter: 'd', sound: '/d/', greet: 'Hello!', reply: 'Hello!', number: 5, color: 'blue', family: 'father', familyRole: 'my dad', school: 'library', item: 'ruler', instruction: 'Put down your ruler.', card: 'a blue dog beside five rulers' },
  { word: 'fish', letter: 'f', sound: '/f/', greet: 'How are you?', reply: 'I am fine, thank you.', number: 2, color: 'green', family: 'sister', familyRole: 'a girl in my family', school: 'playground', item: 'ball', instruction: 'Touch the ball.', card: 'two green fish near a ball' },
  { word: 'bag', letter: 'b', sound: '/b/', greet: 'Good afternoon!', reply: 'Good afternoon!', number: 6, color: 'yellow', family: 'brother', familyRole: 'a boy in my family', school: 'art room', item: 'pencil', instruction: 'Pick up your pencil.', card: 'a yellow bag with six pencils' },
  { word: 'pen', letter: 'p', sound: '/p/', greet: 'What is your name?', reply: 'My name is Amy.', number: 4, color: 'black', family: 'grandmother', familyRole: 'my grandma', school: 'music room', item: 'desk', instruction: 'Stand by the desk.', card: 'four black pens on a desk' },
  { word: 'sun', letter: 's', sound: '/s/', greet: 'Nice to meet you.', reply: 'Nice to meet you, too.', number: 8, color: 'orange', family: 'grandfather', familyRole: 'my grandpa', school: 'school gate', item: 'chair', instruction: 'Sit on the chair.', card: 'an orange sun above eight chairs' },
  { word: 'map', letter: 'm', sound: '/m/', greet: 'Goodbye!', reply: 'Goodbye!', number: 7, color: 'white', family: 'baby', familyRole: 'the youngest child', school: 'reading corner', item: 'map', instruction: 'Look at the map.', card: 'a white map with seven stars' },
  { word: 'red', letter: 'r', sound: '/r/', greet: 'Good evening!', reply: 'Good evening!', number: 9, color: 'purple', family: 'uncle', familyRole: 'my parent’s brother', school: 'computer room', item: 'computer', instruction: 'Point to the computer.', card: 'nine purple dots on a computer card' },
  { word: 'kite', letter: 'k', sound: '/k/', greet: 'Thank you.', reply: 'You are welcome.', number: 10, color: 'pink', family: 'aunt', familyRole: 'my parent’s sister', school: 'school hall', item: 'kite', instruction: 'Show me the kite.', card: 'a pink kite with ten small circles' },
  { word: 'hat', letter: 'h', sound: '/h/', greet: 'I am sorry.', reply: 'That’s OK.', number: 1, color: 'brown', family: 'cousin', familyRole: 'my aunt or uncle’s child', school: 'garden', item: 'hat', instruction: 'Put on your hat.', card: 'one brown hat in the garden' },
  { word: 'leg', letter: 'l', sound: '/l/', greet: 'Can I help you?', reply: 'Yes, please.', number: 11, color: 'grey', family: 'parents', familyRole: 'my mother and father', school: 'dining room', item: 'cup', instruction: 'Hold the cup.', card: 'eleven grey cups in two rows' },
  { word: 'nose', letter: 'n', sound: '/n/', greet: 'May I come in?', reply: 'Yes, come in.', number: 12, color: 'gold', family: 'family', familyRole: 'people at home who care for one another', school: 'teachers’ office', item: 'notebook', instruction: 'Close your notebook.', card: 'twelve gold stars on a notebook' },
  { word: 'van', letter: 'v', sound: '/v/', greet: 'See you tomorrow.', reply: 'See you!', number: 13, color: 'silver', family: 'son', familyRole: 'a boy in a family', school: 'sports field', item: 'flag', instruction: 'Run to the flag.', card: 'a silver van near thirteen flags' },
  { word: 'zoo', letter: 'z', sound: '/z/', greet: 'Welcome to our class.', reply: 'Thank you.', number: 14, color: 'rainbow', family: 'daughter', familyRole: 'a girl in a family', school: 'science room', item: 'box', instruction: 'Put the box on the table.', card: 'a rainbow zoo sign above fourteen boxes' },
]

function choice(stem, correct, wrong, position, explanation) { const options = wrong.map(String); options.splice(position, 0, String(correct)); return { stem, options, answer: position, explanation } }
function numberWord(n) { return ['zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen'][n] }
function plural(word, count) { if (count === 1) return word; if (word.endsWith('x')) return `${word}es`; return `${word}s` }
function numberDistractors(n) { return Array.from({ length: 15 }, (_, i) => numberWord(i)).filter(word => word !== numberWord(n)).slice((n * 2) % 8, (n * 2) % 8 + 3) }
function schoolActivity(place) { return ({ classroom: 'learn with the class', library: 'read and borrow books', playground: 'run and play safely', 'art room': 'draw and make things', 'music room': 'sing and play music', 'school gate': 'enter or leave school', 'reading corner': 'sit and read quietly', 'computer room': 'learn with computers', 'school hall': 'meet for school events', garden: 'care for plants', 'dining room': 'eat lunch', 'teachers’ office': 'speak with a teacher', 'sports field': 'practise sports', 'science room': 'do simple science activities' })[place] }

function englishChoice(point, serial, difficulty, position) {
  const s = scenes[Math.floor(serial / points.length)], hard = difficulty === 3
  if (point === '字母与声音') return hard
    ? choice(`The word “${s.word}” begins with ${s.letter}. Which pair is correct?`, `${s.letter} — ${s.sound}`, [`a — /m/`, `t — /s/`, `o — /b/`], position, `“${s.word}” begins with the letter ${s.letter} and the sound ${s.sound}.`)
    : choice(`Word card: “${s.card}.” Look at the word “${s.word}”. Which letter comes first?`, s.letter, ['a', 't', 'o'], position, `“${s.word}” begins with ${s.letter}.`)
  if (point === '日常问候') return choice(`—${s.greet} —___`, s.reply, ['I am a colour.', 'Three books.', 'Open the window yesterday.'], position, `“${s.reply}” is a natural reply in this situation.`)
  if (point === '数字') return hard
    ? choice(`There are ${s.number} ${plural(s.item, s.number)}. Which word matches the number?`, numberWord(s.number), numberDistractors(s.number), position, `${s.number} is written “${numberWord(s.number)}”.`)
    : choice(`Number card: “${s.card}.” Which number is written as “${numberWord(s.number)}”?`, s.number, numberDistractors(s.number).map(word => ['zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen'].indexOf(word)), position, `“${numberWord(s.number)}” means ${s.number}.`)
  if (point === '颜色') return choice(`Which word is a colour in this card: “${s.card}”?`, s.color, [s.item, s.school, numberWord(s.number)], position, `“${s.color}” is the colour word in the card.`)
  if (point === '家庭') return hard
    ? choice(`The clue says “${s.familyRole}”. Who is it?`, s.family, ['teacher', 'classroom', 'pencil'], position, `“${s.family}” matches the family clue “${s.familyRole}”.`)
    : choice(`Which word names a family member or family group?`, s.family, [s.school, s.item, s.color], position, `“${s.family}” is a family word.`)
  if (point === '学校') return choice(`School map clue: “We ${schoolActivity(s.school)} in the ${s.school}.” Which option names this place?`, s.school, [s.family, s.color, numberWord(s.number)], position, `“${s.school}” names the school place for this activity.`)
  if (point === '课堂指令') return hard
    ? choice(`The teacher says, “${s.instruction}” What should you use or move toward?`, s.item, [s.family, s.color, numberWord(s.number)], position, `The instruction names the ${s.item}.`)
    : choice(`Which sentence is a clear classroom instruction?`, s.instruction, [`The ${s.color} is ${s.number}.`, `${s.family} is at home.`, 'Good night, Monday.'], position, `“${s.instruction}” tells someone what to do.`)
  return choice(`Read the picture card in words: “${s.card}”. Which note matches its colour, number and school item?`, `${s.color} — ${numberWord(s.number)} — ${s.item}`, [`blue — one — train`, `no colour — zero — nothing`, `${s.family} — ${s.school} — yesterday`], position, 'The matching note keeps the colour, number and school item from the card.')
}

const fills = [
  ['字母与声音', 'The word “book” begins with the letter ___.', 'b'], ['日常问候', 'When a friend says “Hello!”, you can answer “___!”', 'hello'],
  ['数字', 'The number after four is ___.', 'five'], ['颜色', 'Grass is often ___.', 'green'],
  ['家庭', 'My mother and father are my ___.', 'parents'], ['学校', 'We read books in the ___.', 'library'],
  ['课堂指令', '“___ your book” means 把书打开.', 'open'], ['图文匹配', 'Card: “one red apple”. The colour is ___.', 'red'],
  ['字母与声音', 'The word “dog” begins with ___.', 'd'], ['日常问候', '—Thank you. —You are ___.', 'welcome'],
  ['数字', 'Ten and one make ___.', 'eleven'], ['颜色', 'The sky is often ___.', 'blue'],
  ['家庭', 'My mum’s mother is my ___.', 'grandmother'], ['学校', 'We run and play on the ___.', 'playground'],
  ['课堂指令', '“___ down” asks you to take a seat.', 'sit'], ['图文匹配', 'Card: “three blue pens”. The number is ___.', 'three'],
  ['字母与声音', 'The word “sun” begins with the sound /___/.', 's'], ['日常问候', '—How are you? —I am ___.', 'fine'],
  ['数字', 'Twelve comes after ___.', 'eleven'], ['课堂指令', '“___ at the map” asks your eyes to face it.', 'look'],
  ['图文匹配', 'Card: “a yellow bag”. The object is a ___.', 'bag'],
]

const matchSets = [
  ['字母与声音', ['b', 'c', 'd', 'f'], ['book', 'cat', 'dog', 'fish']],
  ['日常问候', ['Hello!', 'How are you?', 'Thank you.', 'Goodbye!'], ['Hello!', 'I am fine.', 'You are welcome.', 'Goodbye!']],
  ['数字', ['one', 'three', 'five', 'ten'], ['1', '3', '5', '10']],
  ['颜色', ['red', 'blue', 'green', 'yellow'], ['红色', '蓝色', '绿色', '黄色']],
  ['家庭', ['mother', 'father', 'sister', 'brother'], ['妈妈', '爸爸', '姐妹', '兄弟']],
  ['学校', ['classroom', 'library', 'playground', 'art room'], ['上课', '读书', '运动', '画画']],
  ['课堂指令', ['Open your book.', 'Stand up.', 'Sit down.', 'Look at the board.'], ['打开书', '起立', '坐下', '看黑板']],
  ['图文匹配', ['one red apple', 'two blue pens', 'three green books', 'four yellow bags'], ['1个红苹果', '2支蓝色笔', '3本绿色书', '4个黄色包']],
]

function englishMatch(serial) {
  const [point, left, answers] = matchSets[(serial - 126) % matchSets.length], order = [2, 0, 3, 1], right = order.map(i => answers[i]), lookup = Object.fromEntries(order.map((x, i) => [x, i]))
  const prompts = { 字母与声音: 'Match the letters b, c, d and f with words that begin with them.', 日常问候: 'Match Hello, How are you, Thank you and Goodbye with their replies.', 数字: 'Match the number words one, three, five and ten with digits.', 颜色: 'Match red, blue, green and yellow with their Chinese colour meanings.', 家庭: 'Match mother, father, sister and brother with their Chinese family meanings.', 学校: 'Match each school place with the activity done there.', 课堂指令: 'Match each classroom instruction with its action in Chinese.', 图文匹配: 'Match each colour-and-number word card with its full Chinese note.' }
  return { point, content: { stem: `${serial < 134 ? 'Use the first-grade English card set.' : 'Review the classroom word cards.'} ${prompts[point]}`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: `Compare the meaning of all four ${point} items.` } }
}

export function authorGrade1English() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    let point = points[serial % points.length], content
    if (type === 'choice') content = englishChoice(point, serial, difficulty, serial % 4)
    else if (type === 'fill') { const [p, stem, answer] = fills[serial - 105]; point = p; content = { stem, answer, explanation: `The word “${answer}” completes the sentence correctly.` } }
    else { const item = englishMatch(serial); point = item.point; content = item.content }
    questions.push({ id: `g1-english-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'english', grade: 1, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', '低龄短句', '文字可作答'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
