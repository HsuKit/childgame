import { explainEnglishFill, explainEnglishMatch } from './lib/explanation-copy.mjs'

const points = ['多段文本', '综合语言功能', '信息归纳', '语境推断', '通知与日程', '真实任务阅读', '情境交际', '综合运用']
const distribution = [
  ['choice', 1, 52], ['choice', 2, 37], ['choice', 3, 16],
  ['fill', 1, 11], ['fill', 2, 7], ['fill', 3, 3],
  ['match', 1, 7], ['match', 2, 5], ['match', 3, 2],
]

const projects = [
  { title: 'Tree-Shade Rest Area', a: 'Survey: 70% of pupils want seats close to the sports field.', b: 'Site note: keep seats away from large roots and leave a wide path for wheelchairs.', summary: 'choose a convenient site without harming roots or blocking access', inference: 'popularity alone cannot decide the exact location', date: 'Tuesday, 3:30 p.m.', place: 'meeting room', task: 'prepare a site proposal', audience: 'the school planning team' },
  { title: 'Old Bridge Lighting', a: 'Visitor note: the bridge feels too dark after sunset.', b: 'Heritage note: strong lights may hide stone details and change the historic atmosphere.', summary: 'improve night safety while protecting the bridge’s character', inference: 'light level and position need testing before installation', date: 'Friday, 4:00 p.m.', place: 'museum office', task: 'compare two lighting plans', audience: 'heritage volunteers' },
  { title: 'Paper Bridge Test', a: 'Trial 1: the folded bridge held 42 coins, the highest result.', b: 'Trial 2: a different fold position lowered the same design to 29 coins.', summary: 'report both structural strength and the effect of consistent construction', inference: 'one high result does not prove the design always works best', date: 'Monday, 2:20 p.m.', place: 'science lab', task: 'write a fair-test report', audience: 'the science club' },
  { title: 'Library Labels', a: 'Borrowing data: books near the entrance were found more quickly.', b: 'Observation: younger children still misunderstood labels with abstract topic words.', summary: 'combine efficient shelf placement with child-friendly labels', inference: 'colour labels may need pictures and examples', date: 'Thursday, 12:40 p.m.', place: 'library corner', task: 'redesign the shelf guide', audience: 'younger readers' },
  { title: 'Wetland Bird Count', a: 'Team A watched at the same place and time without making noise.', b: 'Team B changed routes and sometimes played bird sounds.', summary: 'standardise observation conditions before comparing bird counts', inference: 'the two teams’ totals are not directly comparable yet', date: 'Sunday, 6:30 a.m.', place: 'wetland gate', task: 'create an observation rule card', audience: 'new team members' },
  { title: 'Food-Waste Plan', a: 'Data: average leftovers fell after small servings were offered.', b: 'Interview: some pupils avoided second servings because the queue was slow.', summary: 'keep small servings and improve the refill process', inference: 'convenience can affect whether a saving plan succeeds', date: 'Wednesday, 1:10 p.m.', place: 'dining hall', task: 'suggest the next improvement', audience: 'the school canteen' },
  { title: 'School Bus Routes', a: 'Route A reaches more neighbourhoods but has more stops.', b: 'Route B is faster, while some younger pupils must walk farther.', summary: 'compare coverage, travel time and walking distance', inference: 'the fastest route is not automatically best for every pupil', date: 'Tuesday, 5:00 p.m.', place: 'transport office', task: 'build a route comparison table', audience: 'families and pupils' },
  { title: 'Printmaking Workshop', a: 'The activity uses easier tools so beginners can take part.', b: 'The artist says careful alignment must still be taught because it is central to colour printing.', summary: 'make the activity accessible without misrepresenting the key technique', inference: 'simplifying tools is different from removing the main principle', date: 'Saturday, 9:30 a.m.', place: 'art studio', task: 'write an honest workshop guide', audience: 'first-time visitors' },
  { title: 'Park Night Lights', a: 'More people used the main path after brighter lights were added.', b: 'Many insects gathered near strong lights beside the wetland.', summary: 'use different lighting plans for busy paths and sensitive habitats', inference: 'a benefit in one area may create a problem in another', date: 'Friday, 7:00 p.m.', place: 'park entrance', task: 'mark lighting zones on a map', audience: 'park managers' },
  { title: 'Charity Sale Review', a: 'Group A had the highest sales but also the highest material cost.', b: 'Group B earned less but reused materials and kept complete accounts.', summary: 'evaluate income, cost, environmental choices and record quality', inference: 'sales alone do not show the full value of a project', date: 'Monday, 3:50 p.m.', place: 'classroom 6', task: 'design a fair scoring sheet', audience: 'the class committee' },
  { title: 'Temperature Report', a: 'This month’s recorded average is higher than last year’s.', b: 'Some dates are missing, and readings were taken at different times of day.', summary: 'report the difference together with limits in the data', inference: 'more consistent records are needed before claiming a long-term change', date: 'Thursday, 8:00 a.m.', place: 'weather station', task: 'revise the data summary', audience: 'the morning news team' },
  { title: 'Digital Museum Labels', a: 'QR codes provide audio and photos from before restoration.', b: 'Some older visitors cannot read the small instructions, and some children ignore the real object.', summary: 'keep digital resources accessible and connected to object viewing', inference: 'digital content should support rather than replace the exhibition', date: 'Wednesday, 10:00 a.m.', place: 'gallery 2', task: 'test a new exhibit label', audience: 'visitors of different ages' },
  { title: 'Graduation Album', a: 'The rules ask for true memories and the date of every photograph.', b: 'One attractive article combines other pupils’ experiences and uses an image with no source.', summary: 'check facts and image permission as well as writing quality', inference: 'beautiful language cannot repair false or unlicensed content', date: 'Friday, 3:00 p.m.', place: 'media room', task: 'create an editing checklist', audience: 'student editors' },
  { title: 'Riverside Path', a: 'The design keeps old trees and uses a surface that lets rain pass through.', b: 'A safety review shows one section may block floodwater during heavy rain.', summary: 'keep the ecological features but move the path away from the risky section', inference: 'a good general idea may still need local changes for safety', date: 'Tuesday, 9:00 a.m.', place: 'planning centre', task: 'explain the revised route', audience: 'nearby residents' },
]

