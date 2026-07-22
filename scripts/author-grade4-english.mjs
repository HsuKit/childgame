import { explainEnglishFill, explainEnglishMatch } from './lib/explanation-copy.mjs'

const points = ['连贯短文', '方位表达', '频率表达', '进行中的动作', '比较与描述', '跨句信息', '情境交际', '信息匹配']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]

const scenes = [
  { name: 'Tom', place: 'library', location: 'next to the art room', frequency: 'often', action: 'reading a science book', first: 'a blue robot', second: 'a red toy car', compare: 'taller', detail: 'visits after lunch', purpose: 'find facts about space' },
  { name: 'Lucy', place: 'garden', location: 'behind the classroom', frequency: 'usually', action: 'watering the flowers', first: 'the sunflower', second: 'the rose', compare: 'taller', detail: 'brings a small watering can', purpose: 'care for the class plants' },
  { name: 'Mike', place: 'playground', location: 'in front of the gym', frequency: 'sometimes', action: 'playing basketball', first: 'Mike', second: 'Ben', compare: 'faster', detail: 'practises with Ben', purpose: 'prepare for a class game' },
  { name: 'Amy', place: 'music room', location: 'between the lab and the hall', frequency: 'always', action: 'playing the piano', first: 'the piano', second: 'the desk', compare: 'longer', detail: 'starts at four o’clock', purpose: 'practise for the school show' },
  { name: 'Jack', place: 'kitchen', location: 'beside the dining room', frequency: 'often', action: 'making sandwiches', first: 'the big plate', second: 'the small plate', compare: 'heavier', detail: 'uses eggs and vegetables', purpose: 'make lunch for his family' },
  { name: 'Lily', place: 'park', location: 'across from the museum', frequency: 'usually', action: 'flying a kite', first: 'Lily’s kite', second: 'Sam’s kite', compare: 'higher', detail: 'goes there on Sunday', purpose: 'enjoy the windy afternoon' },
  { name: 'Peter', place: 'computer room', location: 'on the second floor', frequency: 'sometimes', action: 'making a class poster', first: 'Peter’s picture', second: 'the title', compare: 'larger', detail: 'works with two classmates', purpose: 'share recycling tips' },
  { name: 'Kate', place: 'reading corner', location: 'near the back door', frequency: 'often', action: 'telling a story', first: 'this story', second: 'the last story', compare: 'longer', detail: 'chooses animal stories', purpose: 'help younger pupils enjoy reading' },
  { name: 'Sam', place: 'bus stop', location: 'opposite the post office', frequency: 'usually', action: 'waiting for Bus 12', first: 'Bus 12', second: 'Bus 8', compare: 'later', detail: 'leaves home at seven thirty', purpose: 'arrive at school before eight' },
  { name: 'Anna', place: 'sports centre', location: 'to the east of the park', frequency: 'always', action: 'swimming in lane three', first: 'lane three', second: 'lane two', compare: 'wider', detail: 'trains for forty minutes', purpose: 'improve her swimming' },
  { name: 'Ben', place: 'community centre', location: 'at the end of Green Street', frequency: 'often', action: 'sorting old books', first: 'the history box', second: 'the story box', compare: 'heavier', detail: 'labels each box clearly', purpose: 'prepare books for sharing' },
  { name: 'Grace', place: 'science lab', location: 'above the school office', frequency: 'sometimes', action: 'measuring plant leaves', first: 'plant A', second: 'plant B', compare: 'greener', detail: 'records the results in a table', purpose: 'compare plants in sun and shade' },
  { name: 'David', place: 'school hall', location: 'past the main gate', frequency: 'usually', action: 'putting chairs in rows', first: 'the front row', second: 'the back row', compare: 'shorter', detail: 'checks the number in every row', purpose: 'get ready for a parents’ meeting' },
  { name: 'Helen', place: 'nature centre', location: 'at the foot of the hill', frequency: 'often', action: 'writing an observation note', first: 'the morning path', second: 'the afternoon path', compare: 'quieter', detail: 'uses two records from different times', purpose: 'explain how visitors affect birds' },
]

function choice(stem, correct, wrong, position, explanation) { const options = [...wrong]; options.splice(position, 0, correct); return { stem, options, answer: position, explanation } }

