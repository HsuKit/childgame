# 小学儿童益智游戏 — 设计文档

## 概述

面向 1-6 年级小学儿童的 Web 益智游戏，将语数英课程知识融入趣味玩法，通过每日打卡 + 积分系统 + 养成伙伴激励学习。

## 技术栈

| 层 | 选型 |
|---|------|
| 前端框架 | React 18 + TypeScript |
| 构建工具 | Vite |
| 样式 | TailwindCSS |
| 动画 | Framer Motion |
| 状态管理 | Zustand |
| 后端/数据库 | Supabase（认证 + PostgreSQL + Row Level Security） |
| 服务端逻辑 | Supabase Edge Functions（AI 出题等） |
| AI 出题 | 调用 LLM API（DeepSeek），通过 Edge Function 代理 |

## 架构

```
表现层（React 组件）
  ├── 伙伴界面（养成互动）
  ├── 答题界面（闯关/打卡）
  ├── 商城界面（道具兑换）
  └── 个人中心（数据总览）
        │
业务逻辑层（Zustand stores）
  ├── authStore      — 登录状态
  ├── petStore       — 伙伴状态
  ├── quizStore      — 答题流程
  ├── pointsStore    — 积分系统
  └── checkInStore   — 打卡系统
        │
数据层（Supabase）
  ├── Auth           — 匿名登录 + 手机绑定
  ├── PostgreSQL     — 业务数据
  ├── Row Level Security — 数据隔离
  └── Edge Functions — AI 出题代理
```

## 数据库设计

```sql
-- 用户信息
profiles (
  id uuid PK,           -- 关联 auth.users
  nickname text,
  avatar_url text,
  grade int,            -- 1-6
  phone text,           -- 绑定手机号（可空）
  created_at timestamptz
)

-- 伙伴（可扩展的养成角色）
companions (
  id uuid PK,
  user_id uuid FK → profiles,
  companion_type text,  -- 伙伴类型 key，如 'cat', 'cyber_dragon', 'anime_fox'
  name text,            -- 孩子自己取的名字
  level int DEFAULT 1,
  exp int DEFAULT 0,
  hunger int DEFAULT 100,   -- 0-100
  mood int DEFAULT 100,     -- 0-100
  equipped_items jsonb DEFAULT '[]',
  created_at timestamptz
)

-- 伙伴类型定义（可扩展，支持后续 AI 生图）
companion_types (
  id text PK,           -- key，如 'cat', 'cyber_dragon'
  name text,            -- 显示名
  category text,        -- 分类：animal / anime / cyberpunk / fantasy
  base_image_url text,  -- 基础图片（后续可替换为 AI 生成）
  image_gen_prompt text, -- AI 生图 prompt 模板（后续接入）
  rarity text,          -- common / rare / legendary
  unlock_cost int,      -- 解锁所需积分
  is_active boolean DEFAULT true
)

-- 题库
questions (
  id uuid PK,
  subject text,         -- 'chinese' | 'math' | 'english'
  grade int,            -- 1-6
  difficulty int,       -- 1-3
  type text,            -- 'choice' | 'fill' | 'match'
  content jsonb,        -- { stem, options, answer, explanation }
  source text,          -- 'builtin' | 'ai_generated'
  created_at timestamptz
)

-- 答题记录
quiz_records (
  id uuid PK,
  user_id uuid FK,
  question_id uuid FK,
  subject text,
  is_correct boolean,
  points_earned int,
  answered_at timestamptz
)

-- 每日打卡
check_ins (
  id uuid PK,
  user_id uuid FK,
  date date,
  streak_count int,           -- 连续打卡天数
  chinese_done boolean,       -- 语文任务完成
  math_done boolean,          -- 数学任务完成
  english_done boolean,       -- 英语任务完成
  bonus_points int DEFAULT 0, -- 连续打卡加成
  UNIQUE(user_id, date)
)

-- 积分流水
points_transactions (
  id uuid PK,
  user_id uuid FK,
  amount int,           -- 正数为获得，负数为消费
  reason text,          -- 'quiz_reward' | 'checkin_bonus' | 'buy_item' | 'unlock_companion'
  reference_id uuid,    -- 关联的题目/道具 id
  created_at timestamptz
)

-- 商城道具
shop_items (
  id uuid PK,
  name text,
  type text,            -- 'food' | 'accessory' | 'skin' | 'background'
  companion_type text,  -- 限定伙伴类型（可空 = 通用）
  image_url text,
  cost int,
  effect jsonb,         -- { hunger: 30, mood: 10 } 等
  is_active boolean DEFAULT true
)
```