function choice(stem, correct, wrong, position, explanation) { const options = [...wrong]; options.splice(position, 0, correct); return { stem, options, answer: position, explanation } }
function sources(p) { return `Text A — ${p.a} Text B — ${p.b}` }

function englishChoice(point, serial, difficulty, position) {
  const p = projects[Math.floor(serial / points.length)], hard = difficulty === 3
  if (point === '多段文本') return choice(`Read two short texts for “${p.title}”: ${sources(p)} What issue do both texts help the team understand?`, p.summary, ['a topic unrelated to either text', 'only the colour of the page', 'a plan with no audience or evidence'], position, 'The answer combines the key contribution of both texts.')
  if (point === '综合语言功能') return choice(`Which sentence ${hard ? 'acknowledges evidence and limits a claim' : 'connects the two sources'} in the “${p.title}” project?`, hard ? `The evidence supports this direction; however, ${p.inference}.` : `Text A gives one need, while Text B adds a condition we must consider.`, ['One source proves everything in every situation.', 'The texts are different, so neither can be useful.', 'I prefer this plan; therefore, evidence is unnecessary.'], position, hard ? '“However” introduces a reasonable limit after acknowledging the evidence.' : '“While” clearly expresses how two useful sources contribute different information.')
  if (point === '信息归纳') return choice(`Project notes: ${sources(p)} Which summary keeps the main point without losing an important condition?`, p.summary, ['copy only the first number', 'keep one attractive detail and delete the issue', 'combine two unrelated actions'], position, `The summary represents both sources: ${p.summary}.`)
  if (point === '语境推断') return choice(`From the two sources in “${p.title}”, what can we infer without going beyond the evidence?`, p.inference, ['the same result is certain everywhere forever', 'no further checking can ever be useful', 'the project has no real purpose'], position, `The inference follows both sources and stays within their evidence: ${p.inference}.`)
  if (point === '通知与日程') return hard
    ? choice(`Notice: “${p.title} meeting — ${p.date} — ${p.place}; bring evidence for the task ‘${p.task}’.” Which preparation note includes every required detail?`, `${p.date} at ${p.place}; bring selected evidence for ${p.task}`, [`${p.date} at an unknown place; bring no material`, `${p.place} with no time; discuss another project`, `a different day and place; bring decoration only`], position, 'The complete note combines time, place and the material required for the named task.')
    : choice(`Notice: “${p.title} meeting — ${p.date} — ${p.place}.” Which note records both when and where?`, `${p.date}; ${p.place}`, [`tomorrow; an unknown place`, `${p.place}; no time given`, `${p.date}; a different city`], position, 'A complete schedule entry includes the stated date or time and place.')
  if (point === '真实任务阅读') return hard
    ? choice(`Task brief: “${p.task} for ${p.audience}.” Which review question checks both trustworthiness and usefulness?`, `Can ${p.audience} trace the main points to the sources and use the result for the task?`, ['Does the page contain the most decoration?', 'Were all source details hidden from readers?', 'Is the product long even when its purpose is unclear?'], position, 'A strong review checks whether claims are traceable and whether the intended audience can use the product.')
    : choice(`Task brief: “${p.task} for ${p.audience}.” Which first decision best fits the brief?`, `Choose evidence and wording that ${p.audience} can understand and use.`, ['Ignore the audience and remove all evidence.', 'Decorate before reading the task.', 'Copy every sentence without organising it.'], position, 'The product must fit its named audience and purpose.')
  if (point === '情境交际') return choice(`A teammate says, “I think our goal should be to ${p.summary}, but I may have missed a condition.” Which reply is most constructive?`, `Let’s check both texts and mark which detail supports each part.`, ['There is no need to read the sources.', 'Your idea is wrong because I said so.', 'Let’s delete every different opinion.'], position, 'The reply is polite and proposes an evidence-based way to resolve uncertainty.')
  return choice(`Before completing “${p.task}”, which plan shows strong integrated language use?`, hard ? 'identify audience → compare sources → state a supported conclusion → note limits → revise for use' : 'read the brief → select key facts → organise them → check clarity', ['choose an answer first → hide sources → ignore feedback → stop', 'copy one text → delete conditions → change the audience → guess', 'decorate everything → remove the purpose → avoid revision → submit'], position, hard ? 'The full process integrates audience, evidence, reasoning limits and revision.' : 'The sequence moves from understanding the task to evidence selection, organisation and checking.')
}