function englishAppliedChoice(point, s, position) {
  const note = `${s.name} ${s.frequency} visits the ${s.place}, ${s.location}. Today, instead of the usual visit, ${s.name} is ${s.action} to ${s.purpose}.`
  if (point === '连贯短文') return choice(`Read: “${note}” Which title covers the place, action and purpose?`, `${s.name}'s purposeful visit to the ${s.place}`, ['An empty building with no activity', 'A weather report for next month', 'Rules for buying a bus ticket'], position, 'A complete title should include the visit and its purpose, not just one small detail.')
  if (point === '方位表达') return choice(`The ${s.place} is ${s.location}. ${s.name} has reached the named landmark. Which direction clue should be used next?`, s.location, ['turn yesterday', 'walk for a colour', 'wait inside a question'], position, `The location phrase “${s.location}” connects the destination with the landmark.`)
  if (point === '频率表达') return choice(`The record says, “${s.name} ${s.frequency} visits the ${s.place}, but today's special task is to ${s.purpose}.” Which word describes the regular pattern rather than today's task?`, s.frequency, [s.action, s.place, s.purpose], position, `“${s.frequency}” describes how regularly the visits happen.`)
  if (point === '进行中的动作') return choice(`${s.name} ${s.frequency} goes to the ${s.place}. A live message says, “${s.name} is ${s.action} now.” Which phrase belongs in the NOW column?`, s.action, [`goes there ${s.frequency}`, s.location, s.purpose], position, 'The present continuous phrase after “is” reports what is happening now.')
  if (point === '比较与描述') return choice(`A report states, “${s.first} is ${s.compare} than ${s.second}.” Which conclusion keeps the same comparison?`, `When compared with ${s.second}, ${s.first} is ${s.compare}`, [`${s.second} must be ${s.compare} than itself`, 'the two things were not compared', 'the sentence only tells a clock time'], position, `The comparative sentence gives ${s.first}, rather than ${s.second}, the stated quality.`)
  if (point === '跨句信息') return choice(`Read two sentences: “The ${s.place} is ${s.location}.” “${s.name} goes there to ${s.purpose}.” Which summary joins both clues without changing them?`, `${s.name} goes to the ${s.place}, ${s.location}, to ${s.purpose}`, [`${s.name} avoids every place and purpose`, `${s.name} goes to a station to miss school`, `The ${s.place} moves to another town`], position, 'The summary preserves the location from the first sentence and the purpose from the second.')
  if (point === '情境交际') return choice(`${s.name} knows the ${s.place} is ${s.location}, but still needs help finding it. What is the clearest polite request?`, `Excuse me, could you show me the way to the ${s.place}?`, [`Move! I want that road.`, `Is ${s.frequency} a colour?`, `I will not listen to any answer.`], position, 'The correct request is polite and asks specifically for the way to the destination.')
  return choice(`Compare the card with the note. Card: “${s.name}; ${s.place}; ${s.action}; purpose: ${s.purpose}.” Which note keeps every key field?`, `${s.name} is ${s.action} at the ${s.place} to ${s.purpose}`, [`${s.name} sleeps at an airport with no purpose`, `Another pupil leaves the ${s.place} before arriving`, `${s.name} visits the ${s.place} to do the opposite task`], position, 'The matching note keeps the person, place, present activity and purpose.')
}

function englishHardChoice(point, s, position) {
  if (point === '连贯短文') return choice(`Read: “The ${s.place} is ${s.location}. ${s.name} ${s.frequency} visits it. Today ${s.name} is ${s.action}, because the goal is to ${s.purpose}.” Which outline follows the text's logic?`, `location → regular visit → today's action → purpose`, ['purpose → no visitor → yesterday → colour', 'weather → price → meal → train', 'action → wrong place → no reason → silence'], position, 'The four sentences move from location and habit to the present action and its reason.')
  if (point === '方位表达') return choice(`Clue 1: the ${s.place} is ${s.location}. Clue 2: ${s.name} is already at the landmark named in clue 1. Which phrase must ${s.name} understand to locate the destination?`, s.location, ['every Sunday', s.action, s.frequency], position, 'Only the location phrase describes the spatial relation between the landmark and destination.')
  if (point === '频率表达') return choice(`A diary has many ${s.place} entries, and its summary says “${s.name} ${s.frequency} goes there.” Which word is evidence about repeated visits but not about one exact day?`, s.frequency, ['today', s.place, s.action], position, 'A frequency adverb summarizes a repeated pattern without naming one exact date.')
  if (point === '进行中的动作') return choice(`Routine: “${s.name} ${s.frequency} visits the ${s.place}.” Live update: “Today ${s.name} is ${s.action}.” Which statement correctly separates habit from current action?`, `The visit is a habit; ${s.action} is happening now.`, [`Both sentences describe only yesterday.`, `The ${s.place} is an action verb.`, `The live update says nothing is happening.`], position, 'The simple present reports a habit, while “is ...ing” reports the current action.')
  if (point === '比较与描述') return choice(`Given “${s.first} is ${s.compare} than ${s.second},” which rewrite preserves both the direction and the quality of the comparison?`, `Compared with ${s.second}, ${s.first} is ${s.compare}.`, [`Compared with ${s.first}, ${s.second} is ${s.compare}.`, `${s.first} and ${s.second} are never compared.`, `${s.compare} tells where both things are.`], position, 'The rewrite keeps ${s.first} as the item with more of the compared quality.')
  if (point === '跨句信息') return choice(`Sentence 1 locates the ${s.place} ${s.location}. Sentence 2 says ${s.name} is ${s.action}. Sentence 3 gives the reason: to ${s.purpose}. Which answer requires all three sentences?`, `${s.name} is ${s.action} at a place ${s.location} in order to ${s.purpose}`, [`The ${s.place} has a name.`, `${s.name} exists.`, `There is one location word.`], position, 'The correct answer combines location, action and purpose, so no single sentence is enough.')
  if (point === '情境交际') return choice(`${s.name} asks for the ${s.place}. A helper says, “It is ${s.location}.” Which reply both confirms understanding and continues politely?`, `Thank you. So I should look ${s.location}, right?`, [`Give me a different answer now!`, `I asked about a colour, not a place.`, `Yesterday is taller than today.`], position, 'The reply thanks the helper and checks the location information.')
  return choice(`Card A says “${s.name}—${s.place}—${s.action}.” Card B says “Purpose—${s.purpose}; location—${s.location}.” Which combined record is fully consistent?`, `${s.name}; ${s.action}; ${s.place}; ${s.location}; ${s.purpose}`, [`${s.name}; sleeping; airport; under the sea; no plan`, `unknown person; ${s.action}; wrong town; no purpose`, `${s.name}; opposite action; ${s.place}; wrong location; ${s.purpose}`], position, 'Every field in the correct record agrees with one of the two cards.')
}

