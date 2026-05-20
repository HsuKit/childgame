function rand(min: number, max: number) { return Math.floor(Math.random() * (max - min + 1)) + min }
function pick<T>(arr: T[]): T { return arr[Math.floor(Math.random() * arr.length)] }
function shuffle<T>(arr: T[]): T[] { const a = [...arr]; for (let i = a.length - 1; i > 0; i--) { const j = rand(0, i); [a[i], a[j]] = [a[j], a[i]] } return a }

// Build options with correct answer mixed in, returns shuffled options + correct index
function opts(correct: string, wrongs: string[]): { options: string[]; answer: number } {
  const all = shuffle([correct, ...wrongs])
  return { options: all, answer: all.indexOf(correct) }
}

// Build options without shuffling (correct is at index 0)
function fixed(correct: string, wrongs: string[]): { options: string[]; answer: number } {
  return { options: [correct, ...wrongs], answer: 0 }
}

interface GQ { stem: string; options: string[]; answer: number; explanation: string }
type Gen = () => GQ

// ===== GRADE 1 =====
const grade1: Gen[] = [
  () => { const s = rand(1, 5), d = rand(1, 3), seq = [s, s + d, s + d * 2, s + d * 3], a = s + d * 4; const { options, answer } = opts(String(a), [String(a + d), String(a - d), String(a + 1)].filter(w => +w > 0 && +w !== a)); return { stem: `${seq.join('、')}、？ 接下来是哪个数？`, options, answer, explanation: `每次增加${d}，${seq[3]}+${d}=${a}` } },
  () => { const a = rand(5, 25), b = rand(5, 25); if (a === b) return grade1[0](); const larger = String(Math.max(a, b)), smaller = String(Math.min(a, b)); return { stem: `${a} 和 ${b}，哪个更大？`, options: [larger, smaller, '一样大', '不确定'], answer: 0, explanation: `${larger} > ${smaller}` } },
  () => { const o = rand(5, 15), e = [rand(2, 5) * 2, rand(2, 5) * 2, rand(2, 5) * 2]; const { options, answer } = opts(`${o}（奇数）`, e.map(n => `${n}（偶数）`)); return { stem: `哪个数和其他不同？`, options, answer, explanation: `${o}是奇数，其他都是偶数` } },
  () => { const a = rand(2, 8), sum = rand(a + 2, a + 10); const { options, answer } = opts(String(sum - a), [String(sum - a + 1), String(a), String(sum + a)]); return { stem: `${a} + □ = ${sum}，□ = ？`, options, answer, explanation: `${sum} - ${a} = ${sum - a}` } },
  () => { const n = rand(6, 20); return { stem: `${n} 的相邻数是？`, options: [`${n - 1}和${n + 1}`, `${n}和${n + 1}`, `${n - 1}和${n}`, `${n - 2}和${n + 2}`], answer: 0, explanation: `相邻数是比它小1和大1的数` } },
]

// ===== GRADE 2 =====
const grade2: Gen[] = [
  () => { const a = rand(2, 9), b = rand(2, 9); const { options, answer } = opts(String(a * b), [String(a * b + a), String(a * b - a), String(a * b + b)]); return { stem: `${a} × ${b} = ？`, options, answer, explanation: `乘法口诀：${a}×${b}=${a * b}` } },
  () => { const s = rand(1, 5), d = rand(2, 5), seq = [s, s + d, s + d * 2, s + d * 3], a = s + d * 4; const { options, answer } = opts(String(a), [String(a + d), String(a - d), String(seq[3] + 1)]); return { stem: `找规律：${seq.join('、')}、？`, options, answer, explanation: `等差数列，每次增加${d}` } },
  () => { const total = rand(10, 40); let n = rand(2, 6); while (total % n !== 0) n = rand(2, 6); const a = total / n; const { options, answer } = opts(String(a), [String(a + 1), String(a - 1), String(n)]); return { stem: `${total}个苹果平均分给${n}个小朋友，每人几个？`, options, answer, explanation: `${total}÷${n}=${a}个` } },
  () => { const age = rand(6, 10), mul = rand(3, 6); const a = age * mul; const { options, answer } = opts(String(a), [String(a + age), String(age + mul), String(a - age)]); return { stem: `小明今年${age}岁，爸爸的年龄是小明的${mul}倍，爸爸多少岁？`, options, answer, explanation: `${age}×${mul}=${a}岁` } },
  () => { const a = rand(1, 9); const { options, answer } = opts(String(a), [String(a * 2), String(Math.round(a / 2)), String(a + 1)]); return { stem: `△ + △ = ${a * 2}，那么△ = ？`, options, answer, explanation: `△+△=${a*2}，所以一个△=${a}` } },
]

