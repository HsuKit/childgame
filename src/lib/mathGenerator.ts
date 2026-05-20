function rand(min: number, max: number) { return Math.floor(Math.random() * (max - min + 1)) + min }
function pick<T>(arr: T[]): T { return arr[Math.floor(Math.random() * arr.length)] }
function shuffle<T>(arr: T[]): T[] { const a = [...arr]; for (let i = a.length - 1; i > 0; i--) { const j = rand(0, i); [a[i], a[j]] = [a[j], a[i]] } return a }

interface GQ { stem: string; options: string[]; answer: number; explanation: string }
type Gen = () => GQ

// ===== GRADE 1 =====
const grade1: Gen[] = [
  () => { const s = rand(1, 5), d = rand(1, 3), seq = [s, s + d, s + d * 2, s + d * 3], a = s + d * 4; return { stem: `${seq.join('、')}、？ 接下来是哪个数？`, options: shuffle([a, a + d, a - d, a + 1].filter(w => w > 0 && w !== a).slice(0, 3).concat(a)).map(String), answer: 0, explanation: `每次增加${d}，所以${seq[3]}+${d}=${a}` } },
  () => { const a = rand(5, 25), b = rand(5, 25); if (a === b) return grade1[0](); return { stem: `${a} 和 ${b}，哪个更大？`, options: [String(Math.max(a, b)), String(Math.min(a, b)), '一样大', '不确定'], answer: 0, explanation: `${Math.max(a, b)} > ${Math.min(a, b)}` } },
  () => { const o = rand(5, 15), e = [rand(2, 5) * 2, rand(2, 5) * 2, rand(2, 5) * 2]; return { stem: `哪个数和其他不同？`, options: shuffle([`${o}（单数）`, `${e[0]}（双数）`, `${e[1]}（双数）`, `${e[2]}（双数）`]), answer: 0, explanation: `${o}是单数(奇数)，其他是双数(偶数)` } },
  () => { const a = rand(2, 8), sum = rand(a + 2, a + 10); return { stem: `${a} + □ = ${sum}，□ = ？`, options: shuffle([String(sum - a), String(sum - a + 1), String(a), String(sum + a)]), answer: 0, explanation: `${sum} - ${a} = ${sum - a}` } },
  () => { const n = rand(6, 20); return { stem: `${n} 的相邻数是？`, options: [`${n - 1}和${n + 1}`, `${n}和${n + 1}`, `${n - 1}和${n}`, `${n - 2}和${n + 2}`], answer: 0, explanation: `相邻数是比它小1和大1的数` } },
]

// ===== GRADE 2 =====
const grade2: Gen[] = [
  () => { const a = rand(2, 9), b = rand(2, 9); return { stem: `${a} × ${b} = ？`, options: shuffle([String(a * b), String(a * b + a), String(a * b - a), String(a * b + b)]), answer: 0, explanation: `乘法口诀：${a}×${b}=${a * b}` } },
  () => { const start = rand(1, 5), step = rand(2, 5), seq = [start, start + step, start + step * 2, start + step * 3], a = start + step * 4; return { stem: `找规律：${seq.join('、')}、？`, options: shuffle([String(a), String(a + step), String(a - step), String(seq[3] + 1)]), answer: 0, explanation: `等差数列，每次增加${step}` } },
  () => { const total = rand(20, 60); let n = rand(3, 8); while (total % n !== 0) n = rand(3, 8); return { stem: `${total}个苹果平均分给${n}个小朋友，每人几个？`, options: shuffle([String(total / n), String(total / n + 1), String(total / n - 1), String(n)]), answer: 0, explanation: `${total}÷${n}=${total / n}个` } },
  () => { const age = rand(6, 10), mul = rand(3, 6); return { stem: `小明今年${age}岁，爸爸的年龄是小明的${mul}倍，爸爸多少岁？`, options: shuffle([String(age * mul), String(age * mul + age), String(age + mul), String(age * mul - age)]), answer: 0, explanation: `${age}×${mul}=${age * mul}岁` } },
  () => { const a = rand(1, 9), b = rand(1, 9), c = rand(1, 9); return { stem: `△ + △ = ${a * 2}，那么△ = ？`, options: shuffle([String(a), String(a * 2), String(a / 2), String(a + 1)]), answer: 0, explanation: `△+△=${a*2}，所以一个△=${a}` } },
]