## 核心功能

### 1. 伙伴养成系统（Phase 1，最高优先级）

**初始体验：**
- 注册后从 3-4 个入门伙伴中选择一个（猫/小狗/小恐龙/小狐狸）
- 给伙伴起名字
- 伙伴有三维状态：饱腹度、心情值、经验值

**养成循环：**
```
做题赚积分 → 积分换食物/道具 → 喂食/装扮伙伴 → 伙伴升级进化 → 继续做题
```

**进化机制：**
- 达到特定等级自动进化（外观变化）
- 如：小猫 → 大猫 → 猫骑士 → 星辰猫

**积分规则：**
- 答对一题：+10 积分
- 连续答对 combo：额外 +5/+10/+15
- 每日打卡完成三科：+50 奖励
- 连续 7 天打卡：+100 奖励
- 连续 30 天打卡：+500 奖励 + 稀有道具

**伙伴类型扩展性：**
- `companion_types` 表驱动，新增类型只需 INSERT
- 支持分类：animal / anime / cyberpunk / fantasy
- 预留 `image_gen_prompt` 字段，后续接入 AI 生图即可自动生成伙伴外观
- 基础阶段用预设 SVG/PNG 图片

### 2. 答题闯关系统（Phase 2）

**每日打卡流程：**
```
进入 → 查看今日任务（语/数/英各 5 题）
     → 逐一答题，即时反馈对错
     → 三科完成 → 打卡成功 → 积分结算动画
     → 积分飞入伙伴界面
```

**闯关模式：**
- 每日关卡 = 语数英混合 10 题，难度渐进
- 答对 8/10 通关，获得 bonus
- 未通关可重试，但不额外给积分
- 按年级分难度（1-6 年级各一套题库）

**题型：**
- 选择题（主要题型，低年级友好）
- 填空题（中高年级）
- 连线题（英语单词配图片）

**题库策略：**
- 内置基础题库（优先使用，质量可控）
- 当某知识点题目不足时，Edge Function 调用 DeepSeek 生成并缓存
- AI 生成的题目标记 `source: 'ai_generated'`，后续可人工审核

### 3. 积分商城（Phase 1）

- 食物类：恢复饱腹度（面包、鱼、蛋糕...）
- 装扮类：帽子、眼镜、围巾、项链（影响外观）
- 皮肤类：改变伙伴颜色/风格
- 伙伴类：解锁新的伙伴类型（高积分）

### 4. 竞技排行（Phase 3，后续）

- 班级排行榜（需邀请机制）
- 好友 PK（实时答题比拼）
- 周榜/月榜奖励

## 登录流程

```
首次访问 → 自动创建 Supabase 匿名账号
         → 本地 IndexedDB 缓存用户状态
         → 顶部常驻提示：绑定家长手机号，同步数据
         → 可选跳过，继续以访客身份使用
         → 后续可在「设置」中补绑手机号
```

技术实现：
- Supabase `signInAnonymously()` 创建匿名会话
- 绑定手机时 `updateUser({ phone })` + 密码设置
- Row Level Security 确保数据隔离

## 路由设计

```
/                  → 首页（伙伴展示 + 今日打卡入口）
/login             → 登录/注册
/companion         → 伙伴详情（状态、装扮、进化）
/quiz              → 答题界面
/quiz/result       → 答题结果 + 积分结算
/shop              → 积分商城
/checkin           → 打卡日历
/profile           → 个人中心
/companions/select → 选择/解锁新伙伴
```

## 里程碑

| 阶段 | 内容 | 预计 |
|------|------|------|
| Phase 1 | 伙伴养成 + 积分系统 + 商城 + 打卡基础 | 核心闭环 |
| Phase 2 | 闯关模式 + 题库完善 + AI 出题 | 内容扩展 |
| Phase 3 | 排行榜 + 好友 PK + 通知 | 社交驱动 |
| Future | AI 生图伙伴 + 微信小程序 + App | 平台扩展 |
