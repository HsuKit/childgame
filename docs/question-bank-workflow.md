# 题库维护与发布手册

## 基本原则

- `data/questions` 中的规范 JSON 是唯一内容源，Supabase 只是运行副本。
- 发布目标和正常运行时读取都只使用 `approved`。当前 `questionRepository` 仅在某年级、学科的 approved 池完全为空时兼容回退 `reviewed`；approved 池非空但数量不足时不会混入 reviewed 补足。`reviewed` 仍未达到发布门槛，不能进入发布生成器产出的发布/upsert 迁移；经审查的定向下架 migration 可以把指定题目更新为 `reviewed` 或 `draft`。
- AI 可以离线帮助起草，但输出永远从 `draft` 开始，不能直接发布。
- 不执行全量删除；新增和修订都按 `external_id` 幂等 upsert。
- 题库内容、数据库结构和运行时代码分别提交，便于审阅和回滚。

## 单题格式

题目必须包含稳定 ID、学科、年级、难度、题型、知识点、能力层次、标签、题目内容、审核状态和版本。完整示例及 AI 起草规则见 `docs/ai-question-prompt.md`。

审核状态：

- `draft`：机器或人工初稿，禁止发布。
- `reviewed`：已经初审，但尚未达到发布门槛。
- `approved`：通过确定性校验和人工抽审，可以生成迁移。

修改题干、选项、答案、解析或关键元数据时必须增加 `version`。稳定 ID 不变，数据库 UUID 和历史作答引用不会改变。

## 本地检查

```bash
npm run test:questions
npm run questions:validate
npm test
npm run build
```

`questions:validate` 会检查结构、配额、知识点、答案位置、精确重复和近似重复。旧格式题库在完成迁移前会明确失败，这是发布保护，不得通过降低规则绕过。

## 生成迁移

每次生成前先查看 `supabase/migrations/`，选择尚未使用的下一个有序编号。当前仓库最新编号是 `016`，因此下面的 `017` 仅是当前仓库示例；后续必须按当时目录重新确定编号。

```bash
npm run questions:sql -- --output supabase/migrations/017_<description>.sql
```

`--output <path>` 是必填参数。`supabase/migrations/` 中已存在的文件永远不能覆盖，即使传入 `--force` 也会失败；目标已存在时应检查目录并选择新的 migration 编号。生成器只包含 `approved` 题目，并使用 `on conflict (external_id) do update`。

`--force` 只保留给仓库 migration 目录之外的临时审阅输出；即使是临时文件，也应先确认覆盖不会丢失仍需保留的审阅结果。

## 数据库发布清单

1. 保存当前各年级、学科、题型、难度和审核状态的行数统计。
2. 在测试数据库依次执行结构迁移和题目迁移。
3. 重复执行题目迁移，确认总行数不增长且无唯一约束错误。
4. 抽查 choice、fill、match 的展示和判题。
5. 使用测试账号完成数学 10 题，确认保存 10 条记录。
6. 使用测试账号完成 30 题挑战，确认三科各保存 10 条记录。
7. 生产发布后再次核对统计，并保留迁移日志。

使用远程发布脚本前，从批准的 secret manager 或受保护 session 预先加载 `SUPABASE_URL` 与 `SUPABASE_SERVICE_ROLE_KEY`，再单独运行：

```bash
node scripts/seed-all-questions.mjs
```

服务角色密钥不得写入仓库、浏览器代码或命令输出。常规发布优先使用经过审阅的 SQL 迁移。

## 回滚和下架

- 结构迁移是向前兼容的，不删除旧题和历史记录。
- 内容错误优先修订同一 `external_id` 并增加版本。
- 需要下架时，把目标题改为 `reviewed` 或 `draft`，通过明确的定向迁移更新；不要物理删除被 `quiz_records` 引用的题目。
- 若新运行时代码尚未配套足够的 `approved` 题目，不得部署该版本。

## 运行时组卷

普通练习目标为 10 题：7 道选择、2 道填空、1 道连线；5 道简单、3 道中等、2 道困难，并尽量覆盖至少 4 个知识点。优先顺序为未做题、30 天前做过的题、最近 30 天做过的题。精确配额不足时按既定规则降级，但总题数不足会显示可恢复错误，不创建残缺会话。

每日挑战分别为三科组 10 题再混排。所有题目都有数据库 ID，因此完成数、积分和历史防重复记录一致。