function englishChoice(point, serial, position) {
  const index = Math.floor(serial / points.length), s = scenes[index]
  if (serial >= 89) return englishHardChoice(point, s, position)
  if (serial >= 52) return englishAppliedChoice(point, s, position)
  const context = `${s.name} ${s.frequency} visits the ${s.place}. It is ${s.location}. Today ${s.name} is ${s.action} to ${s.purpose}.`
  if (point === '连贯短文') return choice(`Read this activity note: “${context}” What is its main idea?`, `${s.name}'s activity in the ${s.place}`, [`a map of a different town`, `a meal with no people`, `a story about yesterday's storm`], position, `The note connects ${s.name}, the ${s.place}, the present activity and its purpose.`)
  if (point === '方位表达') return choice(`A school guide says, “The ${s.place} is ${s.location}.” Which location should ${s.name} follow?`, s.location, ['under the sea', 'inside a bus', 'far beyond the moon'], position, `The guide directly locates the ${s.place} ${s.location}.`)
  if (point === '频率表达') return choice(`${s.name} ${s.frequency} goes to the ${s.place} to ${s.purpose}. In this activity record, which word tells how often the visit happens?`, s.frequency, ['yesterday', 'at five o’clock', 'for two metres'], position, `“${s.frequency}” is a frequency word, not a date, clock time or distance.`)
  if (point === '进行中的动作') return choice(`Look at today's ${s.place} report: “${s.name} is ${s.action}.” What is happening now?`, s.action, [`sleeping at home`, `buying a train`, `climbing on the roof`], position, `The form “is ${s.action}” names the action happening now.`)
  if (point === '比较与描述') return choice(`Compare: ${s.first} is ${s.compare} than ${s.second}. Which word describes the comparison?`, s.compare, ['yesterday', 'carefully', 'between'], position, `“${s.compare}” is the comparative word in the sentence.`)
  if (point === '跨句信息') return choice(`Combine two clues: “${s.name}'s destination is the ${s.place}.” “The plan is to ${s.purpose}.” Which record includes both facts?`, `the ${s.place}; to ${s.purpose}`, [`the playground; to miss the lesson`, `the kitchen; to lose all the books`, `the station; to wait until midnight`], position, `One clue gives the ${s.place}; the other gives the purpose “to ${s.purpose}”.`)
  if (point === '情境交际') return choice(`${s.name} wants to reach the ${s.place} to ${s.purpose}. A sign says it is ${s.location}. Which question asks for directions politely?`, `Excuse me, how can I get to the ${s.place}?`, [`Give me that book now.`, `How old is the colour blue?`, `I never go anywhere.`], position, '“Excuse me” is polite, and “how can I get to...” asks for directions clearly.')
  return choice(`Information card: “Visitor: ${s.name}; place: ${s.place}; activity: ${s.action}.” Which note copies all three fields correctly?`, `${s.name} — ${s.place} — ${s.action}`, [`${s.name} — airport — sleeping`, `Nobody — nowhere — nothing`, `${s.name} — hospital — buying a plane`], position, 'The matching note keeps the same person, place and activity as the card.')
}