// ===== GRADE 3 =====
const grade3: Gen[] = [
  () => { const n = rand(10, 30), d = pick([2, 3, 4, 5]); const a = n * d; const { options, answer } = opts(String(a), [String(n / d), String(n + d), String(n - d)]); return { stem: `一个数除以${d}等于${n}，这个数是？`, options, answer, explanation: `${n}×${d}=${a}` } },
  () => { const s = rand(1, 3), m = rand(2, 3), seq = [s, s * m, s * m * m, s * m * m * m], a = seq[3] * m; const { options, answer } = opts(String(a), [String(seq[3] + m), String(seq[3] + seq[2]), String(seq[3] * 2)]); return { stem: `找规律：${seq.join('、')}、？`, options, answer, explanation: `等比数列，每次乘以${m}` } },
  () => { const r = rand(2, 5); return { stem: `正方形的边长是${r}cm，周长是多少？`, options: [`${r*4}cm`, `${r*2}cm`, `${r*r}cm`, `${r+4}cm`], answer: 0, explanation: `周长=边长×4=${r}×4=${r*4}cm` } },
  () => { const h = rand(3, 8), m = rand(10, 50); const eh = h + Math.floor(m / 60), em = m % 60; return { stem: `小明${h}:00开始做作业，做了${m}分钟，几点做完？`, options: [`${eh}:${String(em).padStart(2, '0')}`, `${h}:${m}`, `${h+1}:00`, `${h}:${m+30}`], answer: 0, explanation: `${h}时+${m}分=${eh}时${em}分` } },
  () => { const n = rand(100, 500); const rounded = Math.round(n / 100) * 100; return { stem: `${n} 最接近哪个整百数？`, options: [String(rounded), String(n), String(n + 100), String(n - 100)], answer: 0, explanation: `${n}≈${rounded}` } },
]

// ===== GRADE 4 =====
const grade4: Gen[] = [
  () => { const a = rand(2, 8), b = rand(2, 8); return { stem: `一个长方形长${a}cm、宽${b}cm，面积是多少？`, options: [`${a*b}cm²`, `${(a+b)*2}cm²`, `${a+b}cm²`, `${a*b*2}cm²`], answer: 0, explanation: `面积=长×宽=${a}×${b}=${a*b}cm²` } },
  () => { const div = pick([2, 3, 5, 10]); const correct = rand(1, 20) * div; const { options, answer } = opts(String(correct), [String(correct + 1), String(correct - div + 1), String(correct + div - 1)]); return { stem: `哪个数是${div}的倍数？`, options, answer, explanation: `${correct}÷${div}=${correct/div}，能整除` } },
  () => { const price = rand(20, 80) * 10; const zhe = pick([8, 7, 9, 6]); const paid = Math.round(price * zhe / 10); return { stem: `一件衣服原价${price}元，打${zhe}折后多少钱？`, options: [`${paid}元`, `${price - zhe * 10}元`, `${Math.round(price * (10 - zhe) / 10)}元`, `${price + zhe * 10}元`], answer: 0, explanation: `打${zhe}折=原价×0.${zhe}，${price}×0.${zhe}=${paid}元` } },
  () => { const a = rand(2, 5), b = rand(2, 5); if (a === b) return grade4[0](); return { stem: `△ × ${a} + △ × ${b} = △ × ？`, options: [String(a + b), String(a * b), String(a), String(b)], answer: 0, explanation: `分配律：△×${a}+△×${b}=△×(${a}+${b})` } },
  () => { const seq = [rand(1, 9)]; for (let i = 0; i < 3; i++) seq.push(seq[i] + pick([1, 2, 3])); const a = seq[3] + pick([1, 2, 3]); const { options, answer } = opts(String(a), [String(a + 1), String(a - 1), String(seq[3])]); return { stem: `小明每天存钱：第1天${seq[0]}元，第2天${seq[1]}元，第3天${seq[2]}元，第4天${seq[3]}元，第5天？`, options, answer, explanation: `观察增长规律，第5天=${a}元` } },
]