// ===== GRADE 3 =====
const grade3: Gen[] = [
  () => { const n = rand(10, 30), d = pick([2, 3, 4, 5]); return { stem: `一个数除以${d}等于${n}，这个数是？`, options: shuffle([String(n * d), String(n / d), String(n + d), String(n - d)]), answer: 0, explanation: `这个数=${n}×${d}=${n * d}` } },
  () => { const start = rand(1, 3), mul = rand(2, 3), seq = [start, start * mul, start * mul * mul, start * mul * mul * mul]; return { stem: `找规律：${seq.join('、')}、？`, options: shuffle([String(seq[3] * mul), String(seq[3] + mul), String(seq[3] + seq[2]), String(seq[3] * 2)]), answer: 0, explanation: `等比数列，每次乘以${mul}` } },
  () => { const r = rand(2, 5); return { stem: `正方形的边长是${r}cm，周长是多少？`, options: [`${r*4}cm`, `${r*2}cm`, `${r*r}cm`, `${r+4}cm`], answer: 0, explanation: `正方形周长=边长×4=${r}×4=${r*4}cm` } },
  () => { const h = rand(3, 8), m = rand(10, 50); return { stem: `小明${h}:00开始做作业，做了${m}分钟，几点做完？`, options: [`${h + Math.floor(m/60)}:${String(m % 60).padStart(2, '0')}`, `${h}:${m}`, `${h+1}:00`, `${h}:${m+30}`], answer: 0, explanation: `${h}时+${m}分钟=${h+Math.floor(m/60)}时${m%60}分` } },
  () => { const n = rand(100, 500); return { stem: `${n} 最接近哪个整百数？`, options: [String(Math.round(n / 100) * 100), String(n), String(n + 100), String(n - 100)], answer: 0, explanation: `${n}四舍五入到百位是${Math.round(n/100)*100}` } },
]

// ===== GRADE 4 =====
const grade4: Gen[] = [
  () => { const a = rand(2, 8), b = rand(2, 8); return { stem: `一个长方形长${a}cm、宽${b}cm，面积是多少？`, options: [`${a*b}cm²`, `${(a+b)*2}cm²`, `${a+b}cm²`, `${a*b*2}cm²`], answer: 0, explanation: `面积=长×宽=${a}×${b}=${a*b}cm²` } },
  () => { const n = pick([2, 3, 5, 10]); const nums = [rand(1, 20) * n, rand(1, 20) * n, rand(1, 20) * n]; return { stem: `哪个数是${n}的倍数？`, options: shuffle([String(nums[0]), String(nums[1] + 1), String(nums[2] + 2), String(nums[0] + n - 1)]), answer: 0, explanation: `${nums[0]}÷${n}=${nums[0] / n}，能整除` } },
  () => { const salary = rand(2000, 5000); const pct = pick([10, 20, 25, 30, 50]); return { stem: `商场打折，一件衣服原价${salary}元，打${100-pct}折后多少钱？`, options: [`${Math.round(salary*pct/100)}元`, `${salary-pct}元`, `${Math.round(salary*(100-pct)/100)}元`, `${salary+pct}元`], answer: 2, explanation: `${100-pct}折=原价×${(100-pct)/100}=${salary}×${(100-pct)/100}` } },
  () => { const a = rand(2, 5), b = rand(2, 5); if (a === b) return grade4[0](); return { stem: `△ × ${a} + △ × ${b} = △ × ？`, options: [String(a + b), String(a * b), String(a), String(b)], answer: 0, explanation: `分配律：△×${a}+△×${b}=△×(${a}+${b})=△×${a + b}` } },
  () => { const seq = [rand(1, 9)]; for (let i = 0; i < 3; i++) seq.push(pick([seq[i] + 1, seq[i] * 2, seq[i] + seq[0]])); const a = pick([seq[3] + 1, seq[3] * 2, seq[3] + seq[0]]); return { stem: `小明每天存钱：第1天${seq[0]}元，第2天${seq[1]}元，第3天${seq[2]}元，第4天${seq[3]}元，第5天存多少？`, options: shuffle([String(a), String(a + 1), String(a - 1), String(seq[3] + seq[0])]), answer: 0, explanation: `规律是每天比前一天增加，观察前4天得出第5天=${a}元` } },
]

