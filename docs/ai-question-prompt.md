# AI 出题话术模板

把下面内容发给 AI（ChatGPT/Claude/DeepSeek 等），让它按格式出题，输出直接粘贴到 Supabase SQL Editor 执行。

---

## 话术（复制以下内容发给 AI）

```
你是小学二年级的出题老师。请按以下要求生成题库，输出格式为 SQL INSERT 语句，我可以直接粘贴到数据库执行。

## 数据库格式

每道题一条 SQL：
insert into public.questions (subject, grade, difficulty, type, content, source) values ('学科', 2, 难度, '题型', '题目JSON', 'builtin');

## 题型说明

### 1. 选择题 (choice)
content 字段格式：
{"stem":"题目文字","options":["选项A","选项B","选项C","选项D"],"answer":0,"explanation":"解析说明"}
注意：answer 是正确选项的索引，0=A, 1=B, 2=C, 3=D

### 2. 填空题 (fill)
content 字段格式：
{"stem":"题目文字（用___表示填空位置）","answer":"正确答案","explanation":"解析说明"}
注意：答案用小写，不要有多余空格

### 3. 连线配对题 (match)
content 字段格式：
{"stem":"题目说明（如：将左边和右边配对）","left":["左1","左2","左3","左4"],"right":["右1","右2","右3","右4"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"解析说明"}
注意：matches 是 [左边索引, 右边索引] 的配对数组

## 要求

1. 按天组织，每天输出 3 组（语文/数学/英语各 20 题）
2. 语文20题：15道选择 + 3道填空 + 2道连线
3. 数学20题：15道选择 + 3道填空 + 2道连线
4. 英语20题：15道选择 + 3道填空 + 2道连线
5. 难度标记：简单=1, 中等=2, 困难=3，混合使用
6. 题目要贴近二年级水平，有趣、生活化
7. 不要出现重复题目
8. 在 SQL 开头加上注释标注这是第几天

## 输出示例（第1天数学的前3题）

```sql
-- ===== 第1天 · 数学 =====
insert into public.questions (subject, grade, difficulty, type, content, source) values
('math', 2, 1, 'choice', '{"stem":"5 × 6 = ？","options":["25","30","35","28"],"answer":1,"explanation":"五六三十，5乘6等于30"}', 'builtin'),
('math', 2, 2, 'choice', '{"stem":"小明有8块糖，吃掉3块后又买了5块，现在有多少块？","options":["8块","10块","13块","6块"],"answer":1,"explanation":"8-3=5，5+5=10块"}', 'builtin'),
('math', 2, 1, 'fill', '{"stem":"4 × 7 = ___","answer":"28","explanation":"四七二十八"}', 'builtin');
```

## 现在开始

请按以下顺序输出，共 7 天（一周的量）：
- 第1天：语文20题 + 数学20题 + 英语20题
- 第2天：语文20题 + 数学20题 + 英语20题
- ...
- 第7天：语文20题 + 数学20题 + 英语20题

总共 420 道题。输出纯 SQL，不要解释，不要多余文字。
```

---

## 使用方法

1. 把上面话术发给 ChatGPT/Claude/DeepSeek
2. 把 AI 返回的 SQL 复制到 Supabase SQL Editor 执行
3. 刷新浏览器，题库就有了
