import { explainEnglishFill, explainEnglishMatch, explainEnglishPoliteRequest } from './lib/explanation-copy.mjs'

const points = ['句子阅读', '短对话', '一般现在时', '疑问词', '时间表达', '日常活动', '显性信息', '情境交际']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]

const scenarios = [
  { name: 'Tom', time: '7:00', activity: 'gets up', place: 'home', thing: 'milk', like: 'football', day: 'Monday' },
  { name: 'Lucy', time: '7:30', activity: 'has breakfast', place: 'kitchen', thing: 'bread', like: 'drawing', day: 'Tuesday' },
  { name: 'Mike', time: '8:00', activity: 'goes to school', place: 'school', thing: 'book', like: 'reading', day: 'Wednesday' },
  { name: 'Amy', time: '9:00', activity: 'has an English class', place: 'classroom', thing: 'pencil', like: 'English', day: 'Thursday' },
  { name: 'Jack', time: '10:00', activity: 'plays basketball', place: 'playground', thing: 'ball', like: 'basketball', day: 'Friday' },
  { name: 'Lily', time: '12:00', activity: 'has lunch', place: 'dining room', thing: 'rice', like: 'cooking', day: 'Saturday' },
  { name: 'Peter', time: '3:00', activity: 'flies a kite', place: 'park', thing: 'kite', like: 'kites', day: 'Sunday' },
  { name: 'Kate', time: '4:00', activity: 'does her homework', place: 'study', thing: 'ruler', like: 'maths', day: 'Monday' },
  { name: 'Sam', time: '5:00', activity: 'waters the flowers', place: 'garden', thing: 'water', like: 'plants', day: 'Tuesday' },
  { name: 'Anna', time: '6:00', activity: 'walks her dog', place: 'street', thing: 'dog', like: 'animals', day: 'Wednesday' },
  { name: 'Ben', time: '6:30', activity: 'helps his mother', place: 'kitchen', thing: 'plate', like: 'helping', day: 'Thursday' },
  { name: 'Grace', time: '7:00', activity: 'reads a story', place: 'bedroom', thing: 'storybook', like: 'stories', day: 'Friday' },
  { name: 'David', time: '8:00', activity: 'packs his bag', place: 'bedroom', thing: 'notebook', like: 'science', day: 'Saturday' },
  { name: 'Helen', time: '9:00', activity: 'goes to bed', place: 'bedroom', thing: 'clock', like: 'music', day: 'Sunday' },
]

function choice(stem, correct, wrong, position, explanation) {
  const options = [...wrong]
  options.splice(position, 0, correct)
  return { stem, options, answer: position, explanation }
}

