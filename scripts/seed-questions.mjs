import { createClient } from '@supabase/supabase-js'

const supabase = createClient(
  'https://mykculgjrlmwfsyrcroe.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im15a2N1bGdqcmxtd2ZzeXJjcm9lIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzkxNzY0OTQsImV4cCI6MjA5NDc1MjQ5NH0.aJmkrvi60kXkUrqiMmsnsU6nF1jM3dEmP9D8ULTaKPk'
)

const questions = [
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '3 + 5 = ?', options: ['6', '7', '8', '9'], answer: 2, explanation: '3加5等于8' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '10 - 4 = ?', options: ['4', '5', '6', '7'], answer: 2, explanation: '10减4等于6' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '7 + 2 = ?', options: ['8', '9', '10', '11'], answer: 1, explanation: '7加2等于9' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '5 - 3 = ?', options: ['1', '2', '3', '4'], answer: 1, explanation: '5减3等于2' } },
  { subject: 'math', grade: 1, difficulty: 1, type: 'choice', content: { stem: '6 + 4 = ?', options: ['8', '9', '10', '11'], answer: 2, explanation: '6加4等于10' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '8 × 3 = ?', options: ['21', '22', '23', '24'], answer: 3, explanation: '8乘3等于24' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '36 ÷ 6 = ?', options: ['4', '5', '6', '7'], answer: 2, explanation: '36除以6等于6' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '7 × 5 = ?', options: ['30', '35', '40', '45'], answer: 1, explanation: '7乘5等于35' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '48 ÷ 8 = ?', options: ['4', '5', '6', '7'], answer: 2, explanation: '48除以8等于6' } },
  { subject: 'math', grade: 2, difficulty: 1, type: 'choice', content: { stem: '9 × 4 = ?', options: ['32', '34', '36', '38'], answer: 2, explanation: '9乘4等于36' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '"日"字的正确拼音是？', options: ['rì', 'rè', 'yè', 'rù'], answer: 0, explanation: '"日"读作rì' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '下列哪个字和"水"有关系？', options: ['火', '水', '山', '口'], answer: 1, explanation: '"水"字本身' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '比一比，谁最大？', options: ['蚂蚁', '小鸟', '大象', '鱼'], answer: 2, explanation: '大象是陆地上最大的动物' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '"妈妈"的反义词是？', options: ['奶奶', '爸爸', '姐姐', '爷爷'], answer: 1, explanation: '妈妈的反义词是爸爸' } },
  { subject: 'chinese', grade: 1, difficulty: 1, type: 'choice', content: { stem: '春天来了，什么花会开？', options: ['梅花', '桃花', '菊花', '兰花'], answer: 1, explanation: '春天桃花盛开' } },
  { subject: 'chinese', grade: 2, difficulty: 1, type: 'choice', content: { stem: '成语"画蛇添足"的意思是什么？', options: ['多此一举', '画得很好', '蛇有脚', '添上颜色'], answer: 0, explanation: '画蛇添足比喻做了多余的事情' } },
  { subject: 'chinese', grade: 2, difficulty: 1, type: 'choice', content: { stem: '"漂亮"的近义词是？', options: ['难看', '美丽', '普通', '可爱'], answer: 1, explanation: '漂亮的近义词是美丽' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'What color is the sky?', options: ['Red', 'Blue', 'Green', 'Yellow'], answer: 1, explanation: 'The sky is blue' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'How many apples? 🍎🍎🍎', options: ['One', 'Two', 'Three', 'Four'], answer: 2, explanation: 'There are three apples' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'Which animal says "meow"?', options: ['Dog 🐕', 'Cat 🐈', 'Bird 🐦', 'Fish 🐟'], answer: 1, explanation: 'A cat says meow' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: '"Apple"的中文意思是？', options: ['香蕉', '苹果', '橘子', '葡萄'], answer: 1, explanation: 'Apple是苹果' } },
  { subject: 'english', grade: 1, difficulty: 1, type: 'choice', content: { stem: 'Choose the correct greeting:', options: ['Goodbye', 'Hello', 'Sorry', 'Thanks'], answer: 1, explanation: 'Hello is a greeting' } },
  { subject: 'english', grade: 2, difficulty: 1, type: 'choice', content: { stem: '"I ___ a student." Choose the correct word:', options: ['is', 'am', 'are', 'be'], answer: 1, explanation: '"I am a student" is correct' } },
  { subject: 'english', grade: 2, difficulty: 1, type: 'choice', content: { stem: 'What is the opposite of "big"?', options: ['Large', 'Small', 'Tall', 'Wide'], answer: 1, explanation: 'The opposite of big is small' } },
]

async function seed() {
  // First check if questions already exist
  const { count } = await supabase.from('questions').select('*', { count: 'exact', head: true })
  if (count && count > 0) {
    console.log(`Questions table already has ${count} rows, skipping seed.`)
    return
  }

  const { error } = await supabase.from('questions').insert(questions)
  if (error) {
    console.error('Seed failed:', error.message)
  } else {
    console.log(`Seeded ${questions.length} questions successfully.`)
  }
}

seed()