const fills = [
  ['多段文本', 'When two texts discuss the same issue, compare their shared topic and different ___.', 'angles'], ['综合语言功能', 'Use “however” to introduce a contrast or ___.', 'limit'],
  ['信息归纳', 'A summary keeps key information and removes ___ details.', 'unrelated'], ['语境推断', 'A careful inference stays within the available ___.', 'evidence'],
  ['通知与日程', 'A complete schedule records time, place and ___.', 'activity'], ['真实任务阅读', 'A task brief usually names a purpose and an intended ___.', 'audience'],
  ['情境交际', 'To ask for clarification politely, say “Could you explain that ___?”', 'again'], ['综合运用', 'After drafting, check accuracy, clarity and ___.', 'usefulness'],
  ['多段文本', 'One source may support another or provide a different ___.', 'view'], ['综合语言功能', '“According to the survey” introduces an information ___.', 'source'],
  ['信息归纳', 'A table helps organise categories in a consistent ___.', 'order'], ['语境推断', 'Words such as “may” prevent an unsupported over___.', 'claim'],
  ['通知与日程', 'If two activities overlap, the schedule has a time ___.', 'conflict'], ['真实任务阅读', 'Instructions should let the reader complete the intended ___.', 'task'],
  ['情境交际', 'A constructive disagreement recognises the other person’s ___.', 'point'], ['综合运用', 'Reliable work connects each main claim to its ___.', 'evidence'],
  ['多段文本', 'Conflicting sources should be checked for method, date and ___.', 'context'], ['信息归纳', 'A heading helps readers locate a group of related ___.', 'facts'],
  ['语境推断', 'Limited evidence may support a possibility, not absolute ___.', 'certainty'], ['真实任务阅读', 'Before submitting, test the product with a real ___.', 'reader'],
  ['综合运用', 'Revision improves both language accuracy and task ___.', 'effectiveness'],
]

