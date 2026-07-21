# 错题订正复习与家长报告设计

## 1. 目标与范围

本阶段建设“错题订正复习型”闭环，解决孩子做题后错题无法有效归纳、订正和复习的问题。错题库不只是归档列表，而是将答错题目转化为可持续消化的复习任务，并让家长在当前账号内快速查看孩子今天完成了什么、错在哪里、复习进展如何。

第一阶段采用“同一账号内的家长报告入口”。不引入独立家长账号、家长-孩子绑定关系或多孩子管理，先验证错题复习闭环本身的学习价值。

本阶段包含：

- 孩子端错题复习入口与错题库页面。
- 错题详情、订正和再练流程。
- 家长报告入口，展示今日完成、正确率、今日错题、薄弱知识点和复习进度。
- 作答记录补充孩子当时答案。
- 错题当前状态与复习记录的数据模型。

本阶段不包含：

- 独立家长登录、亲子账号绑定、多孩子切换。
- 周报、月报、复杂趋势大屏。
- AI 自动生成长篇学情报告。
- 人工上传纸质错题或拍照识别。
- 开放式作文、口语等无法确定性判分题型的错题订正。

## 2. 已确认的选择

采用“订正复习型”方案。错题状态按学习闭环流转：

```
答错入库 → 待订正 → 订正答对 → 巩固中 → 复习再答对 → 已掌握
```

如果孩子在订正或复习中再次答错，错题回到“待订正”，并累计错误次数。家长端不展示大量原始记录，而是优先呈现能指导行动的信息：今天是否完成、哪些知识点薄弱、还有多少错题待处理、哪些已经掌握。

## 3. 用户角色与入口

### 3.1 孩子端

孩子端继续以每日任务和伙伴养成为主，不让错题功能喧宾夺主。首页增加一个“错题复习”任务卡，显示：

- 待订正数量。
- 今日可复习数量。
- 最近最薄弱的 1 个知识点。
- “开始复习”按钮。

错题复习也可从个人中心进入，作为“打卡日历”“切换伙伴”同级的学习功能。

### 3.2 家长端

家长报告第一阶段放在当前账号内，可从首页顶部或个人中心进入。入口文案建议为“家长报告”或“学习报告”，避免让孩子误以为是新的闯关任务。

家长报告默认展示“今天”，重点回答四个问题：

- 今天做了多少题？
- 今天正确率如何？
- 今天新增了哪些错题？
- 哪些知识点需要关注，错题复习处理到什么程度？

## 4. 页面设计

### 4.1 孩子首页错题任务卡

首页在今日任务区域附近增加错题复习卡。卡片状态：

- 无错题：显示“今天没有待复习错题”，可弱化展示。
- 有待订正：突出“待订正 N 道”，按钮为“去订正”。
- 有巩固题：显示“今日可复习 N 道”，按钮为“开始复习”。
- 全部掌握：显示鼓励反馈，可给少量情绪奖励但不重复发放答题积分。

### 4.2 错题库列表

错题库支持按以下维度筛选和分组：

- 科目：语文、数学、英语、全部。
- 状态：待订正、巩固中、已掌握。
- 知识点：来自 `questions.knowledge_point`。

每个错题卡片展示：

- 科目与知识点。
- 题干摘要。
- 错误次数。
- 最近错误时间。
- 当前状态。
- 操作按钮：订正、再练、查看解析。

### 4.3 错题详情与订正

详情页展示：

- 原题内容。
- 孩子当时答案。
- 正确答案。
- 题目解析。
- 知识点与能力层级。
- 历史错误次数和复习结果。

交互上优先复用现有 `QuizCard` 的判分能力。订正题答完后即时反馈：

- 答对：状态从“待订正”推进到“巩固中”，或从“巩固中”推进到“已掌握”。
- 答错：保持或回到“待订正”，累计错误次数，提示重新看解析。

### 4.4 家长报告

家长报告第一阶段分为四块：

1. 今日概览：完成题数、正确题数、正确率、完成科目。
2. 今日错题：新增错题数，按科目列出错题摘要。
3. 薄弱知识点：按未掌握错题数、错误次数和最近错误时间排序。
4. 复习进度：待订正、巩固中、已掌握数量。

家长报告中的错题条目可点击进入错题详情，但默认仍是只读查看，不在家长端设计复杂操作。

## 5. 数据模型

### 5.1 扩展 quiz_records

现有 `quiz_records` 已保存用户、题目、科目、是否正确、积分和答题时间。需要增加孩子当时答案，支持错题详情回看。

新增字段：

```sql
selected_answer jsonb
```

选择题保存选项索引，填空题保存输入文本，连线题和网格题保存结构化答案。使用 `jsonb` 可以覆盖现有题型，并为后续题型留扩展空间。

### 5.2 新增 mistake_records

保存每个用户、每道题当前错题状态，作为错题库列表和家长报告的主数据源。

建议字段：

```sql
mistake_records (
  id uuid primary key,
  user_id uuid not null references public.profiles(id) on delete cascade,
  question_id uuid not null references public.questions(id),
  subject text not null,
  status text not null, -- needs_correction | reinforcing | mastered
  wrong_count int not null default 1,
  correct_review_count int not null default 0,
  last_wrong_at timestamptz not null default now(),
  last_reviewed_at timestamptz,
  mastered_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(user_id, question_id)
)
```

