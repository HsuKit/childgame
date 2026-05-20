import { createClient } from 'https://esm.sh/@supabase/supabase-js@2'

const DEEPSEEK_API_KEY = Deno.env.get('DEEPSEEK_API_KEY')!
const DEEPSEEK_BASE = 'https://api.deepseek.com'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: corsHeaders })

  try {
    const body = await req.json()
    const { subject, grade, count = 5, type = 'choice' } = body

    if (!subject || !grade) {
      return new Response(JSON.stringify({ error: 'subject and grade required' }), {
        status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      })
    }

    const typePrompt = type === 'choice'
      ? `{"stem":"题目","options":["A","B","C","D"],"answer":0,"explanation":"解析"}`
      : type === 'fill'
      ? `{"stem":"题目","answer":"答案","explanation":"解析"}`
      : `{"stem":"题目","left":["左1","左2"],"right":["右1","右2"],"matches":[[0,0],[1,1]],"explanation":"解析"}`

    const subjectNames: Record<string, string> = { chinese: '语文', math: '数学', english: '英语' }

    const prompt = `你是小学${subjectNames[subject]}的出题老师。请为${grade}年级学生生成${count}道${type === 'choice' ? '选择题' : type === 'fill' ? '填空题' : '连线配对题'}。
题目要有趣、贴近生活，难度适合${grade}年级。
返回JSON数组，每个元素格式：${typePrompt}
只返回JSON数组，不要其他文字。`

    const response = await fetch(`${DEEPSEEK_BASE}/chat/completions`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${DEEPSEEK_API_KEY}`,
      },
      body: JSON.stringify({
        model: 'deepseek-chat',
        messages: [{ role: 'user', content: prompt }],
        temperature: 0.8,
        max_tokens: 4096,
      }),
    })

    const json = await response.json()
    const content = json.choices?.[0]?.message?.content || '[]'
    const questions = JSON.parse(content.match(/\[[\s\S]*\]/)?.[0] || '[]')

    // Insert into database
    const authHeader = req.headers.get('Authorization')!
    const supabase = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!,
    )

    const inserts = questions.map((q: any) => ({
      subject,
      grade,
      difficulty: 2,
      type,
      content: q,
      source: 'ai_generated',
    }))

    if (inserts.length > 0) {
      await supabase.from('questions').insert(inserts)
    }

    return new Response(JSON.stringify({ generated: inserts.length, questions: inserts }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    })
  } catch (err: any) {
    return new Response(JSON.stringify({ error: err.message }), {
      status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    })
  }
})