const matchSets = [
  ['多段文本', ['same topic', 'different angle', 'supporting source', 'conflicting source'], ['shared issue', 'new viewpoint', 'adds evidence', 'disagrees']],
  ['综合语言功能', ['according to', 'however', 'therefore', 'for example'], ['introduce source', 'show contrast', 'state result', 'give an instance']],
  ['信息归纳', ['heading', 'category', 'key fact', 'summary'], ['topic label', 'information group', 'important detail', 'main combined idea']],
  ['语境推断', ['fact', 'clue', 'inference', 'overclaim'], ['direct statement', 'supporting sign', 'reasoned idea', 'beyond evidence']],
  ['通知与日程', ['date', 'time', 'place', 'activity'], ['which day', 'which hour', 'where', 'what happens']],
  ['真实任务阅读', ['audience', 'purpose', 'format', 'criterion'], ['who will use it', 'why it is made', 'how it is presented', 'how quality is checked']],
  ['情境交际', ['clarify', 'agree', 'disagree politely', 'suggest'], ['ask for meaning', 'share a view', 'state another view respectfully', 'offer an idea']],
  ['综合运用', ['plan', 'draft', 'review', 'revise'], ['decide approach', 'create first version', 'check quality', 'improve the work']],
]

function englishMatch(serial) {
  const [point, left, answers] = matchSets[(serial - 126) % matchSets.length], order = [2, 0, 3, 1], right = order.map(i => answers[i]), lookup = Object.fromEntries(order.map((x, i) => [x, i]))
  const prompts = { 多段文本: 'Match each cross-text relationship with its meaning.', 综合语言功能: 'Match each linking expression with its language function.', 信息归纳: 'Match each organising term with its job.', 语境推断: 'Match each reasoning term with its evidence role.', 通知与日程: 'Match each schedule field with the question it answers.', 真实任务阅读: 'Match each task element with its planning question.', 情境交际: 'Match each communication action with its purpose.', 综合运用: 'Match each project stage with the work done there.' }
  return { point, content: { stem: `${serial < 134 ? 'Use the graduation English project chart.' : 'Review the real-task checklist.'} ${prompts[point]}`, left, right, matches: left.map((_, i) => [i, lookup[i]]), explanation: explainEnglishMatch(point) } }
}

export function authorGrade6English() {
  const questions = []; let serial = 0
  for (const [type, difficulty, count] of distribution) for (let index = 0; index < count; index += 1) {
    let point = points[serial % points.length], content
    if (type === 'choice') content = englishChoice(point, serial, difficulty, serial % 4)
    else if (type === 'fill') { const [p, stem, answer] = fills[serial - 105]; point = p; content = { stem, answer, explanation: explainEnglishFill(stem, answer) } }
    else { const item = englishMatch(serial); point = item.point; content = item.content }
    questions.push({ id: `g6-english-authored-${String(serial + 1).padStart(3, '0')}`, subject: 'english', grade: 6, difficulty, type, knowledgePoint: point, skill: difficulty === 1 ? 'understand' : difficulty === 2 ? 'apply' : 'reason', tags: ['全国通用', difficulty > 1 ? 'cross-text reasoning' : 'real-task English'], content, reviewStatus: 'reviewed', version: 1 }); serial += 1
  }
  return questions
}