RLS 策略与 `quiz_records` 一致：用户只能查看、插入、更新自己的错题状态。

### 5.3 新增 mistake_reviews

保存每一次订正或复习尝试，用于复习历史、状态推进和后续趋势分析。

建议字段：

```sql
mistake_reviews (
  id uuid primary key,
  user_id uuid not null references public.profiles(id) on delete cascade,
  mistake_id uuid not null references public.mistake_records(id) on delete cascade,
  question_id uuid not null references public.questions(id),
  selected_answer jsonb,
  is_correct boolean not null,
  status_before text not null,
  status_after text not null,
  reviewed_at timestamptz not null default now()
)
```

RLS 策略与 `mistake_records` 一致。

## 6. 状态规则

### 6.1 普通答题完成后

保存普通答题记录时：

- 正确题只写入 `quiz_records`，不创建错题。
- 错误题写入 `quiz_records`，并 upsert `mistake_records`。
- 如果错题不存在，创建为 `needs_correction`。
- 如果错题已存在且状态为 `mastered`，再次答错后回到 `needs_correction`，清空 `mastered_at`。
- 每次答错都更新 `wrong_count` 和 `last_wrong_at`。

### 6.2 订正和复习

错题复习答题后写入 `mistake_reviews`，并更新 `mistake_records`：

- `needs_correction` 答对：变为 `reinforcing`，`correct_review_count + 1`。
- `reinforcing` 答对：变为 `mastered`，设置 `mastered_at`。
- 任意非掌握状态答错：保持或回到 `needs_correction`，`wrong_count + 1`。
- `mastered` 状态默认不进入今日复习；后续如果在普通答题中再次答错，会重新激活。

第一阶段不做复杂间隔复习算法，只做简单的“待订正优先，巩固中其次”。后续可以基于 `last_reviewed_at` 加入 1 天、3 天、7 天间隔。

## 7. 数据查询与聚合

### 7.1 孩子端错题任务

查询当前用户 `mistake_records`：

- `needs_correction` 数量作为待订正数。
- `reinforcing` 数量作为可复习数。
- 按 `wrong_count`、`last_wrong_at` 选出最薄弱知识点。

知识点名称通过 `questions.knowledge_point` 聚合。

### 7.2 家长报告今日概览

基于今天本地日期范围查询 `quiz_records`：

- 总完成题数。
- 正确题数。
- 正确率。
- 三科完成数量。

今日新增错题通过 `mistake_records.last_wrong_at` 或今天答错的 `quiz_records` 聚合。

### 7.3 薄弱知识点

第一阶段按未掌握错题聚合：

- `needs_correction` 权重最高。
- `reinforcing` 次之。
- `wrong_count` 越高排序越靠前。
- 最近错误越近排序越靠前。

不把 `mastered` 错题计入当前薄弱点，但可作为历史掌握数据展示。

## 8. 前端实现边界

新增页面建议：

- `/mistakes`：孩子端错题库/复习入口。
- `/mistakes/:id`：错题详情与订正。
- `/parent-report`：当前账号内家长报告。

新增 store 建议：

- `mistakeStore`：负责错题状态、错题列表、复习提交、家长报告聚合。

现有 `quizStore` 保持答题会话职责，但保存记录时需要调用错题状态更新逻辑或共享数据层函数。不要把家长报告查询逻辑塞进 `quizStore`。

## 9. 错误处理

- 保存普通答题记录成功但错题状态更新失败时，页面提示“错题同步失败，可稍后重试”，不能影响已完成答题结算。
- 错题复习提交失败时，保留当前题目和答案状态，允许重试。
- 题目已下架但有历史错题时，错题详情仍尽量展示旧题内容；如果题目无法读取，显示“题目暂不可用”，但保留历史状态。
- 家长报告加载失败时，显示可重试的空状态，不阻塞孩子继续答题。

## 10. 测试与验收

自动化测试：

- 普通答题保存时携带 `selected_answer`。
- 答错题会创建或更新 `mistake_records`。
- 已掌握错题再次答错会重新变为 `needs_correction`。
- 订正答对会从 `needs_correction` 推进到 `reinforcing`。
- 巩固再答对会推进到 `mastered`。
- 家长报告能按今天的 `quiz_records` 计算完成数和正确率。
- 薄弱知识点按未掌握错题聚合。

产品验收：

- 孩子完成一组题后，答错题自动出现在错题库。
- 错题详情能看到孩子当时答案、正确答案和解析。
- 孩子能完成订正/再练，并看到错题状态变化。
- 首页能看到待订正和今日可复习数量。
- 家长报告能看到今日完成、今日错题、薄弱知识点和复习进度。
- 当前阶段不出现独立家长账号、绑定孩子账号或多孩子管理入口。

## 11. 分阶段交付

1. 数据层：迁移 `selected_answer`、`mistake_records`、`mistake_reviews`，同步数据库类型。
2. 记录写入：普通答题和挑战答题保存孩子答案，并维护错题状态。
3. 孩子端：错题任务卡、错题库、错题详情与订正流程。
4. 家长端：当前账号内家长报告入口与报告页面。
5. 验证与打磨：补测试、处理加载/空状态、移动端视觉检查。