function englishChoice(point, serial, position) {
  const index = Math.floor(serial / points.length)
  const s = scenarios[index]
  const massNouns = new Set(['milk', 'bread', 'rice', 'water'])
  const thingPhrase = massNouns.has(s.thing) ? `some ${s.thing}` : `a ${s.thing}`
  const placePhrase = s.place === 'home' ? 'at home' : s.place === 'school' ? 'at school' : `in the ${s.place}`
  const context = `On ${s.day}, ${s.name} is ${placePhrase} with ${thingPhrase}. ${s.name} likes ${s.like}.`
  if (serial >= 89) return englishHardChoice(point, s, position, { context, thingPhrase, placePhrase })
  if (serial >= 52) return englishAppliedChoice(point, s, position, { thingPhrase, placePhrase })
  const verb = s.activity.split(' ')[0]
  const rest = s.activity.split(' ').slice(1).join(' ')
  const base = s.activity.replace(/^has /, 'have ').replace(/^goes /, 'go ').replace(/^does /, 'do ').replace(/^flies /, 'fly ').replace(/^walks /, 'walk ').replace(/^waters /, 'water ').replace(/^helps /, 'help ').replace(/^reads /, 'read ').replace(/^packs /, 'pack ').replace(/^gets /, 'get ').replace(/^plays /, 'play ')
  if (point === '句子阅读') {
    if (index % 3 === 1) {
      return choice(`Read: “${s.name} has ${thingPhrase}.” Who has ${thingPhrase}?`, s.name, ['John', 'Mary', 'Tony'], position, `The sentence names ${s.name}.`)
    }
    if (index % 3 === 2) {
      return choice(`Read: “${s.name} has ${thingPhrase}.” Which sentence is true?`, `${s.name} has ${thingPhrase}.`, [`${s.name} has a train.`, `${s.name} has nothing.`, `${s.name} is on the moon.`], position, `The true sentence repeats the stated fact about ${s.name}.`)
    }
    return choice(`Read: “${s.name} has ${thingPhrase}.” What does ${s.name} have?`, thingPhrase, ['a train', 'a computer game', 'a red bike'], position, `The sentence says ${s.name} has ${thingPhrase}.`)
  }
  if (point === '短对话') {
    return choice(`Mini talk: ${s.name} is ${placePhrase}. —What do you like? —I like ${s.like}.`, s.like, [s.thing, s.place, s.day], position, `“I like ${s.like}” tells the thing or activity liked.`)
  }
  if (point === '一般现在时') {
    return choice(`${s.name} ___ ${rest}. Choose the verb.`, verb, [base.split(' ')[0], `${verb}ing`, 'can'], position, `${s.name} is one person, so the verb is “${verb}”.`)
  }
  if (point === '疑问词') {
    return choice(`${s.day} plan: ${s.name} ${s.activity} at ${s.time}. Which word asks the time?`, 'When', ['Where', 'Who', 'What colour'], position, 'A time answer uses the question word “When”.')
  }
  if (point === '时间表达') {
    const [hour, minute] = s.time.split(':')
    const words = minute === '00' ? `${hour} o'clock` : minute === '30' ? `half past ${hour}` : `${hour} ${minute}`
    return choice(`${s.name} ${s.activity} at ${s.time}. Choose the English time words.`, words, [`${Number(hour) + 1} o'clock`, `half past ${Number(hour) + 1}`, `${hour} fifteen`], position, `${s.time} can be read as “${words}”.`)
  }
  if (point === '日常活动') {
    return choice(`Read: “${s.name} ${s.activity}.” Which words show the activity?`, s.activity, [`buys a spaceship`, `finds a dinosaur`, `visits the moon`], position, `“${s.activity}” is the activity in the sentence.`)
  }
  if (point === '显性信息') {
    return choice(`Read: “${s.name} is ${placePhrase}.” Where is ${s.name}?`, placePhrase, ['on a train', 'at the zoo', 'on the moon'], position, `The sentence says ${s.name} is ${placePhrase}.`)
  }
  return choice(`${placePhrase}, a friend gives ${s.name} ${thingPhrase}. ${s.name} says “Thank you.”`, 'You are welcome.', ['Good night.', 'Here you are?', 'I am ten.'], position, `“You are welcome.” is a polite reply to “Thank you.”`)
}

function englishAppliedChoice(point, s, position, { thingPhrase, placePhrase }) {
  const verb = s.activity.split(' ')[0], rest = s.activity.split(' ').slice(1).join(' ')
  const base = ({ has: 'have', goes: 'go', does: 'do', flies: 'fly' })[verb] ?? verb.replace(/s$/, '')
  if (point === '句子阅读') return choice(`Read: “${s.name} is ${placePhrase}. ${s.name} ${s.activity}.” What is true?`, `${s.name} ${s.activity}.`, [`${s.name} is on a train.`, `${s.name} has no plan.`, `${s.name} dislikes ${s.like}.`], position, `The second sentence says ${s.name} ${s.activity}.`)
  if (point === '短对话') return choice(`—What does ${s.name} like? —___`, `${s.name} likes ${s.like}.`, [`It is ${s.time}.`, `${s.name} has ${thingPhrase}.`, `Today is ${s.day}.`], position, `The question asks what ${s.name} likes.`)
  if (point === '一般现在时') return choice(`${s.name} ___ ${rest} every week.`, verb, [base, `${base}ing`, 'are'], position, `One person needs the verb “${verb}”.`)
  if (point === '疑问词') return choice(`___ is ${s.name}? ${placePhrase}.`, 'Where', ['When', 'Who', 'What colour'], position, 'A place answer uses “Where”.')
  if (point === '时间表达') return choice(`Schedule card: ${s.name} ${s.activity} at ${s.time}. Which time matches?`, s.time, [`${Number(s.time.split(':')[0]) + 1}:00`, '1:15', '12:30'], position, `The sentence gives the time ${s.time}.`)
  if (point === '日常活动') return choice(`Plan: “${s.name} ${s.activity} at ${s.time}.” What happens?`, s.activity, ['asks the time', 'loses the bag', 'changes the day'], position, `The activity is ${s.activity}.`)
  if (point === '显性信息') return choice(`Read: “${s.name} has ${thingPhrase} and likes ${s.like}.” Which fact is stated?`, `${s.name} likes ${s.like}.`, [`${s.name} has a train.`, `${s.name} is sleeping.`, `${s.name} is at the zoo.`], position, `The sentence directly says ${s.name} likes ${s.like}.`)
  return choice(`${s.name} needs the ${s.thing}. Which request is polite?`, `May I use the ${s.thing}?`, [`Give me the ${s.thing} now!`, `I never need it.`, `What colour is Monday?`], position, explainEnglishPoliteRequest(`May I use the ${s.thing}?`))
}

