-- Auto-generated from validated canonical question JSON.
-- Safe to run repeatedly: rows are upserted by external_id.
begin;

insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-001', 'chinese', 3, 1, 'choice', '{"stem":"他专心地观察蚂蚁搬家，连伙伴叫他都没听见。句中“专心”的意思是？","options":["注意力集中","声音很大","动作很快","心情紧张"],"answer":0,"explanation":"结合句子内容，“注意力集中”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析']::text[], '6852785b0a5935ab8d95b6a83cb47e3a3533936165bb85fcb9cf6a1e177171e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-002', 'chinese', 3, 1, 'choice', '{"stem":"下面没有语病的一项是？","options":["同学们认真地作业。","同学们认真地完成了作业。","同学们完成了认真作业。","同学们把作业认真。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析']::text[], '897689f6c63a95c879a46d1a513cb7e19501097046222a962ab961d5221d2867', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-003', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“清晨，小林先给花浇水，再整理书包，最后背着书包上学。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小林上学前做了哪些事”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析']::text[], 'f41adae65372fafab9217fc180ff4cc49dc1f0899815ae1484a73754d11d932d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-004', 'chinese', 3, 1, 'choice', '{"stem":"“弯弯的月亮像一条小船。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析']::text[], '22f34a994d6ccceee41e52ba1cc26de3430f6c1864ac0ec1cd7a12346985c6c3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-005', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“清晨，小林先给花浇水，再整理书包，最后背着书包上学。”小林上学前做了哪些事？","options":["浇花、整理书包后上学","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“浇花、整理书包后上学”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析']::text[], 'a81dde843e90cf6cd673f6a8faa5ec6913ecf64b2601110131dad6cba15b5dda', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-006', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“清晨，小林先给花浇水，再整理书包，最后背着书包上学。”这段话的中心意思是？","options":["介绍天气变化","浇花、整理书包后上学","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“浇花、整理书包后上学”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析']::text[], '0a9c328c6712608327b46b1a9048286e07a887be7bd191e32d729981e3ff8295', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-007', 'chinese', 3, 1, 'choice', '{"stem":"写请假条时，正文中必须说明什么？","options":["只写自己的心情","使用很多感叹号","请假原因和时间","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“请假原因和时间”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析']::text[], 'ac6c12b0c598bbe972ae648f7b40e1372c20a1f77292b5183309530e426acf3c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-008', 'chinese', 3, 1, 'choice', '{"stem":"春节常见的习俗是？","options":["赏菊花","赛龙舟","吃月饼","贴春联"],"answer":3,"explanation":"根据传统文化常识，正确答案是“贴春联”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析']::text[], '630fc4e19da0de19fe5e3f9f4ab9efbc897560853c27adf1bd2f33fdb6f8d96b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-009', 'chinese', 3, 1, 'choice', '{"stem":"雨后，空气格外清新。“清新”在句中的意思是？","options":["清爽而新鲜","寒冷刺骨","十分干燥","颜色鲜艳"],"answer":0,"explanation":"结合句子内容，“清爽而新鲜”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析']::text[], '067b47705012192063b30e776138c5c2c0b52cbe71ff5399665a8c2cb22202c1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-010', 'chinese', 3, 1, 'choice', '{"stem":"“我估计他今天一定会来。”怎样修改更恰当？","options":["我估计他今天一定不会不来。","我估计他今天会来。","我估计一定他今天会来。","我今天估计他一定会来。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析']::text[], '41b0ca323d52237dc4309f3bfff8687e793013cdf1557b1d0d81a4ebe43925bf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-011', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小猫听见门外有响声，轻轻走过去，发现是一只迷路的小鸟。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小猫发现了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析']::text[], 'e4161f8e3265a3752a581a58c81d684ce1a1de0481d21b34ecd6b66315a957b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-012', 'chinese', 3, 1, 'choice', '{"stem":"“风儿轻轻唱着歌。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析']::text[], 'ff61eec3dcb1427a18c9207ce7275b3c318d7efe767214fe2762ef5994f67a59', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-013', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小猫听见门外有响声，轻轻走过去，发现是一只迷路的小鸟。”小猫发现了什么？","options":["一只迷路的小鸟","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“一只迷路的小鸟”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析']::text[], 'd00dea324d1bb049dfd2736c5003245cafb8cb870c5c771bcfd6e9db3a6aafd6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-014', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小猫听见门外有响声，轻轻走过去，发现是一只迷路的小鸟。”这段话的中心意思是？","options":["介绍天气变化","一只迷路的小鸟","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“一只迷路的小鸟”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析']::text[], 'b02ed2898ece1271f315ac8adb7fe33bea7352cf06c6e1665276544bc5cb5f2c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-015', 'chinese', 3, 1, 'choice', '{"stem":"通知中为了让大家按时参加活动，必须写清什么？","options":["只写自己的心情","使用很多感叹号","活动时间和地点","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“活动时间和地点”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析']::text[], '0116ff34673454ec8a11454de378b070420e2738949205d49f21dcf6e1a9e8d1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-016', 'chinese', 3, 1, 'choice', '{"stem":"端午节常见的活动是？","options":["贴春联","赏月","登高","赛龙舟"],"answer":3,"explanation":"根据传统文化常识，正确答案是“赛龙舟”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析']::text[], '94533f3c6efe49f48c8be4e8a14c15593dd44c77f5a8fad69b11c4d4a980e948', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-017', 'chinese', 3, 1, 'choice', '{"stem":"小船缓缓地离开岸边。“缓缓”说明小船怎样移动？","options":["慢慢地","突然地","飞快地","摇晃地"],"answer":0,"explanation":"结合句子内容，“慢慢地”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析']::text[], '046602454aa97555fb648bda74a6ef046c23249029039ca504c606a8aa636534', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-018', 'chinese', 3, 1, 'choice', '{"stem":"“校园里开满了五颜六色的红花。”怎样修改？","options":["校园里开满了红色的红花。","校园里开满了五颜六色的花。","校园里五颜六色开满了红花。","校园开满花了五颜六色。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析']::text[], 'efebb6128e5b6ebfecae0ecfa851c342f69451e1d6bec2d47f4747bcf20282d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-019', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“奶奶把种子撒进土里，每天浇水。几天后，嫩芽钻了出来。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“事情的结果是什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析']::text[], '8522f5fe04ce25429c72eaee8798ff4ce203470dec68dac785ff8f560ed4114e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-020', 'chinese', 3, 1, 'choice', '{"stem":"“雨点像珍珠一样落下来。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析']::text[], '8495abc08cd6f01e9d0b643e88aee4ede21d1f029a11014808843d83e6cd7c36', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-021', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“奶奶把种子撒进土里，每天浇水。几天后，嫩芽钻了出来。”事情的结果是什么？","options":["种子长出了嫩芽","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“种子长出了嫩芽”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析']::text[], '579556ac5409145073e42425c401937d795bde76814dd73ff8c8d9ec6fbda85a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-022', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“奶奶把种子撒进土里，每天浇水。几天后，嫩芽钻了出来。”这段话的中心意思是？","options":["介绍天气变化","种子长出了嫩芽","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“种子长出了嫩芽”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析']::text[], 'e2b5307c387b60357d9bbce030d8bb859f4d7fbbfb070218b397ada2cb415ce5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-023', 'chinese', 3, 1, 'choice', '{"stem":"给长辈写信，开头称呼后通常用什么标点？","options":["只写自己的心情","使用很多感叹号","冒号","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“冒号”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析']::text[], '19f51b78bb5b9aafa1a4227e20a9e28f773ac3893688d70bed6116f35aed2143', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-024', 'chinese', 3, 1, 'choice', '{"stem":"中秋节人们常会？","options":["包粽子","贴窗花","放风筝","赏月"],"answer":3,"explanation":"根据传统文化常识，正确答案是“赏月”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析']::text[], '3feae79f3d46cfbf37565b837be9e98fafbf40f0c41676307a062c0309d784ae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-025', 'chinese', 3, 1, 'choice', '{"stem":"看到同学摔倒，小雨立刻跑过去扶他。“立刻”表示？","options":["马上","偶尔","终于","从前"],"answer":0,"explanation":"结合句子内容，“马上”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析']::text[], '297be73b9d92c56d8bb4b1d55bf3869601e036e1cfba6ae52b35837277721346', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-026', 'chinese', 3, 1, 'choice', '{"stem":"“我们要爱护时间。”应把“爱护”改为？","options":["保护","珍惜","爱惜","保卫"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析']::text[], '02a6632a4a9b8244e72f412c5185331f0e2016cefc114d6f2f5fa2f16099f46f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-027', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“运动会上，小刚摔倒了。他忍着疼站起来，坚持跑到了终点。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小刚最值得学习的品质”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析']::text[], 'e9758f296ba99b4f5227085396e77d007f10f31d39a26a12e2243c4bda4b8ef8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-028', 'chinese', 3, 1, 'choice', '{"stem":"“小草从土里探出头来。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析']::text[], '0647ac32aa62a4e519f99d7d745679fdf5e63d157210c6df88d11b1e2f0c8fb2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-029', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“运动会上，小刚摔倒了。他忍着疼站起来，坚持跑到了终点。”小刚最值得学习的品质？","options":["坚持不放弃","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“坚持不放弃”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析']::text[], '5990a7dd28fb909da682b0dbdb6f6591d2b8d094f30f3cc5a5be85c82a18c22c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-030', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“运动会上，小刚摔倒了。他忍着疼站起来，坚持跑到了终点。”这段话的中心意思是？","options":["介绍天气变化","坚持不放弃","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“坚持不放弃”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析']::text[], '2e64fd486170f21554dd45c1017e16db26521e0e64ddf599c4adbd20916a0f1e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-031', 'chinese', 3, 1, 'choice', '{"stem":"日记正文前一般要写什么？","options":["只写自己的心情","使用很多感叹号","日期和天气","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“日期和天气”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析']::text[], '79aefd1fa0c5fac8cc63ee17d45306be66afdf01672d8103aecd446371fdb1fa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-032', 'chinese', 3, 1, 'choice', '{"stem":"重阳节常有哪项习俗？","options":["赛龙舟","守岁","赏花灯","登高"],"answer":3,"explanation":"根据传统文化常识，正确答案是“登高”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析']::text[], 'fde23bbf4705df383d477419931be88d92b49307b253c2481ba7504a85785592', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-033', 'chinese', 3, 1, 'choice', '{"stem":"山路崎岖，大家走得很小心。“崎岖”说明山路怎样？","options":["高低不平","宽阔平坦","十分笔直","干净整齐"],"answer":0,"explanation":"结合句子内容，“高低不平”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析']::text[], 'cc37c9d1062a4b60af50ad3242aa87958d8e10f52797e4d6f36b185b246aa306', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-034', 'chinese', 3, 1, 'choice', '{"stem":"“下课了，校园里立刻顿时热闹起来。”应删去哪一个词？","options":["校园里","立刻或顿时","热闹","起来"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析']::text[], 'fc059b81de505eb9202699f5067bb79861908cfaf8932ac4cc2f63c02bdd0340', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-035', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“放学后，天空突然下雨。小美把伞借给没带伞的同桌，两人一起回家。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小美做了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析']::text[], '6a884d8a7d79c4b91b31b40abb961fcd84df0f17c80dbebe5f7cfd7eab44170d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-036', 'chinese', 3, 1, 'choice', '{"stem":"“湖面平静得像一面镜子。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析']::text[], '928201bd60f674b23c1f0a4e2a730819f9ee33d205bec08b3ae1c40160609417', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-037', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“放学后，天空突然下雨。小美把伞借给没带伞的同桌，两人一起回家。”小美做了什么？","options":["和同桌共用雨伞","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“和同桌共用雨伞”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析']::text[], '4798274bc3bef6868170cbaa6c74d102ca036c4157cca49d750167755015b855', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-038', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“放学后，天空突然下雨。小美把伞借给没带伞的同桌，两人一起回家。”这段话的中心意思是？","options":["介绍天气变化","和同桌共用雨伞","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“和同桌共用雨伞”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析']::text[], '2cc017fcbac1744cf952ba03011eacd35f475056fe5a1abf074582d944c5ad3b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-039', 'chinese', 3, 1, 'choice', '{"stem":"写寻物启事时，最需要写清什么？","options":["只写自己的心情","使用很多感叹号","丢失物品的特征","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“丢失物品的特征”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析']::text[], '7be2654a49786e8230eb0ae8bee282e5494690add4a032b92c8be47a9785b759', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-040', 'chinese', 3, 1, 'choice', '{"stem":"“谁知盘中餐，粒粒皆辛苦”提醒我们？","options":["按时睡觉","爱护图书","坚持运动","珍惜粮食"],"answer":3,"explanation":"根据传统文化常识，正确答案是“珍惜粮食”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析']::text[], '35e1771bfddbc5509d31bd8baed7e51eb3e0f1e65b43dbe32f370a8f7334525e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-041', 'chinese', 3, 1, 'choice', '{"stem":"比赛结束后，队员们仍然意犹未尽。“意犹未尽”说明他们？","options":["还想继续参加","已经十分疲倦","完全没有兴趣","忘记了比赛"],"answer":0,"explanation":"结合句子内容，“还想继续参加”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析']::text[], 'b5a9f57bd9fb42a56b23a37ae5fb992d9e7662c6615c1bd5cb65c2757fde487a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-042', 'chinese', 3, 1, 'choice', '{"stem":"“小明和小东一起并肩走回家。”怎样修改更简洁？","options":["小明并肩和小东一起走回家。","小明和小东并肩走回家。","小明和小东走一起并肩回家。","一起小明和小东并肩走回家。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析']::text[], 'ade04b07d297e9b19ebf0c446bc3878739a475b83ebf3b029ca9f0ab0b789070', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-043', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“爸爸修理椅子时，小宇主动递工具，还把地上的木屑扫干净。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“小宇帮爸爸做了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析']::text[], '220d26caa0b38e78b71f5d633b85bf3d173f010c2b53fdbcec6252f4cd39e0ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-044', 'chinese', 3, 1, 'choice', '{"stem":"“太阳公公露出了笑脸。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析']::text[], '747365fba0b8a6d061a4cef6901a17d430263b344b21a5fadb5a24498aa3e11c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-045', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“爸爸修理椅子时，小宇主动递工具，还把地上的木屑扫干净。”小宇帮爸爸做了什么？","options":["递工具并清扫木屑","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“递工具并清扫木屑”。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '阅读辨析']::text[], '1c2429a21631ab79fb44bde353a7b00d78186abefae74643e3e2bfc40454a9e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-046', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“爸爸修理椅子时，小宇主动递工具，还把地上的木屑扫干净。”这段话的中心意思是？","options":["介绍天气变化","递工具并清扫木屑","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“递工具并清扫木屑”展开。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '阅读辨析']::text[], 'bee03eb58c8a044f7ee368c2b486098f722b4a76be10599a97de2b6ff2ded162', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-047', 'chinese', 3, 1, 'choice', '{"stem":"通知末尾通常要写什么？","options":["只写自己的心情","使用很多感叹号","发布单位和日期","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“发布单位和日期”。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '阅读辨析']::text[], '41110b8044b86d624ada91164fa4deedde1b7166ce58fecaeff7910044ff3dba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-048', 'chinese', 3, 1, 'choice', '{"stem":"“欲穷千里目，更上一层楼”告诉我们？","options":["下楼要慢慢走","夜晚不要出门","山路十分危险","想看得远要站得更高"],"answer":3,"explanation":"根据传统文化常识，正确答案是“想看得远要站得更高”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读辨析']::text[], '74489bfdd30114f257ad0d88b5faa6438bd3d4bb78bcee1d0dbe4a5b6b383402', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-049', 'chinese', 3, 1, 'choice', '{"stem":"老师耐心地解答每个问题。“耐心”最接近哪个意思？","options":["不急躁地坚持","大声地命令","快速地离开","安静地休息"],"answer":0,"explanation":"结合句子内容，“不急躁地坚持”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '阅读辨析']::text[], '1243c6dbf8b5fd042f2135027912a77d1dc1149a18cd905566e21feb43f27afd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-050', 'chinese', 3, 1, 'choice', '{"stem":"“读了这个故事，使我很受启发。”怎样修改？","options":["这个故事，使读了我很受启发。","读了这个故事，我很受启发。","读了使我这个故事很受启发。","我很受启发读了使这个故事。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '阅读辨析']::text[], 'd05b566177aac8ef4d198a61b5356c430ed53ad08131057b0ad361df63ab52a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-051', 'chinese', 3, 1, 'choice', '{"stem":"阅读：“小河边原来有垃圾。志愿者清理后，河岸变得干净，鸟儿也多了。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","先说问题再说办法或结果","按字数多少排列"],"answer":2,"explanation":"段落围绕“这段话主要说明什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '阅读辨析']::text[], '1c92fd7aecc439b4fd6ffccad1460b0b784195edc4505a2959674d92f40ccb1d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-052', 'chinese', 3, 1, 'choice', '{"stem":"“树上的柿子像一盏盏小灯笼。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '阅读辨析']::text[], '14bc08a7a074eacfcba125abf3130301e1980299ed0162c2668186bcd2990564', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-053', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小河边原来有垃圾。志愿者清理后，河岸变得干净，鸟儿也多了。”这段话主要说明什么？","options":["清理垃圾改善了河岸环境","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“清理垃圾改善了河岸环境”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析']::text[], '4522c630a466bf015073971bcd2325a9682d85755cd87ce5cefe6e220c3a5cf9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-054', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小河边原来有垃圾。志愿者清理后，河岸变得干净，鸟儿也多了。”这段话的中心意思是？","options":["介绍天气变化","清理垃圾改善了河岸环境","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“清理垃圾改善了河岸环境”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析']::text[], '2a0bb9fe9ab6face30ae2b19879fc785c0fe024aa448477b200b57e5fcde15f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-055', 'chinese', 3, 2, 'choice', '{"stem":"给同学留言时，应写清什么？","options":["只写自己的心情","使用很多感叹号","事情和联系方式","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“事情和联系方式”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析']::text[], '7bdb183e4ca3c5e9a2da264620c1a782b14bc7813512e79a825cecf6631ceaa0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-056', 'chinese', 3, 2, 'choice', '{"stem":"成语“守株待兔”常用来提醒人们？","options":["做事一定要快","要保护小动物","种树需要耐心","不能只靠侥幸"],"answer":3,"explanation":"根据传统文化常识，正确答案是“不能只靠侥幸”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析']::text[], '234214391942c615d482c17aa75bb2324f7aa91833ddaeb29252e0526f9c569b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-057', 'chinese', 3, 2, 'choice', '{"stem":"雾渐渐散去，远处的山清晰起来。“清晰”的意思是？","options":["看得很清楚","变得更高","颜色更深","距离更远"],"answer":0,"explanation":"结合句子内容，“看得很清楚”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析']::text[], '4a92febbb6ebe62e69cec07b7bd2fad5735f19778acfd10975eacad7cf775994', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-058', 'chinese', 3, 2, 'choice', '{"stem":"“春天的北京是一年中最美的季节。”怎样修改？","options":["春天的北京是一年中最美的地方。","北京的春天是一年中最美的季节。","北京是一年中春天最美的季节。","一年中最美的北京是春天季节。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析']::text[], 'a1b141fd9195dcf823cca554f6fd0cf90ce78fd0f305a8d7e24c7021d28c8d38', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-059', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“图书角的书常常摆放杂乱。班长给书分类贴标签后，大家找书方便多了。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","先说问题再说办法或结果","按字数多少排列"],"answer":2,"explanation":"段落围绕“班长的方法带来什么变化”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析']::text[], 'fd87733d724d836e8dd9c25480aaa3331baed865ab144a3edbcbf890fc98dd49', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-060', 'chinese', 3, 2, 'choice', '{"stem":"“花儿向我们点头。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析']::text[], '5715a9f138fbcb68c50b7e12c6b33dde6af948444fad61a12987e2b3d92a3133', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-061', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“图书角的书常常摆放杂乱。班长给书分类贴标签后，大家找书方便多了。”班长的方法带来什么变化？","options":["大家找书更方便","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“大家找书更方便”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析']::text[], '056fd62e3078ccf8bac4a80933dbd698babab21d7968113627f1e4c6b6c1c23c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-062', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“图书角的书常常摆放杂乱。班长给书分类贴标签后，大家找书方便多了。”这段话的中心意思是？","options":["介绍天气变化","大家找书更方便","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“大家找书更方便”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析']::text[], '2ffb0194d8e8c04518b34a1af0750dfbdf55160a9e16c803404fe37a4b4126a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-063', 'chinese', 3, 2, 'choice', '{"stem":"借条中必须写清什么？","options":["只写自己的心情","使用很多感叹号","所借物品或钱款数量","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“所借物品或钱款数量”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析']::text[], '6c9f91d22eed8ca279482c0ec095791ce84f5d697d3329bd7b2c3d3130b93e8c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-064', 'chinese', 3, 2, 'choice', '{"stem":"成语“刻舟求剑”说明？","options":["做标记没有用","船上不能带剑","寻找物品要靠别人","情况变化后方法也要改变"],"answer":3,"explanation":"根据传统文化常识，正确答案是“情况变化后方法也要改变”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析']::text[], '3f1b155570ac0f43b760a7c93206c37cf1309f67f5e723a72ec1bda56ff8bad0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-065', 'chinese', 3, 2, 'choice', '{"stem":"这本书的内容十分丰富。“丰富”在这里指？","options":["内容多而充实","纸张很厚","价格很高","封面漂亮"],"answer":0,"explanation":"结合句子内容，“内容多而充实”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析']::text[], 'fa0f40aabfb1c97c3181a146e66bfc193d44a70bb5dddbc2ce3c2c018c309f47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-066', 'chinese', 3, 2, 'choice', '{"stem":"“我们班取得了竞赛。”句末应补充哪个词？","options":["参加","第一名","努力","同学"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析']::text[], '96d3033a372f28f94d49661c1a26f66fa58be439ff27e029d75c8d17ca3bc965', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-067', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“蚂蚁找到食物后，会留下气味，引导伙伴沿着路线找到食物。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","围绕一个事物介绍","按字数多少排列"],"answer":2,"explanation":"段落围绕“蚂蚁怎样帮助伙伴找到食物”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析']::text[], 'f01e0e33cb9de66dd77cf8f370ebae10a7eee0d4d03347274db7cb8989d592d4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-068', 'chinese', 3, 2, 'choice', '{"stem":"“雪花像轻盈的羽毛飘落。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析']::text[], 'ea9101c15f20e04b791d5b399c48702506e1efc23801e9c2d91ae830f58d9012', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-069', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“蚂蚁找到食物后，会留下气味，引导伙伴沿着路线找到食物。”蚂蚁怎样帮助伙伴找到食物？","options":["留下气味指引路线","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“留下气味指引路线”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析']::text[], '70b19ac643f9e3eed5682b8f5be050effe5c73010fc5213fa0550dbaeefed7fa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-070', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“蚂蚁找到食物后，会留下气味，引导伙伴沿着路线找到食物。”这段话的中心意思是？","options":["介绍天气变化","留下气味指引路线","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“留下气味指引路线”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析']::text[], 'bf804e82b38558f5b37e01a046171689b2c8bab96608c363a751c21608be4c04', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-071', 'chinese', 3, 2, 'choice', '{"stem":"活动通知只写“明天集合”，主要缺少什么？","options":["只写自己的心情","使用很多感叹号","具体时间和地点","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“具体时间和地点”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析']::text[], '35e15addbeaf690bf1a4eee024af0cab1b10d3960675d868a160aa5da90330db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-072', 'chinese', 3, 2, 'choice', '{"stem":"“春眠不觉晓”的下一句是？","options":["低头思故乡","粒粒皆辛苦","更上一层楼","处处闻啼鸟"],"answer":3,"explanation":"根据传统文化常识，正确答案是“处处闻啼鸟”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析']::text[], 'de25ef5b8ae1aab128b988fc20995ba59304b7d3bb70cd847b94ed60586b91f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-073', 'chinese', 3, 2, 'choice', '{"stem":"他没有直接回答，而是委婉地说明原因。“委婉”是指？","options":["说话含蓄不生硬","说话声音很小","故意说错内容","一句话也不说"],"answer":0,"explanation":"结合句子内容，“说话含蓄不生硬”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析']::text[], 'd5787e97c7bc367b7bdddb05501b512295281a2cd75db7578878a8ccd5e18bce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-074', 'chinese', 3, 2, 'choice', '{"stem":"“公园里有许多花，有月季、菊花、松树和荷花。”应删去？","options":["月季","松树","菊花","荷花"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析']::text[], '6f423afdb0a485f33c9ee2dc7f05e0f4fbe8fc2ca05d8b82f00e6ba274475afb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-075', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“冬天，松树依然翠绿，许多落叶树却只剩光秃秃的枝条。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","围绕一个事物介绍","按字数多少排列"],"answer":2,"explanation":"段落围绕“这段话比较了什么”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析']::text[], '9ed35be081d347294ec978afb8814fc0ce9f1fba911335c637c92e411622845e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-076', 'chinese', 3, 2, 'choice', '{"stem":"“溪水一路欢笑着奔向远方。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析']::text[], 'ab5b3c23d2e85909ec604bebc02c0b92b6329aed36d0431e2672b962eb705a11', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-077', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“冬天，松树依然翠绿，许多落叶树却只剩光秃秃的枝条。”这段话比较了什么？","options":["冬天松树和落叶树的不同","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“冬天松树和落叶树的不同”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析']::text[], '9d2561f34dcaebff08a73e3abe574ef7a224f19abaf249beb4e362e46640b4d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-078', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“冬天，松树依然翠绿，许多落叶树却只剩光秃秃的枝条。”这段话的中心意思是？","options":["介绍天气变化","冬天松树和落叶树的不同","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“冬天松树和落叶树的不同”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析']::text[], '3dd93150b94474e18fcfbacd76ad43b4c261760efefde05b8468c91ff46fb02d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-079', 'chinese', 3, 2, 'choice', '{"stem":"请假条结尾“此致”下一行通常写什么？","options":["只写自己的心情","使用很多感叹号","敬礼","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“敬礼”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析']::text[], 'b0013e010924cb6d9cbf4da7f7ba4bcf6a9591cfca3701f82f124ef927e6c850', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-080', 'chinese', 3, 2, 'choice', '{"stem":"我国传统书写工具“文房四宝”不包括？","options":["笔","墨","纸","算盘"],"answer":3,"explanation":"根据传统文化常识，正确答案是“算盘”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析']::text[], '1e29dbaad9734ea93124753c841729fc55dac192e89c0cf5aba8ac175bc2e77c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-081', 'chinese', 3, 2, 'choice', '{"stem":"大家齐心协力，终于完成了任务。“齐心协力”说明大家？","options":["共同努力","各做各的","互相争吵","等待帮助"],"answer":0,"explanation":"结合句子内容，“共同努力”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析']::text[], '8ba2bc0830ab9bb3759228f38ee323e3c1624bcce04e918453e53005094ead4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-082', 'chinese', 3, 2, 'choice', '{"stem":"“他穿着一件蓝衣服和一顶帽子。”怎样修改？","options":["他穿着一件蓝衣服和戴一顶帽子。","他穿着一件蓝衣服，戴着一顶帽子。","他戴着一件蓝衣服和一顶帽子。","他穿着一顶帽子和一件蓝衣服。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '阅读辨析']::text[], '18e2e5ab05c31dd4ceb3339e7e023841bc1f843acfeab845e63a4ef64a7f6867', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-083', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小溪遇到石头就绕过去，最终流进大河。它从不停下前进的脚步。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“这段话赞美了什么精神”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '阅读辨析']::text[], '61114846a2cd07c89f6d056d9cd3906b36decfb4a3a88c0df92c53b137da9d19', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-084', 'chinese', 3, 2, 'choice', '{"stem":"“蒲公英的种子像一把把小伞。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '阅读辨析']::text[], 'ad8ab5d7d712bd2cba17b640e4c4815566fd0141f74ba518210f03549c84b308', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-085', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小溪遇到石头就绕过去，最终流进大河。它从不停下前进的脚步。”这段话赞美了什么精神？","options":["遇到困难仍坚持前进","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“遇到困难仍坚持前进”。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '阅读辨析']::text[], '32f25ad02cfa8e33c2810ea22fa802f959bdcf740b568875cd556f2cc3e3bf6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-086', 'chinese', 3, 2, 'choice', '{"stem":"阅读：“小溪遇到石头就绕过去，最终流进大河。它从不停下前进的脚步。”这段话的中心意思是？","options":["介绍天气变化","遇到困难仍坚持前进","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“遇到困难仍坚持前进”展开。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '阅读辨析']::text[], '091648b403fedd6ca8ce651a44cbcb891e0621ad626f60b16899cb384982f85b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-087', 'chinese', 3, 2, 'choice', '{"stem":"写感谢信时，正文应重点写什么？","options":["只写自己的心情","使用很多感叹号","感谢的原因","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“感谢的原因”。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '阅读辨析']::text[], '82aa332559dfe942c9c14699305e135ba5c9ad49abe382bf029eb5998089ce7e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-088', 'chinese', 3, 2, 'choice', '{"stem":"十二生肖中排在“兔”后面的是？","options":["虎","蛇","马","龙"],"answer":3,"explanation":"根据传统文化常识，正确答案是“龙”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '阅读辨析']::text[], '3c72ce01a154226871c64675961ff21d0587215f9f352f62aaef318445382c0d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-089', 'chinese', 3, 2, 'choice', '{"stem":"博物馆里的展品让我们大开眼界。“大开眼界”指？","options":["增长了见识","睁大了眼睛","感到很困倦","走到了室外"],"answer":0,"explanation":"结合句子内容，“增长了见识”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '阅读辨析']::text[], '5d4a85e097ed1653c8fe137cad3f28b36ac7fabc0ceca93c7e56720500e94dfe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-090', 'chinese', 3, 3, 'choice', '{"stem":"“听到铃声，同学们纷纷陆续走进教室。”应删去？","options":["听到","纷纷或陆续","同学们","教室"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'reason', array['全国通用', '阅读辨析']::text[], 'b603d883a0f07c880a731f84b981e40f5dd9e13446f6fc7864a3b49127bac778', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-091', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“社区设置旧衣回收箱，居民把不用的衣服洗净投放，工作人员分类后再利用。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“旧衣回收的主要作用”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'reason', array['全国通用', '阅读辨析']::text[], 'd338089c414640cc621e3498f86b121bfa5265f6cac9e29a0748fc56a5cf3eda', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-092', 'chinese', 3, 3, 'choice', '{"stem":"“星星在夜空中眨眼睛。”主要使用了哪种修辞手法？","options":["排比","反问","比喻","拟人"],"answer":3,"explanation":"句子把事物当作人来写，是拟人。"}'::jsonb, 'builtin', '修辞初步', 'reason', array['全国通用', '阅读辨析']::text[], 'cb07b63f8f1ffb2faf2a39b16d36db0d58f54430cb8aa5f71600963536da0f91', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-093', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“社区设置旧衣回收箱，居民把不用的衣服洗净投放，工作人员分类后再利用。”旧衣回收的主要作用？","options":["让闲置衣物得到再利用","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“让闲置衣物得到再利用”。"}'::jsonb, 'builtin', '人物与事件', 'reason', array['全国通用', '阅读辨析']::text[], '5e624ec8cbfe234b96f46e31be3a05dc2d68cfb4edab27714b4268cd653c5a92', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-094', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“社区设置旧衣回收箱，居民把不用的衣服洗净投放，工作人员分类后再利用。”这段话的中心意思是？","options":["介绍天气变化","让闲置衣物得到再利用","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“让闲置衣物得到再利用”展开。"}'::jsonb, 'builtin', '中心信息', 'reason', array['全国通用', '阅读辨析']::text[], '1d1f8fbe1a5fda5388cce6ab8604027cf2e02e0b8a8a491f3a4e954cd90caa36', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-095', 'chinese', 3, 3, 'choice', '{"stem":"招领启事为核对失主，不宜公开什么？","options":["只写自己的心情","使用很多感叹号","物品的全部细节","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“物品的全部细节”。"}'::jsonb, 'builtin', '应用文常识', 'reason', array['全国通用', '阅读辨析']::text[], 'd471126db558478d7e9af7d39883f01c7aa20709ab9a60b727d14fa304094f8a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-096', 'chinese', 3, 3, 'choice', '{"stem":"“桃李满天下”常用来赞美谁？","options":["医生","运动员","画家","老师"],"answer":3,"explanation":"根据传统文化常识，正确答案是“老师”。"}'::jsonb, 'builtin', '传统文化', 'reason', array['全国通用', '阅读辨析']::text[], 'b8991810a9414d6899c03f30ffce4adf5fe9648fce1f5786f84368a22addd6ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-097', 'chinese', 3, 3, 'choice', '{"stem":"面对突发情况，他仍然镇定自若。“镇定自若”说明他？","options":["沉着不慌张","十分兴奋","动作很缓慢","什么都不知道"],"answer":0,"explanation":"结合句子内容，“沉着不慌张”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'reason', array['全国通用', '阅读辨析']::text[], '68b819a61075762e1ef8f6727c6662a2a51472e10514c779fcef243ddb20808f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-098', 'chinese', 3, 3, 'choice', '{"stem":"“通过努力，让他的成绩提高了。”怎样修改？","options":["通过让努力，他的成绩提高了。","通过努力，他的成绩提高了。","他的成绩通过让努力提高了。","让他的成绩提高了通过努力。"],"answer":1,"explanation":"修改后句子成分完整、搭配恰当，也没有重复或矛盾。"}'::jsonb, 'builtin', '病句初步', 'reason', array['全国通用', '阅读辨析']::text[], '3e18040b2869de7e2b3d60669f1e545604c72cfbaa5e6cf528c0757a9cdef4f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-099', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“制作风筝要先画图，再扎骨架，接着糊纸，最后系上线。”这段话主要按什么线索组织内容？","options":["地点转换顺序","完全没有顺序","事情发展顺序","按字数多少排列"],"answer":2,"explanation":"段落围绕“制作风筝的正确顺序”展开，句子之间有清楚的先后或因果联系。"}'::jsonb, 'builtin', '段落结构', 'reason', array['全国通用', '阅读辨析']::text[], '7e7e0c6e9fa64272a03556281275135b124b11dbfc4466e8c43a8c1ff71f24e6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-100', 'chinese', 3, 3, 'choice', '{"stem":"“金黄的稻田像一片海洋。”主要使用了哪种修辞手法？","options":["排比","反问","拟人","比喻"],"answer":3,"explanation":"句子把一种事物比作另一种事物，是比喻。"}'::jsonb, 'builtin', '修辞初步', 'reason', array['全国通用', '阅读辨析']::text[], 'b67074a0f3c6274b925ca9df983921d7376f5e1b46319915d19d41f67340eeca', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-101', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“制作风筝要先画图，再扎骨架，接着糊纸，最后系上线。”制作风筝的正确顺序？","options":["画图、扎骨架、糊纸、系线","只在旁边观看","马上离开现场","什么也没有发生"],"answer":0,"explanation":"从短文中的人物行动可以找到答案：“画图、扎骨架、糊纸、系线”。"}'::jsonb, 'builtin', '人物与事件', 'reason', array['全国通用', '阅读辨析']::text[], 'ce8011e146541821c560a1e14935850d0c96e6345e0060214739c33aa8abb73d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-102', 'chinese', 3, 3, 'choice', '{"stem":"阅读：“制作风筝要先画图，再扎骨架，接着糊纸，最后系上线。”这段话的中心意思是？","options":["介绍天气变化","画图、扎骨架、糊纸、系线","描写热闹的市场","说明写字的方法"],"answer":1,"explanation":"短文中的关键句和事件都围绕“画图、扎骨架、糊纸、系线”展开。"}'::jsonb, 'builtin', '中心信息', 'reason', array['全国通用', '阅读辨析']::text[], '25554b461152b8f01944203d8c53db16832ad931d85504ef0d6d631dc64d6ede', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-103', 'chinese', 3, 3, 'choice', '{"stem":"一则通知有时间、地点却没有活动内容，应补充什么？","options":["只写自己的心情","使用很多感叹号","要做的事情","把字写得特别大"],"answer":2,"explanation":"应用文要让读者获得必要信息，本题应写清“要做的事情”。"}'::jsonb, 'builtin', '应用文常识', 'reason', array['全国通用', '阅读辨析']::text[], 'a65927697d82951e796c6dd21a3960c5429bf9e2179a70ad4864865b75394956', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-104', 'chinese', 3, 3, 'choice', '{"stem":"清明节常见的文化活动是？","options":["赏月和吃月饼","赛龙舟和包粽子","贴春联和守岁","祭扫和踏青"],"answer":3,"explanation":"根据传统文化常识，正确答案是“祭扫和踏青”。"}'::jsonb, 'builtin', '传统文化', 'reason', array['全国通用', '阅读辨析']::text[], 'bc459b8956913f51bd1a7f231b4ebb91faf9a533861f139bf2ad57b59b4f5037', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-105', 'chinese', 3, 3, 'choice', '{"stem":"这段经历令我难以忘怀。“忘怀”在句中是指？","options":["忘记","关心","回忆","记录"],"answer":0,"explanation":"结合句子内容，“忘记”最符合这个词在句中的意思。"}'::jsonb, 'builtin', '语境词义', 'reason', array['全国通用', '阅读辨析']::text[], '21816be2603132e6d6e0034378d9185036df222098bbd32912e624f6c5ea3c34', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-106', 'chinese', 3, 1, 'fill', '{"stem":"听到比赛获胜的消息，大家___地欢呼起来。（填表示非常高兴的词）","answer":"兴奋","explanation":"结合题意，填“兴奋”后语意完整、表达准确。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '语言运用']::text[], '51f2e9d77bb44fe292336cc312a53afb74aab46271bbf47c4e0ee72e0a7b66a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-107', 'chinese', 3, 1, 'fill', '{"stem":"修改病句：“我断定他可能来了。”应删去“___”。","answer":"可能","explanation":"结合题意，填“可能”后语意完整、表达准确。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '语言运用']::text[], '65ddffff77b2673607e22e42c5f3974a5f3b5fd7cd0c8193099c3c8effe240ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-108', 'chinese', 3, 1, 'fill', '{"stem":"表示事情先后顺序时，可以使用“先、接着、然后、___”等词。","answer":"最后","explanation":"结合题意，填“最后”后语意完整、表达准确。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '语言运用']::text[], '0de1b7f3c97dc06923bffb71d97559d97dc9853207d7db3ae1428bf7be72c5cd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-109', 'chinese', 3, 1, 'fill', '{"stem":"“柳树姑娘梳着长辫子”把柳树当作人来写，是___手法。","answer":"拟人","explanation":"结合题意，填“拟人”后语意完整、表达准确。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '语言运用']::text[], '40ee3d78ac746e3097f64ac577c8b8b0d0eb007ea8a7dee4bf2e7a1e35adbe15', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-110', 'chinese', 3, 1, 'fill', '{"stem":"阅读：“小军捡到钱包后交给老师。”小军做的事是___。","answer":"把钱包交给老师","explanation":"结合题意，填“把钱包交给老师”后语意完整、表达准确。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '语言运用']::text[], '0ad9c941d58d2f526febdc9ead41b20143cde3a1d0411e3f12e4e41bd27c2184', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-111', 'chinese', 3, 1, 'fill', '{"stem":"阅读：“大家分类投放垃圾，小区变得更整洁。”中心意思是垃圾分类能___环境。","answer":"改善","explanation":"结合题意，填“改善”后语意完整、表达准确。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '语言运用']::text[], 'bc9780856b34b8178ce1299e46240f94d20bf0227cfafae13a2cf3a54dccc5ae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-112', 'chinese', 3, 1, 'fill', '{"stem":"通知中要写清活动内容、时间和___。","answer":"地点","explanation":"结合题意，填“地点”后语意完整、表达准确。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '语言运用']::text[], 'e424556868e9b41f3fd0ec03461a740355e13fa6e571336245727b0021d9648d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-113', 'chinese', 3, 1, 'fill', '{"stem":"农历八月十五是___节。","answer":"中秋","explanation":"结合题意，填“中秋”后语意完整、表达准确。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '语言运用']::text[], 'e1a7019cd70ce9cea7395fefbae27d74d80e0e90221e548ab7a44fd7801ef95b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-114', 'chinese', 3, 1, 'fill', '{"stem":"“他毫不犹豫地举起手”中的“毫不犹豫”表示马上作出___。","answer":"决定","explanation":"结合题意，填“决定”后语意完整、表达准确。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '语言运用']::text[], 'bece71cdc5f6d4f5bcbb1891978b98a3cb28f4b9133e21ce00fee30e56bf4e0c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-115', 'chinese', 3, 1, 'fill', '{"stem":"修改“我们要养成讲卫生的风气”，把“风气”改为___。","answer":"习惯","explanation":"结合题意，填“习惯”后语意完整、表达准确。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '语言运用']::text[], '3c0457e7b8ba205363b2a03cdb9b7f5b23c88f1e61bf13649332489f0cb8b676', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-116', 'chinese', 3, 1, 'fill', '{"stem":"一段话围绕一个意思展开，这个主要意思常可用___句概括。","answer":"中心","explanation":"结合题意，填“中心”后语意完整、表达准确。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '语言运用']::text[], 'f767df649623360d0d3d98571d79a6ded5175c5dc082fa12d4c824f759496f33', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-117', 'chinese', 3, 2, 'fill', '{"stem":"“红红的太阳像火球”把太阳比作火球，是___。","answer":"比喻","explanation":"结合题意，填“比喻”后语意完整、表达准确。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '语言运用']::text[], '5ce7ebcce133a801ca8203417b66282bd4b92fbf55b21b8e0ff32e11ff89c0c8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-118', 'chinese', 3, 2, 'fill', '{"stem":"阅读：“妹妹把最后一块饼干留给奶奶。”这件事表现妹妹懂得___长辈。","answer":"关爱","explanation":"结合题意，填“关爱”后语意完整、表达准确。"}'::jsonb, 'builtin', '人物与事件', 'apply', array['全国通用', '语言运用']::text[], 'f8227fb753aaf9379a76f7173fce7f43d8ba3a124cfedaa00eeed1b6463e0f7b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-119', 'chinese', 3, 2, 'fill', '{"stem":"概括短文主要内容时，要抓住主要人物和主要___。","answer":"事件","explanation":"结合题意，填“事件”后语意完整、表达准确。"}'::jsonb, 'builtin', '中心信息', 'apply', array['全国通用', '语言运用']::text[], '20b04318dd7a8beee0a2f79367d7cb070cd9d68bf6f12453383e2e3539cd685c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-120', 'chinese', 3, 2, 'fill', '{"stem":"日记通常先写日期、星期和___。","answer":"天气","explanation":"结合题意，填“天气”后语意完整、表达准确。"}'::jsonb, 'builtin', '应用文常识', 'apply', array['全国通用', '语言运用']::text[], 'ccb38363eb366d330b0e9ec29d8e2894ccb400e37032ceb05c83419b034a9c4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-121', 'chinese', 3, 2, 'fill', '{"stem":"“独在异乡为异客，每逢佳节倍思亲”写的是___节。","answer":"重阳","explanation":"结合题意，填“重阳”后语意完整、表达准确。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '语言运用']::text[], '928228d475340fe7a49d116717b57047a866471b169bc616d53c11188a77d65f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-122', 'chinese', 3, 2, 'fill', '{"stem":"“会场里鸦雀无声”说明会场非常___。","answer":"安静","explanation":"结合题意，填“安静”后语意完整、表达准确。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '语言运用']::text[], 'e9d0d3172c7e7b3de036905f54fe396eea02efe0ff26dbea2c5815ed074f0e6f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-123', 'chinese', 3, 2, 'fill', '{"stem":"修改“我首先第一个到校”，应删去“首先”或“___”。","answer":"第一个","explanation":"结合题意，填“第一个”后语意完整、表达准确。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '语言运用']::text[], '38e47a917e8b02d13d132fe2c919944fcc9a142dffaf9c6aea63b0182270c1a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-124', 'chinese', 3, 3, 'fill', '{"stem":"阅读时把每个自然段的主要意思连起来，可以帮助我们概括文章___。","answer":"主要内容","explanation":"结合题意，填“主要内容”后语意完整、表达准确。"}'::jsonb, 'builtin', '段落结构', 'reason', array['全国通用', '语言运用']::text[], '5014e5fd4f1ffd65512c1d6555dc0717db57c896ac45e8c837b6e889ce35bc4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-125', 'chinese', 3, 3, 'fill', '{"stem":"“风推开了窗户”赋予风人的动作，是___手法。","answer":"拟人","explanation":"结合题意，填“拟人”后语意完整、表达准确。"}'::jsonb, 'builtin', '修辞初步', 'reason', array['全国通用', '语言运用']::text[], 'f293579d58cb390ecd2aa8f5187df835a11f29278fced642b278ff6aae91b07a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-126', 'chinese', 3, 3, 'fill', '{"stem":"请假条末尾要写请假人的姓名和___。","answer":"日期","explanation":"结合题意，填“日期”后语意完整、表达准确。"}'::jsonb, 'builtin', '应用文常识', 'reason', array['全国通用', '语言运用']::text[], '1b6efeee38fad25011e5176ac89091d46a3d44e042a84e17b0b5f6db6fb327b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-127', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：根据词语的意思，把词语和解释连起来","left":["迅速","安静","勇敢","整洁"],"right":["没有声音","不害怕","干净有序","速度快"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '语境词义', 'understand', array['全国通用', '语言运用']::text[], '6db654d05c183f16937170b7a489aad70a8ae266c19b61a493f68a64b9f97f3a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-128', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：根据常用搭配，把动词和合适的对象连起来","left":["珍惜时间","爱护公物","提高成绩","改正错误"],"right":["成绩","时间","错误","公物"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '病句初步', 'understand', array['全国通用', '语言运用']::text[], 'd9191a3f7d531793721b46dc8539fdc6b4ac8bf62af85eda3fcf17f76a478f36', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-129', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：阅读步骤提示，把顺序词和所在位置连起来","left":["先","接着","然后","最后"],"right":["第三步","第一步","结束步骤","第二步"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '段落结构', 'understand', array['全国通用', '语言运用']::text[], 'c168a78f1a9bd12d1fed4bf762bc42ca95c256be15eba9c1fe28da8d1c8b2fa6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-130', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：判断句子的表达特点，把句子和修辞手法连起来","left":["月亮像小船","花儿点头","星星眨眼","湖面像镜子"],"right":["拟人","比喻","比喻","拟人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '修辞初步', 'understand', array['全国通用', '语言运用']::text[], '4bd9ca7959e73d0d3ba1e46710349f3c61a8141c6ec3ee99e97718d539775df0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-131', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：读人物所做的事，把行为和表现出的品质连起来","left":["小明捡纸屑","小红扶老人","小刚坚持跑步","小丽借书给同学"],"right":["坚持锻炼","爱护环境","分享图书","帮助他人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '人物与事件', 'understand', array['全国通用', '语言运用']::text[], '0cc27c2728e4ebe608ac9eb70fa8ac4a2545646a4d7c05f459a7b9270008f9c8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-132', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：抓住句子重点，把内容和中心意思连起来","left":["植树让校园更绿","读书增长知识","运动使身体健康","节水保护资源"],"right":["运动的好处","植树的好处","节水的意义","读书的好处"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '中心信息', 'understand', array['全国通用', '语言运用']::text[], '7dbdf57656f08a98771be1ad3e024760130c8d28df57a9676de3e6e6582d44c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-133', 'chinese', 3, 1, 'match', '{"stem":"课堂整理：根据写作目的，把应用文名称和用途连起来","left":["通知","请假条","寻物启事","日记"],"right":["寻找丢失物品","告知活动安排","记录当天见闻","说明不能到场"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '应用文常识', 'understand', array['全国通用', '语言运用']::text[], 'b6fbff023ccff6d88be8ada4eb0ad166908ac087624c65cb3731e43ff44b26b7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-134', 'chinese', 3, 2, 'match', '{"stem":"课堂整理：根据传统节日习俗，把节日和代表活动连起来","left":["春节","端午节","中秋节","重阳节"],"right":["赏月","贴春联","登高","赛龙舟"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '语言运用']::text[], '2986c243d9236a92d2c4ec0688008180b266e6aaa45b482971ef5f95118ac358', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-135', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：根据词语的意思，把词语和解释连起来","left":["迅速","安静","勇敢","整洁"],"right":["没有声音","不害怕","干净有序","速度快"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '语境词义', 'apply', array['全国通用', '语言运用']::text[], 'c1b8d6ae5e04de501b3a63b12ae8128b8eba6a75f65640d254dc2d9c630c098c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-136', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：根据常用搭配，把动词和合适的对象连起来","left":["珍惜时间","爱护公物","提高成绩","改正错误"],"right":["成绩","时间","错误","公物"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '病句初步', 'apply', array['全国通用', '语言运用']::text[], '40cf3ce7b3c13fd28e535fc734097e37be098cadf431033286a80f0cf0654178', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-137', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：阅读步骤提示，把顺序词和所在位置连起来","left":["先","接着","然后","最后"],"right":["第三步","第一步","结束步骤","第二步"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '段落结构', 'apply', array['全国通用', '语言运用']::text[], 'd015e3a64cf45ec5001905de062e50500ec100fcd68288513358a76b9b465b14', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-138', 'chinese', 3, 2, 'match', '{"stem":"阅读实践：判断句子的表达特点，把句子和修辞手法连起来","left":["月亮像小船","花儿点头","星星眨眼","湖面像镜子"],"right":["拟人","比喻","比喻","拟人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '修辞初步', 'apply', array['全国通用', '语言运用']::text[], 'a9cce23afdf98f87e078cdd6a631c1db97b4cda768b07eb23d26cecd5346c1fb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-139', 'chinese', 3, 3, 'match', '{"stem":"阅读实践：读人物所做的事，把行为和表现出的品质连起来","left":["小明捡纸屑","小红扶老人","小刚坚持跑步","小丽借书给同学"],"right":["坚持锻炼","爱护环境","分享图书","帮助他人"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '人物与事件', 'reason', array['全国通用', '语言运用']::text[], '025b8f0ef9f6e8f20c09a7ce96849964db99095efb9af2a51ca4b516c4083dbd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-chinese-authored-140', 'chinese', 3, 3, 'match', '{"stem":"阅读实践：抓住句子重点，把内容和中心意思连起来","left":["植树让校园更绿","读书增长知识","运动使身体健康","节水保护资源"],"right":["运动的好处","植树的好处","节水的意义","读书的好处"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项理解左边内容，再选择意义准确、关系对应的右边内容。"}'::jsonb, 'builtin', '中心信息', 'reason', array['全国通用', '语言运用']::text[], 'cff3d7e8f900a942743148fe6e8fd043a2990b063c58b47692a59a75b26eb647', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-001', 'english', 3, 1, 'choice', '{"stem":"On Monday, Tom is at home with some milk. Tom likes football. Choose the sentence that correctly adds the activity at 7:00.","options":["Tom gets up at 7:00.","Tom does not have a daily plan.","Tom is asking the time.","Tom has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Tom gets up at 7:00."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], '1883f6d7ec10bc740b0e66c91280028cc0e7bbcdc7bf17a7aa50cb87f65b7943', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-002', 'english', 3, 1, 'choice', '{"stem":"On Monday, Tom is at home with some milk. Tom likes football. Complete the dialogue: —What does Tom like? —___","options":["It is 7:00.","Tom likes football.","Tom is in the home.","Today is Monday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Tom likes football.”"}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'b16cf71cf03478e0d6a302a7b8bf18af3504b7aed9950ffbdc848c9d6da047bd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-003', 'english', 3, 1, 'choice', '{"stem":"On Monday, Tom is at home with some milk. Tom likes football. Choose the correct verb: Tom ___ up at 7:00 every week.","options":["get","getsing","gets","can"],"answer":2,"explanation":"Tom is one person, so the verb in this daily routine is “gets”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], '4b0441dc3600af9494b6a950322e937474b2b851eb5d86ba03b15be92dec951e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-004', 'english', 3, 1, 'choice', '{"stem":"On Monday, Tom is at home with some milk. Tom likes football. Complete the question about the timetable: ___ does Tom do this activity? At 7:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], 'd06064aed82e72e8500fbf4e359e242c893577ebfcdcb3fd2df430725334d5cd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-005', 'english', 3, 1, 'choice', '{"stem":"On Monday, Tom is at home with some milk. Tom likes football. The activity starts at 7:00. Which expression matches this start time?","options":["7 o''clock","8 o''clock","half past 8","7 fifteen"],"answer":0,"explanation":"7:00 can be read as “7 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], 'd1a302a14b9c6c299e0006c26bedfd690f1f97bf112ceb97b88bfd939872db41', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-006', 'english', 3, 1, 'choice', '{"stem":"On Monday, Tom is at home with some milk. Tom likes football. The plan says, “Tom gets up at 7:00.” Which words name the daily activity?","options":["buys a spaceship","gets up","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“gets up” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], '93e7f30fe88fcbce06ece6e53c04d464d2e7fdfc3e8dd819ca9f025b11c368b8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-007', 'english', 3, 1, 'choice', '{"stem":"On Monday, Tom is at home with some milk. Tom likes football. Read the added note: “Tom is at home. It is 7:00. Tom has some milk and gets up.” What does Tom have?","options":["a train","a computer game","some milk","a red bike"],"answer":2,"explanation":"The text directly says that Tom has some milk."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], 'c2d803c354b8becbd9b0a496ae891351539bb885dd0ab3762621754829cae6a4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-008', 'english', 3, 1, 'choice', '{"stem":"At home, a friend helps Tom find the milk. Tom says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答']::text[], '129ec83bb5b0c0e38a992fb51f63e035114895a84cad4b725f387920a65ac270', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-009', 'english', 3, 1, 'choice', '{"stem":"On Tuesday, Lucy is in the kitchen with some bread. Lucy likes drawing. Choose the sentence that correctly adds the activity at 7:30.","options":["Lucy has breakfast at 7:30.","Lucy does not have a daily plan.","Lucy is asking the time.","Lucy has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Lucy has breakfast at 7:30."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], 'fcacde8888f1188a36e11b4e276ca0ea7a1d75ae299a73fbe3596d3c605c494f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-010', 'english', 3, 1, 'choice', '{"stem":"On Tuesday, Lucy is in the kitchen with some bread. Lucy likes drawing. Complete the dialogue: —What does Lucy like? —___","options":["It is 7:30.","Lucy likes drawing.","Lucy is in the kitchen.","Today is Tuesday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Lucy likes drawing.”"}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'd60a9b9d743ed269d2007ce700ceec27fbf18fde38f8e8205c33b34b6eb6064c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-011', 'english', 3, 1, 'choice', '{"stem":"On Tuesday, Lucy is in the kitchen with some bread. Lucy likes drawing. Choose the correct verb: Lucy ___ breakfast at 7:30 every week.","options":["have","hasing","has","can"],"answer":2,"explanation":"Lucy is one person, so the verb in this daily routine is “has”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], 'a67415605b8f655609888833cea4702503bab636d9e56812d19eae52ced3de9a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-012', 'english', 3, 1, 'choice', '{"stem":"On Tuesday, Lucy is in the kitchen with some bread. Lucy likes drawing. Complete the question about the timetable: ___ does Lucy do this activity? At 7:30.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '9f539fdef3ff20cde5cabfb3ed473fd9d82b6e7e56a3394f59b1def3a13944e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-013', 'english', 3, 1, 'choice', '{"stem":"On Tuesday, Lucy is in the kitchen with some bread. Lucy likes drawing. The activity starts at 7:30. Which expression matches this start time?","options":["half past 7","8 o''clock","half past 8","7 fifteen"],"answer":0,"explanation":"7:30 can be read as “half past 7”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], 'e4d2b6e4d25cd05e0eb8cdabfba080a1b93c548be5832f54e562a88c7e29504a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-014', 'english', 3, 1, 'choice', '{"stem":"On Tuesday, Lucy is in the kitchen with some bread. Lucy likes drawing. The plan says, “Lucy has breakfast at 7:30.” Which words name the daily activity?","options":["buys a spaceship","has breakfast","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“has breakfast” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], 'd165d065a8176b1ced52e203c885e53038f1dfe5f871c8d5d343fca88d6e8fe5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-015', 'english', 3, 1, 'choice', '{"stem":"On Tuesday, Lucy is in the kitchen with some bread. Lucy likes drawing. Read the added note: “Lucy is in the kitchen. It is 7:30. Lucy has some bread and has breakfast.” What does Lucy have?","options":["a train","a computer game","some bread","a red bike"],"answer":2,"explanation":"The text directly says that Lucy has some bread."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], '0ee4a5111f2fc01bfc7b33bdaa81a011c1bf16676321a906e0fce454104c0905', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-016', 'english', 3, 1, 'choice', '{"stem":"In the kitchen, a friend helps Lucy find the bread. Lucy says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答']::text[], 'd29a1e3a6a20a3497f4c969a3ade6eb59f5326b9b8e53676b628b069744f3cb0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-017', 'english', 3, 1, 'choice', '{"stem":"On Wednesday, Mike is at school with a book. Mike likes reading. Choose the sentence that correctly adds the activity at 8:00.","options":["Mike goes to school at 8:00.","Mike does not have a daily plan.","Mike is asking the time.","Mike has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Mike goes to school at 8:00."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], '9d1c9cbe1b9e91ebc3342bc68ed1d7d9f1ac36a60cd6835726602b46690084c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-018', 'english', 3, 1, 'choice', '{"stem":"On Wednesday, Mike is at school with a book. Mike likes reading. Complete the dialogue: —What does Mike like? —___","options":["It is 8:00.","Mike likes reading.","Mike is in the school.","Today is Wednesday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Mike likes reading.”"}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'c28d4397e87f00a39dd08cbd2542b86c76e645fe38f1fe743f88f552df57dea2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-019', 'english', 3, 1, 'choice', '{"stem":"On Wednesday, Mike is at school with a book. Mike likes reading. Choose the correct verb: Mike ___ to school at 8:00 every week.","options":["go","goesing","goes","can"],"answer":2,"explanation":"Mike is one person, so the verb in this daily routine is “goes”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], '7fc84684d2f28024c87e495d24f639e8e68fa4dcea9fa01cc0fb5dc39b61e418', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-020', 'english', 3, 1, 'choice', '{"stem":"On Wednesday, Mike is at school with a book. Mike likes reading. Complete the question about the timetable: ___ does Mike do this activity? At 8:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '9fa625cb331ca8558ec1f2935076aaae878d732f41a69f42788058791adcf2b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-021', 'english', 3, 1, 'choice', '{"stem":"On Wednesday, Mike is at school with a book. Mike likes reading. The activity starts at 8:00. Which expression matches this start time?","options":["8 o''clock","9 o''clock","half past 9","8 fifteen"],"answer":0,"explanation":"8:00 can be read as “8 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], '7f61a0e418598a7a292316c89c09e6b8abb1b9d81692f1fa3a1988db370fab8d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-022', 'english', 3, 1, 'choice', '{"stem":"On Wednesday, Mike is at school with a book. Mike likes reading. The plan says, “Mike goes to school at 8:00.” Which words name the daily activity?","options":["buys a spaceship","goes to school","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“goes to school” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], 'c5ba9753393fda279590d068c681754a1b3423ab176f9b4649bb668c0043f53e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-023', 'english', 3, 1, 'choice', '{"stem":"On Wednesday, Mike is at school with a book. Mike likes reading. Read the added note: “Mike is at school. It is 8:00. Mike has a book and goes to school.” What does Mike have?","options":["a train","a computer game","a book","a red bike"],"answer":2,"explanation":"The text directly says that Mike has a book."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], '0cd0820761b9377d7b7b74a4f9cf0cb4b7179e77534a0f7140fe30e86d8b0c42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-024', 'english', 3, 1, 'choice', '{"stem":"At school, a friend helps Mike find the book. Mike says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答']::text[], 'd963aded3ad1619e4e08f65c108f467f73c7888d422fbe7376c4e3c09a79e96a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-025', 'english', 3, 1, 'choice', '{"stem":"On Thursday, Amy is in the classroom with a pencil. Amy likes English. Choose the sentence that correctly adds the activity at 9:00.","options":["Amy has an English class at 9:00.","Amy does not have a daily plan.","Amy is asking the time.","Amy has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Amy has an English class at 9:00."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], '604a4e1abb6ec72057a7f10c1717b8ba1d736b575e71974f9f6502a9479754b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-026', 'english', 3, 1, 'choice', '{"stem":"On Thursday, Amy is in the classroom with a pencil. Amy likes English. Complete the dialogue: —What does Amy like? —___","options":["It is 9:00.","Amy likes English.","Amy is in the classroom.","Today is Thursday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Amy likes English.”"}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'bf46982b8c894f0d755b8bf9bf79bd5b00c108713497e9476474b1a70df40141', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-027', 'english', 3, 1, 'choice', '{"stem":"On Thursday, Amy is in the classroom with a pencil. Amy likes English. Choose the correct verb: Amy ___ an English class at 9:00 every week.","options":["have","hasing","has","can"],"answer":2,"explanation":"Amy is one person, so the verb in this daily routine is “has”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], '64875d30df2f959b8839ceda2e4d95a92261dafcf5c4a70b37a5ce880e1a197a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-028', 'english', 3, 1, 'choice', '{"stem":"On Thursday, Amy is in the classroom with a pencil. Amy likes English. Complete the question about the timetable: ___ does Amy do this activity? At 9:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '8caf36a8bc5c0d411561118cde3486ea7301ca047e1e09f4a7a8994c444a0d35', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-029', 'english', 3, 1, 'choice', '{"stem":"On Thursday, Amy is in the classroom with a pencil. Amy likes English. The activity starts at 9:00. Which expression matches this start time?","options":["9 o''clock","10 o''clock","half past 10","9 fifteen"],"answer":0,"explanation":"9:00 can be read as “9 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], '305eed2c116efa03a01901d93ae1265087cba30fa486190d946bcc7d93ade0a8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-030', 'english', 3, 1, 'choice', '{"stem":"On Thursday, Amy is in the classroom with a pencil. Amy likes English. The plan says, “Amy has an English class at 9:00.” Which words name the daily activity?","options":["buys a spaceship","has an English class","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“has an English class” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], '50e5427d6f9daf764435e87a0842e74ea0d8b5ab91ce3da5a548122206d87e14', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-031', 'english', 3, 1, 'choice', '{"stem":"On Thursday, Amy is in the classroom with a pencil. Amy likes English. Read the added note: “Amy is in the classroom. It is 9:00. Amy has a pencil and has an English class.” What does Amy have?","options":["a train","a computer game","a pencil","a red bike"],"answer":2,"explanation":"The text directly says that Amy has a pencil."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], 'c41a85e81145a66c6f3beabd87d6326d6e5d914214f98481d75ef53a1186bb2d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-032', 'english', 3, 1, 'choice', '{"stem":"In the classroom, a friend helps Amy find the pencil. Amy says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答']::text[], 'dd05bcc86e4fac7f2bacb56c3d7a868269e5427a12819a540f6a153f35173942', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-033', 'english', 3, 1, 'choice', '{"stem":"On Friday, Jack is in the playground with a ball. Jack likes basketball. Choose the sentence that correctly adds the activity at 10:00.","options":["Jack plays basketball at 10:00.","Jack does not have a daily plan.","Jack is asking the time.","Jack has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Jack plays basketball at 10:00."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], 'b648471477a44902ec7e6bc5cb656e2b3f82c56dc0e41d9a6b3236b3a0306339', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-034', 'english', 3, 1, 'choice', '{"stem":"On Friday, Jack is in the playground with a ball. Jack likes basketball. Complete the dialogue: —What does Jack like? —___","options":["It is 10:00.","Jack likes basketball.","Jack is in the playground.","Today is Friday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Jack likes basketball.”"}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'a1cce8de580d723222e0863cf560f47f7d304783537aa1364d77da92b49ac69f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-035', 'english', 3, 1, 'choice', '{"stem":"On Friday, Jack is in the playground with a ball. Jack likes basketball. Choose the correct verb: Jack ___ basketball at 10:00 every week.","options":["play","playsing","plays","can"],"answer":2,"explanation":"Jack is one person, so the verb in this daily routine is “plays”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], '20422c4b5973ed37d553d0534e107a61c95d64339485d2268a2ba33d05512052', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-036', 'english', 3, 1, 'choice', '{"stem":"On Friday, Jack is in the playground with a ball. Jack likes basketball. Complete the question about the timetable: ___ does Jack do this activity? At 10:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '9de90748cc10dae4cfb8778dd83940daa3f6546c423af94bbacc89014335e60d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-037', 'english', 3, 1, 'choice', '{"stem":"On Friday, Jack is in the playground with a ball. Jack likes basketball. The activity starts at 10:00. Which expression matches this start time?","options":["10 o''clock","11 o''clock","half past 11","10 fifteen"],"answer":0,"explanation":"10:00 can be read as “10 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], '6f5155cefec62c2df1a6b490400a2b43369a73eb7c8523b59e08fa6131f18fad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-038', 'english', 3, 1, 'choice', '{"stem":"On Friday, Jack is in the playground with a ball. Jack likes basketball. The plan says, “Jack plays basketball at 10:00.” Which words name the daily activity?","options":["buys a spaceship","plays basketball","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“plays basketball” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], '342e8623daef5ffb7d559c664cb6cfc8e6ab52f0f74d11a4e60fdba969f8ec59', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-039', 'english', 3, 1, 'choice', '{"stem":"On Friday, Jack is in the playground with a ball. Jack likes basketball. Read the added note: “Jack is in the playground. It is 10:00. Jack has a ball and plays basketball.” What does Jack have?","options":["a train","a computer game","a ball","a red bike"],"answer":2,"explanation":"The text directly says that Jack has a ball."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], '3ea96c34256919e88f80cc57f3e3883a50ff00af2d0f6351ec429013203d95cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-040', 'english', 3, 1, 'choice', '{"stem":"In the playground, a friend helps Jack find the ball. Jack says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答']::text[], 'b32c4d751055ba8593638272b27e9435ebf229ac7b2adca479ba2421cd8b870e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-041', 'english', 3, 1, 'choice', '{"stem":"On Saturday, Lily is in the dining room with some rice. Lily likes cooking. Choose the sentence that correctly adds the activity at 12:00.","options":["Lily has lunch at 12:00.","Lily does not have a daily plan.","Lily is asking the time.","Lily has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Lily has lunch at 12:00."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], 'ca72c1a145febff83f48ad5bc70b3cd168c179976083bbc3e835b2af020baa70', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-042', 'english', 3, 1, 'choice', '{"stem":"On Saturday, Lily is in the dining room with some rice. Lily likes cooking. Complete the dialogue: —What does Lily like? —___","options":["It is 12:00.","Lily likes cooking.","Lily is in the dining room.","Today is Saturday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Lily likes cooking.”"}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'e4210b27ce45f6be55ec552540c0b52856f9efce7cdc33e92cdb1892e6579bd7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-043', 'english', 3, 1, 'choice', '{"stem":"On Saturday, Lily is in the dining room with some rice. Lily likes cooking. Choose the correct verb: Lily ___ lunch at 12:00 every week.","options":["have","hasing","has","can"],"answer":2,"explanation":"Lily is one person, so the verb in this daily routine is “has”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], 'b10f98cc21beffa8cf11686d503a9a8d0b12675e9c3a560f65aadc90d8560556', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-044', 'english', 3, 1, 'choice', '{"stem":"On Saturday, Lily is in the dining room with some rice. Lily likes cooking. Complete the question about the timetable: ___ does Lily do this activity? At 12:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '23c8142074aa2b87b379f4d8c12174f4fb01ff341b75c7e405f943c27ef664b5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-045', 'english', 3, 1, 'choice', '{"stem":"On Saturday, Lily is in the dining room with some rice. Lily likes cooking. The activity starts at 12:00. Which expression matches this start time?","options":["12 o''clock","13 o''clock","half past 13","12 fifteen"],"answer":0,"explanation":"12:00 can be read as “12 o''clock”."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], 'a4c7f1a69da661e9998219da887771cf568cec17d310ec75793320a6c11dc8b7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-046', 'english', 3, 1, 'choice', '{"stem":"On Saturday, Lily is in the dining room with some rice. Lily likes cooking. The plan says, “Lily has lunch at 12:00.” Which words name the daily activity?","options":["buys a spaceship","has lunch","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“has lunch” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], '74df3dda4200becb524c981d8fe151994e343977a696eaf80c33b56b68e01f88', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-047', 'english', 3, 1, 'choice', '{"stem":"On Saturday, Lily is in the dining room with some rice. Lily likes cooking. Read the added note: “Lily is in the dining room. It is 12:00. Lily has some rice and has lunch.” What does Lily have?","options":["a train","a computer game","some rice","a red bike"],"answer":2,"explanation":"The text directly says that Lily has some rice."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], 'a48f3e13ec9d987c3af5eb5b73588f4a0cc2aa08d6b4a33075abe1f7068b7069', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-048', 'english', 3, 1, 'choice', '{"stem":"In the dining room, a friend helps Lily find the rice. Lily says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答']::text[], '69e19b0f7df8f1fd5ee468f4308bd90933c9a30e9ac11721b416363f570732d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-049', 'english', 3, 1, 'choice', '{"stem":"On Sunday, Peter is in the park with a kite. Peter likes kites. Choose the sentence that correctly adds the activity at 3:00.","options":["Peter flies a kite at 3:00.","Peter does not have a daily plan.","Peter is asking the time.","Peter has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Peter flies a kite at 3:00."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], '831dae1d4aa1759821c9ab3accf693b09cbd71c344246420f7779cc101073230', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-050', 'english', 3, 1, 'choice', '{"stem":"On Sunday, Peter is in the park with a kite. Peter likes kites. Complete the dialogue: —What does Peter like? —___","options":["It is 3:00.","Peter likes kites.","Peter is in the park.","Today is Sunday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Peter likes kites.”"}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], '94200ae7bbd5141cd0f097757d88ec6bebbe7c1feb05af645a06a8c92c89e707', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-051', 'english', 3, 1, 'choice', '{"stem":"On Sunday, Peter is in the park with a kite. Peter likes kites. Choose the correct verb: Peter ___ a kite at 3:00 every week.","options":["fly","fliesing","flies","can"],"answer":2,"explanation":"Peter is one person, so the verb in this daily routine is “flies”."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], 'df28733a8e2da4bbcad91baddbd1f73203405758fe14353e21f19e9cc7e9baee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-052', 'english', 3, 1, 'choice', '{"stem":"On Sunday, Peter is in the park with a kite. Peter likes kites. Complete the question about the timetable: ___ does Peter do this activity? At 3:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '52f726ee5e40c98146e0e361eea6673cac4b82a7091a8443d952724f221162fb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-053', 'english', 3, 2, 'choice', '{"stem":"On Sunday, Peter is in the park with a kite. Peter likes kites. The activity starts at 3:00. Which expression matches this start time?","options":["3 o''clock","4 o''clock","half past 4","3 fifteen"],"answer":0,"explanation":"3:00 can be read as “3 o''clock”."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答']::text[], 'e6fbe11b397197724fbb6c50a2e264d9c55c8e529e51b1262dc4b183c0eb967b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-054', 'english', 3, 2, 'choice', '{"stem":"On Sunday, Peter is in the park with a kite. Peter likes kites. The plan says, “Peter flies a kite at 3:00.” Which words name the daily activity?","options":["buys a spaceship","flies a kite","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“flies a kite” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答']::text[], 'bce4cf2c4b13192c87a987a325d823682d7b9f80eb5db377998f03b249889c1e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-055', 'english', 3, 2, 'choice', '{"stem":"On Sunday, Peter is in the park with a kite. Peter likes kites. Read the added note: “Peter is in the park. It is 3:00. Peter has a kite and flies a kite.” What does Peter have?","options":["a train","a computer game","a kite","a red bike"],"answer":2,"explanation":"The text directly says that Peter has a kite."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答']::text[], '3c33c3eea86594c32c173556a7d94c32206ce73daa18d6f4f900faa8af00bd14', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-056', 'english', 3, 2, 'choice', '{"stem":"In the park, a friend helps Peter find the kite. Peter says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答']::text[], '7f291fb240b6d794fc9d36ec1f152ac9a0715a6a709119fe39dfc7c7ccf88e16', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-057', 'english', 3, 2, 'choice', '{"stem":"On Monday, Kate is in the study with a ruler. Kate likes maths. Choose the sentence that correctly adds the activity at 4:00.","options":["Kate does her homework at 4:00.","Kate does not have a daily plan.","Kate is asking the time.","Kate has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Kate does her homework at 4:00."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答']::text[], '8bcf46bcb0ac672d361c2db34dc203c724c8434afe4376087386031d19ab6e09', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-058', 'english', 3, 2, 'choice', '{"stem":"On Monday, Kate is in the study with a ruler. Kate likes maths. Complete the dialogue: —What does Kate like? —___","options":["It is 4:00.","Kate likes maths.","Kate is in the study.","Today is Monday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Kate likes maths.”"}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答']::text[], 'e9f2b65a5d68d343785ad874c506627bf235a279832e540dcde27af7425ad045', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-059', 'english', 3, 2, 'choice', '{"stem":"On Monday, Kate is in the study with a ruler. Kate likes maths. Choose the correct verb: Kate ___ her homework at 4:00 every week.","options":["do","doesing","does","can"],"answer":2,"explanation":"Kate is one person, so the verb in this daily routine is “does”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答']::text[], '01d6778af83e8a90472fa377e4c3ef3099b8356aed7caa8abc6875eac3496313', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-060', 'english', 3, 2, 'choice', '{"stem":"On Monday, Kate is in the study with a ruler. Kate likes maths. Complete the question about the timetable: ___ does Kate do this activity? At 4:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答']::text[], 'f0b4356a96de07e08075519ab9db0c9bee702cf2ced54162f5dc266247dc9a12', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-061', 'english', 3, 2, 'choice', '{"stem":"On Monday, Kate is in the study with a ruler. Kate likes maths. The activity starts at 4:00. Which expression matches this start time?","options":["4 o''clock","5 o''clock","half past 5","4 fifteen"],"answer":0,"explanation":"4:00 can be read as “4 o''clock”."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答']::text[], '92c8e4a5c15e3dc9c1cae3efee6efeb430769bf09a195f1d65263546fe89c636', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-062', 'english', 3, 2, 'choice', '{"stem":"On Monday, Kate is in the study with a ruler. Kate likes maths. The plan says, “Kate does her homework at 4:00.” Which words name the daily activity?","options":["buys a spaceship","does her homework","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“does her homework” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答']::text[], 'e2f80d6e3f03382fd0948d7fe91bba57152de5b908ea6db45867841470004348', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-063', 'english', 3, 2, 'choice', '{"stem":"On Monday, Kate is in the study with a ruler. Kate likes maths. Read the added note: “Kate is in the study. It is 4:00. Kate has a ruler and does her homework.” What does Kate have?","options":["a train","a computer game","a ruler","a red bike"],"answer":2,"explanation":"The text directly says that Kate has a ruler."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答']::text[], '1080fd0b12bee3f2f8e8f963b6e125bfe3517ff46a533755e704578a49acd4a8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-064', 'english', 3, 2, 'choice', '{"stem":"In the study, a friend helps Kate find the ruler. Kate says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答']::text[], '4b085c090086a686cb959c5eca8bc6278242ab15005eab40822dc43551a5fb49', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-065', 'english', 3, 2, 'choice', '{"stem":"On Tuesday, Sam is in the garden with some water. Sam likes plants. Choose the sentence that correctly adds the activity at 5:00.","options":["Sam waters the flowers at 5:00.","Sam does not have a daily plan.","Sam is asking the time.","Sam has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Sam waters the flowers at 5:00."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答']::text[], '4645f861f2ad990e3410f1725d34945c4a191ab248a12e0509ef10794e71184b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-066', 'english', 3, 2, 'choice', '{"stem":"On Tuesday, Sam is in the garden with some water. Sam likes plants. Complete the dialogue: —What does Sam like? —___","options":["It is 5:00.","Sam likes plants.","Sam is in the garden.","Today is Tuesday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Sam likes plants.”"}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答']::text[], '0c711622d0870f1bfa7949ed7552fe333dae3b2686e01c561279ff1ec2b37a31', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-067', 'english', 3, 2, 'choice', '{"stem":"On Tuesday, Sam is in the garden with some water. Sam likes plants. Choose the correct verb: Sam ___ the flowers at 5:00 every week.","options":["water","watersing","waters","can"],"answer":2,"explanation":"Sam is one person, so the verb in this daily routine is “waters”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答']::text[], '5598f7fb0184653f1f92d347cba5cb4606e9bfc2c12fd81087b8b58d3a54ee48', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-068', 'english', 3, 2, 'choice', '{"stem":"On Tuesday, Sam is in the garden with some water. Sam likes plants. Complete the question about the timetable: ___ does Sam do this activity? At 5:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答']::text[], 'f079b2f20f32527f4291bd74dcc133ea453987ac9460695c8a21d74618a3181a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-069', 'english', 3, 2, 'choice', '{"stem":"On Tuesday, Sam is in the garden with some water. Sam likes plants. The activity starts at 5:00. Which expression matches this start time?","options":["5 o''clock","6 o''clock","half past 6","5 fifteen"],"answer":0,"explanation":"5:00 can be read as “5 o''clock”."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答']::text[], 'ecb748f51b0da95b19f23b344d16a6f24d1309368ad219ad484d9caca04ba561', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-070', 'english', 3, 2, 'choice', '{"stem":"On Tuesday, Sam is in the garden with some water. Sam likes plants. The plan says, “Sam waters the flowers at 5:00.” Which words name the daily activity?","options":["buys a spaceship","waters the flowers","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“waters the flowers” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答']::text[], 'a51e9f4e334881415b214774cc701fe00f3df05ec288788809bc378346aac69d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-071', 'english', 3, 2, 'choice', '{"stem":"On Tuesday, Sam is in the garden with some water. Sam likes plants. Read the added note: “Sam is in the garden. It is 5:00. Sam has some water and waters the flowers.” What does Sam have?","options":["a train","a computer game","some water","a red bike"],"answer":2,"explanation":"The text directly says that Sam has some water."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答']::text[], 'ffe7cf3e0a898b49482a74bb41887392822c415e6382963007635a3860924e1f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-072', 'english', 3, 2, 'choice', '{"stem":"In the garden, a friend helps Sam find the water. Sam says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答']::text[], '74ce0f45d253a66b06096208b7833c3ae22260a1b0a57f20a0133ed80e659c4d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-073', 'english', 3, 2, 'choice', '{"stem":"On Wednesday, Anna is in the street with a dog. Anna likes animals. Choose the sentence that correctly adds the activity at 6:00.","options":["Anna walks her dog at 6:00.","Anna does not have a daily plan.","Anna is asking the time.","Anna has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Anna walks her dog at 6:00."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答']::text[], '11f7452b64b151da55d5aa5ba8551c09dbef89601b127f1d74daa9b823ee055a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-074', 'english', 3, 2, 'choice', '{"stem":"On Wednesday, Anna is in the street with a dog. Anna likes animals. Complete the dialogue: —What does Anna like? —___","options":["It is 6:00.","Anna likes animals.","Anna is in the street.","Today is Wednesday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Anna likes animals.”"}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答']::text[], 'a2731028d46a39788bded2c469ab006d68872dfdd11d3d4591e7210c17ac36dc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-075', 'english', 3, 2, 'choice', '{"stem":"On Wednesday, Anna is in the street with a dog. Anna likes animals. Choose the correct verb: Anna ___ her dog at 6:00 every week.","options":["walk","walksing","walks","can"],"answer":2,"explanation":"Anna is one person, so the verb in this daily routine is “walks”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答']::text[], '16945a657cf729247dddcc15d4118cfc56662c2065f22159f75d5839645af6bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-076', 'english', 3, 2, 'choice', '{"stem":"On Wednesday, Anna is in the street with a dog. Anna likes animals. Complete the question about the timetable: ___ does Anna do this activity? At 6:00.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答']::text[], '719298d2ecd85b5d1b782f54dab01880223df4869f1d862a29351ebb733fa556', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-077', 'english', 3, 2, 'choice', '{"stem":"On Wednesday, Anna is in the street with a dog. Anna likes animals. The activity starts at 6:00. Which expression matches this start time?","options":["6 o''clock","7 o''clock","half past 7","6 fifteen"],"answer":0,"explanation":"6:00 can be read as “6 o''clock”."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答']::text[], 'a4cadad8e52ca520c9b2a21e238c5e9bef541a39b8faed9d03f504ad71c5a404', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-078', 'english', 3, 2, 'choice', '{"stem":"On Wednesday, Anna is in the street with a dog. Anna likes animals. The plan says, “Anna walks her dog at 6:00.” Which words name the daily activity?","options":["buys a spaceship","walks her dog","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“walks her dog” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答']::text[], 'd2115392636de672ec81cbe1f84e1eed013b24e65a3d7157a02eb6a8880e168d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-079', 'english', 3, 2, 'choice', '{"stem":"On Wednesday, Anna is in the street with a dog. Anna likes animals. Read the added note: “Anna is in the street. It is 6:00. Anna has a dog and walks her dog.” What does Anna have?","options":["a train","a computer game","a dog","a red bike"],"answer":2,"explanation":"The text directly says that Anna has a dog."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答']::text[], 'dfcb90f999ef1904c9a9e7f82013e9ec22e3d71fe326811d20dc07c8167317d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-080', 'english', 3, 2, 'choice', '{"stem":"In the street, a friend helps Anna find the dog. Anna says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答']::text[], 'bbaf773923a0eef8894698f47ca1c09dcca89e84e5fceca17e9d52d1d8812610', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-081', 'english', 3, 2, 'choice', '{"stem":"On Thursday, Ben is in the kitchen with a plate. Ben likes helping. Choose the sentence that correctly adds the activity at 6:30.","options":["Ben helps his mother at 6:30.","Ben does not have a daily plan.","Ben is asking the time.","Ben has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Ben helps his mother at 6:30."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答']::text[], 'efadbaa604df9788b9db2a546c157f1b6084967e7bafe4285cb7799f965d53d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-082', 'english', 3, 2, 'choice', '{"stem":"On Thursday, Ben is in the kitchen with a plate. Ben likes helping. Complete the dialogue: —What does Ben like? —___","options":["It is 6:30.","Ben likes helping.","Ben is in the kitchen.","Today is Thursday."],"answer":1,"explanation":"The question asks about a preference, so the answer is “Ben likes helping.”"}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答']::text[], 'daeefc40b196ff57b1c3b44449729be1182bb98cac5db65fc0a1af2d75eb6c75', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-083', 'english', 3, 2, 'choice', '{"stem":"On Thursday, Ben is in the kitchen with a plate. Ben likes helping. Choose the correct verb: Ben ___ his mother at 6:30 every week.","options":["help","helpsing","helps","can"],"answer":2,"explanation":"Ben is one person, so the verb in this daily routine is “helps”."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答']::text[], '18f5c9b368cfe8dab925f363d50ee4a75dca5bcd36f0672718a92b76cc2948c2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-084', 'english', 3, 2, 'choice', '{"stem":"On Thursday, Ben is in the kitchen with a plate. Ben likes helping. Complete the question about the timetable: ___ does Ben do this activity? At 6:30.","options":["Where","Who","What colour","When"],"answer":3,"explanation":"The answer gives a time, so the question word is “When”."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答']::text[], '44b9d52f259e7a75baab6bbd76d8e7cf9c6069dcb6379ec13e651e292752d134', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-085', 'english', 3, 2, 'choice', '{"stem":"On Thursday, Ben is in the kitchen with a plate. Ben likes helping. The activity starts at 6:30. Which expression matches this start time?","options":["half past 6","7 o''clock","half past 7","6 fifteen"],"answer":0,"explanation":"6:30 can be read as “half past 6”."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答']::text[], '069a656a3de1aa22727feef9386cc2a3a5315865775cb3e5c5ea20e0e9fce7f7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-086', 'english', 3, 2, 'choice', '{"stem":"On Thursday, Ben is in the kitchen with a plate. Ben likes helping. The plan says, “Ben helps his mother at 6:30.” Which words name the daily activity?","options":["buys a spaceship","helps his mother","finds a dinosaur","visits the moon"],"answer":1,"explanation":"“helps his mother” is the activity stated in the sentence."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答']::text[], '2d66b1646ace57b669531f6ead7e3e8eaee90a863ed0776911751d3761e80a34', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-087', 'english', 3, 2, 'choice', '{"stem":"On Thursday, Ben is in the kitchen with a plate. Ben likes helping. Read the added note: “Ben is in the kitchen. It is 6:30. Ben has a plate and helps his mother.” What does Ben have?","options":["a train","a computer game","a plate","a red bike"],"answer":2,"explanation":"The text directly says that Ben has a plate."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答']::text[], '601dd523ca36009aab3552da69780d35413d3cecce6fa310c2ea0e2a52ac52f3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-088', 'english', 3, 2, 'choice', '{"stem":"In the kitchen, a friend helps Ben find the plate. Ben says, “Thank you.” What is the best reply?","options":["Good night.","Here you are?","I am ten.","You are welcome."],"answer":3,"explanation":"“You are welcome.” is a polite reply to “Thank you.”"}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答']::text[], 'b07a22f85299e976aabba649be84fc6e9c44bfb0d6ca208ac175b1d8d6447fd3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-089', 'english', 3, 2, 'choice', '{"stem":"On Friday, Grace is in the bedroom with a storybook. Grace likes stories. Choose the sentence that correctly adds the activity at 7:00.","options":["Grace reads a story at 7:00.","Grace does not have a daily plan.","Grace is asking the time.","Grace has no activity today."],"answer":0,"explanation":"The sentence tells us who does the activity and when: Grace reads a story at 7:00."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答']::text[], '2ca9426043773e02bf6e891a49eaf3b8f29956060ff71afd1a245d3b59593e61', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-090', 'english', 3, 3, 'choice', '{"stem":"Read: “Grace cannot find the storybook. A friend points to it.” —Thank you for helping me. —___","options":["I do not know your name.","You are welcome. It is over there.","Good night. I am sleeping.","It is Monday yesterday."],"answer":1,"explanation":"The reply is polite and continues the situation by showing where the item is."}'::jsonb, 'builtin', '短对话', 'reason', array['全国通用', '文字可作答']::text[], '791d1c01348bcd8621ae8635f88d7a41e84dd4527bb8ec5a2ce2f5df26177fdf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-091', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom with a storybook. Grace likes stories. Complete both facts: Grace ___ a story at 7:00 and likes stories.","options":["read","reading","reads","are"],"answer":2,"explanation":"The subject is one person, so “reads” completes the regular activity."}'::jsonb, 'builtin', '一般现在时', 'reason', array['全国通用', '文字可作答']::text[], '5354eabea7c4133981520704f819d5be227206733fea4f192766d14fa2ad1f8c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-092', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom with a storybook. Grace likes stories. Read the schedule line: “Grace is in the bedroom at 7:00.” Which pair of question words asks about the place and then the time?","options":["Who; What","When; Where","How many; What colour","Where; When"],"answer":3,"explanation":"“Where” asks about a place; “When” asks about a time."}'::jsonb, 'builtin', '疑问词', 'reason', array['全国通用', '文字可作答']::text[], '7a4ea23e666570adcc725f106c77244f9fd22fde1b08f8fd335bbf07f3497d2d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-093', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom for the stories activity. It starts at 7:00 and finishes 30 minutes later. When does it finish?","options":["7:30","7:00","8:30","7:15"],"answer":0,"explanation":"Thirty minutes after 7:00 is 7:30."}'::jsonb, 'builtin', '时间表达', 'reason', array['全国通用', '文字可作答']::text[], '82d4ae51669bece0d30bbe46631ff19d610d2cb4b435e3d6a05b0ef4eda73ffb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-094', 'english', 3, 3, 'choice', '{"stem":"Read the plan: “First Grace packs the bag. Then Grace reads a story. After that, Grace reads.” What happens second?","options":["packs the bag","reads a story","reads","goes to sleep before everything"],"answer":1,"explanation":"The order word “Then” introduces the second activity: reads a story."}'::jsonb, 'builtin', '日常活动', 'reason', array['全国通用', '文字可作答']::text[], '499833893252962bbf23865cb024241b4aacaffe4db80d95c5a549dffd629cd3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-095', 'english', 3, 3, 'choice', '{"stem":"Read: “On Friday, Grace is in the bedroom with a storybook. Grace likes stories. At 7:00, Grace reads a story.” Which two facts are both true?","options":["Grace is on a train and has a bike.","Grace dislikes stories and loses everything.","Grace likes stories and has a storybook.","Grace is at the zoo at midnight."],"answer":2,"explanation":"Both facts are directly stated in the text."}'::jsonb, 'builtin', '显性信息', 'reason', array['全国通用', '文字可作答']::text[], 'ae4102a8345f7644d8264a16fd1a58870fda60b78f5558df66cd1932194cba6c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-096', 'english', 3, 3, 'choice', '{"stem":"On Friday, Grace is in the bedroom before reads a story. Grace needs the storybook, but a classmate is using it. What is the most polite request?","options":["Give me the storybook now!","I never need the storybook.","What colour is Monday?","May I use the storybook after you?"],"answer":3,"explanation":"“May I...?” is a polite request and “after you” respects the classmate who is using it."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', '文字可作答']::text[], '756b85a76888b0b8a28fa1a7836d4ad7c4b8f5180cd06be849066f5acc363d91', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-097', 'english', 3, 3, 'choice', '{"stem":"Read: “On Saturday, David is in the bedroom with a notebook. David likes science. At 8:00, David packs his bag.” Which sentence gives both the day and the activity?","options":["On Saturday, David packs his bag.","David has no plan on Saturday.","David only asks about 8:00.","David dislikes science."],"answer":0,"explanation":"The text states the day Saturday and the activity “packs his bag”."}'::jsonb, 'builtin', '句子阅读', 'reason', array['全国通用', '文字可作答']::text[], 'ba6906874dd3ac03dad29c99a44eae9928472663ee764d03726e3ba1257e5724', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-098', 'english', 3, 3, 'choice', '{"stem":"Read: “David cannot find the notebook. A friend points to it.” —Thank you for helping me. —___","options":["I do not know your name.","You are welcome. It is over there.","Good night. I am sleeping.","It is Monday yesterday."],"answer":1,"explanation":"The reply is polite and continues the situation by showing where the item is."}'::jsonb, 'builtin', '短对话', 'reason', array['全国通用', '文字可作答']::text[], '6c82c4b77d7002b18f514a91bbafe2e91f38f1dfd9b8d96753d2c8cbff04ab90', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-099', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom with a notebook. David likes science. Complete both facts: David ___ his bag at 8:00 and likes science.","options":["pack","packing","packs","are"],"answer":2,"explanation":"The subject is one person, so “packs” completes the regular activity."}'::jsonb, 'builtin', '一般现在时', 'reason', array['全国通用', '文字可作答']::text[], '25f9baee119458522a4ecbc805b415f66ce9e68fb17bf4f6f57029e94fbc7c70', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-100', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom with a notebook. David likes science. Read the schedule line: “David is in the bedroom at 8:00.” Which pair of question words asks about the place and then the time?","options":["Who; What","When; Where","How many; What colour","Where; When"],"answer":3,"explanation":"“Where” asks about a place; “When” asks about a time."}'::jsonb, 'builtin', '疑问词', 'reason', array['全国通用', '文字可作答']::text[], '54f266f1a25a910f218b57dd8477255da73b82c8f5ab76b5c93f9e58065f3067', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-101', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom for the science activity. It starts at 8:00 and finishes 30 minutes later. When does it finish?","options":["8:30","8:00","9:30","8:15"],"answer":0,"explanation":"Thirty minutes after 8:00 is 8:30."}'::jsonb, 'builtin', '时间表达', 'reason', array['全国通用', '文字可作答']::text[], '12aa5749ddb2c7a628101c31c9a98bfee86c4fe3527b336aba59015249873c35', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-102', 'english', 3, 3, 'choice', '{"stem":"Read the plan: “First David packs the bag. Then David packs his bag. After that, David reads.” What happens second?","options":["packs the bag","packs his bag","reads","goes to sleep before everything"],"answer":1,"explanation":"The order word “Then” introduces the second activity: packs his bag."}'::jsonb, 'builtin', '日常活动', 'reason', array['全国通用', '文字可作答']::text[], 'f43891bfa41230b219a9c5ad7340915256eaf0722371a55e6d08c0c5947e11f1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-103', 'english', 3, 3, 'choice', '{"stem":"Read: “On Saturday, David is in the bedroom with a notebook. David likes science. At 8:00, David packs his bag.” Which two facts are both true?","options":["David is on a train and has a bike.","David dislikes science and loses everything.","David likes science and has a notebook.","David is at the zoo at midnight."],"answer":2,"explanation":"Both facts are directly stated in the text."}'::jsonb, 'builtin', '显性信息', 'reason', array['全国通用', '文字可作答']::text[], '8f488c99bba576e4e7a92647a58871f429e83fb6c44186613b569f69a328efd4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-104', 'english', 3, 3, 'choice', '{"stem":"On Saturday, David is in the bedroom before packs his bag. David needs the notebook, but a classmate is using it. What is the most polite request?","options":["Give me the notebook now!","I never need the notebook.","What colour is Monday?","May I use the notebook after you?"],"answer":3,"explanation":"“May I...?” is a polite request and “after you” respects the classmate who is using it."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', '文字可作答']::text[], '151c45f44fa3f71fdda24b92991a02a5bd886f0e983fcf35ffbd655c45d2c0e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-105', 'english', 3, 3, 'choice', '{"stem":"Read: “On Sunday, Helen is in the bedroom with a clock. Helen likes music. At 9:00, Helen goes to bed.” Which sentence gives both the day and the activity?","options":["On Sunday, Helen goes to bed.","Helen has no plan on Sunday.","Helen only asks about 9:00.","Helen dislikes music."],"answer":0,"explanation":"The text states the day Sunday and the activity “goes to bed”."}'::jsonb, 'builtin', '句子阅读', 'reason', array['全国通用', '文字可作答']::text[], '092cfc6f7405423a7095843b01ed4e4ef003dd040e484214dfa956564b256970', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-106', 'english', 3, 1, 'fill', '{"stem":"I have a ___. I use it to read stories.（填 book）","answer":"book","explanation":"The word “book” completes the sentence correctly."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], '22a139d1a19fa0cbf71174005c78997761109effe3d97f113c8eea8c3a810c48', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-107', 'english', 3, 1, 'fill', '{"stem":"—How are you? —I am ___.（填“很好”）","answer":"fine","explanation":"The word “fine” completes the sentence correctly."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], '71e775e2fd30e470b6677856b0dd33ce4b224f0ddccd043ccb91ab65fda22ac1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-108', 'english', 3, 1, 'fill', '{"stem":"Tom ___ to school every day.（填 go 的正确形式）","answer":"goes","explanation":"The word “goes” completes the sentence correctly."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], 'c7e68d07d337d07e19332b3a0bd8d3f26826ca0ae30a5789e13dc3b3d557d560', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-109', 'english', 3, 1, 'fill', '{"stem":"___ is your name? My name is Lily.","answer":"what","explanation":"The word “what” completes the sentence correctly."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '7d73c37845dfba962a41ad658903ecd1e505a7fbe0fc4951c9d1a4601b22ea36', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-110', 'english', 3, 1, 'fill', '{"stem":"Class starts at eight ___.（填“整点”）","answer":"o''clock","explanation":"The word “o''clock” completes the sentence correctly."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], '2bf0ddf21d80c592a2e1934efa40f8b58f1489217151de6f1209e4064737d7a4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-111', 'english', 3, 1, 'fill', '{"stem":"I ___ my teeth every morning.（填 brush）","answer":"brush","explanation":"The word “brush” completes the sentence correctly."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], '61118ea755a1e68a94a62fd84372e45bccd7161f3661a343492a53b66ff59b29', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-112', 'english', 3, 1, 'fill', '{"stem":"Read: “The bag is blue.” The bag is ___.","answer":"blue","explanation":"The word “blue” completes the sentence correctly."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], '63f01e04c2608bde69ca801be4f7180d7e7566ba1b8bfe790eb44bfdc0b13134', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-113', 'english', 3, 1, 'fill', '{"stem":"When someone says “Thank you”, you can say “You are ___.”","answer":"welcome","explanation":"The word “welcome” completes the sentence correctly."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答']::text[], '4d7bb868a7bcee33b57f2e79c41e476900a94d0ca04acba6e50a92f1c5148fc5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-114', 'english', 3, 1, 'fill', '{"stem":"The cat is under the desk. It is ___ the desk.","answer":"under","explanation":"The word “under” completes the sentence correctly."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], 'b451e01cab24400546fd14b622a4f6e0d78d6f943a17e1a6487539605fdd57f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-115', 'english', 3, 1, 'fill', '{"stem":"—Can you swim? —Yes, I ___.","answer":"can","explanation":"The word “can” completes the sentence correctly."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'a7f64362d4ac90bd65471fcd6d21bbca7d9c0ba08ec4b1dd38d23ec54a87250a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-116', 'english', 3, 1, 'fill', '{"stem":"Amy ___ English on Mondays.（填 study 的正确形式）","answer":"studies","explanation":"The word “studies” completes the sentence correctly."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], '139215104b5414e5dd993c60d17eff6d4578511dec768e7f6eace18827c33b6d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-117', 'english', 3, 2, 'fill', '{"stem":"___ is my ruler? It is in the bag.","answer":"where","explanation":"The word “where” completes the sentence correctly."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答']::text[], '6844bf384b5c59a29ded592ff90f011ab2fe77ccfd34e1f0d5d6bf093ae5e200', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-118', 'english', 3, 2, 'fill', '{"stem":"7:30 can be read as half past ___.","answer":"seven","explanation":"The word “seven” completes the sentence correctly."}'::jsonb, 'builtin', '时间表达', 'apply', array['全国通用', '文字可作答']::text[], '219cdf7f77c7e43c97b2aeb5e26c4972e81f9366e5de98f4add17732b8a84397', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-119', 'english', 3, 2, 'fill', '{"stem":"We have ___ at twelve o’clock.（填 lunch）","answer":"lunch","explanation":"The word “lunch” completes the sentence correctly."}'::jsonb, 'builtin', '日常活动', 'apply', array['全国通用', '文字可作答']::text[], 'cf7927d87e5a5e7d6b6330a376e75ad26ab6351743b9563115d524e6af656822', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-120', 'english', 3, 2, 'fill', '{"stem":"Read: “Ben has two dogs.” Ben has ___ dogs.","answer":"two","explanation":"The word “two” completes the sentence correctly."}'::jsonb, 'builtin', '显性信息', 'apply', array['全国通用', '文字可作答']::text[], '4335368fe398f5a63e52b9db72c3cbdb266ce392bc107a452ce9b2376802920b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-121', 'english', 3, 2, 'fill', '{"stem":"Before going to bed, we can say “Good ___.”","answer":"night","explanation":"The word “night” completes the sentence correctly."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答']::text[], '8179494a9bd0f3e4bbc87949e6c4d68e2fdea89d20b6c55de1a1636d2472497f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-122', 'english', 3, 2, 'fill', '{"stem":"The children are in the library. They are reading ___.","answer":"books","explanation":"The word “books” completes the sentence correctly."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答']::text[], '174615b3e21b4908877826c9e3393ac77eab24195901ac1d3a9ca3b4fd70e34e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-123', 'english', 3, 2, 'fill', '{"stem":"—What time is it? —It is nine ___.","answer":"o''clock","explanation":"The word “o''clock” completes the sentence correctly."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答']::text[], 'a91b81bb9784a5681623ce46347f660c751a5332764e614ff480811bc07cf5c1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-124', 'english', 3, 3, 'fill', '{"stem":"My father ___ breakfast at seven every day.（填 have 的正确形式）","answer":"has","explanation":"The word “has” completes the sentence correctly."}'::jsonb, 'builtin', '一般现在时', 'reason', array['全国通用', '文字可作答']::text[], 'da9bf1798d563863119a1b964be1f57c1fa453a0e22fc170870f01d18efdcb33', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-125', 'english', 3, 3, 'fill', '{"stem":"___ is that girl? She is my sister.","answer":"who","explanation":"The word “who” completes the sentence correctly."}'::jsonb, 'builtin', '疑问词', 'reason', array['全国通用', '文字可作答']::text[], '6418ec0a37bfa6e3ac68709d9ba323f57027a85789ac5f28a79d369b82cea1de', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-126', 'english', 3, 3, 'fill', '{"stem":"Read: “Lucy goes to the park after lunch.” Lucy goes there ___ lunch.","answer":"after","explanation":"The word “after” completes the sentence correctly."}'::jsonb, 'builtin', '显性信息', 'reason', array['全国通用', '文字可作答']::text[], '36dd0270381eecc97f92b18816aaa980c39b45778f6c4788c6d0cdba42b3979e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-127', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each sentence with its meaning.","left":["I am hungry.","I am thirsty.","I am tired.","I am cold."],"right":["I want to rest.","I want some food.","I need a coat.","I want some water."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '句子阅读', 'understand', array['全国通用', '文字可作答']::text[], '96c1f0e1c907bc56d4bd640ed61b358f281a70a07c1b24126479924d59d9b89a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-128', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each question with the best answer.","left":["How are you?","What is your name?","How old are you?","Where are you?"],"right":["I am nine.","I am fine.","I am at school.","I am Amy."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '短对话', 'understand', array['全国通用', '文字可作答']::text[], 'c52139b8eadfad3b434a84cb6a9f5dd817247ca5ec7211d6461071e4fee2795b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-129', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each subject and verb with the rest of its sentence.","left":["I play","He plays","We read","She reads"],"right":["books every day","football after school","a story at night","basketball on Friday"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '一般现在时', 'understand', array['全国通用', '文字可作答']::text[], 'ea5f9f096f56bd4c6ae47d88e66a9a4ff0c0abea3654c38c55bd426d07b991de', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-130', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each question word with what it asks about.","left":["What","Where","When","Who"],"right":["a time","a thing or action","a person","a place"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '疑问词', 'understand', array['全国通用', '文字可作答']::text[], '1b46bf90739db05e16e011b5330a63227d1dffc6d5e3aac7a3a59557081b7083', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-131', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each clock time with its English expression.","left":["7:00","8:30","12:00","6:30"],"right":["twelve o''clock","seven o''clock","half past six","half past eight"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '时间表达', 'understand', array['全国通用', '文字可作答']::text[], '9c7b30215ab2ddd62893b31691a4a6e066d8e1abcffda609ef53a715ad801170', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-132', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each daily activity with its Chinese meaning.","left":["get up","have breakfast","go to school","go to bed"],"right":["去上学","起床","睡觉","吃早饭"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '日常活动', 'understand', array['全国通用', '文字可作答']::text[], 'c4ce8142286b67e11d90f0205df74ced72e074d1c7e9b8f7730a0d308af36b07', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-133', 'english', 3, 1, 'match', '{"stem":"Use the classroom language chart. Match each sentence with the information it gives.","left":["The apple is red.","The dog is small.","The book is new.","The box is heavy."],"right":["new book","red apple","heavy box","small dog"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '显性信息', 'understand', array['全国通用', '文字可作答']::text[], 'a5b540cae71765fd31f988a5fe93c32135419adc5833dd3ee6c34d01ad1a752e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-134', 'english', 3, 2, 'match', '{"stem":"Use the classroom language chart. Match each expression with the polite reply.","left":["Thank you.","Good morning.","I am sorry.","Goodbye."],"right":["That''s OK.","You are welcome.","See you.","Good morning."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答']::text[], '79e7052f569dfd1c245ebc8919ceba85ab534ca0fff04d03df5231ef7c05adef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-135', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each sentence with its meaning.","left":["I am hungry.","I am thirsty.","I am tired.","I am cold."],"right":["I want to rest.","I want some food.","I need a coat.","I want some water."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '句子阅读', 'apply', array['全国通用', '文字可作答']::text[], '6b44ea339dfd35df66e6c597e60efcc89a6e4f65abc7418cd3641d5086dbdbad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-136', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each question with the best answer.","left":["How are you?","What is your name?","How old are you?","Where are you?"],"right":["I am nine.","I am fine.","I am at school.","I am Amy."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '短对话', 'apply', array['全国通用', '文字可作答']::text[], '8fc617ad8db594d93c1b12718fccf39e2487b049552741a487e1db71d65210bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-137', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each subject and verb with the rest of its sentence.","left":["I play","He plays","We read","She reads"],"right":["books every day","football after school","a story at night","basketball on Friday"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '一般现在时', 'apply', array['全国通用', '文字可作答']::text[], '1862e07ee1102aad3adfd626b763071763e0cbf206c64f4a3102bc1c8f714525', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-138', 'english', 3, 2, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each question word with what it asks about.","left":["What","Where","When","Who"],"right":["a time","a thing or action","a person","a place"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '疑问词', 'apply', array['全国通用', '文字可作答']::text[], '1cd001c9ab9a76e1b979d68060805cb3fb952b80e68ef3dc6dc88bc51349c2cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-139', 'english', 3, 3, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each clock time with its English expression.","left":["7:00","8:30","12:00","6:30"],"right":["twelve o''clock","seven o''clock","half past six","half past eight"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '时间表达', 'reason', array['全国通用', '文字可作答']::text[], '28ae05ecd7469d0e00a1eb7b84518febddd2a8acb7d666dd5e1fa10dc6257f9a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-english-authored-140', 'english', 3, 3, 'match', '{"stem":"Use the weekend reading card and compare all four examples. Match each daily activity with its Chinese meaning.","left":["get up","have breakfast","go to school","go to bed"],"right":["去上学","起床","睡觉","吃早饭"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Read each item carefully and connect the pair with the same meaning or function."}'::jsonb, 'builtin', '日常活动', 'reason', array['全国通用', '文字可作答']::text[], '1bc607f9f22097ad825748df46a84fd0984cd655819aed38cc853f12a4d1b638', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-001', 'math', 3, 1, 'choice', '{"stem":"春游准备：社区图书角有1274本书，其中数字“2”在百位上，它表示多少？","options":["200","2","20","2000"],"answer":0,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], '5b6ef60660d63c0a31758c6a2992a4b69d7ae983909efaf41901907658781c76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-002', 'math', 3, 1, 'choice', '{"stem":"春游准备：手工课每组要用15张彩纸，5个小组一共要用多少张？","options":["70张","75张","90张","20张"],"answer":1,"explanation":"15×5=75，所以一共要用75张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], '5527633362fde0530cc96fcd66ed8ecfa8036cdfd11daf8d75d499eff9754941', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-003', 'math', 3, 1, 'choice', '{"stem":"春游准备：把48颗棋子平均装进6个盒子，每盒有多少颗？","options":["7颗","14颗","8颗","42颗"],"answer":2,"explanation":"48÷6=8，每盒有8颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], '2941980fb0d92c89447112fc04179f9895d9f678d6594c837c076ba654490574', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-004', 'math', 3, 1, 'choice', '{"stem":"春游准备：一张纸平均分成4份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/4","4/2","4/4","2/4"],"answer":3,"explanation":"原来涂1份，再涂1份是2份，占2/4。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], 'ba996ee35042e437f12a918e3bd4e0425410342056d44ffcbeb03e62fd2e1fdd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-005', 'math', 3, 1, 'choice', '{"stem":"春游准备：科技活动在10:00开始，持续40分钟，结束时间是几点？","options":["10:40","11:40","13:40","12:00"],"answer":0,"explanation":"从10:00经过40分钟，结束时间是10:40。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], '21b951e35ac993a2f1e3c4507b3b41b6e215fd5a0fe175298eec14a0d58d07fa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-006', 'math', 3, 1, 'choice', '{"stem":"春游准备：长方形卡片长13厘米、宽5厘米，它的周长是多少？","options":["18厘米","36厘米","26厘米","41厘米"],"answer":1,"explanation":"周长是（13+5）×2=36厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], 'cbe83358d0845ca0dff4d686d565f1b9e597d79bfb032c3b516011cb6b61f67e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-007', 'math', 3, 1, 'choice', '{"stem":"春游准备：三组回收废纸数量为：一组5千克、二组8千克、三组3千克。二组比三组多多少千克？","options":["3千克","2千克","5千克","16千克"],"answer":2,"explanation":"比较二组和三组，8-3=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], 'b61b0e6ebd7c8d4af387e46a972d8fd016d56a610502ae2fdbebeee6772bb27f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-008', 'math', 3, 1, 'choice', '{"stem":"春游准备：书架原有27本故事书，借出5本，又放回6本，现在有多少本？","options":["22本","33本","36本","28本"],"answer":3,"explanation":"先算借出后有27-5=22本，再加放回的6本，共28本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固']::text[], 'a9b0ad2e400ac12af19db835898f8918545255bdc19a83d57400adeddda987bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-009', 'math', 3, 1, 'choice', '{"stem":"春游准备：观察数列：6，8，10，12，下一个数是多少？","options":["14","12","16","18"],"answer":0,"explanation":"相邻两个数都增加2，所以下一个数是14。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固']::text[], '781f1e7bd2a4f4e27f8b3eb6ba06bb4b18b202c762ea4267b9ba01c5ced7eef5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-010', 'math', 3, 1, 'choice', '{"stem":"运动会记录：社区图书角有1607本书，其中数字“6”在百位上，它表示多少？","options":["6","600","60","6000"],"answer":1,"explanation":"百位上的数字表示几个百，所以表示600。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], '9295d92c1fc1c91bfeffeb1cb640d5c08c22e6ad9a88eb6b636cf6fb9b17171e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-011', 'math', 3, 1, 'choice', '{"stem":"运动会记录：手工课每组要用24张彩纸，7个小组一共要用多少张？","options":["161张","192张","168张","31张"],"answer":2,"explanation":"24×7=168，所以一共要用168张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], '294ffc382de447490134846af261f91c8ad4ffd88b973ffc1da074e50b77e2b7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-012', 'math', 3, 1, 'choice', '{"stem":"运动会记录：把48颗棋子平均装进8个盒子，每盒有多少颗？","options":["5颗","14颗","40颗","6颗"],"answer":3,"explanation":"48÷8=6，每盒有6颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], 'dd4bbe0496f0cf92b2e9f18815fa081d7a2aa16c12e247a701205fadd0900653', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-013', 'math', 3, 1, 'choice', '{"stem":"运动会记录：一张纸平均分成5份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/5","1/5","5/2","4/5"],"answer":0,"explanation":"原来涂1份，再涂1份是2份，占2/5。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], '69ddc16a0f195f00a22ab305ee4dcf5e6c32476cfc0d9a8cd45cbf9c92a8ada2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-014', 'math', 3, 1, 'choice', '{"stem":"运动会记录：科技活动在11:00开始，持续50分钟，结束时间是几点？","options":["12:50","11:50","14:50","13:00"],"answer":1,"explanation":"从11:00经过50分钟，结束时间是11:50。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], '60bb8a85e528b1fef4699376bb9746207c529eeb3eee3b39d97cddb526b24a16', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-015', 'math', 3, 1, 'choice', '{"stem":"运动会记录：长方形卡片长6厘米、宽2厘米，它的周长是多少？","options":["8厘米","12厘米","16厘米","18厘米"],"answer":2,"explanation":"周长是（6+2）×2=16厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], 'c13e80de6e6bcf943d4a44b5b957b9428711216d3cef23b0f29b33c43493829e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-016', 'math', 3, 1, 'choice', '{"stem":"运动会记录：三组回收废纸数量为：一组6千克、二组9千克、三组4千克。二组比三组多多少千克？","options":["3千克","2千克","19千克","5千克"],"answer":3,"explanation":"比较二组和三组，9-4=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], '8ffb04b447b393624981e99fb00a8b9bbee5b43207963cb319b570f90fd53109', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-017', 'math', 3, 1, 'choice', '{"stem":"运动会记录：书架原有36本故事书，借出7本，又放回7本，现在有多少本？","options":["36本","29本","43本","46本"],"answer":0,"explanation":"先算借出后有36-7=29本，再加放回的7本，共36本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固']::text[], 'ee042e6c80a35bd10caa0a61dab57b561ca3c514719ef2559baa698de2301055', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-018', 'math', 3, 1, 'choice', '{"stem":"运动会记录：观察数列：3，9，15，21，下一个数是多少？","options":["21","27","33","39"],"answer":1,"explanation":"相邻两个数都增加6，所以下一个数是27。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固']::text[], 'f301cc2a3ab80811d70d4345952b373d227ec1f4ce32b9302a9b9f990e08f514', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-019', 'math', 3, 1, 'choice', '{"stem":"图书节任务：社区图书角有1940本书，其中数字“9”在百位上，它表示多少？","options":["9","90","900","9000"],"answer":2,"explanation":"百位上的数字表示几个百，所以表示900。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], 'f7a8807e4c73bd0075b606e96532236323684224738cf5588bba0644b78b1d33', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-020', 'math', 3, 1, 'choice', '{"stem":"图书节任务：手工课每组要用33张彩纸，2个小组一共要用多少张？","options":["64张","99张","35张","66张"],"answer":3,"explanation":"33×2=66，所以一共要用66张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], '6a18d557339406a80bf039fbb27615ca26bfd4f37cf2103743f9aca0b91d96fb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-021', 'math', 3, 1, 'choice', '{"stem":"图书节任务：把12颗棋子平均装进3个盒子，每盒有多少颗？","options":["4颗","3颗","7颗","9颗"],"answer":0,"explanation":"12÷3=4，每盒有4颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], 'ab59cdfd677f4d38b9ecd58d932f27d144291be1cd6a03b6d85d27e2d9e801dc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-022', 'math', 3, 1, 'choice', '{"stem":"图书节任务：一张纸平均分成6份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/6","2/6","6/2","4/6"],"answer":1,"explanation":"原来涂1份，再涂1份是2份，占2/6。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], '8714ddf30ae5508672532cd0fe20975dbe0ca3817f0a363f4faf81ef23c91c8c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-023', 'math', 3, 1, 'choice', '{"stem":"图书节任务：科技活动在8:00开始，持续20分钟，结束时间是几点？","options":["9:20","11:20","8:20","10:00"],"answer":2,"explanation":"从8:00经过20分钟，结束时间是8:20。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], 'ce365f80a3a0c84117626708f074194b3a5599b6883179703c72887163ec75c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-024', 'math', 3, 1, 'choice', '{"stem":"图书节任务：长方形卡片长7厘米、宽3厘米，它的周长是多少？","options":["10厘米","14厘米","23厘米","20厘米"],"answer":3,"explanation":"周长是（7+3）×2=20厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], '2ab1c45cb01a1087e74e4cc117220537f484bb8ca0537c25ac88d2fc1bc84631', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-025', 'math', 3, 1, 'choice', '{"stem":"图书节任务：三组回收废纸数量为：一组7千克、二组10千克、三组5千克。二组比三组多多少千克？","options":["5千克","3千克","2千克","22千克"],"answer":0,"explanation":"比较二组和三组，10-5=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], '860cae47def157680cf27a08a7e6bbf0415b48526814010487ce69aae357354a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-026', 'math', 3, 1, 'choice', '{"stem":"图书节任务：书架原有45本故事书，借出9本，又放回8本，现在有多少本？","options":["36本","44本","53本","56本"],"answer":1,"explanation":"先算借出后有45-9=36本，再加放回的8本，共44本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固']::text[], '315a06a0a83912edb58f07f4d131934c2c6d6fde1475151a44c67a3214cf0693', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-027', 'math', 3, 1, 'choice', '{"stem":"图书节任务：观察数列：6，11，16，21，下一个数是多少？","options":["21","31","26","36"],"answer":2,"explanation":"相邻两个数都增加5，所以下一个数是26。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固']::text[], '198283d86099407beffad959a8b2d063c3f6096db53982e1d7394555ef9505ee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-028', 'math', 3, 1, 'choice', '{"stem":"科学角观察：社区图书角有2273本书，其中数字“2”在百位上，它表示多少？","options":["2","20","2000","200"],"answer":3,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], '5d74ea69c61cbf55568acaa5d071de83f2b4c35f665ce995cc8ee543d50d6e37', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-029', 'math', 3, 1, 'choice', '{"stem":"科学角观察：手工课每组要用14张彩纸，4个小组一共要用多少张？","options":["56张","52张","70张","18张"],"answer":0,"explanation":"14×4=56，所以一共要用56张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], '3b0cf3fb6aded97a47144ffe7f5fe4fb5b5cd31be229a00b139da6b09a094a4a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-030', 'math', 3, 1, 'choice', '{"stem":"科学角观察：把65颗棋子平均装进5个盒子，每盒有多少颗？","options":["12颗","13颗","18颗","60颗"],"answer":1,"explanation":"65÷5=13，每盒有13颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], '841039a9c98c562c23d357beec0d0f43441b08023c5a017aa2609f970eb70ff2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-031', 'math', 3, 1, 'choice', '{"stem":"科学角观察：一张纸平均分成7份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/7","7/2","2/7","4/7"],"answer":2,"explanation":"原来涂1份，再涂1份是2份，占2/7。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], '07f62e11093591398e03dea2ef6ed641bf519be96da174ef643c2bdfd36b750c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-032', 'math', 3, 1, 'choice', '{"stem":"科学角观察：科技活动在9:00开始，持续30分钟，结束时间是几点？","options":["10:30","12:30","11:00","9:30"],"answer":3,"explanation":"从9:00经过30分钟，结束时间是9:30。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], 'eb01690e89baf337224e4d7522fe13b1e681388cbbd6ac539af09aaa2aabf2d6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-033', 'math', 3, 1, 'choice', '{"stem":"科学角观察：长方形卡片长8厘米、宽4厘米，它的周长是多少？","options":["24厘米","12厘米","16厘米","28厘米"],"answer":0,"explanation":"周长是（8+4）×2=24厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], 'a24b95e47727011fcff192d7f3c64263988fd01ac261dd61fcf4ba37bd559aa3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-034', 'math', 3, 1, 'choice', '{"stem":"科学角观察：三组回收废纸数量为：一组8千克、二组11千克、三组6千克。二组比三组多多少千克？","options":["3千克","5千克","2千克","25千克"],"answer":1,"explanation":"比较二组和三组，11-6=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], 'c06b7e5b4d4bc5585efb15908cbd9618ac8fc831073b04bb0884329cf8eb1f9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-035', 'math', 3, 1, 'choice', '{"stem":"科学角观察：书架原有54本故事书，借出4本，又放回9本，现在有多少本？","options":["50本","63本","59本","66本"],"answer":2,"explanation":"先算借出后有54-4=50本，再加放回的9本，共59本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固']::text[], 'd76a0904cb52364b9aa4c0084b95c95536da1f73bbb205ffbfd6c0898e76da51', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-036', 'math', 3, 1, 'choice', '{"stem":"科学角观察：观察数列：3，7，11，15，下一个数是多少？","options":["15","23","27","19"],"answer":3,"explanation":"相邻两个数都增加4，所以下一个数是19。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固']::text[], '38ea2b07357c04a150b8d44a8d7594c30964c8548d08aa55664ac19d85ec23b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-037', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：社区图书角有2606本书，其中数字“6”在百位上，它表示多少？","options":["600","6","60","6000"],"answer":0,"explanation":"百位上的数字表示几个百，所以表示600。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], '94bd4e10be46a7ce29525f908ee65e5ee317649e64823cc7b419874b77ad70c9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-038', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：手工课每组要用23张彩纸，6个小组一共要用多少张？","options":["132张","138张","161张","29张"],"answer":1,"explanation":"23×6=138，所以一共要用138张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], '893cb06357b9cd32ded602596b068391cacde2919b3164f1b1cf56d8cb790230', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-039', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：把77颗棋子平均装进7个盒子，每盒有多少颗？","options":["10颗","18颗","11颗","70颗"],"answer":2,"explanation":"77÷7=11，每盒有11颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], '6a26b1d62296e2af0e6d79d643cc3567f756bf1d4c15b5a3a5bc860a215fbd09', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-040', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：一张纸平均分成8份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/8","8/2","4/8","2/8"],"answer":3,"explanation":"原来涂1份，再涂1份是2份，占2/8。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], '75debcc36e1813c69ead488bd7d05b50d77c61e90a8d4ffec116b48d345f1753', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-041', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：科技活动在10:00开始，持续40分钟，结束时间是几点？","options":["10:40","11:40","13:40","12:00"],"answer":0,"explanation":"从10:00经过40分钟，结束时间是10:40。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], 'df6d0eb52b7ee62511d6279cddb814f3779f403d7499fdae7b11f9603cf820e6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-042', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：长方形卡片长9厘米、宽5厘米，它的周长是多少？","options":["14厘米","28厘米","18厘米","33厘米"],"answer":1,"explanation":"周长是（9+5）×2=28厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], '98d10a6a6ce2e8a25e658d8df4b14e75edcaa199ceaf5e589f120f153f1ac63b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-043', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：三组回收废纸数量为：一组9千克、二组12千克、三组7千克。二组比三组多多少千克？","options":["3千克","2千克","5千克","28千克"],"answer":2,"explanation":"比较二组和三组，12-7=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], '63d3dab46fa1232e6ef858fe7bbb1101689420daa6058258e9295016e6d07aa7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-044', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：书架原有63本故事书，借出6本，又放回10本，现在有多少本？","options":["57本","73本","76本","67本"],"answer":3,"explanation":"先算借出后有63-6=57本，再加放回的10本，共67本。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固']::text[], '1b205023ad0aab20eb93e5ce7107d5be08965caf8c8329e17605b82397b95a10', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-045', 'math', 3, 1, 'choice', '{"stem":"劳动课统计：观察数列：6，9，12，15，下一个数是多少？","options":["18","15","21","24"],"answer":0,"explanation":"相邻两个数都增加3，所以下一个数是18。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固']::text[], '63c95db93da9aa67fe887d4b7e1e899e06eb2373c28d0a348ae7de209928b557', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-046', 'math', 3, 1, 'choice', '{"stem":"班级义卖：社区图书角有2939本书，其中数字“9”在百位上，它表示多少？","options":["9","900","90","9000"],"answer":1,"explanation":"百位上的数字表示几个百，所以表示900。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], 'a40f1735cb4e78934d438310719f176cef80421d524209bc40f6da081a598a3d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-047', 'math', 3, 1, 'choice', '{"stem":"班级义卖：手工课每组要用32张彩纸，8个小组一共要用多少张？","options":["248张","288张","256张","40张"],"answer":2,"explanation":"32×8=256，所以一共要用256张。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], '71ab693b2c5a46e13a579f4cb36c93de73aa0962b61d8d065c061f93cc2b1702', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-048', 'math', 3, 1, 'choice', '{"stem":"班级义卖：把18颗棋子平均装进2个盒子，每盒有多少颗？","options":["8颗","11颗","16颗","9颗"],"answer":3,"explanation":"18÷2=9，每盒有9颗。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], '5b79f6edbd7a753d5e0884d8b0d6a64428661b24ec1ee7aca9ffa85ff776b011', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-049', 'math', 3, 1, 'choice', '{"stem":"班级义卖：一张纸平均分成9份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/9","1/9","9/2","4/9"],"answer":0,"explanation":"原来涂1份，再涂1份是2份，占2/9。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], 'f14f08b1c4e14a93ffbe8d01c2b0ea83d5c1e157bd9ff144987aaf8636bd7a0f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-050', 'math', 3, 1, 'choice', '{"stem":"班级义卖：科技活动在11:00开始，持续50分钟，结束时间是几点？","options":["12:50","11:50","14:50","13:00"],"answer":1,"explanation":"从11:00经过50分钟，结束时间是11:50。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], '9dce88515ccd2b6d3c781d4fe1cf5dbeff180cd26317f01283301ad4dfb757d6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-051', 'math', 3, 1, 'choice', '{"stem":"班级义卖：长方形卡片长10厘米、宽2厘米，它的周长是多少？","options":["12厘米","20厘米","24厘米","26厘米"],"answer":2,"explanation":"周长是（10+2）×2=24厘米。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], '0e99355fe9e4bc164f31c2ba3c751dd057631129798351baf1b19160bf877a79', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-052', 'math', 3, 1, 'choice', '{"stem":"班级义卖：三组回收废纸数量为：一组10千克、二组13千克、三组8千克。二组比三组多多少千克？","options":["3千克","2千克","31千克","5千克"],"answer":3,"explanation":"比较二组和三组，13-8=5千克。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], '884d7deea5a9992b07de3692862d3bb17bbeb9701797c2248d1596146236fcba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-053', 'math', 3, 2, 'choice', '{"stem":"班级义卖：书架原有72本故事书，借出8本，又放回11本，现在有多少本？","options":["75本","64本","83本","86本"],"answer":0,"explanation":"先算借出后有72-8=64本，再加放回的11本，共75本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用']::text[], '147db6b63080b46604e0e8a620f02db0ca1f729a28fa026b299c3731b3c3819b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-054', 'math', 3, 2, 'choice', '{"stem":"班级义卖：观察数列：3，5，7，9，下一个数是多少？","options":["9","11","13","15"],"answer":1,"explanation":"相邻两个数都增加2，所以下一个数是11。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用']::text[], 'de377083bcc9c3d4231b6a84769dba7fb8bc96d76d2babdc1101ff56c32a1077', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-055', 'math', 3, 2, 'choice', '{"stem":"校园种植：社区图书角有3272本书，其中数字“2”在百位上，它表示多少？","options":["2","20","200","2000"],"answer":2,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用']::text[], 'f1713012f7c083dd0cbcfeb4f62fe8d270bb66e18f9851fff64f3dc518182d2f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-056', 'math', 3, 2, 'choice', '{"stem":"校园种植：手工课每组要用13张彩纸，3个小组一共要用多少张？","options":["36张","52张","16张","39张"],"answer":3,"explanation":"13×3=39，所以一共要用39张。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用']::text[], '0acc89b83856f29c78c96ef6b2797347b9843bda8ba4b4d6468c37fda68c50de', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-057', 'math', 3, 2, 'choice', '{"stem":"校园种植：把28颗棋子平均装进4个盒子，每盒有多少颗？","options":["7颗","6颗","11颗","24颗"],"answer":0,"explanation":"28÷4=7，每盒有7颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用']::text[], '6e4293b5f36aeb8753d442a450530c80dfb53fa8b7dad5420f51410e50e96ce1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-058', 'math', 3, 2, 'choice', '{"stem":"校园种植：一张纸平均分成10份，涂了1份。再涂1份后，涂色部分是这张纸的几分之几？","options":["1/10","2/10","10/2","4/10"],"answer":1,"explanation":"原来涂1份，再涂1份是2份，占2/10。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用']::text[], 'ca22cbb2e24b9c06c32a523eab388a86c597216e2f54cfd376a5e078ca65032c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-059', 'math', 3, 2, 'choice', '{"stem":"校园种植：科技活动在8:00开始，持续20分钟，结束时间是几点？","options":["9:20","11:20","8:20","10:00"],"answer":2,"explanation":"从8:00经过20分钟，结束时间是8:20。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用']::text[], '0a1b6d81d14b5101124b0678ea63bf5e806c806bf0b05cfd3e82e53661a7cf66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-060', 'math', 3, 2, 'choice', '{"stem":"校园种植：长方形卡片长11厘米、宽3厘米，它的面积是多少？","options":["14平方厘米","22平方厘米","36平方厘米","33平方厘米"],"answer":3,"explanation":"面积是11×3=33平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用']::text[], '393bbf1e278cd1f1630ee8c5c8a24c0df785f91ec67f6608d68db8a9b41bf0f2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-061', 'math', 3, 2, 'choice', '{"stem":"校园种植：三组回收废纸数量为：一组11千克、二组14千克、三组9千克。二组比三组多多少千克？","options":["5千克","3千克","2千克","34千克"],"answer":0,"explanation":"比较二组和三组，14-9=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用']::text[], 'a9c6377bebeeca448d3d6f234d3eb31b01a58cb0a5ae715c9cf78ab4ebd5b698', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-062', 'math', 3, 2, 'choice', '{"stem":"校园种植：书架原有81本故事书，借出3本，又放回12本，现在有多少本？","options":["78本","90本","93本","96本"],"answer":1,"explanation":"先算借出后有81-3=78本，再加放回的12本，共90本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用']::text[], 'c39240c0be55320d17452acd6fd59054206e08aaaea1c1155de0727ca778e07d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-063', 'math', 3, 2, 'choice', '{"stem":"校园种植：观察数列：6，12，18，24，下一个数是多少？","options":["24","36","30","42"],"answer":2,"explanation":"相邻两个数都增加6，所以下一个数是30。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用']::text[], '0ea12194230b0deb138c593336e57b15e653a04765f5adae0894f40140fde1cd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-064', 'math', 3, 2, 'choice', '{"stem":"社团活动：社区图书角有3605本书，其中数字“6”在百位上，它表示多少？","options":["6","60","6000","600"],"answer":3,"explanation":"百位上的数字表示几个百，所以表示600。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用']::text[], '344afc3c4bfad8818883a1686dcf53add22f9ebda4517f09d292949bd50c597e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-065', 'math', 3, 2, 'choice', '{"stem":"社团活动：手工课每组要用22张彩纸，5个小组一共要用多少张？","options":["110张","105张","132张","27张"],"answer":0,"explanation":"22×5=110，所以一共要用110张。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用']::text[], 'e9ca998fe100c42aef60e32cc4312caa1dd7c8243dc74b371931d80bd4f9b065', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-066', 'math', 3, 2, 'choice', '{"stem":"社团活动：把30颗棋子平均装进6个盒子，每盒有多少颗？","options":["4颗","5颗","11颗","24颗"],"answer":1,"explanation":"30÷6=5，每盒有5颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用']::text[], '99da85145a8f1e2e7e2a09dc0962b75048e5face96c8dc72dbbda9ee0ab0a745', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-067', 'math', 3, 2, 'choice', '{"stem":"社团活动：一张纸平均分成4份，涂了2份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/4","4/3","3/4","1/4"],"answer":2,"explanation":"原来涂2份，再涂1份是3份，占3/4。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用']::text[], '09e10c9d60b259701ae2d6c881ca71335c66d4b886af99514e77b2db109141cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-068', 'math', 3, 2, 'choice', '{"stem":"社团活动：科技活动在9:00开始，持续30分钟，结束时间是几点？","options":["10:30","12:30","11:00","9:30"],"answer":3,"explanation":"从9:00经过30分钟，结束时间是9:30。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用']::text[], '5f2839387171f84ce996ccc6fca0c14f866561cf47bcbd34c4c9038e05739fcc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-069', 'math', 3, 2, 'choice', '{"stem":"社团活动：长方形卡片长12厘米、宽4厘米，它的面积是多少？","options":["48平方厘米","16平方厘米","24平方厘米","52平方厘米"],"answer":0,"explanation":"面积是12×4=48平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用']::text[], '0d43baf038078d8c967d7114f95bac7aa2e5538d38b278b49ef94ab20531f3c8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-070', 'math', 3, 2, 'choice', '{"stem":"社团活动：三组回收废纸数量为：一组12千克、二组15千克、三组10千克。二组比三组多多少千克？","options":["3千克","5千克","2千克","37千克"],"answer":1,"explanation":"比较二组和三组，15-10=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用']::text[], 'd792f96c324225070be92dae382cb1e9395995159e6e404aded5aa2388499975', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-071', 'math', 3, 2, 'choice', '{"stem":"社团活动：书架原有90本故事书，借出5本，又放回5本，现在有多少本？","options":["85本","95本","90本","98本"],"answer":2,"explanation":"先算借出后有90-5=85本，再加放回的5本，共90本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用']::text[], '4b96240dd8461c7f50099999a55df60c9033f54187709accda1c905f0a3b6d75', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-072', 'math', 3, 2, 'choice', '{"stem":"社团活动：观察数列：3，8，13，18，下一个数是多少？","options":["18","28","33","23"],"answer":3,"explanation":"相邻两个数都增加5，所以下一个数是23。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用']::text[], '1d4d27949e3869c55a526811726dad94c49097428cec7919aa534c27c440fee0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-073', 'math', 3, 2, 'choice', '{"stem":"家庭采购：社区图书角有3938本书，其中数字“9”在百位上，它表示多少？","options":["900","9","90","9000"],"answer":0,"explanation":"百位上的数字表示几个百，所以表示900。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用']::text[], 'cefab48d0184165c5868992b3bf80d383e84bb395df2b8ff0bf9b28afe846277', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-074', 'math', 3, 2, 'choice', '{"stem":"家庭采购：手工课每组要用31张彩纸，7个小组一共要用多少张？","options":["210张","217张","248张","38张"],"answer":1,"explanation":"31×7=217，所以一共要用217张。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用']::text[], 'f17fbc180532f4e3f8b99dab61757a7c42dd299a9cc808ba82c902664e240dd7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-075', 'math', 3, 2, 'choice', '{"stem":"家庭采购：把112颗棋子平均装进8个盒子，每盒有多少颗？","options":["13颗","22颗","14颗","104颗"],"answer":2,"explanation":"112÷8=14，每盒有14颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用']::text[], 'abe6e37c3ade226e898de8019a54d5121e95e47dcf147e7eeb46a5fd24fb7dce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-076', 'math', 3, 2, 'choice', '{"stem":"家庭采购：一张纸平均分成5份，涂了2份。再涂1份后，涂色部分是这张纸的几分之几？","options":["2/5","5/3","1/5","3/5"],"answer":3,"explanation":"原来涂2份，再涂1份是3份，占3/5。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用']::text[], '4e956b92aca2b1024359bd8fbefcf8e87c753890606b62789cbdffeadcdbfdce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-077', 'math', 3, 2, 'choice', '{"stem":"家庭采购：科技活动在10:00开始，持续40分钟，结束时间是几点？","options":["10:40","11:40","13:40","12:00"],"answer":0,"explanation":"从10:00经过40分钟，结束时间是10:40。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用']::text[], '4bd95c17d0e03807f533bd6c6c7bc85e89a3fafda0427a6298adeaf8eb901cdc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-078', 'math', 3, 2, 'choice', '{"stem":"家庭采购：长方形卡片长13厘米、宽5厘米，它的面积是多少？","options":["18平方厘米","65平方厘米","26平方厘米","70平方厘米"],"answer":1,"explanation":"面积是13×5=65平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用']::text[], '90c2c7a3795975c22e2aabc2b9fc817905883b94292eb6ad36b9cc3c23f5eb4f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-079', 'math', 3, 2, 'choice', '{"stem":"家庭采购：三组回收废纸数量为：一组13千克、二组16千克、三组11千克。二组比三组多多少千克？","options":["3千克","2千克","5千克","40千克"],"answer":2,"explanation":"比较二组和三组，16-11=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用']::text[], 'fc46791fa1659d19e8d86473976b43b79029945a60731c44a5286886f52fbf49', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-080', 'math', 3, 2, 'choice', '{"stem":"家庭采购：书架原有99本故事书，借出7本，又放回6本，现在有多少本？","options":["92本","105本","108本","98本"],"answer":3,"explanation":"先算借出后有99-7=92本，再加放回的6本，共98本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用']::text[], '24b3e4aef87c59d1ec734d8f39400629357a4c9c45f236bce76c1305287f084f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-081', 'math', 3, 2, 'choice', '{"stem":"家庭采购：观察数列：6，10，14，18，下一个数是多少？","options":["22","18","26","30"],"answer":0,"explanation":"相邻两个数都增加4，所以下一个数是22。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用']::text[], 'c55df7e00c4c98866ef6da9f828a4db3e72fe82323ec12d154bec2dfb72a7235', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-082', 'math', 3, 2, 'choice', '{"stem":"社区服务：社区图书角有4271本书，其中数字“2”在百位上，它表示多少？","options":["2","200","20","2000"],"answer":1,"explanation":"百位上的数字表示几个百，所以表示200。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用']::text[], '0cd71285bde3b2199f943c0bc18fe336926ba5a85e29218b77e7e094dbf8c513', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-083', 'math', 3, 2, 'choice', '{"stem":"社区服务：手工课每组要用12张彩纸，2个小组一共要用多少张？","options":["22张","36张","24张","14张"],"answer":2,"explanation":"12×2=24，所以一共要用24张。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用']::text[], '5234cc1a999cd60282605e5bae13f8450dec9453c919b643e2f9b45a7f7402eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-084', 'math', 3, 2, 'choice', '{"stem":"社区服务：把36颗棋子平均装进3个盒子，每盒有多少颗？","options":["11颗","15颗","33颗","12颗"],"answer":3,"explanation":"36÷3=12，每盒有12颗。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用']::text[], '004439af5626b5806a920f047aae37578a131c16e6d20ea63d5b1eaf2a60f26e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-085', 'math', 3, 2, 'choice', '{"stem":"社区服务：一张纸平均分成6份，涂了2份。再涂1份后，涂色部分是这张纸的几分之几？","options":["3/6","2/6","6/3","1/6"],"answer":0,"explanation":"原来涂2份，再涂1份是3份，占3/6。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用']::text[], '20cea15a3936d6e4e3f1855028a53efdc6296f2dbc7bdd7a48f33366a2439ec3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-086', 'math', 3, 2, 'choice', '{"stem":"社区服务：科技活动在11:00开始，持续50分钟，结束时间是几点？","options":["12:50","11:50","14:50","13:00"],"answer":1,"explanation":"从11:00经过50分钟，结束时间是11:50。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用']::text[], '4edbfd1ab803d995ffc2b6d6d4889a281726126384d8559838cccfa69b91f976', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-087', 'math', 3, 2, 'choice', '{"stem":"社区服务：长方形卡片长6厘米、宽2厘米，它的面积是多少？","options":["8平方厘米","14平方厘米","12平方厘米","17平方厘米"],"answer":2,"explanation":"面积是6×2=12平方厘米。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用']::text[], '9df709e2e7d4d9eb070f727656b4905673b640bed2acc0ffff7001c2841a3753', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-088', 'math', 3, 2, 'choice', '{"stem":"社区服务：三组回收废纸数量为：一组14千克、二组17千克、三组12千克。二组比三组多多少千克？","options":["3千克","2千克","43千克","5千克"],"answer":3,"explanation":"比较二组和三组，17-12=5千克。"}'::jsonb, 'builtin', '数据表达', 'apply', array['全国通用', '情境应用']::text[], '639f6dda56f3d4904ed05e330873fbd39458603c08caaef25196205c0a674736', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-089', 'math', 3, 2, 'choice', '{"stem":"社区服务：书架原有108本故事书，借出9本，又放回7本，现在有多少本？","options":["106本","99本","115本","118本"],"answer":0,"explanation":"先算借出后有108-9=99本，再加放回的7本，共106本。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用']::text[], '09b2bf304e269297d43b32b35e8319af313954d11e042a92b392d63b8ecfc597', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-090', 'math', 3, 3, 'choice', '{"stem":"社区服务：数列从13开始，依次加1、加2、加3。按照这个规律，下一次加4后得到多少？","options":["19","23","24","27"],"answer":1,"explanation":"依次计算：13+1+2+3+4=23。"}'::jsonb, 'builtin', '规律发现', 'reason', array['全国通用', '情境应用']::text[], 'e66c61249ff4d67c05a0ddc8f351b73486197ba95f74a0468ca205e99102069f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-091', 'math', 3, 3, 'choice', '{"stem":"阅读分享：仓库原有4488件物品，运走1200件。剩下物品数的百位数字是多少？","options":["0","4","2","8"],"answer":2,"explanation":"先算4488-1200=3288，再看百位数字。"}'::jsonb, 'builtin', '较大数认识', 'reason', array['全国通用', '情境应用']::text[], '7da8caa896d3964363a7e5bdbef4edf2eca5a1174c186a7098cf38ef0abcced5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-092', 'math', 3, 3, 'choice', '{"stem":"阅读分享：3盒贴纸，每盒30张。布置展板用去9张，还剩多少张？","options":["90张","84张","72张","81张"],"answer":3,"explanation":"先算3×30=90张，再减9张，剩81张。"}'::jsonb, 'builtin', '乘法', 'reason', array['全国通用', '情境应用']::text[], 'a11cf8106bdf5fffde0313c569808f25c3929bd09eaba4f73bf9837e86fa9efc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-093', 'math', 3, 3, 'choice', '{"stem":"阅读分享：38名同学，每4人组成一组。最多组成几个完整小组，还剩几人？","options":["9组，剩2人","10组，剩0人","11组，剩2人","4组，剩2人"],"answer":0,"explanation":"38÷4=9……2，可组成9个完整小组，剩2人。"}'::jsonb, 'builtin', '除法', 'reason', array['全国通用', '情境应用']::text[], '52bb0526ba8537d0965d6076c4ff84dfab39c0ebd5efada0c8cfd337a008f344', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-094', 'math', 3, 3, 'choice', '{"stem":"阅读分享：一盒点心平均分成6份，小雨吃了2份，小林吃了3份。两人一共吃了这盒点心的几分之几？","options":["3/6","5/6","2/6","6/5"],"answer":1,"explanation":"分母不变，把吃掉的份数相加：2+3=5，所以是5/6。"}'::jsonb, 'builtin', '分数初步', 'reason', array['全国通用', '情境应用']::text[], '11c15aa2a6ca4e7389a15c2a2ca76397db00393cd92882a8caca6be66f38680d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-095', 'math', 3, 3, 'choice', '{"stem":"阅读分享：活动8:00开始，先参观35分钟，休息10分钟，再体验25分钟。全部结束是几点？","options":["8:60","9:25","9:10","10:10"],"answer":2,"explanation":"总用时35+10+25=70分钟，即1小时10分钟，结束时间是9:10。"}'::jsonb, 'builtin', '质量与时间', 'reason', array['全国通用', '情境应用']::text[], '2d4c0eb82ca26b1b865ca43232a208d14599194570651c8713c02b2da5c4e197', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-096', 'math', 3, 3, 'choice', '{"stem":"阅读分享：长20米、宽4米的长方形花坛中，有一块2米×4米的区域铺石子，其余种花。种花面积是多少？","options":["80平方米","48平方米","76平方米","72平方米"],"answer":3,"explanation":"花坛面积20×4=80，石子区面积2×4=8，种花面积是72平方米。"}'::jsonb, 'builtin', '周长与面积', 'reason', array['全国通用', '情境应用']::text[], '2bed8a739948d282ce5d660efa32c0d9d8a01f195ad143d382ddb93f8e0a2847', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-097', 'math', 3, 3, 'choice', '{"stem":"阅读分享：图书借阅记录：周一24本、周二21本、周三27本。三天共借出多少本？","options":["72本","6本","45本","48本"],"answer":0,"explanation":"把三天数据相加：24+21+27=72本。"}'::jsonb, 'builtin', '数据表达', 'reason', array['全国通用', '情境应用']::text[], '4d171cb32f2524de7386b7ea262a1ce60723fac43505a3f1cb626ad605dfc37b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-098', 'math', 3, 3, 'choice', '{"stem":"阅读分享：礼堂安排4排座位，每排20个。已有3个座位损坏，可用座位有多少个？","options":["80个","77个","81个","17个"],"answer":1,"explanation":"先算座位总数4×20=80，再减损坏的3个，得77个。"}'::jsonb, 'builtin', '两步问题', 'reason', array['全国通用', '情境应用']::text[], '3e4c6b34b6ee3744f549d803edcbe6d4a7f321dbf49d4f15c0e64e8726696527', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-099', 'math', 3, 3, 'choice', '{"stem":"阅读分享：数列从14开始，依次加1、加2、加3。按照这个规律，下一次加4后得到多少？","options":["20","25","24","28"],"answer":2,"explanation":"依次计算：14+1+2+3+4=24。"}'::jsonb, 'builtin', '规律发现', 'reason', array['全国通用', '情境应用']::text[], '5580dc9f70765b63243b36480a01fbdb97f012f7f4e76a97b77340a93a7b15ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-100', 'math', 3, 3, 'choice', '{"stem":"手工作品展：仓库原有4612件物品，运走1300件。剩下物品数的百位数字是多少？","options":["0","2","8","3"],"answer":3,"explanation":"先算4612-1300=3312，再看百位数字。"}'::jsonb, 'builtin', '较大数认识', 'reason', array['全国通用', '情境应用']::text[], '08831baf4e256c39f5861510e6be738984e95a7de87303232bf22129edd2520d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-101', 'math', 3, 3, 'choice', '{"stem":"手工作品展：4盒贴纸，每盒31张。布置展板用去10张，还剩多少张？","options":["114张","124张","118张","104张"],"answer":0,"explanation":"先算4×31=124张，再减10张，剩114张。"}'::jsonb, 'builtin', '乘法', 'reason', array['全国通用', '情境应用']::text[], '7c9bcabfdc98a8d56cfe330ea78d131d6856fdd11f77a583fb58116e34002328', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-102', 'math', 3, 3, 'choice', '{"stem":"手工作品展：53名同学，每5人组成一组。最多组成几个完整小组，还剩几人？","options":["11组，剩0人","10组，剩3人","10组，剩2人","5组，剩3人"],"answer":1,"explanation":"53÷5=10……3，可组成10个完整小组，剩3人。"}'::jsonb, 'builtin', '除法', 'reason', array['全国通用', '情境应用']::text[], '27fb24fedf375fe671452074c0e16ab7bf2b52407e6b6c7e7f113ebd0cf08de9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-103', 'math', 3, 3, 'choice', '{"stem":"手工作品展：一盒点心平均分成7份，小雨吃了2份，小林吃了3份。两人一共吃了这盒点心的几分之几？","options":["3/7","2/7","5/7","7/5"],"answer":2,"explanation":"分母不变，把吃掉的份数相加：2+3=5，所以是5/7。"}'::jsonb, 'builtin', '分数初步', 'reason', array['全国通用', '情境应用']::text[], 'e2e6b3414ba8cf010e41d767d882dbc827d63962dd9b398f8342a689e0e8dee0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-104', 'math', 3, 3, 'choice', '{"stem":"手工作品展：活动9:00开始，先参观35分钟，休息10分钟，再体验25分钟。全部结束是几点？","options":["9:60","10:25","11:10","10:10"],"answer":3,"explanation":"总用时35+10+25=70分钟，即1小时10分钟，结束时间是10:10。"}'::jsonb, 'builtin', '质量与时间', 'reason', array['全国通用', '情境应用']::text[], '5bdecf4e059a6bf22a749d85136e8fa13629e5fb9cc9ce92ef361799ae74438d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-105', 'math', 3, 3, 'choice', '{"stem":"手工作品展：长21米、宽5米的长方形花坛中，有一块2米×5米的区域铺石子，其余种花。种花面积是多少？","options":["95平方米","105平方米","52平方米","100平方米"],"answer":0,"explanation":"花坛面积21×5=105，石子区面积2×5=10，种花面积是95平方米。"}'::jsonb, 'builtin', '周长与面积', 'reason', array['全国通用', '情境应用']::text[], '92301ee631a402269a91a5b426728a4867ebd082a3a80589c63e01b44a55269d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-106', 'math', 3, 1, 'fill', '{"stem":"手工作品展：调查结果是喜欢足球116人、篮球113人，喜欢足球的比篮球多___人。","answer":"3","explanation":"用116-113=3。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], '80bf530a843a4fdbf2b2026f3bd8da1ffed4ea55ea0e2bd807283bf2953d1d87', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-107', 'math', 3, 1, 'fill', '{"stem":"手工作品展：一盒彩笔10支，买3盒后送出3支，还剩___支。","answer":"27","explanation":"先求3盒总数，再减去送出的数量。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固']::text[], '2622518c7e610cc3e8d83ef4ee74335090f7f13f98ef3386cdd314def807e05d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-108', 'math', 3, 1, 'fill', '{"stem":"手工作品展：按规律填数：110，113，116，___。","answer":"119","explanation":"每次增加3，所以下一个数是119。"}'::jsonb, 'builtin', '规律发现', 'understand', array['全国通用', '基础巩固']::text[], '7f2370308ab3b5cb5750b014d0e8559d8c150c86ca7383aa31511f423182f0a6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-109', 'math', 3, 1, 'fill', '{"stem":"节水行动：14100里面有___个百。","answer":"141","explanation":"每100个组成1个百，所以共有141个百。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], 'a27148ac4669d685d71f8323b0bee8e9ac7d63ecf9e3de8ca9c7aba08533d2b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-110', 'math', 3, 1, 'fill', '{"stem":"节水行动：132 × 6 = ___","answer":"792","explanation":"用乘法计算两个因数的积。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], 'fcfc9b5006285124e48bdbc2af373103cfaeceed30eea8bcb844c41682ee8c7d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-111', 'math', 3, 1, 'fill', '{"stem":"节水行动：80 ÷ 8 = ___","answer":"10","explanation":"根据乘除法关系求商。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], '17c2b4cec376f9dbb2d2d92ec9564c064ede0be691f1dcfba27c4d28a7bcba04', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-112', 'math', 3, 1, 'fill', '{"stem":"节水行动：把一个苹果平均分成8份，每份是它的___。","answer":"1/8","explanation":"平均分成几份，每份就是几分之一。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], '455c89ef9d9284bbc4063cf749a6b48b690b16dc9c1ceaa190f05684c695c2db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-113', 'math', 3, 1, 'fill', '{"stem":"节水行动：2千克 = ___克","answer":"2000","explanation":"1千克是1000克，2千克是2000克。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], 'db9b72f36c473d8388bd39b447ccc50c897a5f5467f29a78c14fdbae6a1d8fae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-114', 'math', 3, 1, 'fill', '{"stem":"节水行动：边长7厘米的正方形，周长是___厘米。","answer":"28","explanation":"正方形周长等于边长乘4。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], '1ebb6c6170151725e39d46c8126fc3c6fc9f76ff878ec0b2911fbba986757a92', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-115', 'math', 3, 1, 'fill', '{"stem":"节水行动：调查结果是喜欢足球125人、篮球122人，喜欢足球的比篮球多___人。","answer":"3","explanation":"用125-122=3。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], 'aa35289f18bb8e0d7c8e93781091580b0e471fe84724301c7a218eced15f0102', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-116', 'math', 3, 1, 'fill', '{"stem":"节水行动：一盒彩笔9支，买3盒后送出4支，还剩___支。","answer":"23","explanation":"先求3盒总数，再减去送出的数量。"}'::jsonb, 'builtin', '两步问题', 'understand', array['全国通用', '基础巩固']::text[], '1a97a258ff08bc86f83565386a2762aeadccf4b3cfd85bc1f45c55457d18a218', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-117', 'math', 3, 2, 'fill', '{"stem":"节水行动：按规律填数：119，122，125，___。","answer":"128","explanation":"每次增加3，所以下一个数是128。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用']::text[], '8063d894fb79a14a88fc6b0bdd5da283835f42237db8e8a8830ef509a893783a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-118', 'math', 3, 2, 'fill', '{"stem":"旧物回收：15000里面有___个百。","answer":"150","explanation":"每100个组成1个百，所以共有150个百。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用']::text[], '55ea49ac1368ffd1c846a41f818562e60dc4741ebb7b922ae4d83d2b7ccc0cb5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-119', 'math', 3, 2, 'fill', '{"stem":"旧物回收：141 × 3 = ___","answer":"423","explanation":"用乘法计算两个因数的积。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用']::text[], 'f1bd2f6244ff1d0bd1f555c84f6254025766d8f77bc689ed5aa82b4e5b6a4f79', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-120', 'math', 3, 2, 'fill', '{"stem":"旧物回收：50 ÷ 5 = ___","answer":"10","explanation":"根据乘除法关系求商。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用']::text[], 'f291e155a4b4b276c209c2d37e46ea4214a14191d30f5f9579f07eb32756a0e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-121', 'math', 3, 2, 'fill', '{"stem":"旧物回收：把一个苹果平均分成7份，每份是它的___。","answer":"1/7","explanation":"平均分成几份，每份就是几分之一。"}'::jsonb, 'builtin', '分数初步', 'apply', array['全国通用', '情境应用']::text[], '20b208b3f85be7f51d77e849a7ffc5b88f264c8c2c10a0580c4e418cb0049eb3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-122', 'math', 3, 2, 'fill', '{"stem":"旧物回收：2千克 = ___克","answer":"2000","explanation":"1千克是1000克，2千克是2000克。"}'::jsonb, 'builtin', '质量与时间', 'apply', array['全国通用', '情境应用']::text[], '1efc395f2322bb098ff26ad63db9d74c265291b3bd630eb4e47eafc1b5154fba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-123', 'math', 3, 2, 'fill', '{"stem":"旧物回收：边长8厘米的正方形，周长是___厘米。","answer":"32","explanation":"正方形周长等于边长乘4。"}'::jsonb, 'builtin', '周长与面积', 'apply', array['全国通用', '情境应用']::text[], '2e0a658ed865a5a1695f4e987a04207b809d17d4ccd7ef7ab2835bdcd973ae73', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-124', 'math', 3, 3, 'fill', '{"stem":"旧物回收：三天收集废电池数量分别是143节、138节、141节，共收集___节。","answer":"422","explanation":"把三天数量相加：143+138+141=422节。"}'::jsonb, 'builtin', '数据表达', 'reason', array['全国通用', '情境应用']::text[], 'b30d5fe2866ea9088f9e7d16807f2737dd3a35ed1db2d87619ade6372351e6da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-125', 'math', 3, 3, 'fill', '{"stem":"旧物回收：4袋卡片，每袋11张，用去8张后还剩___张。","answer":"36","explanation":"先算4袋有11×4=44张，再减去8张，剩36张。"}'::jsonb, 'builtin', '两步问题', 'reason', array['全国通用', '情境应用']::text[], 'c657b0ae2a98191ebd3f3d358c96d7d4974a46ee39966d3d5920e735158b4fb1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-126', 'math', 3, 3, 'fill', '{"stem":"旧物回收：按“依次加1、加2、加3、加4”的规律填数：9，10，12，15，___。","answer":"19","explanation":"最后一次加4，15+4=19。"}'::jsonb, 'builtin', '规律发现', 'reason', array['全国通用', '情境应用']::text[], '52e330c3cc4a05bf6c67272f3a79889c66c4b15870ddc20483e0940f6ca3bbf4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-127', 'math', 3, 1, 'match', '{"stem":"健康打卡：第127组较大数认识练习：把左边内容与正确结果连起来","left":["3个千和2个百","5个百和8个一","7个千和4个十","9个百和6个十"],"right":["7040","3200","960","508"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据千位、百位、十位和个位表示的数值组成各数。"}'::jsonb, 'builtin', '较大数认识', 'understand', array['全国通用', '基础巩固']::text[], '0bc406d2368424b2c8b155413cc9b50c836442a4913c8b62e36e9a21c340691a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-128', 'math', 3, 1, 'match', '{"stem":"健康打卡：第128组乘法练习：把左边内容与正确结果连起来","left":["12×5","13×5","14×5","15×5"],"right":["70","60","75","65"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐个计算乘法算式的积。"}'::jsonb, 'builtin', '乘法', 'understand', array['全国通用', '基础巩固']::text[], '86b3f5ad328b6ad3413c393e8108e5a0808938cc89016b294fb522fbe41fef3a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-129', 'math', 3, 1, 'match', '{"stem":"健康打卡：第129组除法练习：把左边内容与正确结果连起来","left":["12÷2","14÷2","16÷2","18÷2"],"right":["8","6","9","7"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据乘除法关系计算每个商。"}'::jsonb, 'builtin', '除法', 'understand', array['全国通用', '基础巩固']::text[], '8a86e4d746f769dd3aaf6869f9a6c43cd96f36da298f4a4702f1946516459e82', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-130', 'math', 3, 1, 'match', '{"stem":"健康打卡：第130组分数初步练习：把左边内容与正确结果连起来","left":["平均分2份取1份","平均分3份取1份","平均分4份取3份","平均分5份取2份"],"right":["3/4","1/2","2/5","1/3"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分母表示平均分的份数，分子表示取的份数。"}'::jsonb, 'builtin', '分数初步', 'understand', array['全国通用', '基础巩固']::text[], '96deffae7cb4aecf6567551ea0f9dee296afed3ae61277bf79ab69ee46497d33', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-131', 'math', 3, 1, 'match', '{"stem":"健康打卡：第131组质量与时间练习：把左边内容与正确结果连起来","left":["2千克","3000克","1小时","90分钟"],"right":["60分钟","2000克","1小时30分","3千克"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"1千克=1000克，1小时=60分钟。"}'::jsonb, 'builtin', '质量与时间', 'understand', array['全国通用', '基础巩固']::text[], '1b85275ba1c7ea5be79071a827f9d142bd49addb608f2d22b3af100ac2bbe833', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-132', 'math', 3, 1, 'match', '{"stem":"健康打卡：第132组周长与面积练习：把左边内容与正确结果连起来","left":["边长3厘米正方形的周长","长5厘米宽2厘米长方形的面积","长6厘米宽3厘米长方形的周长","边长4厘米正方形的面积"],"right":["18厘米","12厘米","16平方厘米","10平方厘米"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分别使用正方形、长方形的周长或面积公式。"}'::jsonb, 'builtin', '周长与面积', 'understand', array['全国通用', '基础巩固']::text[], '5cd2d1c6dd71589668436f59aa025d9e2f4768ff5c753287c0314c69ec7ee672', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-133', 'math', 3, 1, 'match', '{"stem":"健康打卡：第133组数据表达练习：把左边内容与正确结果连起来","left":["一班8票、二班12票","晴天9天、雨天4天","篮球15人、足球11人","红花7朵、黄花7朵"],"right":["篮球多4人","二班多4票","两种一样多","晴天多5天"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"读取每组数据并比较相差数量。"}'::jsonb, 'builtin', '数据表达', 'understand', array['全国通用', '基础巩固']::text[], 'fc3b74785d65f3852f014bf178a3dde3046482456b9e1b410d95f588e78d2f68', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-134', 'math', 3, 2, 'match', '{"stem":"健康打卡：第134组两步问题练习：把左边内容与正确结果连起来","left":["20-6+3","5×4-2","36÷4+5","8+7×2"],"right":["14","17","22","18"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"按先乘除后加减的顺序计算两步算式。"}'::jsonb, 'builtin', '两步问题', 'apply', array['全国通用', '情境应用']::text[], 'd92ce894e30749ccb76374f989eec7f9b09578de34bb99615b01a26d91f2dd84', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-135', 'math', 3, 2, 'match', '{"stem":"健康打卡：第135组规律发现练习：把左边内容与正确结果连起来","left":["2,4,6,8","3,6,9,12","20,18,16,14","1,2,4,8"],"right":["下一个是12","下一个是10","下一个是16","下一个是15"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分别寻找加2、加3、减2和乘2的规律。"}'::jsonb, 'builtin', '规律发现', 'apply', array['全国通用', '情境应用']::text[], '11bfeaee77c29960ad166ae0a588fd81f240f53bd7a08d8f256029062994cc4d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-136', 'math', 3, 2, 'match', '{"stem":"研学计划：第136组较大数认识练习：把左边内容与正确结果连起来","left":["3个千和2个百","5个百和8个一","7个千和4个十","9个百和6个十"],"right":["7040","3200","960","508"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据千位、百位、十位和个位表示的数值组成各数。"}'::jsonb, 'builtin', '较大数认识', 'apply', array['全国通用', '情境应用']::text[], '85f677d9cd6ee19bc14fecc31feae2fe316cab05e3b32598d00b65fde72cd325', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-137', 'math', 3, 2, 'match', '{"stem":"研学计划：第137组乘法练习：把左边内容与正确结果连起来","left":["12×2","13×2","14×2","15×2"],"right":["28","24","30","26"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐个计算乘法算式的积。"}'::jsonb, 'builtin', '乘法', 'apply', array['全国通用', '情境应用']::text[], 'ee3e2b4db776041b0883787157e7f01854bd655c02cee00f994ebcc3571c3364', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-138', 'math', 3, 2, 'match', '{"stem":"研学计划：第138组除法练习：把左边内容与正确结果连起来","left":["18÷3","21÷3","24÷3","27÷3"],"right":["8","6","9","7"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据乘除法关系计算每个商。"}'::jsonb, 'builtin', '除法', 'apply', array['全国通用', '情境应用']::text[], '87545b5f5840c6cc1ec94f847a0423b08cbd2e0aed0ac6fccae84429161dc156', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-139', 'math', 3, 3, 'match', '{"stem":"研学计划：第139组分数初步练习：把左边内容与正确结果连起来","left":["平均分2份取1份","平均分3份取1份","平均分4份取3份","平均分5份取2份"],"right":["3/4","1/2","2/5","1/3"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"分母表示平均分的份数，分子表示取的份数。"}'::jsonb, 'builtin', '分数初步', 'reason', array['全国通用', '情境应用']::text[], '46791e9a4e38abc670b8ffa9a1b2594965dd979ac0d2e88e0d90d4e64ae9c5ac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g3-math-authored-140', 'math', 3, 3, 'match', '{"stem":"研学计划：第140组质量与时间练习：把左边内容与正确结果连起来","left":["2千克","3000克","1小时","90分钟"],"right":["60分钟","2000克","1小时30分","3千克"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"1千克=1000克，1小时=60分钟。"}'::jsonb, 'builtin', '质量与时间', 'reason', array['全国通用', '情境应用']::text[], '0f8e8b4251775458de95512b537eaa67f7ae655890eb9a3fd7af328c32c5b28e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;

commit;