const fills = [
  ['连贯短文', 'First we read the map. Then we walk to the park. The word “Then” shows the ___ step.', 'second'],
  ['方位表达', 'The library is ___ the bank and the post office.（填 between）', 'between'],
  ['频率表达', 'I go to school every weekday. I ___ go to school from Monday to Friday.', 'always'],
  ['进行中的动作', 'Look! The children are ___ football.（填 play 的正确形式）', 'playing'],
  ['比较与描述', 'The giraffe is ___ than the dog.（填 tall 的比较级）', 'taller'],
  ['跨句信息', 'Read: “Mia has a map. She is looking for the museum.” Mia uses the map to find the ___.', 'museum'],
  ['情境交际', 'To ask for directions politely, begin with “___ me”.', 'excuse'],
  ['信息匹配', 'The card says “Friday—art room—drawing”. The place is the ___ room.', 'art'],
  ['连贯短文', 'A paragraph with “first, next, finally” describes an ___ of events.', 'order'],
  ['方位表达', 'The cat is ___ the table, not on it.（填 under）', 'under'],
  ['频率表达', 'I do not eat ice cream on school days. I ___ eat it from Monday to Friday.', 'never'],
  ['进行中的动作', 'Mum is ___ dinner now.（填 cook 的正确形式）', 'cooking'],
  ['比较与描述', 'This box is ___ than that one.（填 heavy 的比较级）', 'heavier'],
  ['跨句信息', 'Read: “Leo is at the pool. He is learning to swim.” Leo learns swimming at the ___.', 'pool'],
  ['情境交际', 'When you do not hear clearly, say “Could you say that ___?”', 'again'],
  ['信息匹配', 'A timetable line “8:00—English—Room 2” shows the time, subject and ___.', 'place'],
  ['连贯短文', 'The last sentence often gives the result or ___ of a short text.', 'ending'],
  ['方位表达', 'The shop is ___ from the school, on the other side of the road.', 'opposite'],
  ['进行中的动作', 'Listen! A bird is ___ in the tree.（填 sing 的正确形式）', 'singing'],
  ['跨句信息', 'Read two facts before choosing; do not use only one ___.', 'sentence'],
  ['信息匹配', 'To match a notice correctly, compare its key time, place and ___.', 'activity'],
]

const matchSets = [
  ['连贯短文', ['first', 'next', 'then', 'finally'], ['step 1', 'step 2', 'step 3', 'last step']],
  ['方位表达', ['in front of', 'behind', 'between', 'opposite'], ['前面', '后面', '两者之间', '对面']],
  ['频率表达', ['always', 'usually', 'sometimes', 'never'], ['总是', '通常', '有时', '从不']],
  ['进行中的动作', ['is reading', 'are playing', 'is cooking', 'are singing'], ['one person reads now', 'several people play now', 'one person cooks now', 'several people sing now']],
  ['比较与描述', ['taller', 'shorter', 'heavier', 'faster'], ['更高', '更短', '更重', '更快']],
  ['跨句信息', ['person', 'place', 'time', 'purpose'], ['who', 'where', 'when', 'why']],
  ['情境交际', ['Excuse me.', 'Could you help me?', 'Thank you.', 'I am sorry.'], ['礼貌引起注意', '请求帮助', '表示感谢', '表示歉意']],
  ['信息匹配', ['8:00—library', '9:00—playground', '10:00—lab', '11:00—hall'], ['reading', 'running', 'doing an experiment', 'having a meeting']],
]

function englishMatch(serial) {
  const [point, left, answers] = matchSets[(serial - 126) % matchSets.length], order = [2, 0, 3, 1], right = order.map(i => answers[i]), lookup = Object.fromEntries(order.map((x, j) => [x, j]))
  const stems = {
    '连贯短文': 'Match each sequence word with its position in an activity plan.',
    '方位表达': 'Match each location phrase with its Chinese meaning.',
    '频率表达': 'Match each frequency word with how often it means.',
    '进行中的动作': 'Match each present action with the correct number of people and activity.',
    '比较与描述': 'Match each comparative adjective with its Chinese meaning.',
    '跨句信息': 'Match each reading clue with the question it answers.',
    '情境交际': 'Match each polite expression with its purpose.',
    '信息匹配': 'Match each timetable entry with the activity at that place.',
  }
  const prefix = serial < 134 ? 'Read the school language chart.' : 'Use the weekend practice card.'
  return { point, content: { stem: `${prefix} ${stems[point]}`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: explainEnglishMatch(point) } }
}

export function authorGrade4English() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    let point = points[serial % points.length], content
    if (type === 'choice') content = englishChoice(point, serial, serial % 4)
    else if (type === 'fill') { const [p, stem, answer] = fills[serial - 105]; point = p; content = { stem, answer, explanation: explainEnglishFill(stem, answer) } }
    else { const item = englishMatch(serial); point = item.point; content = item.content }
    questions.push({ id: `g4-english-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'english', grade: 4, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', '文字可作答', difficulty > 1 ? '跨句理解' : '日常表达'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
