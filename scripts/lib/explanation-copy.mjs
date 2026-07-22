export function explainChineseFill(stem, answer) {
  const clue = stem.match(/“([^”]+)”/)?.[1]
  const clueText = clue ? `先读线索句“${clue}”，` : '先看空格前后的词语，'
  return `${clueText}再想题目要我们填写人物、动作、词义还是常识。这里填“${answer}”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。`
}

export function explainEnglishFill(stem, answer) {
  const quoted = stem.match(/“([^”]+)”/)?.[1]
  const clueText = quoted ? `The clue is “${quoted}”. ` : ''
  return `${clueText}The answer “${answer}” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right.`
}

export function explainEnglishMatch(point) {
  return `Compare each item by meaning and function, not only by the first word you see. For ${point}, match the clearest pair first, then check the remaining pairs again.`
}

export function explainEnglishPoliteRequest(correct) {
  return `“${correct}” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”.`
}