// ===== GRADE 5 =====
const grade5: Gen[] = [
  () => { const price = rand(20, 80) * 10; const pct = pick([80, 85, 90, 70, 75]); return { stem: `一双鞋原价${price}元，打${pct}折出售，要付多少钱？`, options: [`${price * pct / 100}元`, `${price - pct}元`, `${price * (100 - pct) / 100}元`, `${price + pct}元`], answer: 0, explanation: `${price}×${pct}%=${price*pct/100}元` } },
  () => { const a = rand(3, 10), b = rand(3, 10), c = rand(3, 10); return { stem: `△ + △ + △ = ${a * 3}，□ + □ = ${b * 2}，那么 △ + □ = ？`, options: [String(a + b), String(a * b), String(a * 3 + b * 2), String(a + b + 1)], answer: 0, explanation: `△=${a}，□=${b}，△+□=${a + b}` } },
  () => { const total = rand(20, 60); const r = pick([2, 3, 4]); return { stem: `甲和乙一共有${total}本书，甲是乙的${r}倍，甲有多少本？`, options: [String(Math.round(total * r / (r + 1))), String(total / 2), String(total), String(Math.round(total / r))], answer: 0, explanation: `乙+${r}乙=${total}，乙=${total/(r+1)}，甲=${total*r/(r+1)}本` } },
  () => { const a = pick([2, 3, 5, 7, 11, 13]); return { stem: `${a}是质数吗？质数是只能被1和自己整除的数。`, options: ['是质数', '不是质数', '是合数', '不确定'], answer: 0, explanation: `${a}只能被1和${a}整除，所以是质数` } },
  () => { const pool = rand(100, 300); const per = rand(10, 30); const time = Math.round(pool / per); return { stem: `一个水池有${pool}升水，每分钟放出${per}升，多少分钟放完？`, options: [`${time}分钟`, `${time + 1}分钟`, `${time - 1}分钟`, `${time * 2}分钟`], answer: 0, explanation: `${pool}÷${per}=${time}分钟` } },
]

// ===== GRADE 6 =====
const grade6: Gen[] = [
  () => { const a = rand(3, 8), b = rand(3, 8), c = rand(3, 8); if (a === b) return grade6[1](); return { stem: `已知 a:b=${a}:${b}，b:c=${b}:${c}，那么 a:c=？`, options: [`${a}:${c}`, `${a * b}:${b * c}`, `${a + b}:${b + c}`, `无法确定`], answer: 0, explanation: `a:b=${a}:${b}，b:c=${b}:${c}，约去b得a:c=${a}:${c}` } },
  () => { const num = rand(100, 500); const pct = rand(10, 30); return { stem: `某班有${num}人，其中${pct}%是女生，女生有多少人？`, options: [`${Math.round(num * pct / 100)}人`, `${num - pct}人`, `${Math.round(num * (100 - pct) / 100)}人`, `${pct}人`], answer: 0, explanation: `${num}×${pct}%=${Math.round(num*pct/100)}人` } },
  () => { const r = rand(3, 8); return { stem: `一个圆半径为${r}cm，面积约是多少？(π取3.14)`, options: [`${Math.round(3.14 * r * r)}cm²`, `${Math.round(2 * 3.14 * r)}cm²`, `${Math.round(3.14 * r)}cm²`, `${Math.round(3.14 * r * 2 * 2)}cm²`], answer: 0, explanation: `圆面积=πr²=3.14×${r}²≈${Math.round(3.14*r*r)}cm²` } },
  () => { const profit = rand(10, 30); const cost = rand(100, 300); return { stem: `一件商品成本${cost}元，利润是成本的${profit}%，售价多少？`, options: [`${cost + Math.round(cost * profit / 100)}元`, `${cost - profit}元`, `${Math.round(cost * profit / 100)}元`, `${cost + profit}元`], answer: 0, explanation: `售价=成本+利润=${cost}+${cost}×${profit}%=${cost+Math.round(cost*profit/100)}元` } },
  () => { const a = rand(-5, 5); const b = rand(-5, 5); if (a >= 0 && b >= 0) return grade6[1](); return { stem: `${a} + (${b}) = ？`, options: [String(a + b), String(Math.abs(a + b)), String(a - b), String(-a - b)], answer: 0, explanation: `${a}+(${b})=${a + b}` } },
]

const generators: Record<number, Gen[]> = { 1: grade1, 2: grade2, 3: grade3, 4: grade4, 5: grade5, 6: grade6 }

export function generateMathQuestion(grade: number): GQ {
  const gens = generators[grade] || generators[3]
  return pick(gens)()
}