function englishHardChoice(point, s, position, { context, thingPhrase, placePhrase }) {
  if (point === '句子阅读') return choice(`Read: “${context} At ${s.time}, ${s.name} ${s.activity}.” Which sentence gives both the day and the activity?`, `On ${s.day}, ${s.name} ${s.activity}.`, [`${s.name} has no plan on ${s.day}.`, `${s.name} only asks about ${s.time}.`, `${s.name} dislikes ${s.like}.`], position, `The text states the day ${s.day} and the activity “${s.activity}”.`)
  if (point === '短对话') return choice(`Read: “${s.name} cannot find the ${s.thing}. A friend points to it.” —Thank you for helping me. —___`, 'You are welcome. It is over there.', ['I do not know your name.', 'Good night. I am sleeping.', 'It is Monday yesterday.'], position, 'The reply is polite and continues the situation by showing where the item is.')
  if (point === '一般现在时') {
    const verb = s.activity.split(' ')[0], rest = s.activity.split(' ').slice(1).join(' ')
    const base = ({ has: 'have', goes: 'go', does: 'do', flies: 'fly' })[verb] ?? verb.replace(/s$/, '')
    return choice(`${context} Complete both facts: ${s.name} ___ ${rest} at ${s.time} and likes ${s.like}.`, verb, [base, `${base}ing`, 'are'], position, `The subject is one person, so “${verb}” completes the regular activity.`)
  }
  if (point === '疑问词') return choice(`${context} Read the schedule line: “${s.name} is ${placePhrase} at ${s.time}.” Which pair of question words asks about the place and then the time?`, 'Where; When', ['Who; What', 'When; Where', 'How many; What colour'], position, '“Where” asks about a place; “When” asks about a time.')
  if (point === '时间表达') {
    const [hour, minute] = s.time.split(':').map(Number), endMinutes = hour * 60 + minute + 30, endH = Math.floor(endMinutes / 60), endM = endMinutes % 60
    return choice(`On ${s.day}, ${s.name} is ${placePhrase} for the ${s.like} activity. It starts at ${s.time} and finishes 30 minutes later. When does it finish?`, `${endH}:${String(endM).padStart(2, '0')}`, [`${hour}:${String(minute).padStart(2, '0')}`, `${endH + 1}:${String(endM).padStart(2, '0')}`, `${hour}:15`], position, `Thirty minutes after ${s.time} is ${endH}:${String(endM).padStart(2, '0')}.`)
  }
  if (point === '日常活动') return choice(`Read the plan: “First ${s.name} packs the bag. Then ${s.name} ${s.activity}. After that, ${s.name} reads.” What happens second?`, s.activity, ['packs the bag', 'reads', 'goes to sleep before everything'], position, `The order word “Then” introduces the second activity: ${s.activity}.`)
  if (point === '显性信息') return choice(`Read: “${context} At ${s.time}, ${s.name} ${s.activity}.” Which two facts are both true?`, `${s.name} likes ${s.like} and has ${thingPhrase}.`, [`${s.name} is on a train and has a bike.`, `${s.name} dislikes ${s.like} and loses everything.`, `${s.name} is at the zoo at midnight.`], position, 'Both facts are directly stated in the text.')
  return choice(`On ${s.day}, ${s.name} is ${placePhrase} before ${s.activity}. ${s.name} needs the ${s.thing}, but a classmate is using it. What is the most polite request?`, `May I use the ${s.thing} after you?`, [`Give me the ${s.thing} now!`, `I never need the ${s.thing}.`, `What colour is Monday?`], position, explainEnglishPoliteRequest(`May I use the ${s.thing} after you?`))
}

