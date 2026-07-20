# 离线 AI 出题话术模板

AI 只用于离线起草题目。输出内容必须保存为候选 JSON，经过项目校验、人工抽审和迁移生成后才能发布；禁止把 AI 输出的 SQL 直接粘贴到生产数据库，也禁止在用户答题时调用 AI。

## 使用前准备

先从 `data/question-blueprint.json` 取出目标年级、学科允许的知识点。一次只生成一个学科的小批次，建议每批 20 至 40 题，便于审阅和重试。

## 提示词

```text
你是熟悉教育部 2022 年义务教育课程标准的小学出题老师。请为全国通用、无教材版本绑定的题库起草题目。

目标年级：{grade}
目标学科：{subject}
允许的知识点：{knowledgePoints}
本批题量及配额：{batchQuota}
起始编号：{startNumber}

只输出一个合法 JSON 数组，不要输出 Markdown、SQL 或解释。每个对象必须包含：

{
  "id": "g{grade}-{subject}-{knowledge-point-slug}-{三位序号}",
  "subject": "chinese | math | english",
  "grade": 1,
  "difficulty": 1,
  "type": "choice | fill | match",
  "knowledgePoint": "必须原样选自允许的知识点",
  "skill": "recall | understand | apply | reason",
  "tags": ["生活情境"],
  "content": {},
  "reviewStatus": "draft",
  "version": 1
}

choice 的 content：
{"stem":"题干","options":["A","B","C","D"],"answer":0,"explanation":"说明判断或计算过程"}

fill 的 content：
{"stem":"用___表示填空位置","answer":"规范答案","acceptableAnswers":["可选同义答案"],"explanation":"说明依据"}

match 的 content：
{"stem":"配对说明","left":["左1","左2","左3","左4"],"right":["右1","右2","右3","右4"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"逐项说明配对依据"}

质量要求：
1. 不出现出版社、教材单元、学期编号或地区专属内容。
2. 简单题仍需理解；中等题包含信息筛选、情境转换或两步处理；困难题强调迁移推理但不得超纲。
3. 题干清楚且只有一个确定答案，选项互异，干扰项合理。
4. 不使用固定答案位置规律；严格遵守本批指定的 A/B/C/D 配额。
5. 不与本提示后附的已有题干重复或仅替换数字、人名、物品。
6. 英语填空答案使用小写且无首尾空格。
7. 解析必须说明关键依据，不能只重复答案。
8. 内容健康、生活化、适龄，不包含危险行为、消费攀比或刻板印象。

已有题干（禁止重复）：
{existingStems}
```

## 使用流程

1. 将 AI 返回内容保存为独立候选文件，保持 `reviewStatus: "draft"`。
2. 人工检查正确性、年级边界、语言自然度和近似重复。
3. 修订通过后改为 `reviewed`，完成指定抽审后才改为 `approved`。
4. 执行 `npm run questions:validate`；任何错误或待审近似重复都必须处理。
5. 执行 `npm run questions:sql -- --output <迁移文件>` 生成幂等 SQL。
6. 先在测试数据库执行两次并核对行数，再安排生产发布。
