import type { Subject } from './constants'
import type { Database } from './database.types'

type QuestionType = Database['public']['Tables']['questions']['Row']['type']

type ExplanationInput = {
  questionType: QuestionType
  subject?: Subject
  result: 'correct' | 'wrong'
  selectedAnswer?: string | number
  content: {
    stem?: string
    options?: string[]
    answer?: string | number
    explanation?: string
  }
}

export type ExplanationContent = {
  title: string
  correctAnswer?: string
  selectedAnswer?: string
  reason: string
  tip: string
}

function answerText(content: ExplanationInput['content']): string | undefined {
  if (typeof content.answer === 'number') return content.options?.[content.answer] ?? String(content.answer)
  if (typeof content.answer === 'string') return content.answer
  return undefined
}

function selectedText(input: ExplanationInput): string | undefined {
  if (input.selectedAnswer === undefined || input.selectedAnswer === '') return undefined
  if (typeof input.selectedAnswer === 'number') return input.content.options?.[input.selectedAnswer] ?? String(input.selectedAnswer)
  return input.selectedAnswer
}

function isGenericChineseFillExplanation(explanation: string | undefined): boolean {
  return Boolean(explanation?.startsWith('结合题意，填') && explanation.endsWith('后语意完整、表达准确。'))
}

function quotedClue(stem: string | undefined): string | undefined {
  return stem?.match(/“([^”]+)”/)?.[1]
}

function buildReason(input: ExplanationInput, correctAnswer?: string): string {
  const { content, questionType, subject } = input
  const explanation = content.explanation?.trim()

  if (subject === 'chinese' && questionType === 'fill' && isGenericChineseFillExplanation(explanation)) {
    const clue = quotedClue(content.stem)
    const clueText = clue ? `比如这题的线索句是“${clue}”，` : ''
    return `这类题不要只看空格，要回到题目里的句子找线索。${clueText}题目问的是什么，就找对应的人物、动作或关键词；这里答案是“${correctAnswer}”，填进去后句子意思完整，也准确回答了问题。`
  }

  if (subject === 'english' && explanation && /May I|polite request|after you/i.test(explanation)) {
    return `这道题问的是 polite request，也就是有礼貌地请求别人。"${correctAnswer}" 里面的 "May I...?" 语气更委婉，"after you" 说明愿意等同学用完，所以更尊重别人。`
  }

  if (explanation) return explanation

  if (questionType === 'choice') return '把题目条件再读一遍，再把每个选项放回题目里试一试；最符合题意、没有跑题的选项就是答案。'
  if (questionType === 'fill') return '先看空格前后的词语，再把答案填回原句读一遍；读起来通顺、意思准确，才是合适的答案。'
  if (questionType === 'match') return '连线题要先看清左右两边分别表示什么，再一组一组找意思相同或关系最紧密的配对。'
  return '先找题目给出的条件，再按步骤检查答案是否符合这些条件。'
}

function buildTip(input: ExplanationInput): string {
  const { questionType, subject, content } = input

  if (subject === 'chinese' && questionType === 'fill') {
    if (/谁|小军|小明|小红|妹妹|他|她/.test(content.stem ?? '')) {
      return '小窍门：遇到“谁做了什么”的题，先找“谁”，再圈出这个人的动作。'
    }
    return '小窍门：填完以后把整句话轻声读一遍，通顺又符合题意才算合适。'
  }

  if (subject === 'english' && /polite|May I|request/i.test(`${content.stem ?? ''} ${content.explanation ?? ''}`)) {
    return 'Tip: 看到 polite request，优先找 "May I...?", "please", "after you" 这类礼貌表达。'
  }

  if (questionType === 'choice') return '小窍门：选择题可以先划掉明显不符合题意的选项，再比较剩下的。'
  if (questionType === 'fill') return '小窍门：答案填进去后，前后词语要能连起来，意思也要说得通。'
  if (questionType === 'match') return '小窍门：先配最确定的一组，再处理容易混淆的内容。'
  return '小窍门：做完后按题目条件倒着检查一遍。'
}

export function buildExplanationContent(input: ExplanationInput): ExplanationContent {
  const correctAnswer = answerText(input.content)
  return {
    title: input.result === 'correct' ? '太棒了，思路对了!' : '没关系，我们再看一步',
    correctAnswer,
    selectedAnswer: selectedText(input),
    reason: buildReason(input, correctAnswer),
    tip: buildTip(input),
  }
}