// ===== GRADE 5 =====
const grade5: Gen[] = [
  () => { const price = rand(20, 80) * 10; const zhe = pick([8, 7, 9, 6]); const paid = Math.round(price * zhe / 10); return { stem: `一双鞋原价${price}元，打${zhe}折，要付多少？`, options: [`${paid}元`, `${price - zhe * 10}元`, `${Math.round(price * (10 - zhe) / 10)}元`, `${price + zhe * 10}元`], answer: 0, explanation: `打${zhe}折=原价×0.${zhe}，${price}×0.${zhe}=${paid}元` } },
  () => { const a = rand(3, 10), b = rand(3, 10); return { stem: `△+△+△=${a*3}，□+□=${b*2}，△+□=？`, options: [String(a + b), String(a * b), String(a * 3 + b * 2), String(a + b + 1)], answer: 0, explanation: `△=${a}，□=${b}，${a}+${b}=${a+b}` } },
  () => { const total = rand(20, 60), r = pick([2, 3, 4]); while (total % (r + 1) !== 0) { return grade5[0]() } const b = total / (r + 1), a = b * r; return { stem: `甲和乙共${total}本书，甲是乙的${r}倍，甲有多少本？`, options: [String(a), String(b), String(total), String(total / 2)], answer: 0, explanation: `乙+${r}乙=${total}，乙=${b}，甲=${a}本` } },
  () => { const a = pick([2, 3, 5, 7, 11, 13, 17]); return { stem: `${a}是质数吗？`, options: ['是质数', '不是质数', '是合数', '不确定'], answer: 0, explanation: `${a}只能被1和自身整除，是质数` } },
  () => { const pool = rand(100, 300), per = rand(10, 30); const t = Math.round(pool / per); return { stem: `一个水池有${pool}升水，每分钟放${per}升，多久放完？`, options: [`${t}分钟`, `${t + 1}分钟`, `${t - 1}分钟`, `${t * 2}分钟`], answer: 0, explanation: `${pool}÷${per}=${t}分钟` } },
]

// ===== GRADE 6 =====
const grade6: Gen[] = [
  () => { const a = rand(2, 5), b = rand(2, 5), c = rand(2, 5); return { stem: `a:b=${a * b}:${b * b}，b:c=${b * c}:${c * c}，那么 a:c = ？`, options: [`${a}:${c}`, `${a * b}:${b * c}`, `${a + b}:${b + c}`, `${b}:${c}`], answer: 0, explanation: `a:b=${a}:${b}，b:c=${b}:${c}，两边约去b，a:c=${a}:${c}` } },
  () => { const num = rand(100, 500), pct = rand(10, 30); const girls = Math.round(num * pct / 100); return { stem: `${num}人中${pct}%是女生，女生多少人？`, options: [`${girls}人`, `${num - pct}人`, `${Math.round(num * (100 - pct) / 100)}人`, `${pct}人`], answer: 0, explanation: `${num}×${pct}%≈${girls}人` } },
  () => { const r = rand(3, 8); const area = Math.round(3.14 * r * r); const { options, answer } = opts(`${area}cm²`, [`${Math.round(2 * 3.14 * r)}cm²`, `${Math.round(3.14 * r)}cm²`, `${Math.round(3.14 * r * r * 2)}cm²`]); return { stem: `圆半径${r}cm，面积约多少？(π≈3.14)`, options, answer, explanation: `πr²=3.14×${r}²≈${area}cm²` } },
  () => { const cost = rand(100, 300), pct = rand(10, 30); const sold = cost + Math.round(cost * pct / 100); return { stem: `商品成本${cost}元，利润${pct}%，售价？`, options: [`${sold}元`, `${cost - pct}元`, `${Math.round(cost * pct / 100)}元`, `${cost + pct}元`], answer: 0, explanation: `成本+利润=${cost}+${cost}×${pct}%=${sold}元` } },
  () => { const a = rand(-5, 0), b = rand(1, 5); return { stem: `${a} + ${b} = ？`, options: [String(a + b), String(Math.abs(a + b)), String(a - b), String(b - a)], answer: 0, explanation: `${a}+${b}=${a+b}` } },
]

const generators: Record<number, Gen[]> = { 1: grade1, 2: grade2, 3: grade3, 4: grade4, 5: grade5, 6: grade6 }

export function generateMathQuestion(grade: number): GQ {
  const gens = generators[grade] || generators[3]
  return pick(gens)()
}