const fills = [
  ['句子阅读', 'I have a ___. I use it to read stories.（填 book）', 'book'],
  ['短对话', '—How are you? —I am ___.（填“很好”）', 'fine'],
  ['一般现在时', 'Tom ___ to school every day.（填 go 的正确形式）', 'goes'],
  ['疑问词', '___ is your name? My name is Lily.', 'what'],
  ['时间表达', 'Class starts at eight ___.（填“整点”）', "o'clock"],
  ['日常活动', 'I ___ my teeth every morning.（填 brush）', 'brush'],
  ['显性信息', 'Read: “The bag is blue.” The bag is ___.', 'blue'],
  ['情境交际', 'When someone says “Thank you”, you can say “You are ___.”', 'welcome'],
  ['句子阅读', 'The cat is under the desk. It is ___ the desk.', 'under'],
  ['短对话', '—Can you swim? —Yes, I ___.', 'can'],
  ['一般现在时', 'Amy ___ English on Mondays.（填 study 的正确形式）', 'studies'],
  ['疑问词', '___ is my ruler? It is in the bag.', 'where'],
  ['时间表达', '7:30 can be read as half past ___.', 'seven'],
  ['日常活动', 'We have ___ at twelve o’clock.（填 lunch）', 'lunch'],
  ['显性信息', 'Read: “Ben has two dogs.” Ben has ___ dogs.', 'two'],
  ['情境交际', 'Before going to bed, we can say “Good ___.”', 'night'],
  ['句子阅读', 'The children are in the library. They are reading ___.', 'books'],
  ['短对话', '—What time is it? —It is nine ___.', "o'clock"],
  ['一般现在时', 'My father ___ breakfast at seven every day.（填 have 的正确形式）', 'has'],
  ['疑问词', '___ is that girl? She is my sister.', 'who'],
  ['显性信息', 'Read: “Lucy goes to the park after lunch.” Lucy goes there ___ lunch.', 'after'],
]

const matchSets = [
  ['句子阅读', ['I am hungry.', 'I am thirsty.', 'I am tired.', 'I am cold.'], ['I want some food.', 'I want some water.', 'I want to rest.', 'I need a coat.']],
  ['短对话', ['How are you?', 'What is your name?', 'How old are you?', 'Where are you?'], ['I am fine.', 'I am Amy.', 'I am nine.', 'I am at school.']],
  ['一般现在时', ['I play', 'He plays', 'We read', 'She reads'], ['football after school', 'basketball on Friday', 'books every day', 'a story at night']],
  ['疑问词', ['What', 'Where', 'When', 'Who'], ['a thing or action', 'a place', 'a time', 'a person']],
  ['时间表达', ['7:00', '8:30', '12:00', '6:30'], ["seven o'clock", 'half past eight', "twelve o'clock", 'half past six']],
  ['日常活动', ['get up', 'have breakfast', 'go to school', 'go to bed'], ['起床', '吃早饭', '去上学', '睡觉']],
  ['显性信息', ['The apple is red.', 'The dog is small.', 'The book is new.', 'The box is heavy.'], ['red apple', 'small dog', 'new book', 'heavy box']],
  ['情境交际', ['Thank you.', 'Good morning.', 'I am sorry.', 'Goodbye.'], ['You are welcome.', 'Good morning.', "That's OK.", 'See you.']],
]

function englishMatch(serial) {
  const [point, left, answers] = matchSets[(serial - 126) % matchSets.length]
  const order = [2, 0, 3, 1], right = order.map(i => answers[i])
  const lookup = Object.fromEntries(order.map((original, index) => [original, index]))
  const stems = { 句子阅读: 'Match each sentence with its meaning.', 短对话: 'Match each question with the best answer.', 一般现在时: 'Match each subject and verb with the rest of its sentence.', 疑问词: 'Match each question word with what it asks about.', 时间表达: 'Match each clock time with its English expression.', 日常活动: 'Match each daily activity with its Chinese meaning.', 显性信息: 'Match each sentence with the information it gives.', 情境交际: 'Match each expression with the polite reply.' }
  const prefix = serial < 134 ? 'Use the classroom language chart.' : 'Use the weekend reading card and compare all four examples.'
  return { point, content: { stem: `${prefix} ${stems[point]}`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: explainEnglishMatch(point) } }
}

export function authorGrade3English() {
  const questions = []
  let serial = 0
  for (const [type, difficulty, count] of distribution) {
    for (let index = 0; index < count; index += 1) {
      let point = points[serial % points.length]
      let content
      if (type === 'choice') content = englishChoice(point, serial, serial % 4)
      else if (type === 'fill') {
        const [fillPoint, stem, answer] = fills[serial - 105]; point = fillPoint
        content = { stem, answer, explanation: explainEnglishFill(stem, answer) }
      } else { const match = englishMatch(serial); point = match.point; content = match.content }
      const tags = ['全国通用', '文字可作答']
      if (difficulty === 1) tags.push('听读入门')
      tags.push(`模板:g3-en-${type}-p${points.indexOf(point)}-d${difficulty}`)
      questions.push({ id: `g3-english-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'english', grade: 3, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags, content, reviewStatus: 'reviewed', version: 3 })
      serial += 1
    }
  }
  return questions
}
