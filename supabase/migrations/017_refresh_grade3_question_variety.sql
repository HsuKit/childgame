-- Auto-generated from validated canonical question JSON.
-- Safe to run repeatedly: rows are upserted by external_id.
begin;

insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-001', 'chinese', 3, 1, 'choice', '{"stem":"他专心地观察蚂蚁搬家，连伙伴叫他都没听见。句中“专心”的意思是？","options":["注意力集中","声音很大","动作很快","心情紧张"],"answer":0,"explanation":"结合句子内容，“注意力集中”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d1']::text[], '6852785b0a5935ab8d95b6a83cb47e3a3533936165bb85fcb9cf6a1e177171e3', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-002', 'chinese', 3, 1, 'choice', '{"stem":"下面没有语病的一项是？","options":["同学们认真地作业。","同学们认真地完成了作业。","同学们完成了认真作业。","同学们把作业认真。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d1']::text[], '897689f6c63a95c879a46d1a513cb7e19501097046222a962ab961d5221d2867', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-003', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“清晨，小林先给花浇水，再整理书包，最后背着书包上学。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小林上学前做了哪些事”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v0']::text[], 'f41adae65372fafab9217fc180ff4cc49dc1f0899815ae1484a73754d11d932d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-004', 'chinese', 3, 1, 'choice', '{"stem":"“弯弯的月亮像一条小船。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d1']::text[], '22f34a994d6ccceee41e52ba1cc26de3430f6c1864ac0ec1cd7a12346985c6c3', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-005', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“清晨，小林先给花浇水，再整理书包，最后背着书包上学。”小林上学前做了哪些事？","options":["浇花、整理书包后上学","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“浇花、整理书包后上学”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v0']::text[], 'a81dde843e90cf6cd673f6a8faa5ec6913ecf64b2601110131dad6cba15b5dda', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-006', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“清晨，小林先给花浇水，再整理书包，最后背着书包上学。”这段话的中心意思是？","options":["介绍天气变化","浇花、整理书包后上学","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“浇花、整理书包后上学”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v0']::text[], '0a9c328c6712608327b46b1a9048286e07a887be7bd191e32d729981e3ff8295', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-007', 'chinese', 3, 1, 'choice', '{"stem":"写请假条时，正文中必须说明什么？","options":["只写自己的心情","使用很多感叹号","请假原因和时间","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“请假原因和时间”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d1']::text[], 'ac6c12b0c598bbe972ae648f7b40e1372c20a1f77292b5183309530e426acf3c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-008', 'chinese', 3, 1, 'choice', '{"stem":"春节常见的习俗是？","options":["赏菊花","赛龙舟","吃月饼","贴春联"],"answer":3,"explanation":"根据传统文化常识，正确答案是“贴春联”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d1']::text[], '630fc4e19da0de19fe5e3f9f4ab9efbc897560853c27adf1bd2f33fdb6f8d96b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-009', 'chinese', 3, 1, 'choice', '{"stem":"雨后，空气格外清新。“清新”在句中的意思是？","options":["清爽而新鲜","寒冷刺骨","十分干燥","颜色鲜艳"],"answer":0,"explanation":"结合句子内容，“清爽而新鲜”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d1']::text[], '067b47705012192063b30e776138c5c2c0b52cbe71ff5399665a8c2cb22202c1', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-010', 'chinese', 3, 1, 'choice', '{"stem":"“我估计他今天一定会来。”怎样修改更恰当？","options":["我估计他今天一定不会不来。","我估计他今天会来。","我估计一定他今天会来。","我今天估计他一定会来。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d1']::text[], '41b0ca323d52237dc4309f3bfff8687e793013cdf1557b1d0d81a4ebe43925bf', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-011', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小猫听见门外有响声，轻轻走过去，发现是一只迷路的小鸟。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小猫发现了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v1']::text[], 'e4161f8e3265a3752a581a58c81d684ce1a1de0481d21b34ecd6b66315a957b9', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-012', 'chinese', 3, 1, 'choice', '{"stem":"“风儿轻轻唱着歌。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d1']::text[], 'ff61eec3dcb1427a18c9207ce7275b3c318d7efe767214fe2762ef5994f67a59', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-013', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小猫听见门外有响声，轻轻走过去，发现是一只迷路的小鸟。”小猫发现了什么？","options":["一只迷路的小鸟","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“一只迷路的小鸟”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v1']::text[], 'd00dea324d1bb049dfd2736c5003245cafb8cb870c5c771bcfd6e9db3a6aafd6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-014', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小猫听见门外有响声，轻轻走过去，发现是一只迷路的小鸟。”这段话的中心意思是？","options":["介绍天气变化","一只迷路的小鸟","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“一只迷路的小鸟”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v1']::text[], 'b02ed2898ece1271f315ac8adb7fe33bea7352cf06c6e1665276544bc5cb5f2c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-015', 'chinese', 3, 1, 'choice', '{"stem":"通知中为了让大家按时参加活动，必须写清什么？","options":["只写自己的心情","使用很多感叹号","活动时间和地点","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“活动时间和地点”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d1']::text[], '0116ff34673454ec8a11454de378b070420e2738949205d49f21dcf6e1a9e8d1', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-016', 'chinese', 3, 1, 'choice', '{"stem":"端午节常见的活动是？","options":["贴春联","赏月","登高","赛龙舟"],"answer":3,"explanation":"根据传统文化常识，正确答案是“赛龙舟”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d1']::text[], '94533f3c6efe49f48c8be4e8a14c15593dd44c77f5a8fad69b11c4d4a980e948', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-017', 'chinese', 3, 1, 'choice', '{"stem":"小船缓缓地离开岸边。“缓缓”说明小船怎样移动？","options":["慢慢地","突然地","飞快地","摇晃地"],"answer":0,"explanation":"结合句子内容，“慢慢地”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d1']::text[], '046602454aa97555fb648bda74a6ef046c23249029039ca504c606a8aa636534', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-018', 'chinese', 3, 1, 'choice', '{"stem":"“校园里开满了五颜六色的红花。”怎样修改？","options":["校园里开满了红色的红花。","校园里开满了五颜六色的花。","校园里五颜六色开满了红花。","校园开满花了五颜六色。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d1']::text[], 'efebb6128e5b6ebfecae0ecfa851c342f69451e1d6bec2d47f4747bcf20282d8', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-019', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“奶奶把种子撒进土里，每天浇水。几天后，嫩芽钻了出来。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“事情的结果是什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v2']::text[], '8522f5fe04ce25429c72eaee8798ff4ce203470dec68dac785ff8f560ed4114e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-020', 'chinese', 3, 1, 'choice', '{"stem":"“雨点像珍珠一样落下来。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d1']::text[], '8495abc08cd6f01e9d0b643e88aee4ede21d1f029a11014808843d83e6cd7c36', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-021', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“奶奶把种子撒进土里，每天浇水。几天后，嫩芽钻了出来。”事情的结果是什么？","options":["种子长出了嫩芽","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“种子长出了嫩芽”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v2']::text[], '579556ac5409145073e42425c401937d795bde76814dd73ff8c8d9ec6fbda85a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-022', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“奶奶把种子撒进土里，每天浇水。几天后，嫩芽钻了出来。”这段话的中心意思是？","options":["介绍天气变化","种子长出了嫩芽","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“种子长出了嫩芽”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v2']::text[], 'e2b5307c387b60357d9bbce030d8bb859f4d7fbbfb070218b397ada2cb415ce5', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-023', 'chinese', 3, 1, 'choice', '{"stem":"给长辈写信，开头称呼后通常用什么标点？","options":["只写自己的心情","使用很多感叹号","冒号","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“冒号”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d1']::text[], '19f51b78bb5b9aafa1a4227e20a9e28f773ac3893688d70bed6116f35aed2143', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-024', 'chinese', 3, 1, 'choice', '{"stem":"中秋节人们常会？","options":["包粽子","贴窗花","放风筝","赏月"],"answer":3,"explanation":"根据传统文化常识，正确答案是“赏月”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d1']::text[], '3feae79f3d46cfbf37565b837be9e98fafbf40f0c41676307a062c0309d784ae', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-025', 'chinese', 3, 1, 'choice', '{"stem":"看到同学摔倒，小雨立刻跑过去扶他。“立刻”表示？","options":["马上","偶尔","终于","从前"],"answer":0,"explanation":"结合句子内容，“马上”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d1']::text[], '297be73b9d92c56d8bb4b1d55bf3869601e036e1cfba6ae52b35837277721346', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-026', 'chinese', 3, 1, 'choice', '{"stem":"“我们要爱护时间。”应把“爱护”改为？","options":["保护","珍惜","爱惜","保卫"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d1']::text[], '02a6632a4a9b8244e72f412c5185331f0e2016cefc114d6f2f5fa2f16099f46f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-027', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“运动会上，小刚摔倒了。他忍着疼站起来，坚持跑到了终点。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小刚最值得学习的品质”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v3']::text[], 'e9758f296ba99b4f5227085396e77d007f10f31d39a26a12e2243c4bda4b8ef8', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-028', 'chinese', 3, 1, 'choice', '{"stem":"“小草从土里探出头来。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d1']::text[], '0647ac32aa62a4e519f99d7d745679fdf5e63d157210c6df88d11b1e2f0c8fb2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-029', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“运动会上，小刚摔倒了。他忍着疼站起来，坚持跑到了终点。”小刚最值得学习的品质？","options":["坚持不放弃","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“坚持不放弃”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v3']::text[], '5990a7dd28fb909da682b0dbdb6f6591d2b8d094f30f3cc5a5be85c82a18c22c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-030', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“运动会上，小刚摔倒了。他忍着疼站起来，坚持跑到了终点。”这段话的中心意思是？","options":["介绍天气变化","坚持不放弃","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“坚持不放弃”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v3']::text[], '2e64fd486170f21554dd45c1017e16db26521e0e64ddf599c4adbd20916a0f1e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-031', 'chinese', 3, 1, 'choice', '{"stem":"日记正文前一般要写什么？","options":["只写自己的心情","使用很多感叹号","日期和天气","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“日期和天气”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d1']::text[], '79aefd1fa0c5fac8cc63ee17d45306be66afdf01672d8103aecd446371fdb1fa', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-032', 'chinese', 3, 1, 'choice', '{"stem":"重阳节常有哪项习俗？","options":["赛龙舟","守岁","赏花灯","登高"],"answer":3,"explanation":"根据传统文化常识，正确答案是“登高”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d1']::text[], 'fde23bbf4705df383d477419931be88d92b49307b253c2481ba7504a85785592', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-033', 'chinese', 3, 1, 'choice', '{"stem":"山路崎岖，大家走得很小心。“崎岖”说明山路怎样？","options":["高低不平","宽阔平坦","十分笔直","干净整齐"],"answer":0,"explanation":"结合句子内容，“高低不平”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d1']::text[], 'cc37c9d1062a4b60af50ad3242aa87958d8e10f52797e4d6f36b185b246aa306', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-034', 'chinese', 3, 1, 'choice', '{"stem":"“下课了，校园里立刻顿时热闹起来。”应删去哪一个词？","options":["校园里","立刻或顿时","热闹","起来"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d1']::text[], 'fc059b81de505eb9202699f5067bb79861908cfaf8932ac4cc2f63c02bdd0340', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-035', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“放学后，天空突然下雨。小美把伞借给没带伞的同桌，两人一起回家。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小美做了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v4']::text[], '6a884d8a7d79c4b91b31b40abb961fcd84df0f17c80dbebe5f7cfd7eab44170d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-036', 'chinese', 3, 1, 'choice', '{"stem":"“湖面平静得像一面镜子。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d1']::text[], '928201bd60f674b23c1f0a4e2a730819f9ee33d205bec08b3ae1c40160609417', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-037', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“放学后，天空突然下雨。小美把伞借给没带伞的同桌，两人一起回家。”小美做了什么？","options":["和同桌共用雨伞","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“和同桌共用雨伞”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v4']::text[], '4798274bc3bef6868170cbaa6c74d102ca036c4157cca49d750167755015b855', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-038', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“放学后，天空突然下雨。小美把伞借给没带伞的同桌，两人一起回家。”这段话的中心意思是？","options":["介绍天气变化","和同桌共用雨伞","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“和同桌共用雨伞”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v4']::text[], '2cc017fcbac1744cf952ba03011eacd35f475056fe5a1abf074582d944c5ad3b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-039', 'chinese', 3, 1, 'choice', '{"stem":"写寻物启事时，最需要写清什么？","options":["只写自己的心情","使用很多感叹号","丢失物品的特征","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“丢失物品的特征”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d1']::text[], '7be2654a49786e8230eb0ae8bee282e5494690add4a032b92c8be47a9785b759', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-040', 'chinese', 3, 1, 'choice', '{"stem":"“谁知盘中餐，粒粒皆辛苦”提醒我们？","options":["按时睡觉","爱护图书","坚持运动","珍惜粮食"],"answer":3,"explanation":"根据传统文化常识，正确答案是“珍惜粮食”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d1']::text[], '35e1771bfddbc5509d31bd8baed7e51eb3e0f1e65b43dbe32f370a8f7334525e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-041', 'chinese', 3, 1, 'choice', '{"stem":"比赛结束后，队员们仍然意犹未尽。“意犹未尽”说明他们？","options":["还想继续参加","已经十分疲倦","完全没有兴趣","忘记了比赛"],"answer":0,"explanation":"结合句子内容，“还想继续参加”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d1']::text[], 'b5a9f57bd9fb42a56b23a37ae5fb992d9e7662c6615c1bd5cb65c2757fde487a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-042', 'chinese', 3, 1, 'choice', '{"stem":"“小明和小东一起并肩走回家。”怎样修改更简洁？","options":["小明并肩和小东一起走回家。","小明和小东并肩走回家。","小明和小东走一起并肩回家。","一起小明和小东并肩走回家。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d1']::text[], 'ade04b07d297e9b19ebf0c446bc3878739a475b83ebf3b029ca9f0ab0b789070', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-043', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“爸爸修理椅子时，小宇主动递工具，还把地上的木屑扫干净。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小宇帮爸爸做了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v5']::text[], '220d26caa0b38e78b71f5d633b85bf3d173f010c2b53fdbcec6252f4cd39e0ea', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-044', 'chinese', 3, 1, 'choice', '{"stem":"“太阳公公露出了笑脸。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d1']::text[], '747365fba0b8a6d061a4cef6901a17d430263b344b21a5fadb5a24498aa3e11c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-045', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“爸爸修理椅子时，小宇主动递工具，还把地上的木屑扫干净。”小宇帮爸爸做了什么？","options":["递工具并清扫木屑","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“递工具并清扫木屑”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v5']::text[], '1c2429a21631ab79fb44bde353a7b00d78186abefae74643e3e2bfc40454a9e7', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-046', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“爸爸修理椅子时，小宇主动递工具，还把地上的木屑扫干净。”这段话的中心意思是？","options":["介绍天气变化","递工具并清扫木屑","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“递工具并清扫木屑”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v5']::text[], 'bee03eb58c8a044f7ee368c2b486098f722b4a76be10599a97de2b6ff2ded162', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-047', 'chinese', 3, 1, 'choice', '{"stem":"通知末尾通常要写什么？","options":["只写自己的心情","使用很多感叹号","发布单位和日期","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“发布单位和日期”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d1']::text[], '41110b8044b86d624ada91164fa4deedde1b7166ce58fecaeff7910044ff3dba', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-048', 'chinese', 3, 1, 'choice', '{"stem":"“欲穷千里目，更上一层楼”告诉我们？","options":["下楼要慢慢走","夜晚不要出门","山路十分危险","想看得远要站得更高"],"answer":3,"explanation":"根据传统文化常识，正确答案是“想看得远要站得更高”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d1']::text[], '74489bfdd30114f257ad0d88b5faa6438bd3d4bb78bcee1d0dbe4a5b6b383402', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-049', 'chinese', 3, 1, 'choice', '{"stem":"老师耐心地解答每个问题。“耐心”最接近哪个意思？","options":["不急躁地坚持","大声地命令","快速地离开","安静地休息"],"answer":0,"explanation":"结合句子内容，“不急躁地坚持”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d1']::text[], '1243c6dbf8b5fd042f2135027912a77d1dc1149a18cd905566e21feb43f27afd', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-050', 'chinese', 3, 1, 'choice', '{"stem":"“读了这个故事，使我很受启发。”怎样修改？","options":["这个故事，使读了我很受启发。","读了这个故事，我很受启发。","读了使我这个故事很受启发。","我很受启发读了使这个故事。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d1']::text[], 'd05b566177aac8ef4d198a61b5356c430ed53ad08131057b0ad361df63ab52a2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-051', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小河边原来有垃圾。志愿者清理后，河岸变得干净，鸟儿也多了。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","先说问题再说办法或结果","按字数多少排列"],"answer":2,"explanation":"段落围绕“这段话主要说明什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v6']::text[], '1c92fd7aecc439b4fd6ffccad1460b0b784195edc4505a2959674d92f40ccb1d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-052', 'chinese', 3, 1, 'choice', '{"stem":"“树上的柿子像一盏盏小灯笼。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d1']::text[], '14bc08a7a074eacfcba125abf3130301e1980299ed0162c2668186bcd2990564', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-053', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小河边原来有垃圾。志愿者清理后，河岸变得干净，鸟儿也多了。”这段话主要说明什么？","options":["清理垃圾改善了河岸环境","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“清理垃圾改善了河岸环境”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v6']::text[], '4522c630a466bf015073971bcd2325a9682d85755cd87ce5cefe6e220c3a5cf9', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-054', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小河边原来有垃圾。志愿者清理后，河岸变得干净，鸟儿也多了。”这段话的中心意思是？","options":["介绍天气变化","清理垃圾改善了河岸环境","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“清理垃圾改善了河岸环境”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v6']::text[], '2a0bb9fe9ab6face30ae2b19879fc785c0fe024aa448477b200b57e5fcde15f4', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-055', 'chinese', 3, 2, 'choice', '{"stem":"给同学留言时，应写清什么？","options":["只写自己的心情","使用很多感叹号","事情和联系方式","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“事情和联系方式”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d2']::text[], '7bdb183e4ca3c5e9a2da264620c1a782b14bc7813512e79a825cecf6631ceaa0', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-056', 'chinese', 3, 2, 'choice', '{"stem":"成语“守株待兔”常用来提醒人们？","options":["做事一定要快","要保护小动物","种树需要耐心","不能只靠侥幸"],"answer":3,"explanation":"根据传统文化常识，正确答案是“不能只靠侥幸”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d2']::text[], '234214391942c615d482c17aa75bb2324f7aa91833ddaeb29252e0526f9c569b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-057', 'chinese', 3, 2, 'choice', '{"stem":"雾渐渐散去，远处的山清晰起来。“清晰”的意思是？","options":["看得很清楚","变得更高","颜色更深","距离更远"],"answer":0,"explanation":"结合句子内容，“看得很清楚”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d2']::text[], '4a92febbb6ebe62e69cec07b7bd2fad5735f19778acfd10975eacad7cf775994', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-058', 'chinese', 3, 2, 'choice', '{"stem":"“春天的北京是一年中最美的季节。”怎样修改？","options":["春天的北京是一年中最美的地方。","北京的春天是一年中最美的季节。","北京是一年中春天最美的季节。","一年中最美的北京是春天季节。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d2']::text[], 'a1b141fd9195dcf823cca554f6fd0cf90ce78fd0f305a8d7e24c7021d28c8d38', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-059', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“图书角的书常常摆放杂乱。班长给书分类贴标签后，大家找书方便多了。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","先说问题再说办法或结果","按字数多少排列"],"answer":2,"explanation":"段落围绕“班长的方法带来什么变化”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v7']::text[], 'fd87733d724d836e8dd9c25480aaa3331baed865ab144a3edbcbf890fc98dd49', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-060', 'chinese', 3, 2, 'choice', '{"stem":"“花儿向我们点头。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d2']::text[], '5715a9f138fbcb68c50b7e12c6b33dde6af948444fad61a12987e2b3d92a3133', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-061', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“图书角的书常常摆放杂乱。班长给书分类贴标签后，大家找书方便多了。”班长的方法带来什么变化？","options":["大家找书更方便","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“大家找书更方便”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v7']::text[], '056fd62e3078ccf8bac4a80933dbd698babab21d7968113627f1e4c6b6c1c23c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-062', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“图书角的书常常摆放杂乱。班长给书分类贴标签后，大家找书方便多了。”这段话的中心意思是？","options":["介绍天气变化","大家找书更方便","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“大家找书更方便”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v7']::text[], '2ffb0194d8e8c04518b34a1af0750dfbdf55160a9e16c803404fe37a4b4126a2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-063', 'chinese', 3, 2, 'choice', '{"stem":"借条中必须写清什么？","options":["只写自己的心情","使用很多感叹号","所借物品或钱款数量","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“所借物品或钱款数量”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d2']::text[], '6c9f91d22eed8ca279482c0ec095791ce84f5d697d3329bd7b2c3d3130b93e8c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-064', 'chinese', 3, 2, 'choice', '{"stem":"成语“刻舟求剑”说明？","options":["做标记没有用","船上不能带剑","寻找物品要靠别人","情况变化后方法也要改变"],"answer":3,"explanation":"根据传统文化常识，正确答案是“情况变化后方法也要改变”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d2']::text[], '3f1b155570ac0f43b760a7c93206c37cf1309f67f5e723a72ec1bda56ff8bad0', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-065', 'chinese', 3, 2, 'choice', '{"stem":"这本书的内容十分丰富。“丰富”在这里指？","options":["内容多而充实","纸张很厚","价格很高","封面漂亮"],"answer":0,"explanation":"结合句子内容，“内容多而充实”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d2']::text[], 'fa0f40aabfb1c97c3181a146e66bfc193d44a70bb5dddbc2ce3c2c018c309f47', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-066', 'chinese', 3, 2, 'choice', '{"stem":"“我们班取得了竞赛。”句末应补充哪个词？","options":["参加","第一名","努力","同学"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d2']::text[], '96d3033a372f28f94d49661c1a26f66fa58be439ff27e029d75c8d17ca3bc965', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-067', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“蚂蚁找到食物后，会留下气味，引导伙伴沿着路线找到食物。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","围绕一个事物介绍","按字数多少排列"],"answer":2,"explanation":"段落围绕“蚂蚁怎样帮助伙伴找到食物”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v8']::text[], 'f01e0e33cb9de66dd77cf8f370ebae10a7eee0d4d03347274db7cb8989d592d4', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-068', 'chinese', 3, 2, 'choice', '{"stem":"“雪花像轻盈的羽毛飘落。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d2']::text[], 'ea9101c15f20e04b791d5b399c48702506e1efc23801e9c2d91ae830f58d9012', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-069', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“蚂蚁找到食物后，会留下气味，引导伙伴沿着路线找到食物。”蚂蚁怎样帮助伙伴找到食物？","options":["留下气味指引路线","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“留下气味指引路线”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v8']::text[], '70b19ac643f9e3eed5682b8f5be050effe5c73010fc5213fa0550dbaeefed7fa', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-070', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“蚂蚁找到食物后，会留下气味，引导伙伴沿着路线找到食物。”这段话的中心意思是？","options":["介绍天气变化","留下气味指引路线","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“留下气味指引路线”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v8']::text[], 'bf804e82b38558f5b37e01a046171689b2c8bab96608c363a751c21608be4c04', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-071', 'chinese', 3, 2, 'choice', '{"stem":"活动通知只写“明天集合”，主要缺少什么？","options":["只写自己的心情","使用很多感叹号","具体时间和地点","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“具体时间和地点”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d2']::text[], '35e15addbeaf690bf1a4eee024af0cab1b10d3960675d868a160aa5da90330db', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-072', 'chinese', 3, 2, 'choice', '{"stem":"“春眠不觉晓”的下一句是？","options":["低头思故乡","粒粒皆辛苦","更上一层楼","处处闻啼鸟"],"answer":3,"explanation":"根据传统文化常识，正确答案是“处处闻啼鸟”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d2']::text[], 'de25ef5b8ae1aab128b988fc20995ba59304b7d3bb70cd847b94ed60586b91f4', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-073', 'chinese', 3, 2, 'choice', '{"stem":"他没有直接回答，而是委婉地说明原因。“委婉”是指？","options":["说话含蓄不生硬","说话声音很小","故意说错内容","一句话也不说"],"answer":0,"explanation":"结合句子内容，“说话含蓄不生硬”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d2']::text[], 'd5787e97c7bc367b7bdddb05501b512295281a2cd75db7578878a8ccd5e18bce', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-074', 'chinese', 3, 2, 'choice', '{"stem":"“公园里有许多花，有月季、菊花、松树和荷花。”应删去？","options":["月季","松树","菊花","荷花"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d2']::text[], '6f423afdb0a485f33c9ee2dc7f05e0f4fbe8fc2ca05d8b82f00e6ba274475afb', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-075', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“冬天，松树依然翠绿，许多落叶树却只剩光秃秃的枝条。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","围绕一个事物介绍","按字数多少排列"],"answer":2,"explanation":"段落围绕“这段话比较了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v9']::text[], '9ed35be081d347294ec978afb8814fc0ce9f1fba911335c637c92e411622845e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-076', 'chinese', 3, 2, 'choice', '{"stem":"“溪水一路欢笑着奔向远方。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d2']::text[], 'ab5b3c23d2e85909ec604bebc02c0b92b6329aed36d0431e2672b962eb705a11', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-077', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“冬天，松树依然翠绿，许多落叶树却只剩光秃秃的枝条。”这段话比较了什么？","options":["冬天松树和落叶树的不同","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“冬天松树和落叶树的不同”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v9']::text[], '9d2561f34dcaebff08a73e3abe574ef7a224f19abaf249beb4e362e46640b4d2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-078', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“冬天，松树依然翠绿，许多落叶树却只剩光秃秃的枝条。”这段话的中心意思是？","options":["介绍天气变化","冬天松树和落叶树的不同","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“冬天松树和落叶树的不同”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v9']::text[], '3dd93150b94474e18fcfbacd76ad43b4c261760efefde05b8468c91ff46fb02d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-079', 'chinese', 3, 2, 'choice', '{"stem":"请假条结尾“此致”下一行通常写什么？","options":["只写自己的心情","使用很多感叹号","敬礼","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“敬礼”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d2']::text[], 'b0013e010924cb6d9cbf4da7f7ba4bcf6a9591cfca3701f82f124ef927e6c850', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-080', 'chinese', 3, 2, 'choice', '{"stem":"我国传统书写工具“文房四宝”不包括？","options":["笔","墨","纸","算盘"],"answer":3,"explanation":"根据传统文化常识，正确答案是“算盘”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d2']::text[], '1e29dbaad9734ea93124753c841729fc55dac192e89c0cf5aba8ac175bc2e77c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-081', 'chinese', 3, 2, 'choice', '{"stem":"大家齐心协力，终于完成了任务。“齐心协力”说明大家？","options":["共同努力","各做各的","互相争吵","等待帮助"],"answer":0,"explanation":"结合句子内容，“共同努力”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d2']::text[], '8ba2bc0830ab9bb3759228f38ee323e3c1624bcce04e918453e53005094ead4c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-082', 'chinese', 3, 2, 'choice', '{"stem":"“他穿着一件蓝衣服和一顶帽子。”怎样修改？","options":["他穿着一件蓝衣服和戴一顶帽子。","他穿着一件蓝衣服，戴着一顶帽子。","他戴着一件蓝衣服和一顶帽子。","他穿着一顶帽子和一件蓝衣服。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d2']::text[], '18e2e5ab05c31dd4ceb3339e7e023841bc1f843acfeab845e63a4ef64a7f6867', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-083', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小溪遇到石头就绕过去，最终流进大河。它从不停下前进的脚步。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“这段话赞美了什么精神”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v10']::text[], '61114846a2cd07c89f6d056d9cd3906b36decfb4a3a88c0df92c53b137da9d19', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-084', 'chinese', 3, 2, 'choice', '{"stem":"“蒲公英的种子像一把把小伞。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d2']::text[], 'ad8ab5d7d712bd2cba17b640e4c4815566fd0141f74ba518210f03549c84b308', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-085', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小溪遇到石头就绕过去，最终流进大河。它从不停下前进的脚步。”这段话赞美了什么精神？","options":["遇到困难仍坚持前进","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“遇到困难仍坚持前进”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v10']::text[], '32f25ad02cfa8e33c2810ea22fa802f959bdcf740b568875cd556f2cc3e3bf6b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-086', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小溪遇到石头就绕过去，最终流进大河。它从不停下前进的脚步。”这段话的中心意思是？","options":["介绍天气变化","遇到困难仍坚持前进","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“遇到困难仍坚持前进”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v10']::text[], '091648b403fedd6ca8ce651a44cbcb891e0621ad626f60b16899cb384982f85b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-087', 'chinese', 3, 2, 'choice', '{"stem":"写感谢信时，正文应重点写什么？","options":["只写自己的心情","使用很多感叹号","感谢的原因","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“感谢的原因”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d2']::text[], '82aa332559dfe942c9c14699305e135ba5c9ad49abe382bf029eb5998089ce7e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-088', 'chinese', 3, 2, 'choice', '{"stem":"十二生肖中排在“兔”后面的是？","options":["虎","蛇","马","龙"],"answer":3,"explanation":"根据传统文化常识，正确答案是“龙”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d2']::text[], '3c72ce01a154226871c64675961ff21d0587215f9f352f62aaef318445382c0d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-089', 'chinese', 3, 2, 'choice', '{"stem":"博物馆里的展品让我们大开眼界。“大开眼界”指？","options":["增长了见识","睁大了眼睛","感到很困倦","走到了室外"],"answer":0,"explanation":"结合句子内容，“增长了见识”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d2']::text[], '5d4a85e097ed1653c8fe137cad3f28b36ac7fabc0ceca93c7e56720500e94dfe', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-090', 'chinese', 3, 3, 'choice', '{"stem":"“听到铃声，同学们纷纷陆续走进教室。”应删去？","options":["听到","纷纷或陆续","同学们","教室"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d3']::text[], 'b603d883a0f07c880a731f84b981e40f5dd9e13446f6fc7864a3b49127bac778', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-091', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“社区设置旧衣回收箱，居民把不用的衣服洗净投放，工作人员分类后再利用。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“旧衣回收的主要作用”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v11']::text[], 'd338089c414640cc621e3498f86b121bfa5265f6cac9e29a0748fc56a5cf3eda', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-092', 'chinese', 3, 3, 'choice', '{"stem":"“星星在夜空中眨眼睛。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d3']::text[], 'cb07b63f8f1ffb2faf2a39b16d36db0d58f54430cb8aa5f71600963536da0f91', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-093', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“社区设置旧衣回收箱，居民把不用的衣服洗净投放，工作人员分类后再利用。”旧衣回收的主要作用？","options":["让闲置衣物得到再利用","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“让闲置衣物得到再利用”。"}'::jsonb, 'builtin', '人物与事件', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v11']::text[], '5e624ec8cbfe234b96f46e31be3a05dc2d68cfb4edab27714b4268cd653c5a92', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-094', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“社区设置旧衣回收箱，居民把不用的衣服洗净投放，工作人员分类后再利用。”这段话的中心意思是？","options":["介绍天气变化","让闲置衣物得到再利用","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“让闲置衣物得到再利用”展开。"}'::jsonb, 'builtin', '中心信息', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v11']::text[], '1d1f8fbe1a5fda5388cce6ab8604027cf2e02e0b8a8a491f3a4e954cd90caa36', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-095', 'chinese', 3, 3, 'choice', '{"stem":"招领启事为核对失主，不宜公开什么？","options":["只写自己的心情","使用很多感叹号","物品的全部细节","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“物品的全部细节”。"}'::jsonb, 'builtin', '应用文常识', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d3']::text[], 'd471126db558478d7e9af7d39883f01c7aa20709ab9a60b727d14fa304094f8a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-096', 'chinese', 3, 3, 'choice', '{"stem":"“桃李满天下”常用来赞美谁？","options":["医生","运动员","画家","老师"],"answer":3,"explanation":"根据传统文化常识，正确答案是“老师”。"}'::jsonb, 'builtin', '传统文化', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d3']::text[], 'b8991810a9414d6899c03f30ffce4adf5fe9648fce1f5786f84368a22addd6ff', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-097', 'chinese', 3, 3, 'choice', '{"stem":"面对突发情况，他仍然镇定自若。“镇定自若”说明他？","options":["沉着不慌张","十分兴奋","动作很缓慢","什么都不知道"],"answer":0,"explanation":"结合句子内容，“沉着不慌张”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d3']::text[], '68b819a61075762e1ef8f6727c6662a2a51472e10514c779fcef243ddb20808f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-098', 'chinese', 3, 3, 'choice', '{"stem":"“通过努力，让他的成绩提高了。”怎样修改？","options":["通过让努力，他的成绩提高了。","通过努力，他的成绩提高了。","他的成绩通过让努力提高了。","让他的成绩提高了通过努力。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p1-d3']::text[], '3e18040b2869de7e2b3d60669f1e545604c72cfbaa5e6cf528c0757a9cdef4f4', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-099', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“制作风筝要先画图，再扎骨架，接着糊纸，最后系上线。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“制作风筝的正确顺序”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v12']::text[], '7e7e0c6e9fa64272a03556281275135b124b11dbfc4466e8c43a8c1ff71f24e6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-100', 'chinese', 3, 3, 'choice', '{"stem":"“金黄的稻田像一片海洋。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p3-d3']::text[], 'b67074a0f3c6274b925ca9df983921d7376f5e1b46319915d19d41f67340eeca', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-101', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“制作风筝要先画图，再扎骨架，接着糊纸，最后系上线。”制作风筝的正确顺序？","options":["画图、扎骨架、糊纸、系线","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“画图、扎骨架、糊纸、系线”。"}'::jsonb, 'builtin', '人物与事件', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v12']::text[], 'ce8011e146541821c560a1e14935850d0c96e6345e0060214739c33aa8abb73d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-102', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“制作风筝要先画图，再扎骨架，接着糊纸，最后系上线。”这段话的中心意思是？","options":["介绍天气变化","画图、扎骨架、糊纸、系线","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“画图、扎骨架、糊纸、系线”展开。"}'::jsonb, 'builtin', '中心信息', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-passage-v12']::text[], '25554b461152b8f01944203d8c53db16832ad931d85504ef0d6d631dc64d6ede', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-103', 'chinese', 3, 3, 'choice', '{"stem":"一则通知有时间、地点却没有活动内容，应补充什么？","options":["只写自己的心情","使用很多感叹号","要做的事情","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“要做的事情”。"}'::jsonb, 'builtin', '应用文常识', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p6-d3']::text[], 'a65927697d82951e796c6dd21a3960c5429bf9e2179a70ad4864865b75394956', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-104', 'chinese', 3, 3, 'choice', '{"stem":"清明节常见的文化活动是？","options":["赏月和吃月饼","赛龙舟和包粽子","贴春联和守岁","祭扫和踏青"],"answer":3,"explanation":"根据传统文化常识，正确答案是“祭扫和踏青”。"}'::jsonb, 'builtin', '传统文化', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p7-d3']::text[], 'bc459b8956913f51bd1a7f231b4ebb91faf9a533861f139bf2ad57b59b4f5037', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-105', 'chinese', 3, 3, 'choice', '{"stem":"这段经历令我难以忘怀。“忘怀”在句中是指？","options":["忘记","关心","回忆","记录"],"answer":0,"explanation":"结合句子内容，“忘记”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'reason', array['全国通用', '阅读辨析', '模板:g3-cn-choice-p0-d3']::text[], '21816be2603132e6d6e0034378d9185036df222098bbd32912e624f6c5ea3c34', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-106', 'chinese', 3, 1, 'fill', '{"stem":"听到比赛获胜的消息，大家___地欢呼起来。（填表示非常高兴的词）","answer":"兴奋","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“兴奋”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p0-d1']::text[], '3f061c5b1e96e18343b3483cf6bf928bddc16dd9c7f147d25bda7e96d5b3e6ff', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-107', 'chinese', 3, 1, 'fill', '{"stem":"修改病句：“我断定他可能来了。”应删去“___”。","answer":"可能","explanation":"先读线索句“我断定他可能来了。”，再想题目要我们填写人物、动作、词义还是常识。这里填“可能”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p1-d1']::text[], '9b045f2689f93727b880ef284f97cc6876d45b54e8beae527ef1645ddae485ec', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-108', 'chinese', 3, 1, 'fill', '{"stem":"表示事情先后顺序时，可以使用“先、接着、然后、___”等词。","answer":"最后","explanation":"先读线索句“先、接着、然后、___”，再想题目要我们填写人物、动作、词义还是常识。这里填“最后”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p2-d1']::text[], '933068ee6df79a009408a8f9e364b3159c2b34b0044b23a47e73d2c72ac9eefb', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-109', 'chinese', 3, 1, 'fill', '{"stem":"“柳树姑娘梳着长辫子”把柳树当作人来写，是___手法。","answer":"拟人","explanation":"先读线索句“柳树姑娘梳着长辫子”，再想题目要我们填写人物、动作、词义还是常识。这里填“拟人”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p3-d1']::text[], 'd33eecb6c8e28fd243bed85bc5d64348da5bd8de62a58652164a84272d918b1b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-110', 'chinese', 3, 1, 'fill', '{"stem":"阅读：“小军捡到钱包后交给老师。”小军做的事是___。","answer":"把钱包交给老师","explanation":"先读线索句“小军捡到钱包后交给老师。”，再想题目要我们填写人物、动作、词义还是常识。这里填“把钱包交给老师”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p4-d1']::text[], 'c819b3ec7a292074c959c720b5612f1ca6dcfedde2fb88897283f57781527d2b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-111', 'chinese', 3, 1, 'fill', '{"stem":"阅读：“大家分类投放垃圾，小区变得更整洁。”中心意思是垃圾分类能___环境。","answer":"改善","explanation":"先读线索句“大家分类投放垃圾，小区变得更整洁。”，再想题目要我们填写人物、动作、词义还是常识。这里填“改善”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p5-d1']::text[], 'cb8412091c1343cbc00febeb6e279d57a34df0e475fdc9fec93d675cd2ab5b4d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-112', 'chinese', 3, 1, 'fill', '{"stem":"通知中要写清活动内容、时间和___。","answer":"地点","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“地点”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p6-d1']::text[], '5c6e739d4e54d65265f8926ced2b9d883185eb43582290c7ae062432091caa73', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-113', 'chinese', 3, 1, 'fill', '{"stem":"农历八月十五是___节。","answer":"中秋","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“中秋”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p7-d1']::text[], 'fea12499040897ff143df439a0f04f159a9dfaa7ce0e38bbab64fbce45569841', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-114', 'chinese', 3, 1, 'fill', '{"stem":"“他毫不犹豫地举起手”中的“毫不犹豫”表示马上作出___。","answer":"决定","explanation":"先读线索句“他毫不犹豫地举起手”，再想题目要我们填写人物、动作、词义还是常识。这里填“决定”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p0-d1']::text[], '586d0ba8048c9c9d555d68d81e173cffa9be751d01c7a375836edd254cdfc1d2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-115', 'chinese', 3, 1, 'fill', '{"stem":"修改“我们要养成讲卫生的风气”，把“风气”改为___。","answer":"习惯","explanation":"先读线索句“我们要养成讲卫生的风气”，再想题目要我们填写人物、动作、词义还是常识。这里填“习惯”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p1-d1']::text[], '14afc26c754fbbf9a8bdd409edd1509d3f47d536a5ec5e7422b814eec6ef1081', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-116', 'chinese', 3, 1, 'fill', '{"stem":"一段话围绕一个意思展开，这个主要意思常可用___句概括。","answer":"中心","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“中心”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '语言运用', '模板:g3-cn-fill-p2-d1']::text[], '582dc06f91c105c6be8439a350a45b0e7612103ec5e024edd49227d0a447e071', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-117', 'chinese', 3, 2, 'fill', '{"stem":"“红红的太阳像火球”把太阳比作火球，是___。","answer":"比喻","explanation":"先读线索句“红红的太阳像火球”，再想题目要我们填写人物、动作、词义还是常识。这里填“比喻”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '语言运用', '模板:g3-cn-fill-p3-d2']::text[], '6c9ff2817484a8c7b07bd9fa3ea8807e8da076bb4be3e408784a1f028fb3c633', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-118', 'chinese', 3, 2, 'fill', '{"stem":"阅读：“妹妹把最后一块饼干留给奶奶。”这件事表现妹妹懂得___长辈。","answer":"关爱","explanation":"先读线索句“妹妹把最后一块饼干留给奶奶。”，再想题目要我们填写人物、动作、词义还是常识。这里填“关爱”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '语言运用', '模板:g3-cn-fill-p4-d2']::text[], '0c83eb91681341d793c3d6676a49e0179d57ea02ce710607561b26f12048de87', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-119', 'chinese', 3, 2, 'fill', '{"stem":"概括短文主要内容时，要抓住主要人物和主要___。","answer":"事件","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“事件”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '语言运用', '模板:g3-cn-fill-p5-d2']::text[], 'f8877516f373dd2ff9d91ddc699d2b9c7c53ce9174bef75981cfac6592be9e77', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-120', 'chinese', 3, 2, 'fill', '{"stem":"日记通常先写日期、星期和___。","answer":"天气","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“天气”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '语言运用', '模板:g3-cn-fill-p6-d2']::text[], 'e05b117ba30c0d99a6902fd144c78d10e3b3a7d0bd860ca8413c192949f3bf1b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-121', 'chinese', 3, 2, 'fill', '{"stem":"“独在异乡为异客，每逢佳节倍思亲”写的是___节。","answer":"重阳","explanation":"先读线索句“独在异乡为异客，每逢佳节倍思亲”，再想题目要我们填写人物、动作、词义还是常识。这里填“重阳”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '语言运用', '模板:g3-cn-fill-p7-d2']::text[], '7db526969535b637a6a3be63d261deb2e00bb745b856aaa20a82e78d05c2c18a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-122', 'chinese', 3, 2, 'fill', '{"stem":"“会场里鸦雀无声”说明会场非常___。","answer":"安静","explanation":"先读线索句“会场里鸦雀无声”，再想题目要我们填写人物、动作、词义还是常识。这里填“安静”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '语言运用', '模板:g3-cn-fill-p0-d2']::text[], 'e3fca3fc9a2deab7a0fcd4f71d7a5cde284e8e3d744770fa10034eb2a75fb9c0', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-123', 'chinese', 3, 2, 'fill', '{"stem":"修改“我首先第一个到校”，应删去“首先”或“___”。","answer":"第一个","explanation":"先读线索句“我首先第一个到校”，再想题目要我们填写人物、动作、词义还是常识。这里填“第一个”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '语言运用', '模板:g3-cn-fill-p1-d2']::text[], 'fef95ffd539711aa14cea4bd9b7c6ac5ed3391b7860ead7a08eb3ef8a461cfe5', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-124', 'chinese', 3, 3, 'fill', '{"stem":"阅读时把每个自然段的主要意思连起来，可以帮助我们概括文章___。","answer":"主要内容","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“主要内容”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '段落结构', 'reason', array['全国通用', '语言运用', '模板:g3-cn-fill-p2-d3']::text[], '0c0b299118608449501d8f9c8fbe96af9708e2bbd4cd56228b18aafd1d488b11', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-125', 'chinese', 3, 3, 'fill', '{"stem":"“风推开了窗户”赋予风人的动作，是___手法。","answer":"拟人","explanation":"先读线索句“风推开了窗户”，再想题目要我们填写人物、动作、词义还是常识。这里填“拟人”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '修辞初步', 'reason', array['全国通用', '语言运用', '模板:g3-cn-fill-p3-d3']::text[], 'cb608fcc57f2d1a9d244f08ec00495f63c3933f9d649f91c00ad93b24a471a2f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-126', 'chinese', 3, 3, 'fill', '{"stem":"请假条末尾要写请假人的姓名和___。","answer":"日期","explanation":"先看空格前后的词语，再想题目要我们填写人物、动作、词义还是常识。这里填“日期”后句子通顺，意思也和题目要求一致。下次遇到填空题，先找人物或关键词，再把答案放回原句读一遍。"}'::jsonb, 'builtin', '应用文常识', 'reason', array['全国通用', '语言运用', '模板:g3-cn-fill-p6-d3']::text[], '56a23398fd14a8b42cb53817ecfbd193672bd3a64a22e9a0a9c9956835b2c495', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-127', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：根据词语的意思，把词语和解释连起来","left":["迅速","安静","勇敢","整洁"],"right":["没有声音","不害怕","干净有序","速度快"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '语言运用', '模板:g3-cn-match-p0-d1']::text[], '6db654d05c183f16937170b7a489aad70a8ae266c19b61a493f68a64b9f97f3a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-128', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：根据常用搭配，把动词和合适的对象连起来","left":["珍惜时间","爱护公物","提高成绩","改正错误"],"right":["成绩","时间","错误","公物"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '语言运用', '模板:g3-cn-match-p1-d1']::text[], 'd9191a3f7d531793721b46dc8539fdc6b4ac8bf62af85eda3fcf17f76a478f36', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-129', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：阅读步骤提示，把顺序词和所在位置连起来","left":["先","接着","然后","最后"],"right":["第三步","第一步","结束步骤","第二步"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '语言运用', '模板:g3-cn-match-p2-d1']::text[], 'c168a78f1a9bd12d1fed4bf762bc42ca95c256be15eba9c1fe28da8d1c8b2fa6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-130', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：判断句子的表达特点，把句子和修辞手法连起来","left":["月亮像小船","花儿点头","星星眨眼","湖面像镜子"],"right":["拟人","比喻","比喻","拟人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '语言运用', '模板:g3-cn-match-p3-d1']::text[], '4bd9ca7959e73d0d3ba1e46710349f3c61a8141c6ec3ee99e97718d539775df0', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-131', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：读人物所做的事，把行为和表现出的品质连起来","left":["小明捡纸屑","小红扶老人","小刚坚持跑步","小丽借书给同学"],"right":["坚持锻炼","爱护环境","分享图书","帮助他人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '语言运用', '模板:g3-cn-match-p4-d1']::text[], '0cc27c2728e4ebe608ac9eb70fa8ac4a2545646a4d7c05f459a7b9270008f9c8', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-132', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：抓住句子重点，把内容和中心意思连起来","left":["植树让校园更绿","读书增长知识","运动使身体健康","节水保护资源"],"right":["运动的好处","植树的好处","节水的意义","读书的好处"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '语言运用', '模板:g3-cn-match-p5-d1']::text[], '7dbdf57656f08a98771be1ad3e024760130c8d28df57a9676de3e6e6582d44c0', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-133', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：根据写作目的，把应用文名称和用途连起来","left":["通知","请假条","寻物启事","日记"],"right":["寻找丢失物品","告知活动安排","记录当天见闻","说明不能到场"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '语言运用', '模板:g3-cn-match-p6-d1']::text[], 'b6fbff023ccff6d88be8ada4eb0ad166908ac087624c65cb3731e43ff44b26b7', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-134', 'chinese', 3, 2, 'match', '{"stem":"课堂整理：根据传统节日习俗，把节日和代表活动连起来","left":["春节","端午节","中秋节","重阳节"],"right":["赏月","贴春联","登高","赛龙舟"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '语言运用', '模板:g3-cn-match-p7-d2']::text[], '2986c243d9236a92d2c4ec0688008180b266e6aaa45b482971ef5f95118ac358', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-135', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：根据词语的意思，把词语和解释连起来","left":["迅速","安静","勇敢","整洁"],"right":["没有声音","不害怕","干净有序","速度快"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '语言运用', '模板:g3-cn-match-p0-d2']::text[], 'c1b8d6ae5e04de501b3a63b12ae8128b8eba6a75f65640d254dc2d9c630c098c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-136', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：根据常用搭配，把动词和合适的对象连起来","left":["珍惜时间","爱护公物","提高成绩","改正错误"],"right":["成绩","时间","错误","公物"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '语言运用', '模板:g3-cn-match-p1-d2']::text[], '40cf3ce7b3c13fd28e535fc734097e37be098cadf431033286a80f0cf0654178', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-137', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：阅读步骤提示，把顺序词和所在位置连起来","left":["先","接着","然后","最后"],"right":["第三步","第一步","结束步骤","第二步"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '语言运用', '模板:g3-cn-match-p2-d2']::text[], 'd015e3a64cf45ec5001905de062e50500ec100fcd68288513358a76b9b465b14', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-138', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：判断句子的表达特点，把句子和修辞手法连起来","left":["月亮像小船","花儿点头","星星眨眼","湖面像镜子"],"right":["拟人","比喻","比喻","拟人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '语言运用', '模板:g3-cn-match-p3-d2']::text[], 'a9cce23afdf98f87e078cdd6a631c1db97b4cda768b07eb23d26cecd5346c1fb', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-139', 'chinese', 3, 3, 'match', '{"stem":"阅读实践：读人物所做的事，把行为和表现出的品质连起来","left":["小明捡纸屑","小红扶老人","小刚坚持跑步","小丽借书给同学"],"right":["坚持锻炼","爱护环境","分享图书","帮助他人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '人物与事件', 'reason', array['全国通用', '语言运用', '模板:g3-cn-match-p4-d3']::text[], '025b8f0ef9f6e8f20c09a7ce96849964db99095efb9af2a51ca4b516c4083dbd', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-140', 'chinese', 3, 3, 'match', '{"stem":"阅读实践：抓住句子重点，把内容和中心意思连起来","left":["植树让校园更绿","读书增长知识","运动使身体健康","节水保护资源"],"right":["运动的好处","植树的好处","节水的意义","读书的好处"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '中心信息', 'reason', array['全国通用', '语言运用', '模板:g3-cn-match-p5-d3']::text[], 'cff3d7e8f900a942743148fe6e8fd043a2990b063c58b47692a59a75b26eb647', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-001', 'english', 3, 1, 'choice', '{"stem":"Read: “Tom has some milk.” What does Tom have?","options":["some milk","a train","a computer game","a red bike"],"answer":0,"explanation":"The sentence says Tom has some milk."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p0-d1']::text[], '6fe157f69a8f777076197171e99a6de987170e307ffea9cebdc82bae12a681ba', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-002', 'english', 3, 1, 'choice', '{"stem":"Mini talk: Tom is at home. —What do you like? —I like football.","options":["milk","football","home","Monday"],"answer":1,"explanation":"“I like football” tells the thing or activity liked."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p1-d1']::text[], '4f60dae03ad04e33b0b9d39c4d3b5c8c92d28ed686370adaa1a2d93a7de8559f', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-003', 'english', 3, 1, 'choice', '{"stem":"Tom ___ up. Choose the verb.","options":["get","getsing","gets","can"],"answer":2,"explanation":"Tom is one person, so the verb is “gets”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p2-d1']::text[], 'fb904895e48b99efb9da985e0565346be77db95e0c75045e4226e94e8b59bb3a', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-004', 'english', 3, 1, 'choice', '{"stem":"Monday plan: Tom gets up at 7:00. Which word asks the time?","options":["Where","Who","What colour","When"],"answer":3,"explanation":"A time answer uses the question word “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p3-d1']::text[], '9561f9c7a0e8ab02b451a555eb26d2ae8767a554739cdd2d9f0b5cd20239a0be', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-005', 'english', 3, 1, 'choice', '{"stem":"Tom gets up at 7:00. Choose the English time words.","options":["7 o''clock","8 o''clock","half past 8","7 fifteen"],"answer":0,"explanation":"7:00 can be read as “7 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p4-d1']::text[], 'c73e42212333e0255abc136d9873a5ee14c0dd7bf42cd14c421dfc37569d146d', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-006', 'english', 3, 1, 'choice', '{"stem":"Read: “Tom gets up.” Which words show the activity?","options":["buys a spaceship","gets up","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“gets up” is the activity in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p5-d1']::text[], '1590a50b5d291dd292a54b1d29627234bdba10135b6629ed0ad9c546d86aebcf', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-007', 'english', 3, 1, 'choice', '{"stem":"Read: “Tom is at home.” Where is Tom?","options":["on a train","at the zoo","at home","on the moon"],"answer":2,"explanation":"The sentence says Tom is at home."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p6-d1']::text[], 'cfbd498e1f32751dd01e4d45974dd3fdb55b0393fe1be904a5bc1655e2f58a34', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-008', 'english', 3, 1, 'choice', '{"stem":"at home, a friend gives Tom some milk. Tom says “Thank you.”","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p7-d1']::text[], 'de3c22bb8b735c14061fdd6713976fa59c913bfc271531e0beb1df648006e092', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-009', 'english', 3, 1, 'choice', '{"stem":"Read: “Lucy has some bread.” Who has some bread?","options":["Lucy","John","Mary","Tony"],"answer":0,"explanation":"The sentence names Lucy."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p0-d1']::text[], 'f5c9b1ee95b7a07f564339b69b72d935dc9f5ac14c31f1107f89f3d1e2bf32f4', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-010', 'english', 3, 1, 'choice', '{"stem":"Mini talk: Lucy is in the kitchen. —What do you like? —I like drawing.","options":["bread","drawing","kitchen","Tuesday"],"answer":1,"explanation":"“I like drawing” tells the thing or activity liked."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p1-d1']::text[], 'd65301670e43a7fa8f03be8885984143639728540754f984af28c88526f4723c', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-011', 'english', 3, 1, 'choice', '{"stem":"Lucy ___ breakfast. Choose the verb.","options":["have","hasing","has","can"],"answer":2,"explanation":"Lucy is one person, so the verb is “has”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p2-d1']::text[], '8af6dea88cfccf959ea9b2cbc608d940836afd6bb7cbb8df72dc8039d5ea3e26', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-012', 'english', 3, 1, 'choice', '{"stem":"Tuesday plan: Lucy has breakfast at 7:30. Which word asks the time?","options":["Where","Who","What colour","When"],"answer":3,"explanation":"A time answer uses the question word “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p3-d1']::text[], 'e25e4fc0618c93a3d0264ed2dcad16cf1c71470c6d2206b3567c8c2a723f76c9', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-013', 'english', 3, 1, 'choice', '{"stem":"Lucy has breakfast at 7:30. Choose the English time words.","options":["half past 7","8 o''clock","half past 8","7 fifteen"],"answer":0,"explanation":"7:30 can be read as “half past 7”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p4-d1']::text[], '8b0c9e0a1540a294fff5c6ca830257b1235da46476cbdddbebe7218947367a65', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-014', 'english', 3, 1, 'choice', '{"stem":"Read: “Lucy has breakfast.” Which words show the activity?","options":["buys a spaceship","has breakfast","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“has breakfast” is the activity in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p5-d1']::text[], 'ba5ed972d355238b99b9385fe02fc584edf41f67278acbe8371d63aa835ee075', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-015', 'english', 3, 1, 'choice', '{"stem":"Read: “Lucy is in the kitchen.” Where is Lucy?","options":["on a train","at the zoo","in the kitchen","on the moon"],"answer":2,"explanation":"The sentence says Lucy is in the kitchen."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p6-d1']::text[], 'e1d2544c5f3d4ddc9a291b2a82b905683ab19cefe146d95c5944a424f695ec10', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-016', 'english', 3, 1, 'choice', '{"stem":"in the kitchen, a friend gives Lucy some bread. Lucy says “Thank you.”","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p7-d1']::text[], '879ba6a8fefae35d159cce29ff2b1ce5a009ea4b318de6b13112c81cb3d621ac', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-017', 'english', 3, 1, 'choice', '{"stem":"Read: “Mike has a book.” Which sentence is true?","options":["Mike has a book.","Mike has a train.","Mike has nothing.","Mike is on the moon."],"answer":0,"explanation":"The true sentence repeats the stated fact about Mike."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p0-d1']::text[], '2b7dd383e474ca5c0d70a18516bab5494d1f0c8388cb0a89c67efccc84d814f8', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-018', 'english', 3, 1, 'choice', '{"stem":"Mini talk: Mike is at school. —What do you like? —I like reading.","options":["book","reading","school","Wednesday"],"answer":1,"explanation":"“I like reading” tells the thing or activity liked."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p1-d1']::text[], 'c6edc1a25839345135564efeceb9c094240950a62b4f5ce789a9f2b49e9b1e3b', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-019', 'english', 3, 1, 'choice', '{"stem":"Mike ___ to school. Choose the verb.","options":["go","goesing","goes","can"],"answer":2,"explanation":"Mike is one person, so the verb is “goes”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p2-d1']::text[], '8b5a207c3f2527b7a9fb448fd148f627cffa4abd5d4c17059ddb04e41758e45e', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-020', 'english', 3, 1, 'choice', '{"stem":"Wednesday plan: Mike goes to school at 8:00. Which word asks the time?","options":["Where","Who","What colour","When"],"answer":3,"explanation":"A time answer uses the question word “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p3-d1']::text[], 'ac3bc917c1b31bdfcfb3e5712b9d87a1fa812ea8a2949ece15a3d3f9ab327725', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-021', 'english', 3, 1, 'choice', '{"stem":"Mike goes to school at 8:00. Choose the English time words.","options":["8 o''clock","9 o''clock","half past 9","8 fifteen"],"answer":0,"explanation":"8:00 can be read as “8 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p4-d1']::text[], '4283f83f4ab19f30fea62cda8668f44a47a4adbe6e2fa8f08f05b5e07ff5b0e2', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-022', 'english', 3, 1, 'choice', '{"stem":"Read: “Mike goes to school.” Which words show the activity?","options":["buys a spaceship","goes to school","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“goes to school” is the activity in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p5-d1']::text[], '051da2cbdcef9aeea909a65b883b2e07b94260063e85730360f3e7fe92ab3abc', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-023', 'english', 3, 1, 'choice', '{"stem":"Read: “Mike is at school.” Where is Mike?","options":["on a train","at the zoo","at school","on the moon"],"answer":2,"explanation":"The sentence says Mike is at school."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p6-d1']::text[], '960a0236193a0b0e4368d8fe595ca66943d1f255dcb9a57408c68288a21b8c5f', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-024', 'english', 3, 1, 'choice', '{"stem":"at school, a friend gives Mike a book. Mike says “Thank you.”","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p7-d1']::text[], '9232a2e966600afe03ec7776b25f39a4b7015f6e1c6b5ad4c20a79db8f0a504e', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-025', 'english', 3, 1, 'choice', '{"stem":"Read: “Amy has a pencil.” What does Amy have?","options":["a pencil","a train","a computer game","a red bike"],"answer":0,"explanation":"The sentence says Amy has a pencil."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p0-d1']::text[], '4a555d3c89d39d6a46f7a521470b5d185455d7ede1882647fec59f4f7acc6ea2', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-026', 'english', 3, 1, 'choice', '{"stem":"Mini talk: Amy is in the classroom. —What do you like? —I like English.","options":["pencil","English","classroom","Thursday"],"answer":1,"explanation":"“I like English” tells the thing or activity liked."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p1-d1']::text[], 'a4d27b674fb8f5538939a6784bfc6533c46d92e4aa3280b67aaa45352cd853d9', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-027', 'english', 3, 1, 'choice', '{"stem":"Amy ___ an English class. Choose the verb.","options":["have","hasing","has","can"],"answer":2,"explanation":"Amy is one person, so the verb is “has”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p2-d1']::text[], '2311a6a39911ba29bf58771ee22e10461fc716c665abd772e29086a81d78dfe7', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-028', 'english', 3, 1, 'choice', '{"stem":"Thursday plan: Amy has an English class at 9:00. Which word asks the time?","options":["Where","Who","What colour","When"],"answer":3,"explanation":"A time answer uses the question word “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p3-d1']::text[], '4515c607df9d2dfc0129049618d5128e1c071f883385fbfa24dc2f055c4e0b8e', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-029', 'english', 3, 1, 'choice', '{"stem":"Amy has an English class at 9:00. Choose the English time words.","options":["9 o''clock","10 o''clock","half past 10","9 fifteen"],"answer":0,"explanation":"9:00 can be read as “9 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p4-d1']::text[], 'a68f6e099f4ec454e5b8ffc681bd8c63f631f00b25e2b886093fc3aafd0a7d93', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-030', 'english', 3, 1, 'choice', '{"stem":"Read: “Amy has an English class.” Which words show the activity?","options":["buys a spaceship","has an English class","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“has an English class” is the activity in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p5-d1']::text[], '8d12ad9372bd1ccc0e1b297c56800f7f5b3f4c1af1bc6faf47a7abacf449cc20', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-031', 'english', 3, 1, 'choice', '{"stem":"Read: “Amy is in the classroom.” Where is Amy?","options":["on a train","at the zoo","in the classroom","on the moon"],"answer":2,"explanation":"The sentence says Amy is in the classroom."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p6-d1']::text[], 'a4dbf4f984d99487fb2181762ab97e50f96cbc79e2fb340b0835ed41280b4422', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-032', 'english', 3, 1, 'choice', '{"stem":"in the classroom, a friend gives Amy a pencil. Amy says “Thank you.”","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p7-d1']::text[], 'b58fb868a4aced9459d9adf8f2d737ea0fd34c216961647b812eb6e2286c5143', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-033', 'english', 3, 1, 'choice', '{"stem":"Read: “Jack has a ball.” Who has a ball?","options":["Jack","John","Mary","Tony"],"answer":0,"explanation":"The sentence names Jack."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p0-d1']::text[], '2cd3360f6eeb67a476784500d9e6553d4d8aed8a26e2838cdc9d9655a1af9350', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-034', 'english', 3, 1, 'choice', '{"stem":"Mini talk: Jack is in the playground. —What do you like? —I like basketball.","options":["ball","basketball","playground","Friday"],"answer":1,"explanation":"“I like basketball” tells the thing or activity liked."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p1-d1']::text[], 'b7b85823be0889ca3216794563ef7f992f983c444d509e5e610317de01a7033b', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-035', 'english', 3, 1, 'choice', '{"stem":"Jack ___ basketball. Choose the verb.","options":["play","playsing","plays","can"],"answer":2,"explanation":"Jack is one person, so the verb is “plays”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p2-d1']::text[], '8e950babb1aaff01586206bc5e2a9a93090b0e6090b5d704794f126e63adadd6', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-036', 'english', 3, 1, 'choice', '{"stem":"Friday plan: Jack plays basketball at 10:00. Which word asks the time?","options":["Where","Who","What colour","When"],"answer":3,"explanation":"A time answer uses the question word “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p3-d1']::text[], '38b8a3bfca2c4ce315cbc5a4ca31142e76a079d0bbdafa3e102b3912e3f2db5e', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-037', 'english', 3, 1, 'choice', '{"stem":"Jack plays basketball at 10:00. Choose the English time words.","options":["10 o''clock","11 o''clock","half past 11","10 fifteen"],"answer":0,"explanation":"10:00 can be read as “10 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p4-d1']::text[], '5a1e0c1cfdf2a64f0c217214dd35908b62992da658af9d9d4e525944a19d3c9b', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-038', 'english', 3, 1, 'choice', '{"stem":"Read: “Jack plays basketball.” Which words show the activity?","options":["buys a spaceship","plays basketball","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“plays basketball” is the activity in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p5-d1']::text[], 'c4d90bc8a6cd4e152448b32230c421cb4873b228e28b12b1b1be4a85f33bed93', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-039', 'english', 3, 1, 'choice', '{"stem":"Read: “Jack is in the playground.” Where is Jack?","options":["on a train","at the zoo","in the playground","on the moon"],"answer":2,"explanation":"The sentence says Jack is in the playground."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p6-d1']::text[], 'f13a4c50b00e82a26ab415cff0515c52fca366adfe4f9a899b69a66e8fecf3ba', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-040', 'english', 3, 1, 'choice', '{"stem":"in the playground, a friend gives Jack a ball. Jack says “Thank you.”","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p7-d1']::text[], '163d6e06b4d557a95868233485d5d7bdb1eeb46c3dbb42956bbf952944ac4d8d', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-041', 'english', 3, 1, 'choice', '{"stem":"Read: “Lily has some rice.” Which sentence is true?","options":["Lily has some rice.","Lily has a train.","Lily has nothing.","Lily is on the moon."],"answer":0,"explanation":"The true sentence repeats the stated fact about Lily."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p0-d1']::text[], '9ca33c01e19f8dfd79ecd9a43942e89b6d2b6524727aca5ed0a1af0dea7da1b2', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-042', 'english', 3, 1, 'choice', '{"stem":"Mini talk: Lily is in the dining room. —What do you like? —I like cooking.","options":["rice","cooking","dining room","Saturday"],"answer":1,"explanation":"“I like cooking” tells the thing or activity liked."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p1-d1']::text[], '99c34b1b24e21f6d84a09e739e521ff30345895801d971024e087626d27d5f81', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-043', 'english', 3, 1, 'choice', '{"stem":"Lily ___ lunch. Choose the verb.","options":["have","hasing","has","can"],"answer":2,"explanation":"Lily is one person, so the verb is “has”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p2-d1']::text[], '0f2e1b212015d06da53ec246d060641c3c31f89b0d3cbc8c7bd769891e5348cd', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-044', 'english', 3, 1, 'choice', '{"stem":"Saturday plan: Lily has lunch at 12:00. Which word asks the time?","options":["Where","Who","What colour","When"],"answer":3,"explanation":"A time answer uses the question word “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p3-d1']::text[], '6f80b534f77fdde079c3ac20aacb94d42d41420ea805c4887d366bab1f87c565', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-045', 'english', 3, 1, 'choice', '{"stem":"Lily has lunch at 12:00. Choose the English time words.","options":["12 o''clock","13 o''clock","half past 13","12 fifteen"],"answer":0,"explanation":"12:00 can be read as “12 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p4-d1']::text[], '3363efb1427e4e7355c9a2299781546265851969465a0e5770454adfca93d57a', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-046', 'english', 3, 1, 'choice', '{"stem":"Read: “Lily has lunch.” Which words show the activity?","options":["buys a spaceship","has lunch","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“has lunch” is the activity in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p5-d1']::text[], 'e0d3e356c6da83e2b330cc289b3ab7862e15f4c6586832386fb495822aefd384', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-047', 'english', 3, 1, 'choice', '{"stem":"Read: “Lily is in the dining room.” Where is Lily?","options":["on a train","at the zoo","in the dining room","on the moon"],"answer":2,"explanation":"The sentence says Lily is in the dining room."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p6-d1']::text[], '5cf4fff5e318334b72fb8f5fada51810f3d37fed57f90c587daa6190c8f0142e', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-048', 'english', 3, 1, 'choice', '{"stem":"in the dining room, a friend gives Lily some rice. Lily says “Thank you.”","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p7-d1']::text[], 'd2dd32913f501a4f464ec4f1756709ed0ba5090468e25d75ea89ab060f745dfe', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-049', 'english', 3, 1, 'choice', '{"stem":"Read: “Peter has a kite.” What does Peter have?","options":["a kite","a train","a computer game","a red bike"],"answer":0,"explanation":"The sentence says Peter has a kite."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p0-d1']::text[], '666a5cc0335302f9732499923357e2d10eb05209dab22b689599c462788db249', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-050', 'english', 3, 1, 'choice', '{"stem":"Mini talk: Peter is in the park. —What do you like? —I like kites.","options":["kite","kites","park","Sunday"],"answer":1,"explanation":"“I like kites” tells the thing or activity liked."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p1-d1']::text[], 'd9c43afb7fda8111a3a33b1d3c9ca53f5a25c01e1dd8c6d37d5c652935443243', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-051', 'english', 3, 1, 'choice', '{"stem":"Peter ___ a kite. Choose the verb.","options":["fly","fliesing","flies","can"],"answer":2,"explanation":"Peter is one person, so the verb is “flies”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p2-d1']::text[], '9b47256d737628a6674bea7040548f8b77342db26e4a0ed3402bd4569bd522a6', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-052', 'english', 3, 1, 'choice', '{"stem":"Sunday plan: Peter flies a kite at 3:00. Which word asks the time?","options":["Where","Who","What colour","When"],"answer":3,"explanation":"A time answer uses the question word “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-choice-p3-d1']::text[], 'ff41141ec17b600fd90028fe5acbc40851f72162d1050dec8c3171d7cda5c24c', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-053', 'english', 3, 2, 'choice', '{"stem":"Schedule card: Peter flies a kite at 3:00. Which time matches?","options":["3:00","4:00","1:15","12:30"],"answer":0,"explanation":"The sentence gives the time 3:00."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p4-d2']::text[], 'f4f9fa27ab5c501ad11183281d74fbaf9a288b569d51181045098ce983b2d3f9', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-054', 'english', 3, 2, 'choice', '{"stem":"Plan: “Peter flies a kite at 3:00.” What happens?","options":["asks the time","flies a kite","loses the bag","changes the day"],"answer":1,"explanation":"The activity is flies a kite."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p5-d2']::text[], '3ed732d324760b70292106960060e3a9fbf48d5d6992535afaad19e6b5cba4b0', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-055', 'english', 3, 2, 'choice', '{"stem":"Read: “Peter has a kite and likes kites.” Which fact is stated?","options":["Peter has a train.","Peter is sleeping.","Peter likes kites.","Peter is at the zoo."],"answer":2,"explanation":"The sentence directly says Peter likes kites."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p6-d2']::text[], 'ba88636cc6abd18d97b418ee8926ab190bdf88c36910801083a886f9d5af5185', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-056', 'english', 3, 2, 'choice', '{"stem":"Peter needs the kite. Which request is polite?","options":["Give me the kite now!","I never need it.","What colour is Monday?","May I use the kite?"],"answer":3,"explanation":"“May I use the kite?” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p7-d2']::text[], '5b7c1115dcd406fdecb6fbefe138b93eca0d39878e5494b75c7cc227f203c6a0', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-057', 'english', 3, 2, 'choice', '{"stem":"Read: “Kate is in the study. Kate does her homework.” What is true?","options":["Kate does her homework.","Kate is on a train.","Kate has no plan.","Kate dislikes maths."],"answer":0,"explanation":"The second sentence says Kate does her homework."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p0-d2']::text[], '2a598c28ce989d95b43a472b411372f96c3a2700c47dbacf83118a41f3fb6a60', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-058', 'english', 3, 2, 'choice', '{"stem":"—What does Kate like? —___","options":["It is 4:00.","Kate likes maths.","Kate has a ruler.","Today is Monday."],"answer":1,"explanation":"The question asks what Kate likes."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p1-d2']::text[], 'aec472b96035298af68bf5e4219eaa1f1688ef5b111329dd8c2388e490722998', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-059', 'english', 3, 2, 'choice', '{"stem":"Kate ___ her homework every week.","options":["do","doing","does","are"],"answer":2,"explanation":"One person needs the verb “does”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p2-d2']::text[], 'ee3e4af47c400f49e2e2f800d5aa917e27478f183b3b7b8a40b971c6307aa4f9', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-060', 'english', 3, 2, 'choice', '{"stem":"___ is Kate? in the study.","options":["When","Who","What colour","Where"],"answer":3,"explanation":"A place answer uses “Where”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p3-d2']::text[], 'a73c018703b90cb228fdb20e1c8918d5ea90d37a338855e2d23f05ea79934dd7', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-061', 'english', 3, 2, 'choice', '{"stem":"Schedule card: Kate does her homework at 4:00. Which time matches?","options":["4:00","5:00","1:15","12:30"],"answer":0,"explanation":"The sentence gives the time 4:00."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p4-d2']::text[], 'ff042c504b271105a74043c3965d158f36dba6b6ee333ed6fbd73c044c3feeca', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-062', 'english', 3, 2, 'choice', '{"stem":"Plan: “Kate does her homework at 4:00.” What happens?","options":["asks the time","does her homework","loses the bag","changes the day"],"answer":1,"explanation":"The activity is does her homework."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p5-d2']::text[], 'adaa70ad5622ac98e22bfe47cfe3fe466c23cb8c014f8bfc15cdcf72ef9bdb76', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-063', 'english', 3, 2, 'choice', '{"stem":"Read: “Kate has a ruler and likes maths.” Which fact is stated?","options":["Kate has a train.","Kate is sleeping.","Kate likes maths.","Kate is at the zoo."],"answer":2,"explanation":"The sentence directly says Kate likes maths."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p6-d2']::text[], 'a2c6d67e6ce4c14df7a010a117096c1f44b72a8e9b4d508dbd96f113df7c9c3c', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-064', 'english', 3, 2, 'choice', '{"stem":"Kate needs the ruler. Which request is polite?","options":["Give me the ruler now!","I never need it.","What colour is Monday?","May I use the ruler?"],"answer":3,"explanation":"“May I use the ruler?” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p7-d2']::text[], 'b9707ebd7ef947e8d94db3b6affbb50f390f2968be2bd60c7fcc0f4e0acb5f8b', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-065', 'english', 3, 2, 'choice', '{"stem":"Read: “Sam is in the garden. Sam waters the flowers.” What is true?","options":["Sam waters the flowers.","Sam is on a train.","Sam has no plan.","Sam dislikes plants."],"answer":0,"explanation":"The second sentence says Sam waters the flowers."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p0-d2']::text[], 'c7e81ee2d98b3efb8d5a2380ca1665514e8c4f1c31b01b9e873d4514db604c0a', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-066', 'english', 3, 2, 'choice', '{"stem":"—What does Sam like? —___","options":["It is 5:00.","Sam likes plants.","Sam has some water.","Today is Tuesday."],"answer":1,"explanation":"The question asks what Sam likes."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p1-d2']::text[], '1618489fcdf90758cc453ac3e15758607305482b4166e79f2d98ffaf98b7bb86', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-067', 'english', 3, 2, 'choice', '{"stem":"Sam ___ the flowers every week.","options":["water","watering","waters","are"],"answer":2,"explanation":"One person needs the verb “waters”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p2-d2']::text[], '3caa7b1adcfeeac76a1eccbf4348690411de7d3a4b671a042eccc6e12ec4ba0e', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-068', 'english', 3, 2, 'choice', '{"stem":"___ is Sam? in the garden.","options":["When","Who","What colour","Where"],"answer":3,"explanation":"A place answer uses “Where”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p3-d2']::text[], '66637c6ff1ece4874e381d661748d5bd94784f3a2c09f340ab61db33876d8a51', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-069', 'english', 3, 2, 'choice', '{"stem":"Schedule card: Sam waters the flowers at 5:00. Which time matches?","options":["5:00","6:00","1:15","12:30"],"answer":0,"explanation":"The sentence gives the time 5:00."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p4-d2']::text[], 'cdfbaa1a9c404eb8ee9582a53c2add3212c4add15a3a92423d049bb48d15e6c1', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-070', 'english', 3, 2, 'choice', '{"stem":"Plan: “Sam waters the flowers at 5:00.” What happens?","options":["asks the time","waters the flowers","loses the bag","changes the day"],"answer":1,"explanation":"The activity is waters the flowers."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p5-d2']::text[], '0829bd698943dc235e0b30957e6bc5ff591d36feae6b616f7be03018d43519ec', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-071', 'english', 3, 2, 'choice', '{"stem":"Read: “Sam has some water and likes plants.” Which fact is stated?","options":["Sam has a train.","Sam is sleeping.","Sam likes plants.","Sam is at the zoo."],"answer":2,"explanation":"The sentence directly says Sam likes plants."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p6-d2']::text[], '231864f76411780f080786b4b8b2b5b7e480b4f81f33b6180855cf072ae169ee', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-072', 'english', 3, 2, 'choice', '{"stem":"Sam needs the water. Which request is polite?","options":["Give me the water now!","I never need it.","What colour is Monday?","May I use the water?"],"answer":3,"explanation":"“May I use the water?” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p7-d2']::text[], 'de2636d8d43522ba34767a4addd0794d1a2eec15e837d59801b188041c399444', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-073', 'english', 3, 2, 'choice', '{"stem":"Read: “Anna is in the street. Anna walks her dog.” What is true?","options":["Anna walks her dog.","Anna is on a train.","Anna has no plan.","Anna dislikes animals."],"answer":0,"explanation":"The second sentence says Anna walks her dog."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p0-d2']::text[], 'f67361d50792ee82fcd6025f37f0ee6d547ce4022efdd4347e8fcddd5794c0ce', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-074', 'english', 3, 2, 'choice', '{"stem":"—What does Anna like? —___","options":["It is 6:00.","Anna likes animals.","Anna has a dog.","Today is Wednesday."],"answer":1,"explanation":"The question asks what Anna likes."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p1-d2']::text[], 'f9132b1c27430e68fcff59e01b2ab85d9fb433612900f1c75eac2f70951b51ad', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-075', 'english', 3, 2, 'choice', '{"stem":"Anna ___ her dog every week.","options":["walk","walking","walks","are"],"answer":2,"explanation":"One person needs the verb “walks”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p2-d2']::text[], 'a1c6e9048e3a5e6e1e63da9ec11641b2c0db5a4a42b2588822818f5ba6bbf5b8', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-076', 'english', 3, 2, 'choice', '{"stem":"___ is Anna? in the street.","options":["When","Who","What colour","Where"],"answer":3,"explanation":"A place answer uses “Where”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p3-d2']::text[], 'f89affded597993ea8218ff3b5f9964fbeeaf5dc35ee184788a156bbbf8a4467', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-077', 'english', 3, 2, 'choice', '{"stem":"Schedule card: Anna walks her dog at 6:00. Which time matches?","options":["6:00","7:00","1:15","12:30"],"answer":0,"explanation":"The sentence gives the time 6:00."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p4-d2']::text[], '0c83d806ca68469859a8590fef6598dfe56fb37f0e957680546d37aa8853b4b7', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-078', 'english', 3, 2, 'choice', '{"stem":"Plan: “Anna walks her dog at 6:00.” What happens?","options":["asks the time","walks her dog","loses the bag","changes the day"],"answer":1,"explanation":"The activity is walks her dog."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p5-d2']::text[], '4a8a3459994deba2f45a08185e872f85f91a5e3a8c8d0c2929b55e9e1fb91df7', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-079', 'english', 3, 2, 'choice', '{"stem":"Read: “Anna has a dog and likes animals.” Which fact is stated?","options":["Anna has a train.","Anna is sleeping.","Anna likes animals.","Anna is at the zoo."],"answer":2,"explanation":"The sentence directly says Anna likes animals."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p6-d2']::text[], 'a5543c43e5367eec1b9790352094621fc266441f8a11516703d3b266d7e600c5', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-080', 'english', 3, 2, 'choice', '{"stem":"Anna needs the dog. Which request is polite?","options":["Give me the dog now!","I never need it.","What colour is Monday?","May I use the dog?"],"answer":3,"explanation":"“May I use the dog?” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p7-d2']::text[], '3ee8fbc0cb54f4304aa7815a183422bd0cf85dad0968b88d245c00edc3c9ae09', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-081', 'english', 3, 2, 'choice', '{"stem":"Read: “Ben is in the kitchen. Ben helps his mother.” What is true?","options":["Ben helps his mother.","Ben is on a train.","Ben has no plan.","Ben dislikes helping."],"answer":0,"explanation":"The second sentence says Ben helps his mother."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p0-d2']::text[], '9404d2dca993f88ed700c5206fee9cd8e41a7252477b518e5a5ca146d44613c1', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-082', 'english', 3, 2, 'choice', '{"stem":"—What does Ben like? —___","options":["It is 6:30.","Ben likes helping.","Ben has a plate.","Today is Thursday."],"answer":1,"explanation":"The question asks what Ben likes."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p1-d2']::text[], '6df16952df0749924cdd43bec12db654be990b373cb3fa5a785c6ccbaf5cac89', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-083', 'english', 3, 2, 'choice', '{"stem":"Ben ___ his mother every week.","options":["help","helping","helps","are"],"answer":2,"explanation":"One person needs the verb “helps”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p2-d2']::text[], '2bcd4933a1af35e5dee0aa19532f546ef733a61d28e9d25aab619d469293c9c0', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-084', 'english', 3, 2, 'choice', '{"stem":"___ is Ben? in the kitchen.","options":["When","Who","What colour","Where"],"answer":3,"explanation":"A place answer uses “Where”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p3-d2']::text[], 'b5f8939d5e574db315f4da826aaa6bc41c3524a3e704610efeec5c293c6f44f3', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-085', 'english', 3, 2, 'choice', '{"stem":"Schedule card: Ben helps his mother at 6:30. Which time matches?","options":["6:30","7:00","1:15","12:30"],"answer":0,"explanation":"The sentence gives the time 6:30."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p4-d2']::text[], '2c7e2665f975a42adcc1d50b29d789f48281fc199cd5655aca6efb90d2299c7b', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-086', 'english', 3, 2, 'choice', '{"stem":"Plan: “Ben helps his mother at 6:30.” What happens?","options":["asks the time","helps his mother","loses the bag","changes the day"],"answer":1,"explanation":"The activity is helps his mother."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p5-d2']::text[], '0a95efb34619a13ecb51f5c2070acc87aa62ce0237d4b2ea924b249587329410', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-087', 'english', 3, 2, 'choice', '{"stem":"Read: “Ben has a plate and likes helping.” Which fact is stated?","options":["Ben has a train.","Ben is sleeping.","Ben likes helping.","Ben is at the zoo."],"answer":2,"explanation":"The sentence directly says Ben likes helping."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p6-d2']::text[], '7864708cd40c1e5894d7a6aedc58627bf27625f45c1546a30e0a6885e5048212', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-088', 'english', 3, 2, 'choice', '{"stem":"Ben needs the plate. Which request is polite?","options":["Give me the plate now!","I never need it.","What colour is Monday?","May I use the plate?"],"answer":3,"explanation":"“May I use the plate?” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p7-d2']::text[], '9cfefbc14e0f1a556ab591503716cee2a5802cb1e525508a262b6dc7563350c9', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-089', 'english', 3, 2, 'choice', '{"stem":"Read: “Grace is in the bedroom. Grace reads a story.” What is true?","options":["Grace reads a story.","Grace is on a train.","Grace has no plan.","Grace dislikes stories."],"answer":0,"explanation":"The second sentence says Grace reads a story."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答', '模板:g3-en-choice-p0-d2']::text[], 'fb7f32613daa114d3b7aeb10a948073246fad88e620732408d83e3f7d154ac4e', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-090', 'english', 3, 3, 'choice', '{"stem":"Read: “Grace cannot find the storybook. A friend points to it.” —Thank you for helping me. —___","options":["I do not know your name.","You are welcome. It is over there.","Good night. I am sleeping.","It is Monday yesterday."],"answer":1,"explanation":"The reply is polite and continues the situation by showing where the item is."}'::jsonb, 'builtin', '短对话', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p1-d3']::text[], '791d1c01348bcd8621ae8635f88d7a41e84dd4527bb8ec5a2ce2f5df26177fdf', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-091', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom with a storybook. Grace likes stories. Complete both facts: Grace ___ a story at 7:00 and likes stories.","options":["read","reading","reads","are"],"answer":2,"explanation":"The subject is one person, so “reads” completes the regular activity."}'::jsonb, 'builtin', '一般现在时', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p2-d3']::text[], '5354eabea7c4133981520704f819d5be227206733fea4f192766d14fa2ad1f8c', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-092', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom with a storybook. Grace likes stories. Read the schedule line: “Grace is in the bedroom at 7:00.” Which pair of question words asks about the place and then the time?","options":["Who; What","When; Where","How many; What colour","Where; When"],"answer":3,"explanation":"“Where” asks about a place; “When” asks about a time."}'::jsonb, 'builtin', '疑问词', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p3-d3']::text[], '7a4ea23e666570adcc725f106c77244f9fd22fde1b08f8fd335bbf07f3497d2d', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-093', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom for the stories activity. It starts at 7:00 and finishes 30 minutes later. When does it finish?","options":["7:30","7:00","8:30","7:15"],"answer":0,"explanation":"Thirty minutes after 7:00 is 7:30."}'::jsonb, 'builtin', '时间表达', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p4-d3']::text[], '82d4ae51669bece0d30bbe46631ff19d610d2cb4b435e3d6a05b0ef4eda73ffb', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-094', 'english', 3, 3, 'choice', '{"stem":"Read the plan: “First Grace packs the bag. Then Grace reads a story. After that, Grace reads.” What happens second?","options":["packs the bag","reads a story","reads","goes to sleep before everything"],"answer":1,"explanation":"The order word “Then” introduces the second activity: reads a story."}'::jsonb, 'builtin', '日常活动', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p5-d3']::text[], '499833893252962bbf23865cb024241b4aacaffe4db80d95c5a549dffd629cd3', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-095', 'english', 3, 3, 'choice', '{"stem":"Read: “On Friday, Grace is in the bedroom with a storybook. Grace likes stories. At 7:00, Grace reads a story.” Which two facts are both true?","options":["Grace is on a train and has a bike.","Grace dislikes stories and loses everything.","Grace likes stories and has a storybook.","Grace is at the zoo at midnight."],"answer":2,"explanation":"Both facts are directly stated in the text."}'::jsonb, 'builtin', '显性信息', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p6-d3']::text[], 'ae4102a8345f7644d8264a16fd1a58870fda60b78f5558df66cd1932194cba6c', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-096', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom before reads a story. Grace needs the storybook, but a classmate is using it. What is the most polite request?","options":["Give me the storybook now!","I never need the storybook.","What colour is Monday?","May I use the storybook after you?"],"answer":3,"explanation":"“May I use the storybook after you?” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p7-d3']::text[], 'cfb86016919aad1169a89023ec6b215a205798b65e71a9c845b0bc514f726e76', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-097', 'english', 3, 3, 'choice', '{"stem":"Read: “On Saturday, David is in the bedroom with a notebook. David likes science. At 8:00, David packs his bag.” Which sentence gives both the day and the activity?","options":["On Saturday, David packs his bag.","David has no plan on Saturday.","David only asks about 8:00.","David dislikes science."],"answer":0,"explanation":"The text states the day Saturday and the activity “packs his bag”."}'::jsonb, 'builtin', '句子阅读', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p0-d3']::text[], 'ba6906874dd3ac03dad29c99a44eae9928472663ee764d03726e3ba1257e5724', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-098', 'english', 3, 3, 'choice', '{"stem":"Read: “David cannot find the notebook. A friend points to it.” —Thank you for helping me. —___","options":["I do not know your name.","You are welcome. It is over there.","Good night. I am sleeping.","It is Monday yesterday."],"answer":1,"explanation":"The reply is polite and continues the situation by showing where the item is."}'::jsonb, 'builtin', '短对话', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p1-d3']::text[], '6c82c4b77d7002b18f514a91bbafe2e91f38f1dfd9b8d96753d2c8cbff04ab90', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-099', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom with a notebook. David likes science. Complete both facts: David ___ his bag at 8:00 and likes science.","options":["pack","packing","packs","are"],"answer":2,"explanation":"The subject is one person, so “packs” completes the regular activity."}'::jsonb, 'builtin', '一般现在时', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p2-d3']::text[], '25f9baee119458522a4ecbc805b415f66ce9e68fb17bf4f6f57029e94fbc7c70', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-100', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom with a notebook. David likes science. Read the schedule line: “David is in the bedroom at 8:00.” Which pair of question words asks about the place and then the time?","options":["Who; What","When; Where","How many; What colour","Where; When"],"answer":3,"explanation":"“Where” asks about a place; “When” asks about a time."}'::jsonb, 'builtin', '疑问词', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p3-d3']::text[], '54f266f1a25a910f218b57dd8477255da73b82c8f5ab76b5c93f9e58065f3067', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-101', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom for the science activity. It starts at 8:00 and finishes 30 minutes later. When does it finish?","options":["8:30","8:00","9:30","8:15"],"answer":0,"explanation":"Thirty minutes after 8:00 is 8:30."}'::jsonb, 'builtin', '时间表达', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p4-d3']::text[], '12aa5749ddb2c7a628101c31c9a98bfee86c4fe3527b336aba59015249873c35', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-102', 'english', 3, 3, 'choice', '{"stem":"Read the plan: “First David packs the bag. Then David packs his bag. After that, David reads.” What happens second?","options":["packs the bag","packs his bag","reads","goes to sleep before everything"],"answer":1,"explanation":"The order word “Then” introduces the second activity: packs his bag."}'::jsonb, 'builtin', '日常活动', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p5-d3']::text[], 'f43891bfa41230b219a9c5ad7340915256eaf0722371a55e6d08c0c5947e11f1', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-103', 'english', 3, 3, 'choice', '{"stem":"Read: “On Saturday, David is in the bedroom with a notebook. David likes science. At 8:00, David packs his bag.” Which two facts are both true?","options":["David is on a train and has a bike.","David dislikes science and loses everything.","David likes science and has a notebook.","David is at the zoo at midnight."],"answer":2,"explanation":"Both facts are directly stated in the text."}'::jsonb, 'builtin', '显性信息', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p6-d3']::text[], '8f488c99bba576e4e7a92647a58871f429e83fb6c44186613b569f69a328efd4', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-104', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom before packs his bag. David needs the notebook, but a classmate is using it. What is the most polite request?","options":["Give me the notebook now!","I never need the notebook.","What colour is Monday?","May I use the notebook after you?"],"answer":3,"explanation":"“May I use the notebook after you?” is polite because “May I...?” asks gently instead of giving an order, and “after you” shows respect for the classmate who is using it. Tip: for a polite request, look for words like “May I”, “could you”, “please” or “after you”."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p7-d3']::text[], '52a34613a93e51dc9f0d5aca329d36cb11fcd326156afebe5df688ed7be284ee', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-105', 'english', 3, 3, 'choice', '{"stem":"Read: “On Sunday, Helen is in the bedroom with a clock. Helen likes music. At 9:00, Helen goes to bed.” Which sentence gives both the day and the activity?","options":["On Sunday, Helen goes to bed.","Helen has no plan on Sunday.","Helen only asks about 9:00.","Helen dislikes music."],"answer":0,"explanation":"The text states the day Sunday and the activity “goes to bed”."}'::jsonb, 'builtin', '句子阅读', 'reason', array['全国通用', '文字可作答', '模板:g3-en-choice-p0-d3']::text[], '092cfc6f7405423a7095843b01ed4e4ef003dd040e484214dfa956564b256970', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-106', 'english', 3, 1, 'fill', '{"stem":"I have a ___. I use it to read stories.（填 book）","answer":"book","explanation":"The answer “book” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p0-d1']::text[], '33d3dba26197873e16f5ce2fbd00681b09109007d64f34fc1586407f64d55062', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-107', 'english', 3, 1, 'fill', '{"stem":"—How are you? —I am ___.（填“很好”）","answer":"fine","explanation":"The clue is “很好”. The answer “fine” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p1-d1']::text[], '7e4236a10f098b7c0b5646a7602455f7725fda839e8659b658830fdb63fac3cd', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-108', 'english', 3, 1, 'fill', '{"stem":"Tom ___ to school every day.（填 go 的正确形式）","answer":"goes","explanation":"The answer “goes” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p2-d1']::text[], '109b0b7bde5f5069786944c0531198ed5b2908797f64f652dacdf0df475e4c41', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-109', 'english', 3, 1, 'fill', '{"stem":"___ is your name? My name is Lily.","answer":"what","explanation":"The answer “what” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p3-d1']::text[], '976bc9156c2ba7ee638d0b2b03e8de93ee3c6a6e80d7c04fdc8b22687dda3eed', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-110', 'english', 3, 1, 'fill', '{"stem":"Class starts at eight ___.（填“整点”）","answer":"o''clock","explanation":"The clue is “整点”. The answer “o''clock” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p4-d1']::text[], 'e002ef10bc372ca36518ec556cf6a17d467a982b29c49a2843f08b35e17baf0a', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-111', 'english', 3, 1, 'fill', '{"stem":"I ___ my teeth every morning.（填 brush）","answer":"brush","explanation":"The answer “brush” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p5-d1']::text[], 'f9a8c92011bdb53df87bd2b0c148bab9c2960c61c07584933c63e2eca08f438c', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-112', 'english', 3, 1, 'fill', '{"stem":"Read: “The bag is blue.” The bag is ___.","answer":"blue","explanation":"The clue is “The bag is blue.”. The answer “blue” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p6-d1']::text[], '5166e7d57969f5a188c6375407cfc97f58866860a46e2f95ea14c28b2f9899ed', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-113', 'english', 3, 1, 'fill', '{"stem":"When someone says “Thank you”, you can say “You are ___.”","answer":"welcome","explanation":"The clue is “Thank you”. The answer “welcome” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p7-d1']::text[], 'e3b91c223a44af18b60c471547b4546ad8359cc04330999530659ea10539014d', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-114', 'english', 3, 1, 'fill', '{"stem":"The cat is under the desk. It is ___ the desk.","answer":"under","explanation":"The answer “under” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p0-d1']::text[], '07987cec165b5bb94e497e2b91096f80cd92c3e95cfe11cfbe249aaf44945dde', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-115', 'english', 3, 1, 'fill', '{"stem":"—Can you swim? —Yes, I ___.","answer":"can","explanation":"The answer “can” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p1-d1']::text[], '1814758bd69f90916ef8b5bbd25f36d2cbcc19dc0ee1dadb8688ddc21303bc77', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-116', 'english', 3, 1, 'fill', '{"stem":"Amy ___ English on Mondays.（填 study 的正确形式）","answer":"studies","explanation":"The answer “studies” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-fill-p2-d1']::text[], '38b15d7de9f8c766c69a95b49ce93249b7c2dbe2597e582f55c3bc7b23ff1b2f', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-117', 'english', 3, 2, 'fill', '{"stem":"___ is my ruler? It is in the bag.","answer":"where","explanation":"The answer “where” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答', '模板:g3-en-fill-p3-d2']::text[], '8eb11489544d5b34aebe58aaf75f656fbda53bd60b321c044ac7919dfba6dde4', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-118', 'english', 3, 2, 'fill', '{"stem":"7:30 can be read as half past ___.","answer":"seven","explanation":"The answer “seven” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答', '模板:g3-en-fill-p4-d2']::text[], 'a179a4feeae4597f283821f2e6e5af6dcbaa8c4f3fd078cd4f3520f74a183303', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-119', 'english', 3, 2, 'fill', '{"stem":"We have ___ at twelve o’clock.（填 lunch）","answer":"lunch","explanation":"The answer “lunch” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答', '模板:g3-en-fill-p5-d2']::text[], 'ddec0845b0a4230d24486a3c82d11e6f3f212f73ae45268a626810cd0a4164bf', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-120', 'english', 3, 2, 'fill', '{"stem":"Read: “Ben has two dogs.” Ben has ___ dogs.","answer":"two","explanation":"The clue is “Ben has two dogs.”. The answer “two” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答', '模板:g3-en-fill-p6-d2']::text[], '776ab90f108f751a23bc4d08668f0d8882eaa572c768a2a4e8907212f2a65d60', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-121', 'english', 3, 2, 'fill', '{"stem":"Before going to bed, we can say “Good ___.”","answer":"night","explanation":"The clue is “Good ___.”. The answer “night” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '模板:g3-en-fill-p7-d2']::text[], 'fb996010cc735db767ea2107f09166a64ef13a3fccebe88d2157fe513c1f70b7', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-122', 'english', 3, 2, 'fill', '{"stem":"The children are in the library. They are reading ___.","answer":"books","explanation":"The answer “books” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答', '模板:g3-en-fill-p0-d2']::text[], '3b91145144df8e4829dc5b90907561345d88d1536f9bbbffacc57d576455a180', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-123', 'english', 3, 2, 'fill', '{"stem":"—What time is it? —It is nine ___.","answer":"o''clock","explanation":"The answer “o''clock” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答', '模板:g3-en-fill-p1-d2']::text[], '6fa2dbf66bc191cdd3faa2bf5393d9c8baad640406c382abe8b15797484a6c12', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-124', 'english', 3, 3, 'fill', '{"stem":"My father ___ breakfast at seven every day.（填 have 的正确形式）","answer":"has","explanation":"The answer “has” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '一般现在时', 'reason', array['全国通用', '文字可作答', '模板:g3-en-fill-p2-d3']::text[], '74248a5a20960f8e086d2422e1a9efc24683791d06f5a42f35b775e5ce6173b9', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-125', 'english', 3, 3, 'fill', '{"stem":"___ is that girl? She is my sister.","answer":"who","explanation":"The answer “who” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '疑问词', 'reason', array['全国通用', '文字可作答', '模板:g3-en-fill-p3-d3']::text[], '7705fd96813072d1e448d97f06be0e666ebc87213ade3382ea133ccfca321c47', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-126', 'english', 3, 3, 'fill', '{"stem":"Read: “Lucy goes to the park after lunch.” Lucy goes there ___ lunch.","answer":"after","explanation":"The clue is “Lucy goes to the park after lunch.”. The answer “after” fits the meaning and the sentence pattern. Next time, read the words before and after the blank, then put your answer back into the sentence to check if it sounds right."}'::jsonb, 'builtin', '显性信息', 'reason', array['全国通用', '文字可作答', '模板:g3-en-fill-p6-d3']::text[], '474267aa68f8e0c3650823d1940783151fdf4146319c5447e19ff082ca756e19', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-127', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each sentence with its meaning.","left":["I am hungry.","I am thirsty.","I am tired.","I am cold."],"right":["I want to rest.","I want some food.","I need a coat.","I want some water."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 句子阅读, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-match-p0-d1']::text[], '01e3c1fbcb9a592b92520540e1e46a386e6c320f7edb8f8dfc5d6d24d0f78236', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-128', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each question with the best answer.","left":["How are you?","What is your name?","How old are you?","Where are you?"],"right":["I am nine.","I am fine.","I am at school.","I am Amy."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 短对话, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-match-p1-d1']::text[], 'bd7f2d1117b1bd842ed438cef95098c0bccf7fb5205aa475a3316408b35c5ef0', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-129', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each subject and verb with the rest of its sentence.","left":["I play","He plays","We read","She reads"],"right":["books every day","football after school","a story at night","basketball on Friday"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 一般现在时, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-match-p2-d1']::text[], '34c33bdcf9d717d85aa8ff521544245761699311113599139dd20e72cc2daaf5', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-130', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each question word with what it asks about.","left":["What","Where","When","Who"],"right":["a time","a thing or action","a person","a place"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 疑问词, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-match-p3-d1']::text[], '9b5a65df62fc7841bfd461c61a1e7b0309cb47379e400ef11eb59a40dce26766', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-131', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each clock time with its English expression.","left":["7:00","8:30","12:00","6:30"],"right":["twelve o''clock","seven o''clock","half past six","half past eight"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 时间表达, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-match-p4-d1']::text[], '6c94a261ce82f8ca144607f397fc8f4c80409bdc6facf18eec46fdbbc1bca6ef', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-132', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each daily activity with its Chinese meaning.","left":["get up","have breakfast","go to school","go to bed"],"right":["去上学","起床","睡觉","吃早饭"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 日常活动, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-match-p5-d1']::text[], '55a8097ba7b5ffa9f028b0152b7cb1f45bd73dc3befe87e9d1ca5d772d203db5', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-133', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each sentence with the information it gives.","left":["The apple is red.","The dog is small.","The book is new.","The box is heavy."],"right":["new book","red apple","heavy box","small dog"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 显性信息, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答', '听读入门', '模板:g3-en-match-p6-d1']::text[], '756ac305b7a84e4d37729200c4bab39e28dd73ce8e28113859669ae61f1bdc07', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-134', 'english', 3, 2, 'match', '{"stem":"Use the classroom language chart. Match each expression with the polite reply.","left":["Thank you.","Good morning.","I am sorry.","Goodbye."],"right":["That''s OK.","You are welcome.","See you.","Good morning."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 情境交际, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '模板:g3-en-match-p7-d2']::text[], 'ce1a3ee52c98773b61e87636e0a6b3e01c850c1c84f7996ee99f273e8fdc7ea3', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-135', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each sentence with its meaning.","left":["I am hungry.","I am thirsty.","I am tired.","I am cold."],"right":["I want to rest.","I want some food.","I need a coat.","I want some water."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 句子阅读, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答', '模板:g3-en-match-p0-d2']::text[], '6e3be5925c172bb2037e9772fc989f5bd71b3dad9ef1e0aed3f3284edf6751fa', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-136', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each question with the best answer.","left":["How are you?","What is your name?","How old are you?","Where are you?"],"right":["I am nine.","I am fine.","I am at school.","I am Amy."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 短对话, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答', '模板:g3-en-match-p1-d2']::text[], '1f215aa04a87358eff9621b7406b43dfe24b2bc0406ff31e954198a9856d9f48', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-137', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each subject and verb with the rest of its sentence.","left":["I play","He plays","We read","She reads"],"right":["books every day","football after school","a story at night","basketball on Friday"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 一般现在时, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答', '模板:g3-en-match-p2-d2']::text[], '1669c8cb8b5be5e1dccc01a92e602a13b19dd538c8fef163b4a5d1e17469e331', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-138', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each question word with what it asks about.","left":["What","Where","When","Who"],"right":["a time","a thing or action","a person","a place"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 疑问词, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答', '模板:g3-en-match-p3-d2']::text[], 'e0e8a406cf36ac8c52ae6bd9cc9548590167d3d6ef46f184db50be121fdf1155', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-139', 'english', 3, 3, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each clock time with its English expression.","left":["7:00","8:30","12:00","6:30"],"right":["twelve o''clock","seven o''clock","half past six","half past eight"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 时间表达, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '时间表达', 'reason', array['全国通用', '文字可作答', '模板:g3-en-match-p4-d3']::text[], '3d44dc54429f074ab9841b4efba4e32d9510f200857625f9d6dcd80071e630d9', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-140', 'english', 3, 3, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each daily activity with its Chinese meaning.","left":["get up","have breakfast","go to school","go to bed"],"right":["去上学","起床","睡觉","吃早饭"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare each item by meaning and function, not only by the first word you see. For 日常活动, match the clearest pair first, then check the remaining pairs again."}'::jsonb, 'builtin', '日常活动', 'reason', array['全国通用', '文字可作答', '模板:g3-en-match-p5-d3']::text[], 'b4aca802948c454ac330f2a4d891e95064302afded6b210d55fb12ed24b74e6a', 'approved', 3)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-001', 'math', 3, 1, 'choice', '{"stem":"春游准备：社区图书角有1274本书，其中数字“2”在百位上，它表示多少？","options":["200","2","20","2000"],"answer":0,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p0-d1']::text[], '5b6ef60660d63c0a31758c6a2992a4b69d7ae983909efaf41901907658781c76', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-002', 'math', 3, 1, 'choice', '{"stem":"春游准备：手工课每组要用15张彩纸，5个小组一共要用多少张？","options":["70张","75张","90张","20张"],"answer":1,"explanation":"15×5=75，所以一共有75张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p1-d1']::text[], '8e7e58321fd1971dd94101d6d3c8733f10cbd89e411e9b6fe31a769ba507c4e2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-003', 'math', 3, 1, 'choice', '{"stem":"春游准备：把48颗棋子平均装进6个盒子，每盒有多少颗？","options":["7颗","14颗","8颗","42颗"],"answer":2,"explanation":"48÷6=8，每盒有8颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p2-d1']::text[], '2941980fb0d92c89447112fc04179f9895d9f678d6594c837c076ba654490574', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-004', 'math', 3, 1, 'choice', '{"stem":"春游准备：一张纸平均分成4份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/4","4/2","4/4","2/4"],"answer":3,"explanation":"原来涂1份，再涂1份是2份，占2/4。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p3-d1']::text[], 'ba996ee35042e437f12a918e3bd4e0425410342056d44ffcbeb03e62fd2e1fdd', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-005', 'math', 3, 1, 'choice', '{"stem":"春游准备：科技活动在10:00开始，持续40分钟，结束时间是几点？","options":["10:40","11:40","13:40","12:00"],"answer":0,"explanation":"从10:00经过40分钟，结束时间是10:40。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p4-d1']::text[], '21b951e35ac993a2f1e3c4507b3b41b6e215fd5a0fe175298eec14a0d58d07fa', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-006', 'math', 3, 1, 'choice', '{"stem":"春游准备：长方形卡片长13厘米、宽5厘米，它的周长是多少？","options":["18厘米","36厘米","26厘米","41厘米"],"answer":1,"explanation":"周长是（13+5）×2=36厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p5-d1']::text[], 'cbe83358d0845ca0dff4d686d565f1b9e597d79bfb032c3b516011cb6b61f67e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-007', 'math', 3, 1, 'choice', '{"stem":"春游准备：三组回收废纸数量为：一组5千克、二组8千克、三组3千克。二组比三组多多少千克？","options":["3千克","2千克","5千克","16千克"],"answer":2,"explanation":"比较二组和三组，8-3=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p6-d1']::text[], 'b61b0e6ebd7c8d4af387e46a972d8fd016d56a610502ae2fdbebeee6772bb27f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-008', 'math', 3, 1, 'choice', '{"stem":"春游准备：书架原有27本故事书，借出5本，又放回6本，现在有多少本？","options":["22本","33本","36本","28本"],"answer":3,"explanation":"先算借出后有27-5=22本，再加放回的6本，共28本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p7-d1']::text[], 'a9b0ad2e400ac12af19db835898f8918545255bdc19a83d57400adeddda987bc', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-009', 'math', 3, 1, 'choice', '{"stem":"春游准备：观察数列：6，8，10，12，下一个数是多少？","options":["14","12","16","18"],"answer":0,"explanation":"相邻两个数都增加2，所以下一个数是14。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p8-d1']::text[], '781f1e7bd2a4f4e27f8b3eb6ba06bb4b18b202c762ea4267b9ba01c5ced7eef5', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-010', 'math', 3, 1, 'choice', '{"stem":"运动会记录：社区图书角有1607本书，其中数字“6”在百位上，它表示多少？","options":["6","600","60","6000"],"answer":1,"explanation":"百位上的数字表示几个百，所以表示600。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p0-d1']::text[], '9295d92c1fc1c91bfeffeb1cb640d5c08c22e6ad9a88eb6b636cf6fb9b17171e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-011', 'math', 3, 1, 'choice', '{"stem":"运动会记录：礼堂摆了7排座位，每排有24个，一共有多少个座位？","options":["161个","192个","168个","31个"],"answer":2,"explanation":"24×7=168，所以一共有168个。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p1-d1']::text[], '4c72219a17baf63fd43a9c5152af284add5bb763c2543c26e9729da9e6895c6f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-012', 'math', 3, 1, 'choice', '{"stem":"运动会记录：把48颗棋子平均装进8个盒子，每盒有多少颗？","options":["5颗","14颗","40颗","6颗"],"answer":3,"explanation":"48÷8=6，每盒有6颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p2-d1']::text[], 'dd4bbe0496f0cf92b2e9f18815fa081d7a2aa16c12e247a701205fadd0900653', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-013', 'math', 3, 1, 'choice', '{"stem":"运动会记录：一张纸平均分成5份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/5","1/5","5/2","4/5"],"answer":0,"explanation":"原来涂1份，再涂1份是2份，占2/5。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p3-d1']::text[], '69ddc16a0f195f00a22ab305ee4dcf5e6c32476cfc0d9a8cd45cbf9c92a8ada2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-014', 'math', 3, 1, 'choice', '{"stem":"运动会记录：科技活动在11:00开始，持续50分钟，结束时间是几点？","options":["12:50","11:50","14:50","13:00"],"answer":1,"explanation":"从11:00经过50分钟，结束时间是11:50。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p4-d1']::text[], '60bb8a85e528b1fef4699376bb9746207c529eeb3eee3b39d97cddb526b24a16', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-015', 'math', 3, 1, 'choice', '{"stem":"运动会记录：长方形卡片长6厘米、宽2厘米，它的周长是多少？","options":["8厘米","12厘米","16厘米","18厘米"],"answer":2,"explanation":"周长是（6+2）×2=16厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p5-d1']::text[], 'c13e80de6e6bcf943d4a44b5b957b9428711216d3cef23b0f29b33c43493829e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-016', 'math', 3, 1, 'choice', '{"stem":"运动会记录：三组回收废纸数量为：一组6千克、二组9千克、三组4千克。二组比三组多多少千克？","options":["3千克","2千克","19千克","5千克"],"answer":3,"explanation":"比较二组和三组，9-4=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p6-d1']::text[], '8ffb04b447b393624981e99fb00a8b9bbee5b43207963cb319b570f90fd53109', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-017', 'math', 3, 1, 'choice', '{"stem":"运动会记录：书架原有36本故事书，借出7本，又放回7本，现在有多少本？","options":["36本","29本","43本","46本"],"answer":0,"explanation":"先算借出后有36-7=29本，再加放回的7本，共36本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p7-d1']::text[], 'ee042e6c80a35bd10caa0a61dab57b561ca3c514719ef2559baa698de2301055', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-018', 'math', 3, 1, 'choice', '{"stem":"运动会记录：观察数列：3，9，15，21，下一个数是多少？","options":["21","27","33","39"],"answer":1,"explanation":"相邻两个数都增加6，所以下一个数是27。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p8-d1']::text[], 'f301cc2a3ab80811d70d4345952b373d227ec1f4ce32b9302a9b9f990e08f514', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-019', 'math', 3, 1, 'choice', '{"stem":"图书节任务：社区图书角有1940本书，其中数字“9”在百位上，它表示多少？","options":["9","90","900","9000"],"answer":2,"explanation":"百位上的数字表示几个百，所以表示900。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p0-d1']::text[], 'f7a8807e4c73bd0075b606e96532236323684224738cf5588bba0644b78b1d33', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-020', 'math', 3, 1, 'choice', '{"stem":"图书节任务：每盒有33张贴纸，买来2盒，一共有多少张贴纸？","options":["64张","99张","35张","66张"],"answer":3,"explanation":"33×2=66，所以一共有66张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p1-d1']::text[], '5ab18651c12e3743cdc8011553b1c6e598301756e1d3056c749cd94a4e0dcc91', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-021', 'math', 3, 1, 'choice', '{"stem":"图书节任务：把12颗棋子平均装进3个盒子，每盒有多少颗？","options":["4颗","3颗","7颗","9颗"],"answer":0,"explanation":"12÷3=4，每盒有4颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p2-d1']::text[], 'ab59cdfd677f4d38b9ecd58d932f27d144291be1cd6a03b6d85d27e2d9e801dc', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-022', 'math', 3, 1, 'choice', '{"stem":"图书节任务：一张纸平均分成6份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/6","2/6","6/2","4/6"],"answer":1,"explanation":"原来涂1份，再涂1份是2份，占2/6。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p3-d1']::text[], '8714ddf30ae5508672532cd0fe20975dbe0ca3817f0a363f4faf81ef23c91c8c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-023', 'math', 3, 1, 'choice', '{"stem":"图书节任务：科技活动在8:00开始，持续20分钟，结束时间是几点？","options":["9:20","11:20","8:20","10:00"],"answer":2,"explanation":"从8:00经过20分钟，结束时间是8:20。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p4-d1']::text[], 'ce365f80a3a0c84117626708f074194b3a5599b6883179703c72887163ec75c6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-024', 'math', 3, 1, 'choice', '{"stem":"图书节任务：长方形卡片长7厘米、宽3厘米，它的周长是多少？","options":["10厘米","14厘米","23厘米","20厘米"],"answer":3,"explanation":"周长是（7+3）×2=20厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p5-d1']::text[], '2ab1c45cb01a1087e74e4cc117220537f484bb8ca0537c25ac88d2fc1bc84631', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-025', 'math', 3, 1, 'choice', '{"stem":"图书节任务：三组回收废纸数量为：一组7千克、二组10千克、三组5千克。二组比三组多多少千克？","options":["5千克","3千克","2千克","22千克"],"answer":0,"explanation":"比较二组和三组，10-5=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p6-d1']::text[], '860cae47def157680cf27a08a7e6bbf0415b48526814010487ce69aae357354a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-026', 'math', 3, 1, 'choice', '{"stem":"图书节任务：书架原有45本故事书，借出9本，又放回8本，现在有多少本？","options":["36本","44本","53本","56本"],"answer":1,"explanation":"先算借出后有45-9=36本，再加放回的8本，共44本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p7-d1']::text[], '315a06a0a83912edb58f07f4d131934c2c6d6fde1475151a44c67a3214cf0693', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-027', 'math', 3, 1, 'choice', '{"stem":"图书节任务：观察数列：6，11，16，21，下一个数是多少？","options":["21","31","26","36"],"answer":2,"explanation":"相邻两个数都增加5，所以下一个数是26。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p8-d1']::text[], '198283d86099407beffad959a8b2d063c3f6096db53982e1d7394555ef9505ee', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-028', 'math', 3, 1, 'choice', '{"stem":"科学角观察：社区图书角有2273本书，其中数字“2”在百位上，它表示多少？","options":["2","20","2000","200"],"answer":3,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p0-d1']::text[], '5d74ea69c61cbf55568acaa5d071de83f2b4c35f665ce995cc8ee543d50d6e37', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-029', 'math', 3, 1, 'choice', '{"stem":"科学角观察：手工课每组要用14张彩纸，4个小组一共要用多少张？","options":["56张","52张","70张","18张"],"answer":0,"explanation":"14×4=56，所以一共有56张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p1-d1']::text[], '6ed955eee87dc0d8db484fc4de69d63b0c44e4c8555e3d8a9d912d72adf8cffe', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-030', 'math', 3, 1, 'choice', '{"stem":"科学角观察：把65颗棋子平均装进5个盒子，每盒有多少颗？","options":["12颗","13颗","18颗","60颗"],"answer":1,"explanation":"65÷5=13，每盒有13颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p2-d1']::text[], '841039a9c98c562c23d357beec0d0f43441b08023c5a017aa2609f970eb70ff2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-031', 'math', 3, 1, 'choice', '{"stem":"科学角观察：一张纸平均分成7份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/7","7/2","2/7","4/7"],"answer":2,"explanation":"原来涂1份，再涂1份是2份，占2/7。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p3-d1']::text[], '07f62e11093591398e03dea2ef6ed641bf519be96da174ef643c2bdfd36b750c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-032', 'math', 3, 1, 'choice', '{"stem":"科学角观察：科技活动在9:00开始，持续30分钟，结束时间是几点？","options":["10:30","12:30","11:00","9:30"],"answer":3,"explanation":"从9:00经过30分钟，结束时间是9:30。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p4-d1']::text[], 'eb01690e89baf337224e4d7522fe13b1e681388cbbd6ac539af09aaa2aabf2d6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-033', 'math', 3, 1, 'choice', '{"stem":"科学角观察：长方形卡片长8厘米、宽4厘米，它的周长是多少？","options":["24厘米","12厘米","16厘米","28厘米"],"answer":0,"explanation":"周长是（8+4）×2=24厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p5-d1']::text[], 'a24b95e47727011fcff192d7f3c64263988fd01ac261dd61fcf4ba37bd559aa3', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-034', 'math', 3, 1, 'choice', '{"stem":"科学角观察：三组回收废纸数量为：一组8千克、二组11千克、三组6千克。二组比三组多多少千克？","options":["3千克","5千克","2千克","25千克"],"answer":1,"explanation":"比较二组和三组，11-6=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p6-d1']::text[], 'c06b7e5b4d4bc5585efb15908cbd9618ac8fc831073b04bb0884329cf8eb1f9b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-035', 'math', 3, 1, 'choice', '{"stem":"科学角观察：书架原有54本故事书，借出4本，又放回9本，现在有多少本？","options":["50本","63本","59本","66本"],"answer":2,"explanation":"先算借出后有54-4=50本，再加放回的9本，共59本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p7-d1']::text[], 'd76a0904cb52364b9aa4c0084b95c95536da1f73bbb205ffbfd6c0898e76da51', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-036', 'math', 3, 1, 'choice', '{"stem":"科学角观察：观察数列：3，7，11，15，下一个数是多少？","options":["15","23","27","19"],"answer":3,"explanation":"相邻两个数都增加4，所以下一个数是19。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p8-d1']::text[], '38ea2b07357c04a150b8d44a8d7594c30964c8548d08aa55664ac19d85ec23b9', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-037', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：社区图书角有2606本书，其中数字“6”在百位上，它表示多少？","options":["600","6","60","6000"],"answer":0,"explanation":"百位上的数字表示几个百，所以表示600。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p0-d1']::text[], '94bd4e10be46a7ce29525f908ee65e5ee317649e64823cc7b419874b77ad70c9', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-038', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：礼堂摆了6排座位，每排有23个，一共有多少个座位？","options":["132个","138个","161个","29个"],"answer":1,"explanation":"23×6=138，所以一共有138个。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p1-d1']::text[], '372c412d5cd17f246dd6369ddfb34e0e3d395147b8c30edc9b23137a0d3684c9', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-039', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：把77颗棋子平均装进7个盒子，每盒有多少颗？","options":["10颗","18颗","11颗","70颗"],"answer":2,"explanation":"77÷7=11，每盒有11颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p2-d1']::text[], '6a26b1d62296e2af0e6d79d643cc3567f756bf1d4c15b5a3a5bc860a215fbd09', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-040', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：一张纸平均分成8份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/8","8/2","4/8","2/8"],"answer":3,"explanation":"原来涂1份，再涂1份是2份，占2/8。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p3-d1']::text[], '75debcc36e1813c69ead488bd7d05b50d77c61e90a8d4ffec116b48d345f1753', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-041', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：科技活动在10:00开始，持续40分钟，结束时间是几点？","options":["10:40","11:40","13:40","12:00"],"answer":0,"explanation":"从10:00经过40分钟，结束时间是10:40。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p4-d1']::text[], 'df6d0eb52b7ee62511d6279cddb814f3779f403d7499fdae7b11f9603cf820e6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-042', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：长方形卡片长9厘米、宽5厘米，它的周长是多少？","options":["14厘米","28厘米","18厘米","33厘米"],"answer":1,"explanation":"周长是（9+5）×2=28厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p5-d1']::text[], '98d10a6a6ce2e8a25e658d8df4b14e75edcaa199ceaf5e589f120f153f1ac63b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-043', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：三组回收废纸数量为：一组9千克、二组12千克、三组7千克。二组比三组多多少千克？","options":["3千克","2千克","5千克","28千克"],"answer":2,"explanation":"比较二组和三组，12-7=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p6-d1']::text[], '63d3dab46fa1232e6ef858fe7bbb1101689420daa6058258e9295016e6d07aa7', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-044', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：书架原有63本故事书，借出6本，又放回10本，现在有多少本？","options":["57本","73本","76本","67本"],"answer":3,"explanation":"先算借出后有63-6=57本，再加放回的10本，共67本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p7-d1']::text[], '1b205023ad0aab20eb93e5ce7107d5be08965caf8c8329e17605b82397b95a10', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-045', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：观察数列：6，9，12，15，下一个数是多少？","options":["18","15","21","24"],"answer":0,"explanation":"相邻两个数都增加3，所以下一个数是18。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p8-d1']::text[], '63c95db93da9aa67fe887d4b7e1e899e06eb2373c28d0a348ae7de209928b557', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-046', 'math', 3, 1, 'choice', '{"stem":"班级义卖：社区图书角有2939本书，其中数字“9”在百位上，它表示多少？","options":["9","900","90","9000"],"answer":1,"explanation":"百位上的数字表示几个百，所以表示900。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p0-d1']::text[], 'a40f1735cb4e78934d438310719f176cef80421d524209bc40f6da081a598a3d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-047', 'math', 3, 1, 'choice', '{"stem":"班级义卖：每盒有32张贴纸，买来8盒，一共有多少张贴纸？","options":["248张","288张","256张","40张"],"answer":2,"explanation":"32×8=256，所以一共有256张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p1-d1']::text[], 'f894e2f6f89d10f9c29c0307d9f27f2e5eb2381a1e79836ce66b39e83caba3ab', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-048', 'math', 3, 1, 'choice', '{"stem":"班级义卖：把18颗棋子平均装进2个盒子，每盒有多少颗？","options":["8颗","11颗","16颗","9颗"],"answer":3,"explanation":"18÷2=9，每盒有9颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p2-d1']::text[], '5b79f6edbd7a753d5e0884d8b0d6a64428661b24ec1ee7aca9ffa85ff776b011', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-049', 'math', 3, 1, 'choice', '{"stem":"班级义卖：一张纸平均分成9份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/9","1/9","9/2","4/9"],"answer":0,"explanation":"原来涂1份，再涂1份是2份，占2/9。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p3-d1']::text[], 'f14f08b1c4e14a93ffbe8d01c2b0ea83d5c1e157bd9ff144987aaf8636bd7a0f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-050', 'math', 3, 1, 'choice', '{"stem":"班级义卖：科技活动在11:00开始，持续50分钟，结束时间是几点？","options":["12:50","11:50","14:50","13:00"],"answer":1,"explanation":"从11:00经过50分钟，结束时间是11:50。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p4-d1']::text[], '9dce88515ccd2b6d3c781d4fe1cf5dbeff180cd26317f01283301ad4dfb757d6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-051', 'math', 3, 1, 'choice', '{"stem":"班级义卖：长方形卡片长10厘米、宽2厘米，它的周长是多少？","options":["12厘米","20厘米","24厘米","26厘米"],"answer":2,"explanation":"周长是（10+2）×2=24厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p5-d1']::text[], '0e99355fe9e4bc164f31c2ba3c751dd057631129798351baf1b19160bf877a79', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-052', 'math', 3, 1, 'choice', '{"stem":"班级义卖：三组回收废纸数量为：一组10千克、二组13千克、三组8千克。二组比三组多多少千克？","options":["3千克","2千克","31千克","5千克"],"answer":3,"explanation":"比较二组和三组，13-8=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-choice-p6-d1']::text[], '884d7deea5a9992b07de3692862d3bb17bbeb9701797c2248d1596146236fcba', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-053', 'math', 3, 2, 'choice', '{"stem":"班级义卖：书架原有72本故事书，借出8本，又放回11本，现在有多少本？","options":["75本","64本","83本","86本"],"answer":0,"explanation":"先算借出后有72-8=64本，再加放回的11本，共75本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p7-d2']::text[], '147db6b63080b46604e0e8a620f02db0ca1f729a28fa026b299c3731b3c3819b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-054', 'math', 3, 2, 'choice', '{"stem":"班级义卖：观察数列：3，5，7，9，下一个数是多少？","options":["9","11","13","15"],"answer":1,"explanation":"相邻两个数都增加2，所以下一个数是11。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p8-d2']::text[], 'de377083bcc9c3d4231b6a84769dba7fb8bc96d76d2babdc1101ff56c32a1077', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-055', 'math', 3, 2, 'choice', '{"stem":"校园种植：社区图书角有3272本书，其中数字“2”在百位上，它表示多少？","options":["2","20","200","2000"],"answer":2,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p0-d2']::text[], 'f1713012f7c083dd0cbcfeb4f62fe8d270bb66e18f9851fff64f3dc518182d2f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-056', 'math', 3, 2, 'choice', '{"stem":"校园种植：手工课每组要用13张彩纸，3个小组一共要用多少张？","options":["36张","52张","16张","39张"],"answer":3,"explanation":"13×3=39，所以一共有39张。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p1-d2']::text[], 'f255058eb1477ded1dd3acf403dca0b00120d0d2287bbc46c144aea04997d608', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-057', 'math', 3, 2, 'choice', '{"stem":"校园种植：把28颗棋子平均装进4个盒子，每盒有多少颗？","options":["7颗","6颗","11颗","24颗"],"answer":0,"explanation":"28÷4=7，每盒有7颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p2-d2']::text[], '6e4293b5f36aeb8753d442a450530c80dfb53fa8b7dad5420f51410e50e96ce1', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-058', 'math', 3, 2, 'choice', '{"stem":"校园种植：一张纸平均分成10份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/10","2/10","10/2","4/10"],"answer":1,"explanation":"原来涂1份，再涂1份是2份，占2/10。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p3-d2']::text[], 'ca22cbb2e24b9c06c32a523eab388a86c597216e2f54cfd376a5e078ca65032c', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-059', 'math', 3, 2, 'choice', '{"stem":"校园种植：科技活动在8:00开始，持续20分钟，结束时间是几点？","options":["9:20","11:20","8:20","10:00"],"answer":2,"explanation":"从8:00经过20分钟，结束时间是8:20。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p4-d2']::text[], '0a1b6d81d14b5101124b0678ea63bf5e806c806bf0b05cfd3e82e53661a7cf66', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-060', 'math', 3, 2, 'choice', '{"stem":"校园种植：长方形卡片长11厘米、宽3厘米，它的面积是多少？","options":["14平方厘米","22平方厘米","36平方厘米","33平方厘米"],"answer":3,"explanation":"面积是11×3=33平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p5-d2']::text[], '393bbf1e278cd1f1630ee8c5c8a24c0df785f91ec67f6608d68db8a9b41bf0f2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-061', 'math', 3, 2, 'choice', '{"stem":"校园种植：三组回收废纸数量为：一组11千克、二组14千克、三组9千克。二组比三组多多少千克？","options":["5千克","3千克","2千克","34千克"],"answer":0,"explanation":"比较二组和三组，14-9=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p6-d2']::text[], 'a9c6377bebeeca448d3d6f234d3eb31b01a58cb0a5ae715c9cf78ab4ebd5b698', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-062', 'math', 3, 2, 'choice', '{"stem":"校园种植：书架原有81本故事书，借出3本，又放回12本，现在有多少本？","options":["78本","90本","93本","96本"],"answer":1,"explanation":"先算借出后有81-3=78本，再加放回的12本，共90本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p7-d2']::text[], 'c39240c0be55320d17452acd6fd59054206e08aaaea1c1155de0727ca778e07d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-063', 'math', 3, 2, 'choice', '{"stem":"校园种植：观察数列：6，12，18，24，下一个数是多少？","options":["24","36","30","42"],"answer":2,"explanation":"相邻两个数都增加6，所以下一个数是30。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p8-d2']::text[], '0ea12194230b0deb138c593336e57b15e653a04765f5adae0894f40140fde1cd', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-064', 'math', 3, 2, 'choice', '{"stem":"社团活动：社区图书角有3605本书，其中数字“6”在百位上，它表示多少？","options":["6","60","6000","600"],"answer":3,"explanation":"百位上的数字表示几个百，所以表示600。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p0-d2']::text[], '344afc3c4bfad8818883a1686dcf53add22f9ebda4517f09d292949bd50c597e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-065', 'math', 3, 2, 'choice', '{"stem":"社团活动：礼堂摆了5排座位，每排有22个，一共有多少个座位？","options":["110个","105个","132个","27个"],"answer":0,"explanation":"22×5=110，所以一共有110个。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p1-d2']::text[], 'bd72a0c94b1c89cd1efefda7d2dcab7160f6d62192ea08440f5cab921d44a9b7', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-066', 'math', 3, 2, 'choice', '{"stem":"社团活动：把30颗棋子平均装进6个盒子，每盒有多少颗？","options":["4颗","5颗","11颗","24颗"],"answer":1,"explanation":"30÷6=5，每盒有5颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p2-d2']::text[], '99da85145a8f1e2e7e2a09dc0962b75048e5face96c8dc72dbbda9ee0ab0a745', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-067', 'math', 3, 2, 'choice', '{"stem":"社团活动：一张纸平均分成4份，涂了2份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/4","4/3","3/4","1/4"],"answer":2,"explanation":"原来涂2份，再涂1份是3份，占3/4。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p3-d2']::text[], '09e10c9d60b259701ae2d6c881ca71335c66d4b886af99514e77b2db109141cf', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-068', 'math', 3, 2, 'choice', '{"stem":"社团活动：科技活动在9:00开始，持续30分钟，结束时间是几点？","options":["10:30","12:30","11:00","9:30"],"answer":3,"explanation":"从9:00经过30分钟，结束时间是9:30。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p4-d2']::text[], '5f2839387171f84ce996ccc6fca0c14f866561cf47bcbd34c4c9038e05739fcc', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-069', 'math', 3, 2, 'choice', '{"stem":"社团活动：长方形卡片长12厘米、宽4厘米，它的面积是多少？","options":["48平方厘米","16平方厘米","24平方厘米","52平方厘米"],"answer":0,"explanation":"面积是12×4=48平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p5-d2']::text[], '0d43baf038078d8c967d7114f95bac7aa2e5538d38b278b49ef94ab20531f3c8', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-070', 'math', 3, 2, 'choice', '{"stem":"社团活动：三组回收废纸数量为：一组12千克、二组15千克、三组10千克。二组比三组多多少千克？","options":["3千克","5千克","2千克","37千克"],"answer":1,"explanation":"比较二组和三组，15-10=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p6-d2']::text[], 'd792f96c324225070be92dae382cb1e9395995159e6e404aded5aa2388499975', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-071', 'math', 3, 2, 'choice', '{"stem":"社团活动：书架原有90本故事书，借出5本，又放回5本，现在有多少本？","options":["85本","95本","90本","98本"],"answer":2,"explanation":"先算借出后有90-5=85本，再加放回的5本，共90本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p7-d2']::text[], '4b96240dd8461c7f50099999a55df60c9033f54187709accda1c905f0a3b6d75', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-072', 'math', 3, 2, 'choice', '{"stem":"社团活动：观察数列：3，8，13，18，下一个数是多少？","options":["18","28","33","23"],"answer":3,"explanation":"相邻两个数都增加5，所以下一个数是23。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p8-d2']::text[], '1d4d27949e3869c55a526811726dad94c49097428cec7919aa534c27c440fee0', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-073', 'math', 3, 2, 'choice', '{"stem":"家庭采购：社区图书角有3938本书，其中数字“9”在百位上，它表示多少？","options":["900","9","90","9000"],"answer":0,"explanation":"百位上的数字表示几个百，所以表示900。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p0-d2']::text[], 'cefab48d0184165c5868992b3bf80d383e84bb395df2b8ff0bf9b28afe846277', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-074', 'math', 3, 2, 'choice', '{"stem":"家庭采购：每盒有31张贴纸，买来7盒，一共有多少张贴纸？","options":["210张","217张","248张","38张"],"answer":1,"explanation":"31×7=217，所以一共有217张。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p1-d2']::text[], '6c2d3e2ee6cb7b13378dde451cbdefd21fc714a42acf61289930514564abf6d5', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-075', 'math', 3, 2, 'choice', '{"stem":"家庭采购：把112颗棋子平均装进8个盒子，每盒有多少颗？","options":["13颗","22颗","14颗","104颗"],"answer":2,"explanation":"112÷8=14，每盒有14颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p2-d2']::text[], 'abe6e37c3ade226e898de8019a54d5121e95e47dcf147e7eeb46a5fd24fb7dce', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-076', 'math', 3, 2, 'choice', '{"stem":"家庭采购：一张纸平均分成5份，涂了2份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/5","5/3","1/5","3/5"],"answer":3,"explanation":"原来涂2份，再涂1份是3份，占3/5。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p3-d2']::text[], '4e956b92aca2b1024359bd8fbefcf8e87c753890606b62789cbdffeadcdbfdce', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-077', 'math', 3, 2, 'choice', '{"stem":"家庭采购：科技活动在10:00开始，持续40分钟，结束时间是几点？","options":["10:40","11:40","13:40","12:00"],"answer":0,"explanation":"从10:00经过40分钟，结束时间是10:40。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p4-d2']::text[], '4bd95c17d0e03807f533bd6c6c7bc85e89a3fafda0427a6298adeaf8eb901cdc', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-078', 'math', 3, 2, 'choice', '{"stem":"家庭采购：长方形卡片长13厘米、宽5厘米，它的面积是多少？","options":["18平方厘米","65平方厘米","26平方厘米","70平方厘米"],"answer":1,"explanation":"面积是13×5=65平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p5-d2']::text[], '90c2c7a3795975c22e2aabc2b9fc817905883b94292eb6ad36b9cc3c23f5eb4f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-079', 'math', 3, 2, 'choice', '{"stem":"家庭采购：三组回收废纸数量为：一组13千克、二组16千克、三组11千克。二组比三组多多少千克？","options":["3千克","2千克","5千克","40千克"],"answer":2,"explanation":"比较二组和三组，16-11=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p6-d2']::text[], 'fc46791fa1659d19e8d86473976b43b79029945a60731c44a5286886f52fbf49', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-080', 'math', 3, 2, 'choice', '{"stem":"家庭采购：书架原有99本故事书，借出7本，又放回6本，现在有多少本？","options":["92本","105本","108本","98本"],"answer":3,"explanation":"先算借出后有99-7=92本，再加放回的6本，共98本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p7-d2']::text[], '24b3e4aef87c59d1ec734d8f39400629357a4c9c45f236bce76c1305287f084f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-081', 'math', 3, 2, 'choice', '{"stem":"家庭采购：观察数列：6，10，14，18，下一个数是多少？","options":["22","18","26","30"],"answer":0,"explanation":"相邻两个数都增加4，所以下一个数是22。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p8-d2']::text[], 'c55df7e00c4c98866ef6da9f828a4db3e72fe82323ec12d154bec2dfb72a7235', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-082', 'math', 3, 2, 'choice', '{"stem":"社区服务：社区图书角有4271本书，其中数字“2”在百位上，它表示多少？","options":["2","200","20","2000"],"answer":1,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p0-d2']::text[], '0cd71285bde3b2199f943c0bc18fe336926ba5a85e29218b77e7e094dbf8c513', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-083', 'math', 3, 2, 'choice', '{"stem":"社区服务：手工课每组要用12张彩纸，2个小组一共要用多少张？","options":["22张","36张","24张","14张"],"answer":2,"explanation":"12×2=24，所以一共有24张。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p1-d2']::text[], '49806d71f0bf9459777b31b27d2019f0c3b892d802733c39e26292aab1792590', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-084', 'math', 3, 2, 'choice', '{"stem":"社区服务：把36颗棋子平均装进3个盒子，每盒有多少颗？","options":["11颗","15颗","33颗","12颗"],"answer":3,"explanation":"36÷3=12，每盒有12颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p2-d2']::text[], '004439af5626b5806a920f047aae37578a131c16e6d20ea63d5b1eaf2a60f26e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-085', 'math', 3, 2, 'choice', '{"stem":"社区服务：一张纸平均分成6份，涂了2份。再涂1份后，涂色部分是这张纸的几分之几？","options":["3/6","2/6","6/3","1/6"],"answer":0,"explanation":"原来涂2份，再涂1份是3份，占3/6。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p3-d2']::text[], '20cea15a3936d6e4e3f1855028a53efdc6296f2dbc7bdd7a48f33366a2439ec3', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-086', 'math', 3, 2, 'choice', '{"stem":"社区服务：科技活动在11:00开始，持续50分钟，结束时间是几点？","options":["12:50","11:50","14:50","13:00"],"answer":1,"explanation":"从11:00经过50分钟，结束时间是11:50。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p4-d2']::text[], '4edbfd1ab803d995ffc2b6d6d4889a281726126384d8559838cccfa69b91f976', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-087', 'math', 3, 2, 'choice', '{"stem":"社区服务：长方形卡片长6厘米、宽2厘米，它的面积是多少？","options":["8平方厘米","14平方厘米","12平方厘米","17平方厘米"],"answer":2,"explanation":"面积是6×2=12平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p5-d2']::text[], '9df709e2e7d4d9eb070f727656b4905673b640bed2acc0ffff7001c2841a3753', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-088', 'math', 3, 2, 'choice', '{"stem":"社区服务：三组回收废纸数量为：一组14千克、二组17千克、三组12千克。二组比三组多多少千克？","options":["3千克","2千克","43千克","5千克"],"answer":3,"explanation":"比较二组和三组，17-12=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p6-d2']::text[], '639f6dda56f3d4904ed05e330873fbd39458603c08caaef25196205c0a674736', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-089', 'math', 3, 2, 'choice', '{"stem":"社区服务：书架原有108本故事书，借出9本，又放回7本，现在有多少本？","options":["106本","99本","115本","118本"],"answer":0,"explanation":"先算借出后有108-9=99本，再加放回的7本，共106本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用', '模板:g3-math-choice-p7-d2']::text[], '09b2bf304e269297d43b32b35e8319af313954d11e042a92b392d63b8ecfc597', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-090', 'math', 3, 3, 'choice', '{"stem":"社区服务：数列从13开始，依次加1、加2、加3。按照这个规律，下一次加4后得到多少？","options":["19","23","24","27"],"answer":1,"explanation":"依次计算：13+1+2+3+4=23。"}'::jsonb, 'builtin', '规律发现', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p8-d3']::text[], 'e66c61249ff4d67c05a0ddc8f351b73486197ba95f74a0468ca205e99102069f', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-091', 'math', 3, 3, 'choice', '{"stem":"阅读分享：仓库原有4488件物品，运走1200件。剩下物品数的百位数字是多少？","options":["0","4","2","8"],"answer":2,"explanation":"先算4488-1200=3288，再看百位数字。"}'::jsonb, 'builtin', '较大数认识', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p0-d3']::text[], '7da8caa896d3964363a7e5bdbef4edf2eca5a1174c186a7098cf38ef0abcced5', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-092', 'math', 3, 3, 'choice', '{"stem":"阅读分享：3盒贴纸，每盒30张。布置展板用去9张，还剩多少张？","options":["90张","84张","72张","81张"],"answer":3,"explanation":"先算3×30=90张，再减9张，剩81张。"}'::jsonb, 'builtin', '乘法', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p1-d3']::text[], 'a11cf8106bdf5fffde0313c569808f25c3929bd09eaba4f73bf9837e86fa9efc', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-093', 'math', 3, 3, 'choice', '{"stem":"阅读分享：38名同学，每4人组成一组。最多组成几个完整小组，还剩几人？","options":["9组，剩2人","10组，剩0人","11组，剩2人","4组，剩2人"],"answer":0,"explanation":"38÷4=9……2，可组成9个完整小组，剩2人。"}'::jsonb, 'builtin', '除法', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p2-d3']::text[], '52bb0526ba8537d0965d6076c4ff84dfab39c0ebd5efada0c8cfd337a008f344', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-094', 'math', 3, 3, 'choice', '{"stem":"阅读分享：一盒点心平均分成6份，小雨吃了2份，小林吃了3份。两人一共吃了这盒点心的几分之几？","options":["3/6","5/6","2/6","6/5"],"answer":1,"explanation":"分母不变，把吃掉的份数相加：2+3=5，所以是5/6。"}'::jsonb, 'builtin', '分数初步', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p3-d3']::text[], '11c15aa2a6ca4e7389a15c2a2ca76397db00393cd92882a8caca6be66f38680d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-095', 'math', 3, 3, 'choice', '{"stem":"阅读分享：活动8:00开始，先参观35分钟，休息10分钟，再体验25分钟。全部结束是几点？","options":["8:60","9:25","9:10","10:10"],"answer":2,"explanation":"总用时35+10+25=70分钟，即1小时10分钟，结束时间是9:10。"}'::jsonb, 'builtin', '质量与时间', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p4-d3']::text[], '2d4c0eb82ca26b1b865ca43232a208d14599194570651c8713c02b2da5c4e197', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-096', 'math', 3, 3, 'choice', '{"stem":"阅读分享：长20米、宽4米的长方形花坛中，有一块2米×4米的区域铺石子，其余种花。种花面积是多少？","options":["80平方米","48平方米","76平方米","72平方米"],"answer":3,"explanation":"花坛面积20×4=80，石子区面积2×4=8，种花面积是72平方米。"}'::jsonb, 'builtin', '周长与面积', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p5-d3']::text[], '2bed8a739948d282ce5d660efa32c0d9d8a01f195ad143d382ddb93f8e0a2847', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-097', 'math', 3, 3, 'choice', '{"stem":"阅读分享：图书借阅记录：周一24本、周二21本、周三27本。三天共借出多少本？","options":["72本","6本","45本","48本"],"answer":0,"explanation":"把三天数据相加：24+21+27=72本。"}'::jsonb, 'builtin', '数据表达', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p6-d3']::text[], '4d171cb32f2524de7386b7ea262a1ce60723fac43505a3f1cb626ad605dfc37b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-098', 'math', 3, 3, 'choice', '{"stem":"阅读分享：礼堂安排4排座位，每排20个。已有3个座位损坏，可用座位有多少个？","options":["80个","77个","81个","17个"],"answer":1,"explanation":"先算座位总数4×20=80，再减损坏的3个，得77个。"}'::jsonb, 'builtin', '两步问题', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p7-d3']::text[], '3e4c6b34b6ee3744f549d803edcbe6d4a7f321dbf49d4f15c0e64e8726696527', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-099', 'math', 3, 3, 'choice', '{"stem":"阅读分享：数列从14开始，依次加1、加2、加3。按照这个规律，下一次加4后得到多少？","options":["20","25","24","28"],"answer":2,"explanation":"依次计算：14+1+2+3+4=24。"}'::jsonb, 'builtin', '规律发现', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p8-d3']::text[], '5580dc9f70765b63243b36480a01fbdb97f012f7f4e76a97b77340a93a7b15ff', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-100', 'math', 3, 3, 'choice', '{"stem":"手工作品展：仓库原有4612件物品，运走1300件。剩下物品数的百位数字是多少？","options":["0","2","8","3"],"answer":3,"explanation":"先算4612-1300=3312，再看百位数字。"}'::jsonb, 'builtin', '较大数认识', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p0-d3']::text[], '08831baf4e256c39f5861510e6be738984e95a7de87303232bf22129edd2520d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-101', 'math', 3, 3, 'choice', '{"stem":"手工作品展：4盒贴纸，每盒31张。布置展板用去10张，还剩多少张？","options":["114张","124张","118张","104张"],"answer":0,"explanation":"先算4×31=124张，再减10张，剩114张。"}'::jsonb, 'builtin', '乘法', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p1-d3']::text[], '7c9bcabfdc98a8d56cfe330ea78d131d6856fdd11f77a583fb58116e34002328', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-102', 'math', 3, 3, 'choice', '{"stem":"手工作品展：53名同学，每5人组成一组。最多组成几个完整小组，还剩几人？","options":["11组，剩0人","10组，剩3人","10组，剩2人","5组，剩3人"],"answer":1,"explanation":"53÷5=10……3，可组成10个完整小组，剩3人。"}'::jsonb, 'builtin', '除法', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p2-d3']::text[], '27fb24fedf375fe671452074c0e16ab7bf2b52407e6b6c7e7f113ebd0cf08de9', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-103', 'math', 3, 3, 'choice', '{"stem":"手工作品展：一盒点心平均分成7份，小雨吃了2份，小林吃了3份。两人一共吃了这盒点心的几分之几？","options":["3/7","2/7","5/7","7/5"],"answer":2,"explanation":"分母不变，把吃掉的份数相加：2+3=5，所以是5/7。"}'::jsonb, 'builtin', '分数初步', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p3-d3']::text[], 'e2e6b3414ba8cf010e41d767d882dbc827d63962dd9b398f8342a689e0e8dee0', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-104', 'math', 3, 3, 'choice', '{"stem":"手工作品展：活动9:00开始，先参观35分钟，休息10分钟，再体验25分钟。全部结束是几点？","options":["9:60","10:25","11:10","10:10"],"answer":3,"explanation":"总用时35+10+25=70分钟，即1小时10分钟，结束时间是10:10。"}'::jsonb, 'builtin', '质量与时间', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p4-d3']::text[], '5bdecf4e059a6bf22a749d85136e8fa13629e5fb9cc9ce92ef361799ae74438d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-105', 'math', 3, 3, 'choice', '{"stem":"手工作品展：长21米、宽5米的长方形花坛中，有一块2米×5米的区域铺石子，其余种花。种花面积是多少？","options":["95平方米","105平方米","52平方米","100平方米"],"answer":0,"explanation":"花坛面积21×5=105，石子区面积2×5=10，种花面积是95平方米。"}'::jsonb, 'builtin', '周长与面积', 'reason', array['全国通用', '情境应用', '模板:g3-math-choice-p5-d3']::text[], '92301ee631a402269a91a5b426728a4867ebd082a3a80589c63e01b44a55269d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-106', 'math', 3, 1, 'fill', '{"stem":"手工作品展：调查结果是喜欢足球116人、篮球113人，喜欢足球的比篮球多___人。","answer":"3","explanation":"用116-113=3。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p6-d1']::text[], '80bf530a843a4fdbf2b2026f3bd8da1ffed4ea55ea0e2bd807283bf2953d1d87', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-107', 'math', 3, 1, 'fill', '{"stem":"手工作品展：一盒彩笔10支，买3盒后送出3支，还剩___支。","answer":"27","explanation":"先求3盒总数，再减去送出的数量。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p7-d1']::text[], '2622518c7e610cc3e8d83ef4ee74335090f7f13f98ef3386cdd314def807e05d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-108', 'math', 3, 1, 'fill', '{"stem":"手工作品展：按规律填数：110，113，116，___。","answer":"119","explanation":"每次增加3，所以下一个数是119。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p8-d1']::text[], '7f2370308ab3b5cb5750b014d0e8559d8c150c86ca7383aa31511f423182f0a6', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-109', 'math', 3, 1, 'fill', '{"stem":"节水行动：14100里面有___个百。","answer":"141","explanation":"每100个组成1个百，所以共有141个百。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p0-d1']::text[], 'a27148ac4669d685d71f8323b0bee8e9ac7d63ecf9e3de8ca9c7aba08533d2b4', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-110', 'math', 3, 1, 'fill', '{"stem":"节水行动：132 × 6 = ___","answer":"792","explanation":"用乘法计算两个因数的积。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p1-d1']::text[], 'fcfc9b5006285124e48bdbc2af373103cfaeceed30eea8bcb844c41682ee8c7d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-111', 'math', 3, 1, 'fill', '{"stem":"节水行动：80 ÷ 8 = ___","answer":"10","explanation":"根据乘除法关系求商。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p2-d1']::text[], '17c2b4cec376f9dbb2d2d92ec9564c064ede0be691f1dcfba27c4d28a7bcba04', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-112', 'math', 3, 1, 'fill', '{"stem":"节水行动：把一个苹果平均分成8份，每份是它的___。","answer":"1/8","explanation":"平均分成几份，每份就是几分之一。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p3-d1']::text[], '455c89ef9d9284bbc4063cf749a6b48b690b16dc9c1ceaa190f05684c695c2db', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-113', 'math', 3, 1, 'fill', '{"stem":"节水行动：2千克 = ___克","answer":"2000","explanation":"1千克是1000克，2千克是2000克。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p4-d1']::text[], 'db9b72f36c473d8388bd39b447ccc50c897a5f5467f29a78c14fdbae6a1d8fae', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-114', 'math', 3, 1, 'fill', '{"stem":"节水行动：边长7厘米的正方形，周长是___厘米。","answer":"28","explanation":"正方形周长等于边长乘4。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p5-d1']::text[], '1ebb6c6170151725e39d46c8126fc3c6fc9f76ff878ec0b2911fbba986757a92', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-115', 'math', 3, 1, 'fill', '{"stem":"节水行动：调查结果是喜欢足球125人、篮球122人，喜欢足球的比篮球多___人。","answer":"3","explanation":"用125-122=3。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p6-d1']::text[], 'aa35289f18bb8e0d7c8e93781091580b0e471fe84724301c7a218eced15f0102', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-116', 'math', 3, 1, 'fill', '{"stem":"节水行动：一盒彩笔9支，买3盒后送出4支，还剩___支。","answer":"23","explanation":"先求3盒总数，再减去送出的数量。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固', '模板:g3-math-fill-p7-d1']::text[], '1a97a258ff08bc86f83565386a2762aeadccf4b3cfd85bc1f45c55457d18a218', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-117', 'math', 3, 2, 'fill', '{"stem":"节水行动：按规律填数：119，122，125，___。","answer":"128","explanation":"每次增加3，所以下一个数是128。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用', '模板:g3-math-fill-p8-d2']::text[], '8063d894fb79a14a88fc6b0bdd5da283835f42237db8e8a8830ef509a893783a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-118', 'math', 3, 2, 'fill', '{"stem":"旧物回收：15000里面有___个百。","answer":"150","explanation":"每100个组成1个百，所以共有150个百。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用', '模板:g3-math-fill-p0-d2']::text[], '55ea49ac1368ffd1c846a41f818562e60dc4741ebb7b922ae4d83d2b7ccc0cb5', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-119', 'math', 3, 2, 'fill', '{"stem":"旧物回收：141 × 3 = ___","answer":"423","explanation":"用乘法计算两个因数的积。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用', '模板:g3-math-fill-p1-d2']::text[], 'f1bd2f6244ff1d0bd1f555c84f6254025766d8f77bc689ed5aa82b4e5b6a4f79', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-120', 'math', 3, 2, 'fill', '{"stem":"旧物回收：50 ÷ 5 = ___","answer":"10","explanation":"根据乘除法关系求商。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用', '模板:g3-math-fill-p2-d2']::text[], 'f291e155a4b4b276c209c2d37e46ea4214a14191d30f5f9579f07eb32756a0e3', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-121', 'math', 3, 2, 'fill', '{"stem":"旧物回收：把一个苹果平均分成7份，每份是它的___。","answer":"1/7","explanation":"平均分成几份，每份就是几分之一。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用', '模板:g3-math-fill-p3-d2']::text[], '20b208b3f85be7f51d77e849a7ffc5b88f264c8c2c10a0580c4e418cb0049eb3', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-122', 'math', 3, 2, 'fill', '{"stem":"旧物回收：2千克 = ___克","answer":"2000","explanation":"1千克是1000克，2千克是2000克。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用', '模板:g3-math-fill-p4-d2']::text[], '1efc395f2322bb098ff26ad63db9d74c265291b3bd630eb4e47eafc1b5154fba', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-123', 'math', 3, 2, 'fill', '{"stem":"旧物回收：边长8厘米的正方形，周长是___厘米。","answer":"32","explanation":"正方形周长等于边长乘4。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用', '模板:g3-math-fill-p5-d2']::text[], '2e0a658ed865a5a1695f4e987a04207b809d17d4ccd7ef7ab2835bdcd973ae73', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-124', 'math', 3, 3, 'fill', '{"stem":"旧物回收：三天收集废电池数量分别是143节、138节、141节，共收集___节。","answer":"422","explanation":"把三天数量相加：143+138+141=422节。"}'::jsonb, 'builtin', '数据表达', 'reason', array['全国通用', '情境应用', '模板:g3-math-fill-p6-d3']::text[], 'b30d5fe2866ea9088f9e7d16807f2737dd3a35ed1db2d87619ade6372351e6da', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-125', 'math', 3, 3, 'fill', '{"stem":"旧物回收：4袋卡片，每袋11张，用去8张后还剩___张。","answer":"36","explanation":"先算4袋有11×4=44张，再减去8张，剩36张。"}'::jsonb, 'builtin', '两步问题', 'reason', array['全国通用', '情境应用', '模板:g3-math-fill-p7-d3']::text[], 'c657b0ae2a98191ebd3f3d358c96d7d4974a46ee39966d3d5920e735158b4fb1', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-126', 'math', 3, 3, 'fill', '{"stem":"旧物回收：按“依次加1、加2、加3、加4”的规律填数：9，10，12，15，___。","answer":"19","explanation":"最后一次加4，15+4=19。"}'::jsonb, 'builtin', '规律发现', 'reason', array['全国通用', '情境应用', '模板:g3-math-fill-p8-d3']::text[], '52e330c3cc4a05bf6c67272f3a79889c66c4b15870ddc20483e0940f6ca3bbf4', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-127', 'math', 3, 1, 'match', '{"stem":"健康打卡：第127组较大数认识练习：把左边内容与正确结果连起来","left":["3个千和2个百","5个百和8个一","7个千和4个十","9个百和6个十"],"right":["7040","3200","960","508"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据千位、百位、十位和个位表示的数值组成各数。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固', '模板:g3-math-match-p0-d1']::text[], '0bc406d2368424b2c8b155413cc9b50c836442a4913c8b62e36e9a21c340691a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-128', 'math', 3, 1, 'match', '{"stem":"健康打卡：第128组乘法练习：把左边内容与正确结果连起来","left":["12×5","13×5","14×5","15×5"],"right":["70","60","75","65"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐个计算乘法算式的积。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-match-p1-d1']::text[], '86b3f5ad328b6ad3413c393e8108e5a0808938cc89016b294fb522fbe41fef3a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-129', 'math', 3, 1, 'match', '{"stem":"健康打卡：第129组除法练习：把左边内容与正确结果连起来","left":["12÷2","14÷2","16÷2","18÷2"],"right":["8","6","9","7"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据乘除法关系计算每个商。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固', '模板:g3-math-match-p2-d1']::text[], '8a86e4d746f769dd3aaf6869f9a6c43cd96f36da298f4a4702f1946516459e82', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-130', 'math', 3, 1, 'match', '{"stem":"健康打卡：第130组分数初步练习：把左边内容与正确结果连起来","left":["平均分2份取1份","平均分3份取1份","平均分4份取3份","平均分5份取2份"],"right":["3/4","1/2","2/5","1/3"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分母表示平均分的份数，分子表示取的份数。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固', '模板:g3-math-match-p3-d1']::text[], '96deffae7cb4aecf6567551ea0f9dee296afed3ae61277bf79ab69ee46497d33', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-131', 'math', 3, 1, 'match', '{"stem":"健康打卡：第131组质量与时间练习：把左边内容与正确结果连起来","left":["2千克","3000克","1小时","90分钟"],"right":["60分钟","2000克","1小时30分","3千克"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"1千克=1000克，1小时=60分钟。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固', '模板:g3-math-match-p4-d1']::text[], '1b85275ba1c7ea5be79071a827f9d142bd49addb608f2d22b3af100ac2bbe833', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-132', 'math', 3, 1, 'match', '{"stem":"健康打卡：第132组周长与面积练习：把左边内容与正确结果连起来","left":["边长3厘米正方形的周长","长5厘米宽2厘米长方形的面积","长6厘米宽3厘米长方形的周长","边长4厘米正方形的面积"],"right":["18厘米","12厘米","16平方厘米","10平方厘米"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分别使用正方形、长方形的周长或面积公式。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固', '模板:g3-math-match-p5-d1']::text[], '5cd2d1c6dd71589668436f59aa025d9e2f4768ff5c753287c0314c69ec7ee672', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-133', 'math', 3, 1, 'match', '{"stem":"健康打卡：第133组数据表达练习：把左边内容与正确结果连起来","left":["一班8票、二班12票","晴天9天、雨天4天","篮球15人、足球11人","红花7朵、黄花7朵"],"right":["篮球多4人","二班多4票","两种一样多","晴天多5天"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"读取每组数据并比较相差数量。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固', '模板:g3-math-match-p6-d1']::text[], 'fc3b74785d65f3852f014bf178a3dde3046482456b9e1b410d95f588e78d2f68', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-134', 'math', 3, 2, 'match', '{"stem":"健康打卡：第134组两步问题练习：把左边内容与正确结果连起来","left":["20-6+3","5×4-2","36÷4+5","8+7×2"],"right":["14","17","22","18"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"按先乘除后加减的顺序计算两步算式。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用', '模板:g3-math-match-p7-d2']::text[], 'd92ce894e30749ccb76374f989eec7f9b09578de34bb99615b01a26d91f2dd84', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-135', 'math', 3, 2, 'match', '{"stem":"健康打卡：第135组规律发现练习：把左边内容与正确结果连起来","left":["2,4,6,8","3,6,9,12","20,18,16,14","1,2,4,8"],"right":["下一个是12","下一个是10","下一个是16","下一个是15"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分别寻找加2、加3、减2和乘2的规律。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用', '模板:g3-math-match-p8-d2']::text[], '11bfeaee77c29960ad166ae0a588fd81f240f53bd7a08d8f256029062994cc4d', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-136', 'math', 3, 2, 'match', '{"stem":"研学计划：第136组较大数认识练习：把左边内容与正确结果连起来","left":["3个千和2个百","5个百和8个一","7个千和4个十","9个百和6个十"],"right":["7040","3200","960","508"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据千位、百位、十位和个位表示的数值组成各数。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用', '模板:g3-math-match-p0-d2']::text[], '85f677d9cd6ee19bc14fecc31feae2fe316cab05e3b32598d00b65fde72cd325', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-137', 'math', 3, 2, 'match', '{"stem":"研学计划：第137组乘法练习：把左边内容与正确结果连起来","left":["12×2","13×2","14×2","15×2"],"right":["28","24","30","26"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐个计算乘法算式的积。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用', '模板:g3-math-match-p1-d2']::text[], 'ee3e2b4db776041b0883787157e7f01854bd655c02cee00f994ebcc3571c3364', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-138', 'math', 3, 2, 'match', '{"stem":"研学计划：第138组除法练习：把左边内容与正确结果连起来","left":["18÷3","21÷3","24÷3","27÷3"],"right":["8","6","9","7"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据乘除法关系计算每个商。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用', '模板:g3-math-match-p2-d2']::text[], '87545b5f5840c6cc1ec94f847a0423b08cbd2e0aed0ac6fccae84429161dc156', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-139', 'math', 3, 3, 'match', '{"stem":"研学计划：第139组分数初步练习：把左边内容与正确结果连起来","left":["平均分2份取1份","平均分3份取1份","平均分4份取3份","平均分5份取2份"],"right":["3/4","1/2","2/5","1/3"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分母表示平均分的份数，分子表示取的份数。"}'::jsonb, 'builtin', '分数初步', 'reason', array['全国通用', '情境应用', '模板:g3-math-match-p3-d3']::text[], '46791e9a4e38abc670b8ffa9a1b2594965dd979ac0d2e88e0d90d4e64ae9c5ac', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-140', 'math', 3, 3, 'match', '{"stem":"研学计划：第140组质量与时间练习：把左边内容与正确结果连起来","left":["2千克","3000克","1小时","90分钟"],"right":["60分钟","2000克","1小时30分","3千克"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"1千克=1000克，1小时=60分钟。"}'::jsonb, 'builtin', '质量与时间', 'reason', array['全国通用', '情境应用', '模板:g3-math-match-p4-d3']::text[], '0f8e8b4251775458de95512b537eaa67f7ae655890eb9a3fd7af328c32c5b28e', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;

commit;
