-- Auto-generated from validated canonical question JSON.
-- Safe to run repeatedly: rows are upserted by external_id.
begin;

insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-001', 'chinese', 1, 1, 'choice', '{"stem":"“花”的正确拼音是？","options":["huā","mā","lè","tǔ"],"answer":0,"explanation":"“花”读huā。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '8a71ba4e041ef50ca7dfdbba82893ffe3f7fe82ddee348a1662acc3eba69fa10', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-002', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“花”字？","options":["木头","花朵","早上","同学"],"answer":1,"explanation":"“花朵”中含有“花”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'c60da173710ba24cccb38cef50102894e9f1317df7cf49aed64f719ab7a3a09c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-003', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","方方的歌声","美丽的花朵","冰冷的太阳"],"answer":2,"explanation":"“美丽的花朵”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'd72b315db07c8f114c7e2598218a88c3eb40d331b9089f6cd993b1ae74105696', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-004', 'chinese', 1, 1, 'choice', '{"stem":"哪句话意思完整？","options":["在花。","很很漂亮。","我和。","花园里开着红花。"],"answer":3,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '644986edc5dfcad1c1bc4206b18f47ca572d089fc167f42086f16b9bf5abf0b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-005', 'chinese', 1, 1, 'choice', '{"stem":"句子“请问，我可以给花浇水吗___”末尾应填什么标点？","options":["？","，","。","、"],"answer":0,"explanation":"这是问句，末尾用问号。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'c5cd6618eee3cf5944b04443c4abea89ec6eb7cc620170839ef7915cc6f60cbf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-006', 'chinese', 1, 1, 'choice', '{"stem":"读短文：“小雨给花浇水。花抬起了头。”短文写了什么？","options":["小朋友在月球上","小雨给花浇水","所有东西都不见了","大家一直在睡觉"],"answer":1,"explanation":"从短文中可以找到“小雨给花浇水”。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '48c5c6eb46f9e7b036594f683b1fd1b61a827b558c52b2d2efe5e0ff1523b7a0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-007', 'chinese', 1, 1, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我什么也不说。","请问，我可以给花浇水吗？","把话说得别人听不懂。"],"answer":2,"explanation":"“请问，我可以给花浇水吗？”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '9ab341731e8f681889920c02bf0cec514ea0637f82bb73ceba2dc9e701a08146', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-008', 'chinese', 1, 1, 'choice', '{"stem":"“鸟”的正确拼音是？","options":["mā","lè","tǔ","niǎo"],"answer":3,"explanation":"“鸟”读niǎo。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'bb9ba1652aa2e74fae16538db835ed1677dd00ba31ca926ddb9eade3743352fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-009', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“鸟”字？","options":["小鸟","木头","早上","同学"],"answer":0,"explanation":"“小鸟”中含有“鸟”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '8233e929b3be4fc977aba58a44cf303ea1fa9cb5f34a823aaca954c1899c7d1f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-010', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","快乐的小鸟","方方的歌声","冰冷的太阳"],"answer":1,"explanation":"“快乐的小鸟”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'f7a30856de97dbc376941f54be37fd9788dd0683c680168bcb95ca1525d570e8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-011', 'chinese', 1, 1, 'choice', '{"stem":"哪句话意思完整？","options":["在鸟。","很很漂亮。","小鸟在树上唱歌。","我和。"],"answer":2,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '65c37ce1d9ccba5d98a9eb089d7817d547e245773b746ec5e0019d952104ea40', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-012', 'chinese', 1, 1, 'choice', '{"stem":"句子“请轻一点，不要吓到小鸟___”末尾应填什么标点？","options":["，","？","、","。"],"answer":3,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '7468172e9199d02e8dbd8d72db568ae44015f084a117e3d7d99c96e67b927d4e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-013', 'chinese', 1, 1, 'choice', '{"stem":"读短文：“一只小鸟落在树枝上。它唱起了歌。”短文写了什么？","options":["小鸟在树枝上唱歌","小朋友在月球上","所有东西都不见了","大家一直在睡觉"],"answer":0,"explanation":"从短文中可以找到“小鸟在树枝上唱歌”。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'bb8142154cd7424ce2e13f8f2f2e10c5b2074f1f3cde8fc4f39f6c5878119b48', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-014', 'chinese', 1, 1, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","请轻一点，不要吓到小鸟。","我什么也不说。","把话说得别人听不懂。"],"answer":1,"explanation":"“请轻一点，不要吓到小鸟。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'cab1a66c809f0fc7db04e1ce9aca1e55e3984ce92492edd58ec32070a6b57e85', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-015', 'chinese', 1, 1, 'choice', '{"stem":"“书”的正确拼音是？","options":["mā","lè","shū","tǔ"],"answer":2,"explanation":"“书”读shū。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'dfdeea83492e9989a4d48789eeeb615d1e33494fbb87e9b131cea238c27c7774', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-016', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“书”字？","options":["木头","早上","同学","图书"],"answer":3,"explanation":"“图书”中含有“书”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '296b6fd1d75ddd417d702efb1f91a5a7be7d93b2b8cf3f2b0d796ce03b435455', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-017', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["有趣的图书","香香的石头","方方的歌声","冰冷的太阳"],"answer":0,"explanation":"“有趣的图书”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '09281fd0b715220cd211f32e4d73503f2b4d6062e382ff7b2b8cc288f0d06421', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-018', 'chinese', 1, 1, 'choice', '{"stem":"哪句话意思完整？","options":["在书。","我在教室里读书。","很很漂亮。","我和。"],"answer":1,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '9b58a05b424b033af0fb63696857393f9af170376cf1f601dcd74de143b483a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-019', 'chinese', 1, 1, 'choice', '{"stem":"句子“这本书我看完了，谢谢你___”末尾应填什么标点？","options":["，","？","。","、"],"answer":2,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '07f9142e7f15bc524f48b7d0d8b90f11df317c41a57fad16559466835cd2f20f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-020', 'chinese', 1, 1, 'choice', '{"stem":"读短文：“明明借了一本书。看完后，他把书放回书架。”短文写了什么？","options":["小朋友在月球上","所有东西都不见了","大家一直在睡觉","明明把书放回书架"],"answer":3,"explanation":"从短文中可以找到“明明把书放回书架”。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'a51682bc2bb1617522f9e78416211f1c81674cf8d4569e4493c9e34450874d91', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-021', 'chinese', 1, 1, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["这本书我看完了，谢谢你。","快点，必须听我的！","我什么也不说。","把话说得别人听不懂。"],"answer":0,"explanation":"“这本书我看完了，谢谢你。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'afbf77edfb604be5f210d50f0f96b656f3e91187c480289aa8f5e870b099730e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-022', 'chinese', 1, 1, 'choice', '{"stem":"“水”的正确拼音是？","options":["mā","shuǐ","lè","tǔ"],"answer":1,"explanation":"“水”读shuǐ。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'd315f71bd282bc6a27e2dd33b8eeed3c10ede2945149ac8e69d441be12389067', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-023', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“水”字？","options":["木头","早上","河水","同学"],"answer":2,"explanation":"“河水”中含有“水”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '9efe80ae71c607e684fd69e43fc6a6e914111369ec455fb4a30281f827f14245', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-024', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","方方的歌声","冰冷的太阳","清清的河水"],"answer":3,"explanation":"“清清的河水”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'e905e48080cdfa99ce9699a403ff2267c7093f9e79ef57bd1881568bba57637f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-025', 'chinese', 1, 1, 'choice', '{"stem":"哪句话意思完整？","options":["杯子里有温水。","在水。","很很漂亮。","我和。"],"answer":0,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '4252fe155c158545c8b0fc4d4a25a3c9956f90582ba862a844faedbab2dd6302', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-026', 'chinese', 1, 1, 'choice', '{"stem":"句子“请给我一杯温水，谢谢___”末尾应填什么标点？","options":["，","。","？","、"],"answer":1,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '5f31f4c055ae32d9cf9a7f153cdaa7c351b4e39ecd6089ae87faabf08f0c77f5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-027', 'chinese', 1, 1, 'choice', '{"stem":"读短文：“运动以后，乐乐先擦汗，再慢慢喝水。”短文写了什么？","options":["小朋友在月球上","所有东西都不见了","乐乐运动后慢慢喝水","大家一直在睡觉"],"answer":2,"explanation":"从短文中可以找到“乐乐运动后慢慢喝水”。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'bb4e0e0e14a075d3169e8aabe3d54e6165359a168b9dc7cbebab3b7ff6165b57', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-028', 'chinese', 1, 1, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我什么也不说。","把话说得别人听不懂。","请给我一杯温水，谢谢。"],"answer":3,"explanation":"“请给我一杯温水，谢谢。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '8b846a2d03863b53803dbddf109054da52f639f5f8d6a7aaaf2b24f10e145c05', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-029', 'chinese', 1, 1, 'choice', '{"stem":"“月”的正确拼音是？","options":["yuè","mā","lè","tǔ"],"answer":0,"explanation":"“月”读yuè。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '62874e4f1e94c492f979d04aaadb02febf8722c0ffeee27bd7efaba48c1faffe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-030', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“月”字？","options":["木头","月亮","早上","同学"],"answer":1,"explanation":"“月亮”中含有“月”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '638aaf6598883121819a678fe5e1bae6adf6840d435da49f0109e1b8b29417e4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-031', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","方方的歌声","弯弯的月亮","冰冷的太阳"],"answer":2,"explanation":"“弯弯的月亮”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '2d5b787d0c3176789c97a89e5df13a5af1e2eee595b577856c95e47b1fbb4755', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-032', 'chinese', 1, 1, 'choice', '{"stem":"哪句话意思完整？","options":["在月。","很很漂亮。","我和。","月亮挂在夜空中。"],"answer":3,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '3bb77a970a2d157810605b9f32789b3504aac4beeca17eb58956dc7336ab9ab5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-033', 'chinese', 1, 1, 'choice', '{"stem":"句子“妈妈，我们一起看月亮吧___”末尾应填什么标点？","options":["！","，","？","、"],"answer":0,"explanation":"语气较强，末尾用感叹号。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'e1def7355d59ddc52009d1612cf2c882af005c469dfccb44dade33d5096b8369', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-034', 'chinese', 1, 1, 'choice', '{"stem":"读短文：“天黑了，月亮升起来。星星也亮了。”短文写了什么？","options":["小朋友在月球上","天黑后月亮和星星亮了","所有东西都不见了","大家一直在睡觉"],"answer":1,"explanation":"从短文中可以找到“天黑后月亮和星星亮了”。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '94b8a8dd65084ceb6c74b6479763b1a1e194b2d7102ca26867c24048851b9046', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-035', 'chinese', 1, 1, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我什么也不说。","妈妈，我们一起看月亮吧！","把话说得别人听不懂。"],"answer":2,"explanation":"“妈妈，我们一起看月亮吧！”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'efa3443c86b7b3949299bc3d753726d5e917be7b23fd5bb629bce1a8b2616e84', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-036', 'chinese', 1, 1, 'choice', '{"stem":"“雨”的正确拼音是？","options":["mā","lè","tǔ","yǔ"],"answer":3,"explanation":"“雨”读yǔ。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'ba5d3cfda1c428153eb2c9bb7de7afada5d2699cd49bf6778b0c0eba3a0d661f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-037', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“雨”字？","options":["下雨","木头","早上","同学"],"answer":0,"explanation":"“下雨”中含有“雨”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '7472de8d972ae0b3542042a5a1ab967032801917b0d363a40f605f6419775aa4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-038', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","细细的小雨","方方的歌声","冰冷的太阳"],"answer":1,"explanation":"“细细的小雨”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '4dee65095f0be47b3a0a69cb2a0f39f5d8ec0ec97aa15c2c14ffc12257063fdb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-039', 'chinese', 1, 1, 'choice', '{"stem":"哪句话意思完整？","options":["在雨。","很很漂亮。","小雨点落在窗上。","我和。"],"answer":2,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'bfe38f0d719dc6b8a9661dd9c0ed82c053106503c176ae6ba93ec43ef367a6f7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-040', 'chinese', 1, 1, 'choice', '{"stem":"句子“我们一起打伞回家吧___”末尾应填什么标点？","options":["，","？","、","。"],"answer":3,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'ec77fe660a91019ca1222a4384d7664642c8914f57db31bde3a2a2a53c06b59f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-041', 'chinese', 1, 1, 'choice', '{"stem":"读短文：“放学时下雨了。东东和同学合用一把伞。”短文写了什么？","options":["东东和同学合用雨伞","小朋友在月球上","所有东西都不见了","大家一直在睡觉"],"answer":0,"explanation":"从短文中可以找到“东东和同学合用雨伞”。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'e88b912d67235a2a6960b57598909d592be69ecf0d5d8af653ae77844549e9a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-042', 'chinese', 1, 1, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我们一起打伞回家吧。","我什么也不说。","把话说得别人听不懂。"],"answer":1,"explanation":"“我们一起打伞回家吧。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '10c4796a4e387cb0e332a17c0138158846db786aa7182543063dc914dcfc92ca', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-043', 'chinese', 1, 1, 'choice', '{"stem":"“山”的正确拼音是？","options":["mā","lè","shān","tǔ"],"answer":2,"explanation":"“山”读shān。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '47a9be98876fde28244e73a34c76a1e5326093dfca9f55e0140d253ab416b9d1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-044', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“山”字？","options":["木头","早上","同学","高山"],"answer":3,"explanation":"“高山”中含有“山”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '0aefe123b6c323c80f9828dbd960a76f973f10edda0409511c24c9a589f3a855', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-045', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["高高的山峰","香香的石头","方方的歌声","冰冷的太阳"],"answer":0,"explanation":"“高高的山峰”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '6d99fe0bddc0dec3ab00b4f91f0318e07ec2487a077afc25d5a1eee9b7682cb7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-046', 'chinese', 1, 1, 'choice', '{"stem":"哪句话意思完整？","options":["在山。","远处有一座高山。","很很漂亮。","我和。"],"answer":1,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '5d0748097d7b7616783c10eb9b53f812b0d7da588bf59f3475766024d2bf8141', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-047', 'chinese', 1, 1, 'choice', '{"stem":"句子“山路有点滑，请慢慢走___”末尾应填什么标点？","options":["，","？","。","、"],"answer":2,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'c42573a727dddcb50732f5b2abc8943dd95fdb9860ad6a9472f53b6a7ab23bf0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-048', 'chinese', 1, 1, 'choice', '{"stem":"读短文：“山脚有一条小路。大家沿着小路慢慢走。”短文写了什么？","options":["小朋友在月球上","所有东西都不见了","大家一直在睡觉","大家沿着山脚小路走"],"answer":3,"explanation":"从短文中可以找到“大家沿着山脚小路走”。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'e477eb43c2ce558c0fe378aa54ce6ce0c7d096f3dc13e74b62eaebe6d01cd89c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-049', 'chinese', 1, 1, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["山路有点滑，请慢慢走。","快点，必须听我的！","我什么也不说。","把话说得别人听不懂。"],"answer":0,"explanation":"“山路有点滑，请慢慢走。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'dc0366c000fb49d07748490a801018d48fc0bc7a43ad4fd6e969e7ecee677c96', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-050', 'chinese', 1, 1, 'choice', '{"stem":"“鱼”的正确拼音是？","options":["mā","yú","lè","tǔ"],"answer":1,"explanation":"“鱼”读yú。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '698cfd8bada623c985716a6b986d92838154702b8145960ff14adea64e259c76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-051', 'chinese', 1, 1, 'choice', '{"stem":"哪个词中有“鱼”字？","options":["木头","早上","小鱼","同学"],"answer":2,"explanation":"“小鱼”中含有“鱼”字。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '6750a9158b4083c0e97257c78a9ddb9082c5404d2ce64c352b678f94aff59b0b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-052', 'chinese', 1, 1, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","方方的歌声","冰冷的太阳","游动的小鱼"],"answer":3,"explanation":"“游动的小鱼”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'fbe9bec52388a7d441906e9d770c2de082c0f249da9d3332244df12f9ac18efe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-053', 'chinese', 1, 2, 'choice', '{"stem":"哪句话意思完整？","options":["小鱼在水里游。","在鱼。","很很漂亮。","我和。"],"answer":0,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '643a321b1ef0f1e598ac20f8b70d308fae0f9ce753f626dfcddd37a7fbc05b44', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-054', 'chinese', 1, 2, 'choice', '{"stem":"句子“请不要往池塘里扔东西___”末尾应填什么标点？","options":["，","。","？","、"],"answer":1,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '8433cf43fc23c31f6cc4f1d29fd0dd2df775865b0b1c8991932f6426ab53a3d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-055', 'chinese', 1, 2, 'choice', '{"stem":"读短文：“池水很清。三条小鱼在水草旁游来游去。”短文写了什么？","options":["小朋友在月球上","所有东西都不见了","三条小鱼在水草旁游","大家一直在睡觉"],"answer":2,"explanation":"从短文中可以找到“三条小鱼在水草旁游”。"}'::jsonb, 'builtin', '短文信息', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '60c481eb3f52b68a8fca1d7d7ea445184efe4ac19b361f3763839947f2a562f5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-056', 'chinese', 1, 2, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我什么也不说。","把话说得别人听不懂。","请不要往池塘里扔东西。"],"answer":3,"explanation":"“请不要往池塘里扔东西。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '8ffa2f6eeeeb89c4a5b83bf839e94f6d4b0de84590146f5950fecdd32c081594', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-057', 'chinese', 1, 2, 'choice', '{"stem":"“风”的正确拼音是？","options":["fēng","mā","lè","tǔ"],"answer":0,"explanation":"“风”读fēng。"}'::jsonb, 'builtin', '拼音与音节', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '04bdc4d987251f317b25669828c1f1ff6d32f0d9580ab0b621994ffab901a434', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-058', 'chinese', 1, 2, 'choice', '{"stem":"哪个词中有“风”字？","options":["木头","大风","早上","同学"],"answer":1,"explanation":"“大风”中含有“风”字。"}'::jsonb, 'builtin', '常用字识读', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'c92780ecbc878f555a7705c476bccea44215148c7f12adf74bb0640be4b3aead', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-059', 'chinese', 1, 2, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","方方的歌声","轻轻的春风","冰冷的太阳"],"answer":2,"explanation":"“轻轻的春风”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'e2ba1a1e5f6246b5f1e4e1a6a661dcd70bf8a13e71dc207ec8add11f378bfd18', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-060', 'chinese', 1, 2, 'choice', '{"stem":"哪句话意思完整？","options":["在风。","很很漂亮。","我和。","春风吹动柳条。"],"answer":3,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '70d97e02e6a6b0ffa944067fa591523d8c5a697ac152dfaca5641c32b7f1c1ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-061', 'chinese', 1, 2, 'choice', '{"stem":"句子“风有点大，请把帽子戴好___”末尾应填什么标点？","options":["。","，","？","、"],"answer":0,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '7bb1c13109e359e5be9709d605c01a0b6514acbc23a8d79ed2403d2bffe09a60', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-062', 'chinese', 1, 2, 'choice', '{"stem":"读短文：“风吹来了。树叶轻轻摇动，风车也转起来。”短文写了什么？","options":["小朋友在月球上","风让树叶摇动、风车转动","所有东西都不见了","大家一直在睡觉"],"answer":1,"explanation":"从短文中可以找到“风让树叶摇动、风车转动”。"}'::jsonb, 'builtin', '短文信息', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '1a519fac2d230cbae4816b5440b0cf4f7d25b5a418eb9193e000de5f18b9b459', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-063', 'chinese', 1, 2, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我什么也不说。","风有点大，请把帽子戴好。","把话说得别人听不懂。"],"answer":2,"explanation":"“风有点大，请把帽子戴好。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '7bdef7e9bbf265f7cd921debd9d31373484873c9f2a91d7ef379527b995e975e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-064', 'chinese', 1, 2, 'choice', '{"stem":"“云”的正确拼音是？","options":["mā","lè","tǔ","yún"],"answer":3,"explanation":"“云”读yún。"}'::jsonb, 'builtin', '拼音与音节', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '0c5385b8ecaf6bb2859c265ee35c01f13cf4a701cb7be1c3d34637c954f5a9f3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-065', 'chinese', 1, 2, 'choice', '{"stem":"哪个词中有“云”字？","options":["白云","木头","早上","同学"],"answer":0,"explanation":"“白云”中含有“云”字。"}'::jsonb, 'builtin', '常用字识读', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '8bfd78b7f734e3f6eef6e7468c984b9ede919441ae4cfdb552969b6667511913', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-066', 'chinese', 1, 2, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","软软的白云","方方的歌声","冰冷的太阳"],"answer":1,"explanation":"“软软的白云”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '4106d388bc2fc34de24f188341b0893b16be9550685fd289636b44e2eda8fd93', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-067', 'chinese', 1, 2, 'choice', '{"stem":"哪句话意思完整？","options":["在云。","很很漂亮。","白云在天空中飘。","我和。"],"answer":2,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '36c84de1ed77dabd55aac70d3eca9a97c4ae6ef10f897d65dbd3c248c9ef617e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-068', 'chinese', 1, 2, 'choice', '{"stem":"句子“你看，那朵云像什么___”末尾应填什么标点？","options":["，","。","、","？"],"answer":3,"explanation":"这是问句，末尾用问号。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'bbc9ff4bcbd594e947abedcd9384e83379636b0bcdf0e4e887907961c1d38c58', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-069', 'chinese', 1, 2, 'choice', '{"stem":"读短文：“蓝天上有几朵白云。一会儿像小羊，一会儿像棉花。”短文写了什么？","options":["白云的样子会变化","小朋友在月球上","所有东西都不见了","大家一直在睡觉"],"answer":0,"explanation":"从短文中可以找到“白云的样子会变化”。"}'::jsonb, 'builtin', '短文信息', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '810bf095a7d40eb17f9c48d477a4e5ac4fd591e047eb33d044608dc95bc55838', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-070', 'chinese', 1, 2, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","你看，那朵云像什么？","我什么也不说。","把话说得别人听不懂。"],"answer":1,"explanation":"“你看，那朵云像什么？”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '17af9faa26d6c5d99a7561cc9471b14589b5d4a7da168bbf2ad2ca5970b8a3cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-071', 'chinese', 1, 2, 'choice', '{"stem":"“家”的正确拼音是？","options":["mā","lè","jiā","tǔ"],"answer":2,"explanation":"“家”读jiā。"}'::jsonb, 'builtin', '拼音与音节', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '4f38762b6e07c07b4bf97e0ae463b62f6032baa41971ff7b48b83114727e9180', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-072', 'chinese', 1, 2, 'choice', '{"stem":"哪个词中有“家”字？","options":["木头","早上","同学","回家"],"answer":3,"explanation":"“回家”中含有“家”字。"}'::jsonb, 'builtin', '常用字识读', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '89bef179fa224c1b351651cf9bc78c4d6a868192c8408f82514916f262e035ee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-073', 'chinese', 1, 2, 'choice', '{"stem":"哪个词语搭配最合适？","options":["温暖的家","香香的石头","方方的歌声","冰冷的太阳"],"answer":0,"explanation":"“温暖的家”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '4ae9bccd6a9f3471309c7c0a7de0b586cb270dd64a28781956c8e504416bc372', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-074', 'chinese', 1, 2, 'choice', '{"stem":"哪句话意思完整？","options":["在家。","放学后我按时回家。","很很漂亮。","我和。"],"answer":1,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '095b211b236c84bf17f735723ad9e28bedfab8f32f1b10ec38e64c0aed32e457', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-075', 'chinese', 1, 2, 'choice', '{"stem":"句子“我来摆筷子，可以吗___”末尾应填什么标点？","options":["，","。","？","、"],"answer":2,"explanation":"这是问句，末尾用问号。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '6120ff3ef0b7addd9f365cf2ac58efe4d6c25187e9a1210e9be0df2bd8d6e2a8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-076', 'chinese', 1, 2, 'choice', '{"stem":"读短文：“爸爸在做饭，妈妈在摆碗。我也来帮忙。”短文写了什么？","options":["小朋友在月球上","所有东西都不见了","大家一直在睡觉","一家人在准备晚饭"],"answer":3,"explanation":"从短文中可以找到“一家人在准备晚饭”。"}'::jsonb, 'builtin', '短文信息', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'bd39d28bfa4af74ad1f0037b874f1efa98e53af386cd050e77d90ff2d7160c91', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-077', 'chinese', 1, 2, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["我来摆筷子，可以吗？","快点，必须听我的！","我什么也不说。","把话说得别人听不懂。"],"answer":0,"explanation":"“我来摆筷子，可以吗？”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'b38e6c1f57a7b5d318a0a79b4219ff8dafb0c71f3946ae383930bc7b2991dc4d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-078', 'chinese', 1, 2, 'choice', '{"stem":"“门”的正确拼音是？","options":["mā","mén","lè","tǔ"],"answer":1,"explanation":"“门”读mén。"}'::jsonb, 'builtin', '拼音与音节', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '96d96f4a27e42a3ad7d201218d4568d12f847b02f40de01c647ecccdf855348c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-079', 'chinese', 1, 2, 'choice', '{"stem":"哪个词中有“门”字？","options":["木头","早上","大门","同学"],"answer":2,"explanation":"“大门”中含有“门”字。"}'::jsonb, 'builtin', '常用字识读', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'd6cb0c41be7a8ede9e7fb652239ad14f97c6840b4c63e5e8b4bba0375ef1c2da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-080', 'chinese', 1, 2, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","方方的歌声","冰冷的太阳","打开的大门"],"answer":3,"explanation":"“打开的大门”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '05b5912e35893fa183a9eaa69a694e5831f5585ce92e81e8201cd3da4d694816', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-081', 'chinese', 1, 2, 'choice', '{"stem":"哪句话意思完整？","options":["老师轻轻关上门。","在门。","很很漂亮。","我和。"],"answer":0,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '4149724edb371111d3626fe7a98e7c14cd9d6df0102ceb579b5b2a6e608dd5b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-082', 'chinese', 1, 2, 'choice', '{"stem":"句子“对不起，我来晚了___”末尾应填什么标点？","options":["，","。","？","、"],"answer":1,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'e46d00c4119423218af0cc5e0ebe435d224c10a1525c9ede263b7baac9029668', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-083', 'chinese', 1, 2, 'choice', '{"stem":"读短文：“上课铃响了。小文轻轻关门，回到座位。”短文写了什么？","options":["小朋友在月球上","所有东西都不见了","小文关门后回到座位","大家一直在睡觉"],"answer":2,"explanation":"从短文中可以找到“小文关门后回到座位”。"}'::jsonb, 'builtin', '短文信息', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'ef3bd30aa71bea2a7bfb3c01c6cca829885b2503c9ace7a564eac53fc0997b70', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-084', 'chinese', 1, 2, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我什么也不说。","把话说得别人听不懂。","对不起，我来晚了。"],"answer":3,"explanation":"“对不起，我来晚了。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '3e97bee92a288494c31732196dfb075e563eb306802b5060b9f5a9725eb2cafa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-085', 'chinese', 1, 2, 'choice', '{"stem":"“手”的正确拼音是？","options":["shǒu","mā","lè","tǔ"],"answer":0,"explanation":"“手”读shǒu。"}'::jsonb, 'builtin', '拼音与音节', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '756798e71c85925244333ebe45e4b3c7ea811dd67ee7dd0be3b4a17767f0f076', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-086', 'chinese', 1, 2, 'choice', '{"stem":"哪个词中有“手”字？","options":["木头","小手","早上","同学"],"answer":1,"explanation":"“小手”中含有“手”字。"}'::jsonb, 'builtin', '常用字识读', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'a2e467788d62360b886764cbbb712c2cb2fce144a82bc9b6dbe35d3c147e12a0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-087', 'chinese', 1, 2, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","方方的歌声","干净的小手","冰冷的太阳"],"answer":2,"explanation":"“干净的小手”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '33e5b47e8e51377f83aa044eeb6816664982ae6cc0ffefe798a0213ac89149a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-088', 'chinese', 1, 2, 'choice', '{"stem":"哪句话意思完整？","options":["在手。","很很漂亮。","我和。","饭前要认真洗手。"],"answer":3,"explanation":"完整的句子能把谁或什么、怎么样说清楚。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '6f84bea31c0d09fbfc1b52eafd73c5ed6a477ad12165dde66d5b30bb68b44553', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-089', 'chinese', 1, 2, 'choice', '{"stem":"句子“请借我用一下洗手液___”末尾应填什么标点？","options":["。","，","？","、"],"answer":0,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '201cb27d25506e242a196c37b5175a8c74bbaa75289520c871c1c0af6fd27791', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-090', 'chinese', 1, 3, 'choice', '{"stem":"读短文：“做完手工，小美的手上有胶水。她先洗手再吃点心。”下面哪句话把短文的主要事情说清楚了？","options":["短文只写了一个颜色","小美洗手后吃点心","文中谁也没有行动","事情发生在海底"],"answer":1,"explanation":"短文的关键信息是“小美洗手后吃点心”。"}'::jsonb, 'builtin', '短文信息', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], 'd6071371129861ec652a49c9e81d473f4bab815ac42080d00c9cd14d64968612', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-091', 'chinese', 1, 3, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","我什么也不说。","请借我用一下洗手液。","把话说得别人听不懂。"],"answer":2,"explanation":"“请借我用一下洗手液。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], 'fcd38e329dc7c93042b68aca0bc680d911213b71e04c8fc882089d9d3654f9ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-092', 'chinese', 1, 3, 'choice', '{"stem":"“汽车”中“车”的正确读音是哪一个？","options":["cha","mā","lè","chē"],"answer":3,"explanation":"“车”在“汽车”中读chē。"}'::jsonb, 'builtin', '拼音与音节', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '69d9233945f321bb92e1cbdf461af68702d4601ccd207e07693117a7a0b0cf69', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-093', 'chinese', 1, 3, 'choice', '{"stem":"哪个词中有“车”字？","options":["汽车","木头","早上","同学"],"answer":0,"explanation":"“汽车”中含有“车”字。"}'::jsonb, 'builtin', '常用字识读', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '96ee686e6a1afa8d9c92c72c1c4a68ab4446736c57dfe3b1a61f597458ea6f3a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-094', 'chinese', 1, 3, 'choice', '{"stem":"哪个词语搭配最合适？","options":["香香的石头","行驶的汽车","方方的歌声","冰冷的太阳"],"answer":1,"explanation":"“行驶的汽车”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '4b5395357efb91dbab9bce4abbf7129d805cc089fda8be4f7239eb8e93569e23', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-095', 'chinese', 1, 3, 'choice', '{"stem":"把“谁、在哪里、做什么”说清楚，哪句话最完整？","options":["车很好。","在那里做。","汽车在路上行驶","真漂亮呀。"],"answer":2,"explanation":"“汽车在路上行驶”把事物和动作说清楚了。"}'::jsonb, 'builtin', '简单句', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '27d0a863491be4b6ed983eb735673d02c4dc3cb673d3f6217242037c6847e325', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-096', 'chinese', 1, 3, 'choice', '{"stem":"句子“现在是红灯，请等一等___”末尾应填什么标点？","options":["，","？","、","。"],"answer":3,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '20a6083b76b14adc89d5c6f084596b3e50d92ff65f53249a26452345efbb37d1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-097', 'chinese', 1, 3, 'choice', '{"stem":"读短文：“红灯亮了，汽车停下来。绿灯亮后，汽车再出发。”下面哪句话把短文的主要事情说清楚了？","options":["汽车看信号灯通行","短文只写了一个颜色","文中谁也没有行动","事情发生在海底"],"answer":0,"explanation":"短文的关键信息是“汽车看信号灯通行”。"}'::jsonb, 'builtin', '短文信息', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], 'ce0c8eb0782603d154ff12177c7e1a01693c4cf642c5abe91477b368e66750b5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-098', 'chinese', 1, 3, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["快点，必须听我的！","现在是红灯，请等一等。","我什么也不说。","把话说得别人听不懂。"],"answer":1,"explanation":"“现在是红灯，请等一等。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], 'e3da1e4ca42c7b43e9fee5b440f472f4ab5f13b5130fca274b02582c2136b9dc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-099', 'chinese', 1, 3, 'choice', '{"stem":"“星星”中“星”的正确读音是哪一个？","options":["xang","mā","xīng","lè"],"answer":2,"explanation":"“星”在“星星”中读xīng。"}'::jsonb, 'builtin', '拼音与音节', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '7f3d237b3880f805d8a1e2af5e8a25a9cd65902308d0e840fbafcc3927320e93', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-100', 'chinese', 1, 3, 'choice', '{"stem":"哪个词中有“星”字？","options":["木头","早上","同学","星星"],"answer":3,"explanation":"“星星”中含有“星”字。"}'::jsonb, 'builtin', '常用字识读', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '969fcceb06c0e3314545ea8068b97651d69122a1e7c1f1c10efaea553554ea59', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-101', 'chinese', 1, 3, 'choice', '{"stem":"哪个词语搭配最合适？","options":["闪亮的星星","香香的石头","方方的歌声","冰冷的太阳"],"answer":0,"explanation":"“闪亮的星星”符合事物特点，搭配自然。"}'::jsonb, 'builtin', '字词搭配', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], 'eb6298820fdb50e336dee8bcd797c104c2f3ca0b7c06002b3c75eb9aaaa089b0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-102', 'chinese', 1, 3, 'choice', '{"stem":"把“谁、在哪里、做什么”说清楚，哪句话最完整？","options":["星很好。","星星在夜空中闪","在那里做。","真漂亮呀。"],"answer":1,"explanation":"“星星在夜空中闪”把事物和动作说清楚了。"}'::jsonb, 'builtin', '简单句', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], 'acfa1f196d3eaf0e4ad51331f3190a896729040dd34d8aa7938dd256d4923220', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-103', 'chinese', 1, 3, 'choice', '{"stem":"句子“请排好队，大家轮流看___”末尾应填什么标点？","options":["，","？","。","、"],"answer":2,"explanation":"这是陈述句，末尾用句号。"}'::jsonb, 'builtin', '标点初步', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '5272b9f428b3d8ea8302dae56faff911d73ee7c79bc58c2af14c4795f5571d8d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-104', 'chinese', 1, 3, 'choice', '{"stem":"读短文：“夜里，天文老师带大家看星星。大家排队使用望远镜。”下面哪句话把短文的主要事情说清楚了？","options":["短文只写了一个颜色","文中谁也没有行动","事情发生在海底","大家排队用望远镜看星星"],"answer":3,"explanation":"短文的关键信息是“大家排队用望远镜看星星”。"}'::jsonb, 'builtin', '短文信息', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '3d1874d8beb8cc7557b4022914c5834631ac9d9fd1eec16fa2a6c25524425c2d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-105', 'chinese', 1, 3, 'choice', '{"stem":"在这个生活情境中，哪句话最清楚、最有礼貌？","options":["请排好队，大家轮流看。","快点，必须听我的！","我什么也不说。","把话说得别人听不懂。"],"answer":0,"explanation":"“请排好队，大家轮流看。”把意思说清楚，也注意了礼貌。"}'::jsonb, 'builtin', '生活表达', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '831b969b267bcebce186ada46b2a5f63351372e5f3de409b89bf9feae2d56fe3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-106', 'chinese', 1, 1, 'fill', '{"stem":"“妈”的拼音是mā，声调是第___声。","answer":"一","explanation":"结合一年级语文知识，填“一”最合适。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '9266f381ff24ecffd39bb19b4ce9b8846c66716d39846fc57c470fc8479574d0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-107', 'chinese', 1, 1, 'fill', '{"stem":"“小河”的“河”左边是三点___。","answer":"水","explanation":"结合一年级语文知识，填“水”最合适。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'bed34eb24beb3519ceddbb5926484b0ceb1c3c33a1cccf58c316195c659a85d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-108', 'chinese', 1, 1, 'fill', '{"stem":"弯弯的___亮挂在天空。","answer":"月","explanation":"结合一年级语文知识，填“月”最合适。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'd3617a2d2607e8865356700b0693382f2047907f5f1d1b0233c8c77e4fb5a826', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-109', 'chinese', 1, 1, 'fill', '{"stem":"“小鸟在树上___歌。”填一个合适的动作。","answer":"唱","explanation":"结合一年级语文知识，填“唱”最合适。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'd4c6875a8d6917c46f349c5852155bbae08d59581a617d7241dd1c7aa34fe3ce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-110', 'chinese', 1, 1, 'fill', '{"stem":"“你叫什么名字___”末尾应填问号，写作___。","answer":"？","explanation":"结合一年级语文知识，填“？”最合适。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'f491c2c192918739c11300c94f80c9d6becdeb6634a501202ce85d24dcdee7be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-111', 'chinese', 1, 1, 'fill', '{"stem":"读：“小猫在睡觉。”小猫正在___。","answer":"睡觉","explanation":"结合一年级语文知识，填“睡觉”最合适。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '640cf715a637995ca28b57f5345aee9801059029d8d86c3e2013fb3dc2b6b4e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-112', 'chinese', 1, 1, 'fill', '{"stem":"得到别人帮助后，可以说“___谢”。","answer":"谢","explanation":"结合一年级语文知识，填“谢”最合适。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'a8cb798d38564391f6f7dff2fa84e6e5ea271506aa2abb8c8caa15ae3b7b92d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-113', 'chinese', 1, 1, 'fill', '{"stem":"“雨”的拼音是___。","answer":"yǔ","explanation":"结合一年级语文知识，填“yǔ”最合适。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'bd61dd6bd8d23cf3462b84a8470147593fd68d14959bfeb1d49cf8240836afee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-114', 'chinese', 1, 1, 'fill', '{"stem":"“日”和“月”合在一起是“___”字。","answer":"明","explanation":"结合一年级语文知识，填“明”最合适。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'b836baa06c9c59c2c6cdcd376a15c5817d6c72da5291144539465c7bcbf571af', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-115', 'chinese', 1, 1, 'fill', '{"stem":"清清的___水慢慢流。","answer":"河","explanation":"结合一年级语文知识，填“河”最合适。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '0ceae5f158295218b1088fc9360412181dab5e37b29e18375e057142e554878d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-116', 'chinese', 1, 1, 'fill', '{"stem":"“我在教室里___书。”填一个合适的动作。","answer":"读","explanation":"结合一年级语文知识，填“读”最合适。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'b9bb25e153066750f781e375e9fb25244c09fff815792fbb2b01e46b00b3eeb0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-117', 'chinese', 1, 2, 'fill', '{"stem":"“今天是星期一___”末尾用句号，写作___。","answer":"。","explanation":"结合一年级语文知识，填“。”最合适。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '956d79e4ab6bf3d5a2d3d7fa9548b8aa2a2ce396a5e496f4ee787dde742b2310', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-118', 'chinese', 1, 2, 'fill', '{"stem":"读：“东东拿伞去上学。”东东拿了___。","answer":"伞","explanation":"结合一年级语文知识，填“伞”最合适。"}'::jsonb, 'builtin', '短文信息', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '6d6299b0a750369a34fd59fe396227f54b13cb62aac173f4d6400965ddbd67e6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-119', 'chinese', 1, 2, 'fill', '{"stem":"不小心碰到同学，可以说“对不___”。","answer":"起","explanation":"结合一年级语文知识，填“起”最合适。"}'::jsonb, 'builtin', '生活表达', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '84d23151250da2097f1c3887b813882d014449e0ab15a1ba6283a15ef2cd2088', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-120', 'chinese', 1, 2, 'fill', '{"stem":"“山”的拼音是shān，声母是___。","answer":"sh","explanation":"结合一年级语文知识，填“sh”最合适。"}'::jsonb, 'builtin', '拼音与音节', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '5682041a78b872a88a8472ae2bb1b5f6027da29a9a72afbb628254d0b49d3ece', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-121', 'chinese', 1, 2, 'fill', '{"stem":"“森林”两个字都有“___”。","answer":"木","explanation":"结合一年级语文知识，填“木”最合适。"}'::jsonb, 'builtin', '常用字识读', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '1d611faf7c47a824b14259335eeb893dbead3586526063ab1406143759334c17', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-122', 'chinese', 1, 2, 'fill', '{"stem":"高高的___峰上有白云。","answer":"山","explanation":"结合一年级语文知识，填“山”最合适。"}'::jsonb, 'builtin', '字词搭配', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '3c6d4be9e965054e2c31d018b4de13f0be7553e80c4404407e4560e8e31f87e6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-123', 'chinese', 1, 2, 'fill', '{"stem":"一句完整的话，末尾常要有标___。","answer":"点","explanation":"结合一年级语文知识，填“点”最合适。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '406e9e65a6e528e5b8c22e49bcdea44f3c684d6b46ef64b5d5c48b9b303c1433', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-124', 'chinese', 1, 3, 'fill', '{"stem":"表达惊喜“多美呀___”末尾可以用感叹号，写作___。","answer":"！","explanation":"结合一年级语文知识，填“！”最合适。"}'::jsonb, 'builtin', '标点初步', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], 'ccb721b97a743499b51690372ae5029cb859a5e1e47204010bb2ff988fdb5663', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-125', 'chinese', 1, 3, 'fill', '{"stem":"读：“红灯亮了，车停下。”车为什么停下？因为亮了___灯。","answer":"红","explanation":"结合一年级语文知识，填“红”最合适。"}'::jsonb, 'builtin', '短文信息', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '813abe7b4baa197a5d5a86449cb3b326b129ab189de19effe6b8b2a2a8be2a6e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-126', 'chinese', 1, 3, 'fill', '{"stem":"请别人帮忙时，可以先说“___问”。","answer":"请","explanation":"结合一年级语文知识，填“请”最合适。"}'::jsonb, 'builtin', '生活表达', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '2aa8ce8ff98f02ec23f79692eca114f81a0fe2167682ec41b94541742919d585', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-127', 'chinese', 1, 1, 'match', '{"stem":"一年级语文小卡片：把汉字和正确拼音连起来。","left":["花","鸟","书","月"],"right":["shū","huā","yuè","niǎo"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据拼音与音节的基础知识逐项配对。"}'::jsonb, 'builtin', '拼音与音节', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'c00c4701d0918c4a82f3c222c5f7d54ae11b6598612ff5e857374218917a628a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-128', 'chinese', 1, 1, 'match', '{"stem":"一年级语文小卡片：把常用字和词语连起来。","left":["日","月","山","水"],"right":["高山","太阳","河水","月亮"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据常用字识读的基础知识逐项配对。"}'::jsonb, 'builtin', '常用字识读', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '93ab1cea262b294864826cfddbd6ef05757a54165d184918513f82b1d09583e4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-129', 'chinese', 1, 1, 'match', '{"stem":"一年级语文小卡片：把词语搭配连起来。","left":["弯弯的","清清的","高高的","闪闪的"],"right":["山峰","月亮","星星","河水"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据字词搭配的基础知识逐项配对。"}'::jsonb, 'builtin', '字词搭配', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '5c50e02eb4aa14d185d4c1ace8a9507a6999bf295d566973e80cd5ec9c6c1b0e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-130', 'chinese', 1, 1, 'match', '{"stem":"一年级语文小卡片：把事物和它做的事情连起来。","left":["小鸟","小鱼","白云","汽车"],"right":["在天空飘","在树上唱歌","在路上行驶","在水里游"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据简单句的基础知识逐项配对。"}'::jsonb, 'builtin', '简单句', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '5d545f6378b7c155720a98d69a472fb6a0d9b2bf848599f4b1587ebf3130f1a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-131', 'chinese', 1, 1, 'match', '{"stem":"一年级语文小卡片：把句子类型和标点连起来。","left":["陈述句","问句","感叹句","句中停顿"],"right":["！","。","，","？"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据标点初步的基础知识逐项配对。"}'::jsonb, 'builtin', '标点初步', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '9a77bbea4d4033beeda04d5cdc71082431585721af36b61f1eb87e3bd58d4cfe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-132', 'chinese', 1, 1, 'match', '{"stem":"一年级语文小卡片：把阅读问题和信息类型连起来。","left":["谁","哪里","做什么","什么时候"],"right":["事情","人物","时间","地点"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据短文信息的基础知识逐项配对。"}'::jsonb, 'builtin', '短文信息', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], '499e928aac6080bb41730870fd188f742de69ead252b7e5e6287f7c16e132009', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-133', 'chinese', 1, 1, 'match', '{"stem":"一年级语文小卡片：把礼貌用语和作用连起来。","left":["请","谢谢","对不起","没关系"],"right":["表示歉意","请求帮助","接受道歉","表示感谢"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据生活表达的基础知识逐项配对。"}'::jsonb, 'builtin', '生活表达', 'understand', array['全国通用', '低龄短句', '基础识读']::text[], 'bdf668d31d68a90e8497cfcc32dc3948fe9e69922da9828cac75499104ebdc0c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-134', 'chinese', 1, 2, 'match', '{"stem":"生活阅读练习：把汉字和正确拼音连起来。","left":["花","鸟","书","月"],"right":["shū","huā","yuè","niǎo"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据拼音与音节的基础知识逐项配对。"}'::jsonb, 'builtin', '拼音与音节', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '03dd3629292069673b3df9908ec622e4b08d29c991332360e71ae49ae8066e09', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-135', 'chinese', 1, 2, 'match', '{"stem":"生活阅读练习：把常用字和词语连起来。","left":["日","月","山","水"],"right":["高山","太阳","河水","月亮"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据常用字识读的基础知识逐项配对。"}'::jsonb, 'builtin', '常用字识读', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '1124785259e76b30001cce862bee5665c0846b1052eced94b2e28d23f5e7a178', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-136', 'chinese', 1, 2, 'match', '{"stem":"生活阅读练习：把词语搭配连起来。","left":["弯弯的","清清的","高高的","闪闪的"],"right":["山峰","月亮","星星","河水"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据字词搭配的基础知识逐项配对。"}'::jsonb, 'builtin', '字词搭配', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'f3b53bebaa83aaef784edf19ca5c1dbc2080d8545b60a86a011725fc2340402b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-137', 'chinese', 1, 2, 'match', '{"stem":"生活阅读练习：把事物和它做的事情连起来。","left":["小鸟","小鱼","白云","汽车"],"right":["在天空飘","在树上唱歌","在路上行驶","在水里游"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据简单句的基础知识逐项配对。"}'::jsonb, 'builtin', '简单句', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], 'f791ac62c9a4f74ac279305f8c77bc7a96ea768057e0fa2fa8fde67eb0ab44a8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-138', 'chinese', 1, 2, 'match', '{"stem":"生活阅读练习：把句子类型和标点连起来。","left":["陈述句","问句","感叹句","句中停顿"],"right":["！","。","，","？"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据标点初步的基础知识逐项配对。"}'::jsonb, 'builtin', '标点初步', 'apply', array['全国通用', '低龄短句', '生活理解']::text[], '322af59dea4d25ad453c90bc6a765fc8c24367a7a8fb1f331b703b3f40e7676b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-139', 'chinese', 1, 3, 'match', '{"stem":"生活阅读练习：把阅读问题和信息类型连起来。","left":["谁","哪里","做什么","什么时候"],"right":["事情","人物","时间","地点"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据短文信息的基础知识逐项配对。"}'::jsonb, 'builtin', '短文信息', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '113d005efb097c1ce4e0bc9b76c5f69e39fb12bca9da8a4511f067f649bcb682', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-chinese-authored-140', 'chinese', 1, 3, 'match', '{"stem":"生活阅读练习：把礼貌用语和作用连起来。","left":["请","谢谢","对不起","没关系"],"right":["表示歉意","请求帮助","接受道歉","表示感谢"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据生活表达的基础知识逐项配对。"}'::jsonb, 'builtin', '生活表达', 'reason', array['全国通用', '低龄短句', '生活理解']::text[], '7aff85d99f6e9f49848ee8be5effcbd263fb6aef7dcff1c8da464d300f973405', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-001', 'english', 1, 1, 'choice', '{"stem":"Word card: “a red cat beside three books.” Look at the word “cat”. Which letter comes first?","options":["c","a","t","o"],"answer":0,"explanation":"“cat” begins with c."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'ffbffe3a37424cec2cabfc45d6abc7a806bee081ea453c883ce2fd664f32595f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-002', 'english', 1, 1, 'choice', '{"stem":"—Good morning! —___","options":["I am a colour.","Good morning!","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Good morning!” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '91736a7f2d1f3d973d8816baeda83111c36213c7466c77cf4b82d9aca786a6b5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-003', 'english', 1, 1, 'choice', '{"stem":"Number card: “a red cat beside three books.” Which number is written as “three”?","options":["7","8","3","9"],"answer":2,"explanation":"“three” means 3."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'e817fff75adbc98c1b96f785e6a2e371fccfd81733685d90dd5abac032483691', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-004', 'english', 1, 1, 'choice', '{"stem":"Which word is a colour in this card: “a red cat beside three books”?","options":["book","classroom","three","red"],"answer":3,"explanation":"“red” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'b937a9f66161fbce238e3a99e31cf6ed54440f065bb504e4a4888d91139a83af', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-005', 'english', 1, 1, 'choice', '{"stem":"Which word names a family member or family group?","options":["mother","classroom","book","red"],"answer":0,"explanation":"“mother” is a family word."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'a6fe08d012702236ae35d2485462a050758d91a69d19684cc2a1dba93f97ccde', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-006', 'english', 1, 1, 'choice', '{"stem":"School map clue: “We learn with the class in the classroom.” Which option names this place?","options":["mother","classroom","red","three"],"answer":1,"explanation":"“classroom” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'ff93015568de81343bff748b2ed83e3c8d441f176f2d4183435f7bffaa83cbac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-007', 'english', 1, 1, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The red is 3.","mother is at home.","Open your book.","Good night, Monday."],"answer":2,"explanation":"“Open your book.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '8ef46e140773fcee81e0d8e1bc828779a9f0665c01de7c718305be7b98cb3c74', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-008', 'english', 1, 1, 'choice', '{"stem":"Read the picture card in words: “a red cat beside three books”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","mother — classroom — yesterday","red — three — book"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '406be3ab70a5390204daa480f49f525308c11a8a28cef40e49a15f1ae7763339', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-009', 'english', 1, 1, 'choice', '{"stem":"Word card: “a blue dog beside five rulers.” Look at the word “dog”. Which letter comes first?","options":["d","a","t","o"],"answer":0,"explanation":"“dog” begins with d."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '141fd0ae714b12f5fedaa8bf97054405ca9f6fdef3446f1f3171b8223bcf4e8b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-010', 'english', 1, 1, 'choice', '{"stem":"—Hello! —___","options":["I am a colour.","Hello!","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Hello!” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '38929c079d4bc6f22138e85043ccbfa367a31fe7d29a668977b23291b4655c6f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-011', 'english', 1, 1, 'choice', '{"stem":"Number card: “a blue dog beside five rulers.” Which number is written as “five”?","options":["2","3","5","4"],"answer":2,"explanation":"“five” means 5."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'edfb884bf4e23e954a91bfbfa9167ba5c99af3d5783edd863ec2f5744139391a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-012', 'english', 1, 1, 'choice', '{"stem":"Which word is a colour in this card: “a blue dog beside five rulers”?","options":["ruler","library","five","blue"],"answer":3,"explanation":"“blue” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '5ace6feb509db19384c5efaee2085bd1273c6fea0c5cb6758401a09334d9a391', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-013', 'english', 1, 1, 'choice', '{"stem":"Which word names a family member or family group?","options":["father","library","ruler","blue"],"answer":0,"explanation":"“father” is a family word."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'e8ff63f2b7e6d2f8480259f0428b812f9f1fef5a31439425d9f343d7563d5c91', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-014', 'english', 1, 1, 'choice', '{"stem":"School map clue: “We read and borrow books in the library.” Which option names this place?","options":["father","library","blue","five"],"answer":1,"explanation":"“library” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '9c1c742266f2d35ef1fc49413951485e7e46962c6dcb849eab000cbc39ab61b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-015', 'english', 1, 1, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The blue is 5.","father is at home.","Put down your ruler.","Good night, Monday."],"answer":2,"explanation":"“Put down your ruler.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '00a43225d8b827e57063261a7690296a0f207450a852d050cead4bf74ff33132', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-016', 'english', 1, 1, 'choice', '{"stem":"Read the picture card in words: “a blue dog beside five rulers”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","father — library — yesterday","blue — five — ruler"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'e84b50b687642f4591a61aaa0e1c76f9060e7bf0580071a48599eafc593d29c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-017', 'english', 1, 1, 'choice', '{"stem":"Word card: “two green fish near a ball.” Look at the word “fish”. Which letter comes first?","options":["f","a","t","o"],"answer":0,"explanation":"“fish” begins with f."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '394301d454f3626dc7de29dfdeda587509c2f6c1f8f0248cfdfc47dcc1f8ce05', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-018', 'english', 1, 1, 'choice', '{"stem":"—How are you? —___","options":["I am a colour.","I am fine, thank you.","Three books.","Open the window yesterday."],"answer":1,"explanation":"“I am fine, thank you.” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '5df9e3fb31eca17473531fff45539366ac97076d05b9a5a25bae031836378a99', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-019', 'english', 1, 1, 'choice', '{"stem":"Number card: “two green fish near a ball.” Which number is written as “two”?","options":["5","6","2","7"],"answer":2,"explanation":"“two” means 2."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '8ccbc08657e08b34bb988584263384fc39c13bf0ca2947ae3c6bdc101443209e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-020', 'english', 1, 1, 'choice', '{"stem":"Which word is a colour in this card: “two green fish near a ball”?","options":["ball","playground","two","green"],"answer":3,"explanation":"“green” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'e4c687efee250f411f0421c6612fb9aab4cba9d3a1c17dc9eb652ff04ac5821b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-021', 'english', 1, 1, 'choice', '{"stem":"Which word names a family member or family group?","options":["sister","playground","ball","green"],"answer":0,"explanation":"“sister” is a family word."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '3baf415e6c16d772c00923af44c20e8d0139394cbe708a67fc48cada33021b97', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-022', 'english', 1, 1, 'choice', '{"stem":"School map clue: “We run and play safely in the playground.” Which option names this place?","options":["sister","playground","green","two"],"answer":1,"explanation":"“playground” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '7038de6a9fb7d414c4a72bdfdec86bea4cb70e1e6f0d7e51f24a2ddc9a0fc070', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-023', 'english', 1, 1, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The green is 2.","sister is at home.","Touch the ball.","Good night, Monday."],"answer":2,"explanation":"“Touch the ball.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '010a42aec6d50be9ec14025b4abb3da4fa832688170196e52982d46b356ea4d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-024', 'english', 1, 1, 'choice', '{"stem":"Read the picture card in words: “two green fish near a ball”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","sister — playground — yesterday","green — two — ball"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '8a0294810777a7683b51b918e91c791b3448f9ee5c034a73577a6512e6bce6bb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-025', 'english', 1, 1, 'choice', '{"stem":"Word card: “a yellow bag with six pencils.” Look at the word “bag”. Which letter comes first?","options":["b","a","t","o"],"answer":0,"explanation":"“bag” begins with b."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'e9d8e93d720e7485179c165a3f39b58cd21b0b6f514834a402fab44d3bac20c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-026', 'english', 1, 1, 'choice', '{"stem":"—Good afternoon! —___","options":["I am a colour.","Good afternoon!","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Good afternoon!” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'e03a93e48e459fa6ab27f3f78cb52131da747bd21369e27887a718ef26157914', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-027', 'english', 1, 1, 'choice', '{"stem":"Number card: “a yellow bag with six pencils.” Which number is written as “six”?","options":["4","5","6","7"],"answer":2,"explanation":"“six” means 6."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '0d0d526e816dc14be8b1cac0dd36fdf2c625d5c1fd4c33ae41270b47a7342ece', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-028', 'english', 1, 1, 'choice', '{"stem":"Which word is a colour in this card: “a yellow bag with six pencils”?","options":["pencil","art room","six","yellow"],"answer":3,"explanation":"“yellow” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '499352bcdcd840c26c61ba666ada4daacc762e572234e4dbb293b55da9401e66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-029', 'english', 1, 1, 'choice', '{"stem":"Which word names a family member or family group?","options":["brother","art room","pencil","yellow"],"answer":0,"explanation":"“brother” is a family word."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'b1e0ace929bd559997a02fba101e5f433692ce7757846881dae3b7b3a5000b7e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-030', 'english', 1, 1, 'choice', '{"stem":"School map clue: “We draw and make things in the art room.” Which option names this place?","options":["brother","art room","yellow","six"],"answer":1,"explanation":"“art room” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '39e83255bd84d823bdb0568635bc5da60a061131d20e6eacd8f4374ab0873127', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-031', 'english', 1, 1, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The yellow is 6.","brother is at home.","Pick up your pencil.","Good night, Monday."],"answer":2,"explanation":"“Pick up your pencil.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '1fa926bc04bc72f834ad7481c1ddaa88bfe3a1e9caeeb12b046268155ce6e2df', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-032', 'english', 1, 1, 'choice', '{"stem":"Read the picture card in words: “a yellow bag with six pencils”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","brother — art room — yesterday","yellow — six — pencil"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'd695caf76b74bd285f1eb12335381f428493f27527f90af6500edd8ecd02f89c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-033', 'english', 1, 1, 'choice', '{"stem":"Word card: “four black pens on a desk.” Look at the word “pen”. Which letter comes first?","options":["p","a","t","o"],"answer":0,"explanation":"“pen” begins with p."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '952461c5b1d5eef3b62f952e03980f87fdc1de8ba7e6a1b83f01543b9340e41c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-034', 'english', 1, 1, 'choice', '{"stem":"—What is your name? —___","options":["I am a colour.","My name is Amy.","Three books.","Open the window yesterday."],"answer":1,"explanation":"“My name is Amy.” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'ae882ff5de0330acb22d40d974f3303e9c73a5fb0044b8dc990d6d2fb4171283', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-035', 'english', 1, 1, 'choice', '{"stem":"Number card: “four black pens on a desk.” Which number is written as “four”?","options":["0","1","4","2"],"answer":2,"explanation":"“four” means 4."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '6e72473a8812d1f47bfc0ce4f31a7f01b4ac352a5d56b7e687b9cdfc576ffaac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-036', 'english', 1, 1, 'choice', '{"stem":"Which word is a colour in this card: “four black pens on a desk”?","options":["desk","music room","four","black"],"answer":3,"explanation":"“black” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'a083c46ce1cbf443559a959dd3cb9b0fbc86b241304284b2da3c25cc9819b53f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-037', 'english', 1, 1, 'choice', '{"stem":"Which word names a family member or family group?","options":["grandmother","music room","desk","black"],"answer":0,"explanation":"“grandmother” is a family word."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'b4acad2852f8c1a3350abcea3666a855e5c427cf8c641ca37d34e9a3f3900c8a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-038', 'english', 1, 1, 'choice', '{"stem":"School map clue: “We sing and play music in the music room.” Which option names this place?","options":["grandmother","music room","black","four"],"answer":1,"explanation":"“music room” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '97a6ee9e520aa15c0b2deebc1664602e2ae6128d9d11d2c22ee10cfdcc425266', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-039', 'english', 1, 1, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The black is 4.","grandmother is at home.","Stand by the desk.","Good night, Monday."],"answer":2,"explanation":"“Stand by the desk.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '529ffc43800ee9d4036df54cab61696e5dee1fbf54d191041e73aa867cd51342', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-040', 'english', 1, 1, 'choice', '{"stem":"Read the picture card in words: “four black pens on a desk”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","grandmother — music room — yesterday","black — four — desk"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '94aab735d42d6b1f17b75ca1e9efb13ae47fc20e7223ed5afba03e3891fed8ed', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-041', 'english', 1, 1, 'choice', '{"stem":"Word card: “an orange sun above eight chairs.” Look at the word “sun”. Which letter comes first?","options":["s","a","t","o"],"answer":0,"explanation":"“sun” begins with s."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '243d6843406f11525b1cae8012547ef36ceb93cbbb8959ad9f5c345b1fc0b2d7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-042', 'english', 1, 1, 'choice', '{"stem":"—Nice to meet you. —___","options":["I am a colour.","Nice to meet you, too.","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Nice to meet you, too.” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'a43264ef4dec53a445dd85057c4773028205532a83996e61cff97ce0b4888923', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-043', 'english', 1, 1, 'choice', '{"stem":"Number card: “an orange sun above eight chairs.” Which number is written as “eight”?","options":["0","1","8","2"],"answer":2,"explanation":"“eight” means 8."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '88f5f79f50f4f0e1ce123432dccce44484439f726ed02552594cf63fa5b43748', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-044', 'english', 1, 1, 'choice', '{"stem":"Which word is a colour in this card: “an orange sun above eight chairs”?","options":["chair","school gate","eight","orange"],"answer":3,"explanation":"“orange” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'ad5ba1eecf52febb10776a77f9adecfc2bd044418dcd8e5d65dc5cf97fa17d8d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-045', 'english', 1, 1, 'choice', '{"stem":"Which word names a family member or family group?","options":["grandfather","school gate","chair","orange"],"answer":0,"explanation":"“grandfather” is a family word."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'f9393de34e7495c96fbf211ad90bd3453844f803844827877748eb35da593b5c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-046', 'english', 1, 1, 'choice', '{"stem":"School map clue: “We enter or leave school in the school gate.” Which option names this place?","options":["grandfather","school gate","orange","eight"],"answer":1,"explanation":"“school gate” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'a6c9228c0b881ce24ffe0938c8578d2fd32da8db98e5fced3ed5eaea11bc40fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-047', 'english', 1, 1, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The orange is 8.","grandfather is at home.","Sit on the chair.","Good night, Monday."],"answer":2,"explanation":"“Sit on the chair.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '90cdb61ba4dee7aae7e2fcf87e151147bea01701cf29b73cf101d47ca98a632c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-048', 'english', 1, 1, 'choice', '{"stem":"Read the picture card in words: “an orange sun above eight chairs”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","grandfather — school gate — yesterday","orange — eight — chair"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '124e96d6c573f37c688a47e09accec4828e78f82bd5cac6f7e2ab32347f21ba6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-049', 'english', 1, 1, 'choice', '{"stem":"Word card: “a white map with seven stars.” Look at the word “map”. Which letter comes first?","options":["m","a","t","o"],"answer":0,"explanation":"“map” begins with m."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'a6417ae5d31777726195dc92a3a3ef8902c67635bcebb1ae6f294d8a700908e1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-050', 'english', 1, 1, 'choice', '{"stem":"—Goodbye! —___","options":["I am a colour.","Goodbye!","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Goodbye!” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'd77db7016cb0f1ab94fbdc7ca7bc2640c5aa3d8ff352c4395b4fe9f7000f39ad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-051', 'english', 1, 1, 'choice', '{"stem":"Number card: “a white map with seven stars.” Which number is written as “seven”?","options":["6","8","7","9"],"answer":2,"explanation":"“seven” means 7."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '67b4c3c56421cc77000c19a7223c334053a8dcee49de71df6757f0a0ea5de86a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-052', 'english', 1, 1, 'choice', '{"stem":"Which word is a colour in this card: “a white map with seven stars”?","options":["map","reading corner","seven","white"],"answer":3,"explanation":"“white” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '7940962ac648c08c88a2d39b0f3d76ef3b171de13cff6d481d34ac0db3443250', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-053', 'english', 1, 2, 'choice', '{"stem":"Which word names a family member or family group?","options":["baby","reading corner","map","white"],"answer":0,"explanation":"“baby” is a family word."}'::jsonb, 'builtin', '家庭', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '22823741352cf621bfffcc467f6e6042c906e24457b152444af747be3a271aab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-054', 'english', 1, 2, 'choice', '{"stem":"School map clue: “We sit and read quietly in the reading corner.” Which option names this place?","options":["baby","reading corner","white","seven"],"answer":1,"explanation":"“reading corner” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'c2f942c61e210d1b62d29d686d6c7b5b1c817e492221d3024e102da425353c49', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-055', 'english', 1, 2, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The white is 7.","baby is at home.","Look at the map.","Good night, Monday."],"answer":2,"explanation":"“Look at the map.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '624f98c1961fe7c29384b7eb708ccb653a7a6e7332d3475aba6801869338cb6f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-056', 'english', 1, 2, 'choice', '{"stem":"Read the picture card in words: “a white map with seven stars”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","baby — reading corner — yesterday","white — seven — map"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'bd2d94e601d3696243bac82ed0b8df26d4b4b012553c20097b0899bd6f7b0ff4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-057', 'english', 1, 2, 'choice', '{"stem":"Word card: “nine purple dots on a computer card.” Look at the word “red”. Which letter comes first?","options":["r","a","t","o"],"answer":0,"explanation":"“red” begins with r."}'::jsonb, 'builtin', '字母与声音', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'cfd8e125009b298a835986a880eb78b14085b3acedcbc57144f8bd51fbc713c7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-058', 'english', 1, 2, 'choice', '{"stem":"—Good evening! —___","options":["I am a colour.","Good evening!","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Good evening!” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '49336018221f7dd7e863c95c6604f6bc80f5f558f69d30b588ab2eefbadfcf9e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-059', 'english', 1, 2, 'choice', '{"stem":"Number card: “nine purple dots on a computer card.” Which number is written as “nine”?","options":["2","3","9","4"],"answer":2,"explanation":"“nine” means 9."}'::jsonb, 'builtin', '数字', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '0f5e343d4292d888caa0f9293a3ddfe38c26289bf069e2e252d9e4c288ae0ab2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-060', 'english', 1, 2, 'choice', '{"stem":"Which word is a colour in this card: “nine purple dots on a computer card”?","options":["computer","computer room","nine","purple"],"answer":3,"explanation":"“purple” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '26bb02fa14078cb3dc8e95a2cb453dfc0a9687b361fb646f50ef0b532feb7da5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-061', 'english', 1, 2, 'choice', '{"stem":"Which word names a family member or family group?","options":["uncle","computer room","computer","purple"],"answer":0,"explanation":"“uncle” is a family word."}'::jsonb, 'builtin', '家庭', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '66b12d9cf2f3b593d6934331cad39c871ba6f9f193d7e3f1e29b7357e06d9856', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-062', 'english', 1, 2, 'choice', '{"stem":"School map clue: “We learn with computers in the computer room.” Which option names this place?","options":["uncle","computer room","purple","nine"],"answer":1,"explanation":"“computer room” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'e98ebbd309341339a0af80ca154c27b301e3434dbb63c6bdc2b986a7854f93b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-063', 'english', 1, 2, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The purple is 9.","uncle is at home.","Point to the computer.","Good night, Monday."],"answer":2,"explanation":"“Point to the computer.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '36ba25b662cf85b544ec7ea556f22df18c99c24fc07ee075cee5cb029074e8fc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-064', 'english', 1, 2, 'choice', '{"stem":"Read the picture card in words: “nine purple dots on a computer card”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","uncle — computer room — yesterday","purple — nine — computer"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '71f1ef36c37fc219d24064b99951cc765d99fd15bd5652816d2187dc65b52c08', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-065', 'english', 1, 2, 'choice', '{"stem":"Word card: “a pink kite with ten small circles.” Look at the word “kite”. Which letter comes first?","options":["k","a","t","o"],"answer":0,"explanation":"“kite” begins with k."}'::jsonb, 'builtin', '字母与声音', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '108a7e96ebd5ce09ef33a0b36b0ef1279872d69c79dd910ed33cb13ff8568318', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-066', 'english', 1, 2, 'choice', '{"stem":"—Thank you. —___","options":["I am a colour.","You are welcome.","Three books.","Open the window yesterday."],"answer":1,"explanation":"“You are welcome.” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '3d464d601402875443085a8a08a50a714354528f49de15d2b112127aafceb2ae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-067', 'english', 1, 2, 'choice', '{"stem":"Number card: “a pink kite with ten small circles.” Which number is written as “ten”?","options":["4","5","10","6"],"answer":2,"explanation":"“ten” means 10."}'::jsonb, 'builtin', '数字', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '87be8917c9db4e7921f9ed734b256ea3c811f4a23b0952e89fe15b77fe87ef10', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-068', 'english', 1, 2, 'choice', '{"stem":"Which word is a colour in this card: “a pink kite with ten small circles”?","options":["kite","school hall","ten","pink"],"answer":3,"explanation":"“pink” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'e08d6717dc970658b0b23cb0516180060420ed3a5d152a0229fd5a4c39fd4470', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-069', 'english', 1, 2, 'choice', '{"stem":"Which word names a family member or family group?","options":["aunt","school hall","kite","pink"],"answer":0,"explanation":"“aunt” is a family word."}'::jsonb, 'builtin', '家庭', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '7c91419d39daed6a77399001ad87ec896a26627bf21156fec185cdc1b5ccde9e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-070', 'english', 1, 2, 'choice', '{"stem":"School map clue: “We meet for school events in the school hall.” Which option names this place?","options":["aunt","school hall","pink","ten"],"answer":1,"explanation":"“school hall” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '1a99d73ec591f965b6538f69fdbe33c8f18020d8e6a0baff959070f5afcef934', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-071', 'english', 1, 2, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The pink is 10.","aunt is at home.","Show me the kite.","Good night, Monday."],"answer":2,"explanation":"“Show me the kite.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'fde5b1053f7b3ed9b40fa3b8bec032b8c87d4cdf14ca510adc263b355fc6a536', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-072', 'english', 1, 2, 'choice', '{"stem":"Read the picture card in words: “a pink kite with ten small circles”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","aunt — school hall — yesterday","pink — ten — kite"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '8a527cdbaf63a799a50ea57246bbe5956b528cfa6147217fac9de87f36120771', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-073', 'english', 1, 2, 'choice', '{"stem":"Word card: “one brown hat in the garden.” Look at the word “hat”. Which letter comes first?","options":["h","a","t","o"],"answer":0,"explanation":"“hat” begins with h."}'::jsonb, 'builtin', '字母与声音', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '22a9918c74328b17ec730f2916f51eefb362540406293f68369ce427088af09f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-074', 'english', 1, 2, 'choice', '{"stem":"—I am sorry. —___","options":["I am a colour.","That’s OK.","Three books.","Open the window yesterday."],"answer":1,"explanation":"“That’s OK.” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '7c41838ba3a2a09b5368ff8b7b4e44374683fa0c9ab430a3f943d19eca39affb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-075', 'english', 1, 2, 'choice', '{"stem":"Number card: “one brown hat in the garden.” Which number is written as “one”?","options":["3","4","1","5"],"answer":2,"explanation":"“one” means 1."}'::jsonb, 'builtin', '数字', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '3b1367557e2062daaec83be85bf8f18489d3cd0cef3af267b43cef4cc883a424', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-076', 'english', 1, 2, 'choice', '{"stem":"Which word is a colour in this card: “one brown hat in the garden”?","options":["hat","garden","one","brown"],"answer":3,"explanation":"“brown” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'a59c177b0bb47bf8e279a0b041c494788358a17a7add7b818cdca4d265970f38', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-077', 'english', 1, 2, 'choice', '{"stem":"Which word names a family member or family group?","options":["cousin","garden","hat","brown"],"answer":0,"explanation":"“cousin” is a family word."}'::jsonb, 'builtin', '家庭', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'dfe68c7a2adcd09ae1b78788ce753b01af345d70a826d8fedc47dcc1bb32643d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-078', 'english', 1, 2, 'choice', '{"stem":"School map clue: “We care for plants in the garden.” Which option names this place?","options":["cousin","garden","brown","one"],"answer":1,"explanation":"“garden” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'd5884371a3a58115607f59a0583a8b94a389208f79313c447c9598d64161e8e1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-079', 'english', 1, 2, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The brown is 1.","cousin is at home.","Put on your hat.","Good night, Monday."],"answer":2,"explanation":"“Put on your hat.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '646ded3d0d7d596709d2ccf2029fd5f0d937c7bd1b13a6d7f9316c75d81af82c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-080', 'english', 1, 2, 'choice', '{"stem":"Read the picture card in words: “one brown hat in the garden”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","cousin — garden — yesterday","brown — one — hat"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '868e4e390627b0091ae1e12bdc791a9484d8278b44854ca701e481e5e9ea246b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-081', 'english', 1, 2, 'choice', '{"stem":"Word card: “eleven grey cups in two rows.” Look at the word “leg”. Which letter comes first?","options":["l","a","t","o"],"answer":0,"explanation":"“leg” begins with l."}'::jsonb, 'builtin', '字母与声音', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '8813ddff93fee34fc16aa11b37bb1ee1c743ae616a50986aad2e4f1d7a8ca5d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-082', 'english', 1, 2, 'choice', '{"stem":"—Can I help you? —___","options":["I am a colour.","Yes, please.","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Yes, please.” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'eec30acc30a514aed8982414b4b972f32e664d6b9de759c6e5c90a65a6a2849b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-083', 'english', 1, 2, 'choice', '{"stem":"Number card: “eleven grey cups in two rows.” Which number is written as “eleven”?","options":["6","7","11","8"],"answer":2,"explanation":"“eleven” means 11."}'::jsonb, 'builtin', '数字', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'e443879c1da67d7df288c371c546fb934bdea1a45afc7ff0b0120da759ce2274', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-084', 'english', 1, 2, 'choice', '{"stem":"Which word is a colour in this card: “eleven grey cups in two rows”?","options":["cup","dining room","eleven","grey"],"answer":3,"explanation":"“grey” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'b5efa46a59c6b5acd7478bb5970fed1e3c61fb9a57e224f96f22b86a2c4f1445', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-085', 'english', 1, 2, 'choice', '{"stem":"Which word names a family member or family group?","options":["parents","dining room","cup","grey"],"answer":0,"explanation":"“parents” is a family word."}'::jsonb, 'builtin', '家庭', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'f77511fb86123d22608fbd2a6dcfae8255d73bd1d1265136011eeaa19becc897', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-086', 'english', 1, 2, 'choice', '{"stem":"School map clue: “We eat lunch in the dining room.” Which option names this place?","options":["parents","dining room","grey","eleven"],"answer":1,"explanation":"“dining room” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '72060864f3ae04fd7ddf5f6074dee5044ed0d94f9d06faa395756b6ab3887812', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-087', 'english', 1, 2, 'choice', '{"stem":"Which sentence is a clear classroom instruction?","options":["The grey is 11.","parents is at home.","Hold the cup.","Good night, Monday."],"answer":2,"explanation":"“Hold the cup.” tells someone what to do."}'::jsonb, 'builtin', '课堂指令', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'a927225505215561f270aca2ffb8157e4f7e006864ec7e60fbda3e400a3381ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-088', 'english', 1, 2, 'choice', '{"stem":"Read the picture card in words: “eleven grey cups in two rows”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","parents — dining room — yesterday","grey — eleven — cup"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'a1ac4e3699d4315bd869e1484b56cae101eb95e663865ed00c361f4dffac9e81', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-089', 'english', 1, 2, 'choice', '{"stem":"Word card: “twelve gold stars on a notebook.” Look at the word “nose”. Which letter comes first?","options":["n","a","t","o"],"answer":0,"explanation":"“nose” begins with n."}'::jsonb, 'builtin', '字母与声音', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'c3f221f6e82f567342a71f735fc914045e66f9d686ab0e5645d0d22fbb865cc3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-090', 'english', 1, 3, 'choice', '{"stem":"—May I come in? —___","options":["I am a colour.","Yes, come in.","Three books.","Open the window yesterday."],"answer":1,"explanation":"“Yes, come in.” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '6b4d9062853818b6abd32328984e11f0afdc5c8c8b7ce92ef012de3258ed0a7d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-091', 'english', 1, 3, 'choice', '{"stem":"There are 12 notebooks. Which word matches the number?","options":["zero","one","twelve","two"],"answer":2,"explanation":"12 is written “twelve”."}'::jsonb, 'builtin', '数字', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '09826597a7aa13255704c2d493c91e858d10c5b55dec44a7dbf5b489acf3e1ba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-092', 'english', 1, 3, 'choice', '{"stem":"Which word is a colour in this card: “twelve gold stars on a notebook”?","options":["notebook","teachers’ office","twelve","gold"],"answer":3,"explanation":"“gold” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'af4f84e6600ab37df3f7d569d85dc0d170865e4c802eb6d4ff2168c530478077', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-093', 'english', 1, 3, 'choice', '{"stem":"The clue says “people at home who care for one another”. Who is it?","options":["family","teacher","classroom","pencil"],"answer":0,"explanation":"“family” matches the family clue “people at home who care for one another”."}'::jsonb, 'builtin', '家庭', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '50f96830c34596561820b77bdf261b9d858d677bacd8f8aa766d9a17c31f9f44', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-094', 'english', 1, 3, 'choice', '{"stem":"School map clue: “We speak with a teacher in the teachers’ office.” Which option names this place?","options":["family","teachers’ office","gold","twelve"],"answer":1,"explanation":"“teachers’ office” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'e391e042b1df059583fdff9f08ee9334104b73c7dbb770cbcdf0125d0783ea1d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-095', 'english', 1, 3, 'choice', '{"stem":"The teacher says, “Close your notebook.” What should you use or move toward?","options":["family","gold","notebook","twelve"],"answer":2,"explanation":"The instruction names the notebook."}'::jsonb, 'builtin', '课堂指令', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '3cc737c913f68016182002fd8808f60396b5f189eda91b58a812af64ddac9b5c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-096', 'english', 1, 3, 'choice', '{"stem":"Read the picture card in words: “twelve gold stars on a notebook”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","family — teachers’ office — yesterday","gold — twelve — notebook"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '118fb232811bf136fb427b3eff7062bcd0023248a70102438225d59914b6047a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-097', 'english', 1, 3, 'choice', '{"stem":"The word “van” begins with v. Which pair is correct?","options":["v — /v/","a — /m/","t — /s/","o — /b/"],"answer":0,"explanation":"“van” begins with the letter v and the sound /v/."}'::jsonb, 'builtin', '字母与声音', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '172e88b3f8161202e1f94f56393713ac3ab5ba54f2ae94f202cff8a31e6c4b10', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-098', 'english', 1, 3, 'choice', '{"stem":"—See you tomorrow. —___","options":["I am a colour.","See you!","Three books.","Open the window yesterday."],"answer":1,"explanation":"“See you!” is a natural reply in this situation."}'::jsonb, 'builtin', '日常问候', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'da5e40c1d251bf9ab4c7029346b25c0217be9c9e67d5574932d652ac15ad6644', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-099', 'english', 1, 3, 'choice', '{"stem":"There are 13 flags. Which word matches the number?","options":["two","three","thirteen","four"],"answer":2,"explanation":"13 is written “thirteen”."}'::jsonb, 'builtin', '数字', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'a1cd317bc95d6a37ad935ee79be239e02cecb954aeca3d172b59f4a86147d090', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-100', 'english', 1, 3, 'choice', '{"stem":"Which word is a colour in this card: “a silver van near thirteen flags”?","options":["flag","sports field","thirteen","silver"],"answer":3,"explanation":"“silver” is the colour word in the card."}'::jsonb, 'builtin', '颜色', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '2e372d7f1875db12510bb89fc10f6107073abb0d7c2e59befc5e81995e1233bd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-101', 'english', 1, 3, 'choice', '{"stem":"The clue says “a boy in a family”. Who is it?","options":["son","teacher","classroom","pencil"],"answer":0,"explanation":"“son” matches the family clue “a boy in a family”."}'::jsonb, 'builtin', '家庭', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'e73c38d0c57e62a78ea271738f2196ccf35a72a3ad13b5b56f70bd20aa5b6766', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-102', 'english', 1, 3, 'choice', '{"stem":"School map clue: “We practise sports in the sports field.” Which option names this place?","options":["son","sports field","silver","thirteen"],"answer":1,"explanation":"“sports field” names the school place for this activity."}'::jsonb, 'builtin', '学校', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'da2a2aa0c367f059a8a72002eb098381570e7713df89e2f0a26dc8bf518d2c67', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-103', 'english', 1, 3, 'choice', '{"stem":"The teacher says, “Run to the flag.” What should you use or move toward?","options":["son","silver","flag","thirteen"],"answer":2,"explanation":"The instruction names the flag."}'::jsonb, 'builtin', '课堂指令', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '659502dd1b013948da084e58be9a0a67b3a078c90f9dc59ffc7194069106daef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-104', 'english', 1, 3, 'choice', '{"stem":"Read the picture card in words: “a silver van near thirteen flags”. Which note matches its colour, number and school item?","options":["blue — one — train","no colour — zero — nothing","son — sports field — yesterday","silver — thirteen — flag"],"answer":3,"explanation":"The matching note keeps the colour, number and school item from the card."}'::jsonb, 'builtin', '图文匹配', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '1f50c676ae93b9c1a74262a900096dcb5c83920c591f736cb630d9cf409084d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-105', 'english', 1, 3, 'choice', '{"stem":"The word “zoo” begins with z. Which pair is correct?","options":["z — /z/","a — /m/","t — /s/","o — /b/"],"answer":0,"explanation":"“zoo” begins with the letter z and the sound /z/."}'::jsonb, 'builtin', '字母与声音', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '315b6111392d5d49fd717980d2ddedb1cfc824f0986f5f161bd21917967a051a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-106', 'english', 1, 1, 'fill', '{"stem":"The word “book” begins with the letter ___.","answer":"b","explanation":"The word “b” completes the sentence correctly."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '8d0acba37404c262901ac7778b58b3aed172a6da55538d20a2149c24f7c797a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-107', 'english', 1, 1, 'fill', '{"stem":"When a friend says “Hello!”, you can answer “___!”","answer":"hello","explanation":"The word “hello” completes the sentence correctly."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'bf538e3421f703534a97773e49771ced02cca6e66497bf6ec396071b075ca175', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-108', 'english', 1, 1, 'fill', '{"stem":"The number after four is ___.","answer":"five","explanation":"The word “five” completes the sentence correctly."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'd78a8feead1a2c787d0a53f0b29eec47bed653a43f45f1509643d519c9f2697f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-109', 'english', 1, 1, 'fill', '{"stem":"Grass is often ___.","answer":"green","explanation":"The word “green” completes the sentence correctly."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'e79bfef5dc7e4cff812f7b62469d9cfed38c31edf7a7cd043fb3e355c1f04b64', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-110', 'english', 1, 1, 'fill', '{"stem":"My mother and father are my ___.","answer":"parents","explanation":"The word “parents” completes the sentence correctly."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'a8391310fdc46c07bb7c7073669daa736c6ae01ae011f6b15ac41193680ecb0b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-111', 'english', 1, 1, 'fill', '{"stem":"We read books in the ___.","answer":"library","explanation":"The word “library” completes the sentence correctly."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '5d89d223c214a6c3794b4a831955d13ff9a10face0bdaf971e4b1fcc0ec1b6ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-112', 'english', 1, 1, 'fill', '{"stem":"“___ your book” means 把书打开.","answer":"open","explanation":"The word “open” completes the sentence correctly."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '9dcc3e00c8766b6e32527c6ad132e939b582be9b5a7b67a43069b946a72496b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-113', 'english', 1, 1, 'fill', '{"stem":"Card: “one red apple”. The colour is ___.","answer":"red","explanation":"The word “red” completes the sentence correctly."}'::jsonb, 'builtin', '图文匹配', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '94144df6cd796a99bc7685416a4c4dd3a3b2c138aa54890fd1d0966910a73ccc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-114', 'english', 1, 1, 'fill', '{"stem":"The word “dog” begins with ___.","answer":"d","explanation":"The word “d” completes the sentence correctly."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '759da6b2bd06f3ddefe9bf6a941e2606257f4f5387066f67aaeb4eb3e3eac6a7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-115', 'english', 1, 1, 'fill', '{"stem":"—Thank you. —You are ___.","answer":"welcome","explanation":"The word “welcome” completes the sentence correctly."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '182d23e3b9a5c72114220871846b114f3b5d515fe775617392ec265d5c5da1c4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-116', 'english', 1, 1, 'fill', '{"stem":"Ten and one make ___.","answer":"eleven","explanation":"The word “eleven” completes the sentence correctly."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '582c64cb0a205f59920e533080d5bfa4b13cd5b9dfbd90a065efefd38c3a034b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-117', 'english', 1, 2, 'fill', '{"stem":"The sky is often ___.","answer":"blue","explanation":"The word “blue” completes the sentence correctly."}'::jsonb, 'builtin', '颜色', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '20f0a1d05cd709e72dfaaaba6c63f9e6e44816c9c0181cf48e34358a612ab230', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-118', 'english', 1, 2, 'fill', '{"stem":"My mum’s mother is my ___.","answer":"grandmother","explanation":"The word “grandmother” completes the sentence correctly."}'::jsonb, 'builtin', '家庭', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'cfdc42376b60974775e46ed53af89d7429e9aa8bf1333b4d89b7d0e69a280ed4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-119', 'english', 1, 2, 'fill', '{"stem":"We run and play on the ___.","answer":"playground","explanation":"The word “playground” completes the sentence correctly."}'::jsonb, 'builtin', '学校', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '612c12366d025deed146075a36e0a1b255fdde1395be4212998ed6cbc891e5e0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-120', 'english', 1, 2, 'fill', '{"stem":"“___ down” asks you to take a seat.","answer":"sit","explanation":"The word “sit” completes the sentence correctly."}'::jsonb, 'builtin', '课堂指令', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '3d832352046073bfcb6502fa446ee9c2e5aa5b4c2ce1583c3e0b8116abc10b6c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-121', 'english', 1, 2, 'fill', '{"stem":"Card: “three blue pens”. The number is ___.","answer":"three","explanation":"The word “three” completes the sentence correctly."}'::jsonb, 'builtin', '图文匹配', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'f59d7210c1eb9a593a0a7efae1816496b0d669fdb8bb91b0909b053ee213226b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-122', 'english', 1, 2, 'fill', '{"stem":"The word “sun” begins with the sound /___/.","answer":"s","explanation":"The word “s” completes the sentence correctly."}'::jsonb, 'builtin', '字母与声音', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '20faf2d331acdd88a4589fe5091a9c260dba90d8ab80f6c7ca36b839c766596a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-123', 'english', 1, 2, 'fill', '{"stem":"—How are you? —I am ___.","answer":"fine","explanation":"The word “fine” completes the sentence correctly."}'::jsonb, 'builtin', '日常问候', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '8c508f5f8860eab77d0e159d0ea5f93ec719a53fbab573cadf86ce363cfba9db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-124', 'english', 1, 3, 'fill', '{"stem":"Twelve comes after ___.","answer":"eleven","explanation":"The word “eleven” completes the sentence correctly."}'::jsonb, 'builtin', '数字', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'fa91b23be4a81e03740643523f8f8a4476b8ca7bac180e7c2a74ede4e6232d90', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-125', 'english', 1, 3, 'fill', '{"stem":"“___ at the map” asks your eyes to face it.","answer":"look","explanation":"The word “look” completes the sentence correctly."}'::jsonb, 'builtin', '课堂指令', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '60a885ef3e3b94c9ffe94653f9375f81a150b04c56098bd2746fc8f414ee7057', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-126', 'english', 1, 3, 'fill', '{"stem":"Card: “a yellow bag”. The object is a ___.","answer":"bag","explanation":"The word “bag” completes the sentence correctly."}'::jsonb, 'builtin', '图文匹配', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '25b7762939528f6c6fd89e27259d80c2fed690cb79241a8c6aa00d6608c9b0df', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-127', 'english', 1, 1, 'match', '{"stem":"Use the first-grade English card set. Match the letters b, c, d and f with words that begin with them.","left":["b","c","d","f"],"right":["dog","book","fish","cat"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 字母与声音 items."}'::jsonb, 'builtin', '字母与声音', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'bc689193826932600c40d701b598c0256f6697f9513c39ab58015ab10f65eff8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-128', 'english', 1, 1, 'match', '{"stem":"Use the first-grade English card set. Match Hello, How are you, Thank you and Goodbye with their replies.","left":["Hello!","How are you?","Thank you.","Goodbye!"],"right":["You are welcome.","Hello!","Goodbye!","I am fine."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 日常问候 items."}'::jsonb, 'builtin', '日常问候', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '50039d0f547d087b111966f07533d0067bedab2f87500204ac495ddba741fdd3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-129', 'english', 1, 1, 'match', '{"stem":"Use the first-grade English card set. Match the number words one, three, five and ten with digits.","left":["one","three","five","ten"],"right":["5","1","10","3"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 数字 items."}'::jsonb, 'builtin', '数字', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '379a46b884878eebe3283c5baf0b08d2d5ca0219ed1ca0b316657b3aa5c98529', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-130', 'english', 1, 1, 'match', '{"stem":"Use the first-grade English card set. Match red, blue, green and yellow with their Chinese colour meanings.","left":["red","blue","green","yellow"],"right":["绿色","红色","黄色","蓝色"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 颜色 items."}'::jsonb, 'builtin', '颜色', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '15f2e1cd1e72025ddc900eda9d9678e65856c784fb089633da69e26b9bc07976', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-131', 'english', 1, 1, 'match', '{"stem":"Use the first-grade English card set. Match mother, father, sister and brother with their Chinese family meanings.","left":["mother","father","sister","brother"],"right":["姐妹","妈妈","兄弟","爸爸"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 家庭 items."}'::jsonb, 'builtin', '家庭', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '16c49014fdf9338ea38b4bedf94ddaf98e4a046d1e25bcbbb47cabf442e84eb5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-132', 'english', 1, 1, 'match', '{"stem":"Use the first-grade English card set. Match each school place with the activity done there.","left":["classroom","library","playground","art room"],"right":["运动","上课","画画","读书"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 学校 items."}'::jsonb, 'builtin', '学校', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], 'ae6c03355ee8b4d5c2af297b1c0cda49ed48e47168270513fc0465c544f718d3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-133', 'english', 1, 1, 'match', '{"stem":"Use the first-grade English card set. Match each classroom instruction with its action in Chinese.","left":["Open your book.","Stand up.","Sit down.","Look at the board."],"right":["坐下","打开书","看黑板","起立"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 课堂指令 items."}'::jsonb, 'builtin', '课堂指令', 'understand', array['全国通用', '低龄短句', '文字可作答']::text[], '5668e66c850076d6db55a0b659c7f7e783d61b24c88b73319a399ef513cffe21', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-134', 'english', 1, 2, 'match', '{"stem":"Use the first-grade English card set. Match each colour-and-number word card with its full Chinese note.","left":["one red apple","two blue pens","three green books","four yellow bags"],"right":["3本绿色书","1个红苹果","4个黄色包","2支蓝色笔"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 图文匹配 items."}'::jsonb, 'builtin', '图文匹配', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '5cfa5a516b85ad66b686ea36fe1d6acb177d544d0471041e658cf83d2d245de7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-135', 'english', 1, 2, 'match', '{"stem":"Review the classroom word cards. Match the letters b, c, d and f with words that begin with them.","left":["b","c","d","f"],"right":["dog","book","fish","cat"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 字母与声音 items."}'::jsonb, 'builtin', '字母与声音', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '073fb316764261809f5e100e1e58142a8b85325313e131a6d16ecfdb487b7c4e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-136', 'english', 1, 2, 'match', '{"stem":"Review the classroom word cards. Match Hello, How are you, Thank you and Goodbye with their replies.","left":["Hello!","How are you?","Thank you.","Goodbye!"],"right":["You are welcome.","Hello!","Goodbye!","I am fine."],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 日常问候 items."}'::jsonb, 'builtin', '日常问候', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], 'f7f431b854e4a8d6f2a13dbd8b0fb5989c22ba0fbb2c5fdcda79121bda294844', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-137', 'english', 1, 2, 'match', '{"stem":"Review the classroom word cards. Match the number words one, three, five and ten with digits.","left":["one","three","five","ten"],"right":["5","1","10","3"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 数字 items."}'::jsonb, 'builtin', '数字', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '23d1fa3f804685ee17dcbbfeb18a958e22a3938b1131649552bd774d6dba15b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-138', 'english', 1, 2, 'match', '{"stem":"Review the classroom word cards. Match red, blue, green and yellow with their Chinese colour meanings.","left":["red","blue","green","yellow"],"right":["绿色","红色","黄色","蓝色"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 颜色 items."}'::jsonb, 'builtin', '颜色', 'apply', array['全国通用', '低龄短句', '文字可作答']::text[], '4e32693d238203349ccc326b735a1ca2eeaf8cd8d019783082bfc18b86513bc6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-139', 'english', 1, 3, 'match', '{"stem":"Review the classroom word cards. Match mother, father, sister and brother with their Chinese family meanings.","left":["mother","father","sister","brother"],"right":["姐妹","妈妈","兄弟","爸爸"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 家庭 items."}'::jsonb, 'builtin', '家庭', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], 'f8088c2e86fa9c12edb216966877296616f922044ff60741ec0281d5f79b0b16', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-english-authored-140', 'english', 1, 3, 'match', '{"stem":"Review the classroom word cards. Match each school place with the activity done there.","left":["classroom","library","playground","art room"],"right":["运动","上课","画画","读书"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning of all four 学校 items."}'::jsonb, 'builtin', '学校', 'reason', array['全国通用', '低龄短句', '文字可作答']::text[], '1042f62b1c64189548d9bddb4b891a51e04bead7ee2696849fe09f32b23b2134', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-001', 'math', 1, 1, 'choice', '{"stem":"整理书包：12里面有几个十和几个一？","options":["1个十和2个一","12个十和0个一","0个十和12个一","1个十和3个一"],"answer":0,"explanation":"12=10+2，所以有1个十和2个一。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '5b5a0b1a916cd28fbbef04081373db39d6ea7a65b185c3603711ef4db1eb075f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-002', 'math', 1, 1, 'choice', '{"stem":"整理书包：7和8，哪个数大？","options":["7","8","6","一样大"],"answer":1,"explanation":"8排在7后面，所以8大。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '2fdd44bde88292c62f8fe36e9780652ca6106dc3ec713d2a3ea237d5a281fa5c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-003', 'math', 1, 1, 'choice', '{"stem":"整理书包：5+4=？","options":["8","10","9","5"],"answer":2,"explanation":"把5和4合起来是9。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'd27fccac00088ecb3a73b9fa32946bf28872e01978ed30f578e9360d58d428da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-004', 'math', 1, 1, 'choice', '{"stem":"整理书包：14-5=？","options":["8","10","5","9"],"answer":3,"explanation":"从14里去掉5，还剩9。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'be77d827d706ec80cd603983805bd63339f88b96195193ab20bf3d6580fd30c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-005', 'math', 1, 1, 'choice', '{"stem":"整理书包：小鸟在树枝上面。树枝在小鸟的哪边？","options":["下面","上面","左边","右边"],"answer":0,"explanation":"小鸟在树枝上面，树枝就在小鸟下面。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '90b53c2d603ae179f14e8cffabc5280c5965d2ac2467a806c9f6ff39f188e620', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-006', 'math', 1, 1, 'choice', '{"stem":"整理书包：钟面的外圈没有角，它像什么平面图形？","options":["三角形","圆","正方形","长方形"],"answer":1,"explanation":"钟面的外圈像圆。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '917e70496ecf7fab85430667d590600d44daebb285cb2f2888d2f78a5a0f9ca8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-007', 'math', 1, 1, 'choice', '{"stem":"整理书包：分针指向12，时针指向8，现在是？","options":["8时半","9时","8时","12时"],"answer":2,"explanation":"分针指12表示整时，时针指8就是8时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '90476dc18bbbe8023ecc2c112117aa0bb77253751342bf78ef49d0b75847ad89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-008', 'math', 1, 1, 'choice', '{"stem":"整理书包：苹果5个，梨7个，香蕉4个。哪种水果最多？","options":["苹果","香蕉","一样多","梨"],"answer":3,"explanation":"梨有7个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '9c4b7994fd6310d1f2a207b790b42ee965c8bd910fb55b7b6a23a6bd150b1410', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-009', 'math', 1, 1, 'choice', '{"stem":"整理书包：篮子里有7个苹果，又放入4个，现在有多少个？","options":["11个","7个","4个","3个"],"answer":0,"explanation":"求现在一共有多少，用加法：7+4=11个。"}'::jsonb, 'builtin', '一步问题', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '939af99a49e190047ea0868eed5064aab7f23eb1d557d104748a58a6b14edab0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-010', 'math', 1, 1, 'choice', '{"stem":"水果分享：13里面有几个十和几个一？","options":["13个十和0个一","1个十和3个一","0个十和13个一","1个十和4个一"],"answer":1,"explanation":"13=10+3，所以有1个十和3个一。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '85a7f25881163668caa62078d7c0779ce1a54cf687979d6ef9fbc4666570fe66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-011', 'math', 1, 1, 'choice', '{"stem":"水果分享：8和9，哪个数大？","options":["8","7","9","一样大"],"answer":2,"explanation":"9排在8后面，所以9大。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '580039621fcf73aadde80007f33c2768a3aec3d06ad067ab2339465cf21ac217', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-012', 'math', 1, 1, 'choice', '{"stem":"水果分享：6+5=？","options":["10","12","6","11"],"answer":3,"explanation":"把6和5合起来是11。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '6cda9a59d3b2967901b27d451c3dbef7ff21412bc159b19dbf009a07e07751f9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-013', 'math', 1, 1, 'choice', '{"stem":"水果分享：15-6=？","options":["9","8","10","6"],"answer":0,"explanation":"从15里去掉6，还剩9。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '6ae55d84fb34fb731bfdf9129bc650681a58802aeb5561e5048ae489342c2e77', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-014', 'math', 1, 1, 'choice', '{"stem":"水果分享：书包在椅子下面。椅子在书包的哪边？","options":["下面","上面","左边","右边"],"answer":1,"explanation":"书包在椅子下面，椅子就在书包上面。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '7a5a39a48093de4ff834df544d90ae38c29191d9278f2b0564685bd7570bc912', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-015', 'math', 1, 1, 'choice', '{"stem":"水果分享：一面小旗有3条直边和3个角，它像什么图形？","options":["圆","正方形","三角形","长方形"],"answer":2,"explanation":"三角形有3条边和3个角。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'f60ee4dbc8a75e3e6f7ee76f7ae6521749878797fc7d6f5cc170d0c0cbb71f55', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-016', 'math', 1, 1, 'choice', '{"stem":"水果分享：分针指向12，时针指向9，现在是？","options":["9时半","10时","12时","9时"],"answer":3,"explanation":"分针指12表示整时，时针指9就是9时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'eff71eaa81a367456e6468e36bb2e5dc80b54270640adb208e479d5788d10ffb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-017', 'math', 1, 1, 'choice', '{"stem":"水果分享：苹果6个，梨8个，香蕉2个。哪种水果最多？","options":["梨","苹果","香蕉","一样多"],"answer":0,"explanation":"梨有8个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '5701aa0272edb6b28ee4d0b9a98b605ef9606be72589ac35186dc54cb47b7134', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-018', 'math', 1, 1, 'choice', '{"stem":"水果分享：篮子里有8个苹果，又放入5个，现在有多少个？","options":["8个","13个","5个","3个"],"answer":1,"explanation":"求现在一共有多少，用加法：8+5=13个。"}'::jsonb, 'builtin', '一步问题', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '962127d28f43bdeca68a092b71ed1f4d432b2515a42201d72e494d561e3bba73', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-019', 'math', 1, 1, 'choice', '{"stem":"操场游戏：14里面有几个十和几个一？","options":["14个十和0个一","0个十和14个一","1个十和4个一","1个十和5个一"],"answer":2,"explanation":"14=10+4，所以有1个十和4个一。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'f6c0b2b2de241204023902c1bc40d1d9794ef10664d82235d163fece1d0a220d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-020', 'math', 1, 1, 'choice', '{"stem":"操场游戏：9和10，哪个数大？","options":["9","8","一样大","10"],"answer":3,"explanation":"10排在9后面，所以10大。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'ca1e798afe8e4159c24d3910ee8d6b5dbb5193dbc606f42652eb84bcf7f358e6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-021', 'math', 1, 1, 'choice', '{"stem":"操场游戏：7+6=？","options":["13","12","14","7"],"answer":0,"explanation":"把7和6合起来是13。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '5a074ebea40cfa66d48909c73fabd2c7be7d18bc1f7c0b0b3fb910aefb10806b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-022', 'math', 1, 1, 'choice', '{"stem":"操场游戏：16-7=？","options":["8","9","10","7"],"answer":1,"explanation":"从16里去掉7，还剩9。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'd60b61b0d3e2cead6513b511ab2212cdf893d71a81764832d13a5261da61d6ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-023', 'math', 1, 1, 'choice', '{"stem":"操场游戏：小猫在小狗的左边。小狗在小猫的哪边？","options":["左边","上边","右边","下面"],"answer":2,"explanation":"两个物体左右位置相反，小狗在小猫右边。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '41088345140498b91c1bedb0bdb2660e1fe2dc32e905761acf996807add4258b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-024', 'math', 1, 1, 'choice', '{"stem":"操场游戏：书本的封面有4条直边，上下一样长、左右一样长，它像什么图形？","options":["圆","三角形","球","长方形"],"answer":3,"explanation":"书本封面通常像长方形。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '588a7a589dec7a1f048d9e142b2f0e73f8f5c93fc6b0779ec5b247c388a00b68', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-025', 'math', 1, 1, 'choice', '{"stem":"操场游戏：分针指向12，时针指向10，现在是？","options":["10时","10时半","11时","12时"],"answer":0,"explanation":"分针指12表示整时，时针指10就是10时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '828e6fa707546ae4b5d455ce3df939b18988d2ecd647550a057e5b13d6f53a29', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-026', 'math', 1, 1, 'choice', '{"stem":"操场游戏：苹果3个，梨5个，香蕉3个。哪种水果最多？","options":["苹果","梨","香蕉","一样多"],"answer":1,"explanation":"梨有5个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'ebfa3f0f75401f992f1d7339abd09762b0a9e125e61892eeb58e2e41c9116f2f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-027', 'math', 1, 1, 'choice', '{"stem":"操场游戏：篮子里有9个苹果，又放入6个，现在有多少个？","options":["9个","6个","15个","3个"],"answer":2,"explanation":"求现在一共有多少，用加法：9+6=15个。"}'::jsonb, 'builtin', '一步问题', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '872152a49e7200b0fba67b21a1387c9f8562a5177d2da335307f48e3d31ab546', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-028', 'math', 1, 1, 'choice', '{"stem":"图书角：15里面有几个十和几个一？","options":["15个十和0个一","0个十和15个一","1个十和6个一","1个十和5个一"],"answer":3,"explanation":"15=10+5，所以有1个十和5个一。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '04b4cdf6c0369a59d929caccb6ec4b83e27cbbe4e537b9d711efb234af49fc13', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-029', 'math', 1, 1, 'choice', '{"stem":"图书角：10和11，哪个数大？","options":["11","10","9","一样大"],"answer":0,"explanation":"11排在10后面，所以11大。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'cc7949649f31a56cc89e105f466cfb79f3601939c03ffecc4160dd359530136d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-030', 'math', 1, 1, 'choice', '{"stem":"图书角：8+2=？","options":["9","10","11","8"],"answer":1,"explanation":"把8和2合起来是10。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '804868764533194283cece61433f882f82238355ab7f22368bd98be922b7c5b3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-031', 'math', 1, 1, 'choice', '{"stem":"图书角：17-3=？","options":["13","15","14","3"],"answer":2,"explanation":"从17里去掉3，还剩14。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '7b94bf4564d7d4a9fc69295d9c67c9c41c03076f96c733327d37ea003042aaf6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-032', 'math', 1, 1, 'choice', '{"stem":"图书角：小鸟在树枝上面。树枝在小鸟的哪边？","options":["上面","左边","右边","下面"],"answer":3,"explanation":"小鸟在树枝上面，树枝就在小鸟下面。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '861cdfd84de90d8663a86b10f39a086bdcb2dd4f9e34d1d8f34698ccb6108ff5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-033', 'math', 1, 1, 'choice', '{"stem":"图书角：一块方巾有4条一样长的直边，它像什么图形？","options":["正方形","圆","三角形","长方体"],"answer":0,"explanation":"正方形的4条边一样长。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '9382480d2d1cc2a085fc3a40d0e7edcfc72bbc48c64f97845ea44e8fa994d9e0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-034', 'math', 1, 1, 'choice', '{"stem":"图书角：分针指向12，时针指向11，现在是？","options":["11时半","11时","12时","12时3"],"answer":1,"explanation":"分针指12表示整时，时针指11就是11时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'f7078312302498a26af9b64ee664664f6c68ee88e1769320bfc4243c34c27e2a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-035', 'math', 1, 1, 'choice', '{"stem":"图书角：苹果4个，梨6个，香蕉4个。哪种水果最多？","options":["苹果","香蕉","梨","一样多"],"answer":2,"explanation":"梨有6个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '131fcb6febfed499556bc16a30bc4806f323654c74e9445cd6f928153211e9d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-036', 'math', 1, 1, 'choice', '{"stem":"图书角：篮子里有10个苹果，又放入2个，现在有多少个？","options":["10个","2个","8个","12个"],"answer":3,"explanation":"求现在一共有多少，用加法：10+2=12个。"}'::jsonb, 'builtin', '一步问题', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '8c7384790f7eed189e35d82a88fd7037d98b3f3bafef89016db69c9fbf5d8f98', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-037', 'math', 1, 1, 'choice', '{"stem":"积木乐园：16里面有几个十和几个一？","options":["1个十和6个一","16个十和0个一","0个十和16个一","1个十和7个一"],"answer":0,"explanation":"16=10+6，所以有1个十和6个一。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'ad1dac21b42ed7b560387c1cd2761db0de9e96e818ab9ba89fe1b38f3d209136', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-038', 'math', 1, 1, 'choice', '{"stem":"积木乐园：11和12，哪个数大？","options":["11","12","10","一样大"],"answer":1,"explanation":"12排在11后面，所以12大。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '5b8fb36d21f74d7b140aba25ec49e4253361b2352908b018b8334ceb1778c78e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-039', 'math', 1, 1, 'choice', '{"stem":"积木乐园：3+3=？","options":["5","7","6","3"],"answer":2,"explanation":"把3和3合起来是6。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '4610a16725eef5c73bd281a9e6a6c6d93461c472f5d5fb25f9b7e3f22f691127', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-040', 'math', 1, 1, 'choice', '{"stem":"积木乐园：18-4=？","options":["13","15","4","14"],"answer":3,"explanation":"从18里去掉4，还剩14。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '301bf3cad04a2f20d95956eadc7fa884f5521f571fd6e23b09011a5dd764cc72', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-041', 'math', 1, 1, 'choice', '{"stem":"积木乐园：书包在椅子下面。椅子在书包的哪边？","options":["上面","下面","左边","右边"],"answer":0,"explanation":"书包在椅子下面，椅子就在书包上面。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '51249ffe8b89c28560e6c77d145b92bb7843f21b3abaa9971f8b92e2b2f0b3c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-042', 'math', 1, 1, 'choice', '{"stem":"积木乐园：一枚硬币的平平一面像什么图形？","options":["三角形","圆","正方形","长方形"],"answer":1,"explanation":"硬币的平面外形像圆。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '0f24df2e945fb632a2dca842ab7b2c50deae14fccb6778c03707444c15891bc1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-043', 'math', 1, 1, 'choice', '{"stem":"积木乐园：分针指向12，时针指向6，现在是？","options":["6时半","7时","6时","12时"],"answer":2,"explanation":"分针指12表示整时，时针指6就是6时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'f4e958d118300bda67ee5e79b2d866829d196830332936e49936a3b418dd05dc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-044', 'math', 1, 1, 'choice', '{"stem":"积木乐园：苹果5个，梨7个，香蕉2个。哪种水果最多？","options":["苹果","香蕉","一样多","梨"],"answer":3,"explanation":"梨有7个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '7bf53a1b6dbf1e23e0b7dca300fa36bff261347f8c212739e8c7b40bc6af6122', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-045', 'math', 1, 1, 'choice', '{"stem":"积木乐园：篮子里有11个苹果，又放入3个，现在有多少个？","options":["14个","11个","3个","8个"],"answer":0,"explanation":"求现在一共有多少，用加法：11+3=14个。"}'::jsonb, 'builtin', '一步问题', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'f4d9df40a11abb425fc08f7336e9a92b8e617d43b3824aa438963d293eb007dd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-046', 'math', 1, 1, 'choice', '{"stem":"动物观察：17里面有几个十和几个一？","options":["17个十和0个一","1个十和7个一","0个十和17个一","1个十和8个一"],"answer":1,"explanation":"17=10+7，所以有1个十和7个一。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'f01d1a4706af5877c1233456f91beb7b2d214260d2d8b6096ba51c49ad103456', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-047', 'math', 1, 1, 'choice', '{"stem":"动物观察：12和13，哪个数大？","options":["12","11","13","一样大"],"answer":2,"explanation":"13排在12后面，所以13大。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'b8b9a0ff84438e6b9e5b7b147a7a2a93efcb3cc7a2c227b11c90ca70347d66da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-048', 'math', 1, 1, 'choice', '{"stem":"动物观察：4+4=？","options":["7","9","4","8"],"answer":3,"explanation":"把4和4合起来是8。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'fc1a5551843368d211c3ba67d11f4eafd69b3a51bea986d020e104c25fa5405e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-049', 'math', 1, 1, 'choice', '{"stem":"动物观察：12-5=？","options":["7","6","8","5"],"answer":0,"explanation":"从12里去掉5，还剩7。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'd09346c45af657a287c4734ccdad16411101d608758031d00ceb50d87365a6f8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-050', 'math', 1, 1, 'choice', '{"stem":"动物观察：小猫在小狗的左边。小狗在小猫的哪边？","options":["左边","右边","上边","下面"],"answer":1,"explanation":"两个物体左右位置相反，小狗在小猫右边。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '060e84e11d63146c4548396045bd4d8eb76f1b12b3b3f0bc81671eb35cb9b64f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-051', 'math', 1, 1, 'choice', '{"stem":"动物观察：小屋尖尖的屋顶轮廓像什么平面图形？","options":["圆","正方形","三角形","长方形"],"answer":2,"explanation":"尖屋顶的轮廓常像三角形。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '85fbcc1c68ef298ffb7f1405eb72ef69261bbf4a76ed8182f104bffb07622c52', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-052', 'math', 1, 1, 'choice', '{"stem":"动物观察：分针指向12，时针指向7，现在是？","options":["7时半","8时","12时","7时"],"answer":3,"explanation":"分针指12表示整时，时针指7就是7时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'a79f8848cec3d14637ef1056f049aa7e4fd4f5e554fa857343a9a62af9c2446a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-053', 'math', 1, 2, 'choice', '{"stem":"动物观察：苹果6个，梨8个，香蕉3个。哪种水果最多？","options":["梨","苹果","香蕉","一样多"],"answer":0,"explanation":"梨有8个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '951bd6a64086c2e5f948ff03534c63f4001ae57a80e7db73ebe0a50140b6790b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-054', 'math', 1, 2, 'choice', '{"stem":"动物观察：篮子里有5个苹果，又放入4个，现在有多少个？","options":["5个","9个","4个","1个"],"answer":1,"explanation":"求现在一共有多少，用加法：5+4=9个。"}'::jsonb, 'builtin', '一步问题', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'e2c39ac65fc90b74ab7fad13fef31eda6927d0c878420d17883f8cdee6caca4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-055', 'math', 1, 2, 'choice', '{"stem":"班级值日：18里面有几个十和几个一？","options":["18个十和0个一","0个十和18个一","1个十和8个一","1个十和9个一"],"answer":2,"explanation":"18=10+8，所以有1个十和8个一。"}'::jsonb, 'builtin', '数的认识', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '17be9468e4f8e26998e0c36f537008aacb16a2afc88d4317419837d3087b3fe2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-056', 'math', 1, 2, 'choice', '{"stem":"班级值日：13和14，哪个数大？","options":["13","12","一样大","14"],"answer":3,"explanation":"14排在13后面，所以14大。"}'::jsonb, 'builtin', '数的比较', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '1e5d4950e732fa190dc0bbe52b0e9f8d52e792a68437a338cf21253e9dc3ca8b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-057', 'math', 1, 2, 'choice', '{"stem":"班级值日：5+5=？","options":["10","9","11","5"],"answer":0,"explanation":"把5和5合起来是10。"}'::jsonb, 'builtin', '基本加法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '15ec0de3aad9823f59be68febaef5ed31db82155a41bd09e43d5105eeefb226a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-058', 'math', 1, 2, 'choice', '{"stem":"班级值日：13-6=？","options":["6","7","8","63"],"answer":1,"explanation":"从13里去掉6，还剩7。"}'::jsonb, 'builtin', '基本减法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'cf10d20a87cf630ff0b0a4008bcd316da91ece60d1b868967a6dbf7546300b4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-059', 'math', 1, 2, 'choice', '{"stem":"班级值日：小鸟在树枝上面。树枝在小鸟的哪边？","options":["上面","左边","下面","右边"],"answer":2,"explanation":"小鸟在树枝上面，树枝就在小鸟下面。"}'::jsonb, 'builtin', '位置与顺序', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'cfb2a61c374d65009d8acc1ef1ef89bc465a3ef8bd69a40017438bee8339285c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-060', 'math', 1, 2, 'choice', '{"stem":"班级值日：教室的门又高又长，它的正面像什么图形？","options":["圆","三角形","正方体","长方形"],"answer":3,"explanation":"门的正面通常像长方形。"}'::jsonb, 'builtin', '常见图形', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'fb0a05720f022d34094937406a7317a42e58c511c83bb839aa43ba679ee1f363', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-061', 'math', 1, 2, 'choice', '{"stem":"班级值日：分针指向12，时针指向8，现在是？","options":["8时","8时半","9时","12时"],"answer":0,"explanation":"分针指12表示整时，时针指8就是8时。"}'::jsonb, 'builtin', '钟表初步', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '1c4927e841e88cbafcde5b0655dc3c983f6f3046a9f94ab2b8953f97623d869f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-062', 'math', 1, 2, 'choice', '{"stem":"班级值日：苹果3个，梨5个，香蕉4个。哪种水果最多？","options":["苹果","梨","香蕉","一样多"],"answer":1,"explanation":"梨有5个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '3e16db709885de8f1bd4213a7aa7c0716f36086c0ffa045792a5d8ec2d63cf14', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-063', 'math', 1, 2, 'choice', '{"stem":"班级值日：篮子里有6个苹果，又放入5个，现在有多少个？","options":["6个","5个","11个","1个"],"answer":2,"explanation":"求现在一共有多少，用加法：6+5=11个。"}'::jsonb, 'builtin', '一步问题', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'a04166acc18a98ff3c47f509a10650ba5a6318d7d4634f297a19ec9a6ddf2e35', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-064', 'math', 1, 2, 'choice', '{"stem":"美术课堂：19里面有几个十和几个一？","options":["19个十和0个一","0个十和19个一","1个十和10个一","1个十和9个一"],"answer":3,"explanation":"19=10+9，所以有1个十和9个一。"}'::jsonb, 'builtin', '数的认识', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '83fcc1e760f31d3e41924c192705976a7b2ffe6179be285a4cc91aad309bdc7e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-065', 'math', 1, 2, 'choice', '{"stem":"美术课堂：14和15，哪个数大？","options":["15","14","13","一样大"],"answer":0,"explanation":"15排在14后面，所以15大。"}'::jsonb, 'builtin', '数的比较', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '46e941cc820ef14c4bfe32cc32c803bca1e86a0545b6b3c8ebbd5697f9d9e1d6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-066', 'math', 1, 2, 'choice', '{"stem":"美术课堂：6+6=？","options":["11","12","13","6"],"answer":1,"explanation":"把6和6合起来是12。"}'::jsonb, 'builtin', '基本加法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '71ac8a39627dd9190d87d82f83660212414af91fe5885c492723a3d7db541945', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-067', 'math', 1, 2, 'choice', '{"stem":"美术课堂：14-7=？","options":["6","8","7","73"],"answer":2,"explanation":"从14里去掉7，还剩7。"}'::jsonb, 'builtin', '基本减法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'd9eab5e37001248d40fdd04eeb91979d70da68a8d951508f3939c05ca4b905db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-068', 'math', 1, 2, 'choice', '{"stem":"美术课堂：书包在椅子下面。椅子在书包的哪边？","options":["下面","左边","右边","上面"],"answer":3,"explanation":"书包在椅子下面，椅子就在书包上面。"}'::jsonb, 'builtin', '位置与顺序', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'a0c99d7d9afc1432b6ae776a8d6fe8024529d65199caa8a2d042bd83b94f3685', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-069', 'math', 1, 2, 'choice', '{"stem":"美术课堂：方格纸上的一个小方格，4条边一样长，它是什么图形？","options":["正方形","圆","三角形","长方体"],"answer":0,"explanation":"小方格是正方形。"}'::jsonb, 'builtin', '常见图形', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '7c2da81862a87b26212d80c2a5c3b2e4bef19f5e6e6666d88d33e2e3e11ef3d4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-070', 'math', 1, 2, 'choice', '{"stem":"美术课堂：分针指向12，时针指向9，现在是？","options":["9时半","9时","10时","12时"],"answer":1,"explanation":"分针指12表示整时，时针指9就是9时。"}'::jsonb, 'builtin', '钟表初步', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'a065827365f19cbc529c6c8978b62197dc303271605488ac39f60a780c63052a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-071', 'math', 1, 2, 'choice', '{"stem":"美术课堂：苹果4个，梨6个，香蕉2个。哪种水果最多？","options":["苹果","香蕉","梨","一样多"],"answer":2,"explanation":"梨有6个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '82bdf52d5382852a15a90bc697ef574f271155f907d5cd72fad049cf8a30507a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-072', 'math', 1, 2, 'choice', '{"stem":"美术课堂：篮子里有7个苹果，又放入6个，现在有多少个？","options":["7个","6个","1个","13个"],"answer":3,"explanation":"求现在一共有多少，用加法：7+6=13个。"}'::jsonb, 'builtin', '一步问题', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '0f9ef78821422834f6d07c6e4417e7bf2d254cf8de603a4722aa3148830212a1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-073', 'math', 1, 2, 'choice', '{"stem":"春游准备：10里面有几个十和几个一？","options":["1个十和0个一","10个十和0个一","0个十和10个一","1个十和1个一"],"answer":0,"explanation":"10=10+0，所以有1个十和0个一。"}'::jsonb, 'builtin', '数的认识', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'c12925e71d3bfd2a7cbf71a2ea76885b96ddec2c41e18df809f74a1e55524d3a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-074', 'math', 1, 2, 'choice', '{"stem":"春游准备：15和16，哪个数大？","options":["15","16","14","一样大"],"answer":1,"explanation":"16排在15后面，所以16大。"}'::jsonb, 'builtin', '数的比较', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'b2cf3731658d243f5d9e2e784aa1b25c1dba25a1a2db0dac103b6927b216e6da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-075', 'math', 1, 2, 'choice', '{"stem":"春游准备：7+2=？","options":["8","10","9","7"],"answer":2,"explanation":"把7和2合起来是9。"}'::jsonb, 'builtin', '基本加法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '34b36c91850fbf71b1d4c81d430bc46babb5234eca2cc35fff90e54e5580a6c5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-076', 'math', 1, 2, 'choice', '{"stem":"春游准备：15-3=？","options":["11","13","3","12"],"answer":3,"explanation":"从15里去掉3，还剩12。"}'::jsonb, 'builtin', '基本减法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'c436e28702f59c2bc7d27c71ef6d14e7129f086031e024912aa2ee5012a66a25', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-077', 'math', 1, 2, 'choice', '{"stem":"春游准备：小猫在小狗的左边。小狗在小猫的哪边？","options":["右边","左边","上边","下面"],"answer":0,"explanation":"两个物体左右位置相反，小狗在小猫右边。"}'::jsonb, 'builtin', '位置与顺序', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '8841ba579eeaaeca820626b71fca041006a0410850090f49574119fdaa58c0e5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-078', 'math', 1, 2, 'choice', '{"stem":"春游准备：一个圆环的边一直弯曲，一个角也没有。它是什么图形？","options":["三角形","圆","正方形","长方形"],"answer":1,"explanation":"边弯曲且没有角的平面图形是圆。"}'::jsonb, 'builtin', '常见图形', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'c7f8c65ee57ba12193c0af6ae2238bd0062957d6dc79d0fbc29e6441065ab952', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-079', 'math', 1, 2, 'choice', '{"stem":"春游准备：分针指向12，时针指向10，现在是？","options":["10时半","11时","10时","12时"],"answer":2,"explanation":"分针指12表示整时，时针指10就是10时。"}'::jsonb, 'builtin', '钟表初步', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '737c49179350930e4f0f90d59eaf094726393b62eb18a3119212abd8a3b09cfc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-080', 'math', 1, 2, 'choice', '{"stem":"春游准备：苹果5个，梨7个，香蕉3个。哪种水果最多？","options":["苹果","香蕉","一样多","梨"],"answer":3,"explanation":"梨有7个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '6de0d5e81a40909daaeeb81cf0b6503f4feb8ea59319efa0a532d94abbff258c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-081', 'math', 1, 2, 'choice', '{"stem":"春游准备：篮子里有8个苹果，又放入2个，现在有多少个？","options":["10个","8个","2个","6个"],"answer":0,"explanation":"求现在一共有多少，用加法：8+2=10个。"}'::jsonb, 'builtin', '一步问题', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'bdf64ac2aae510d309bc872b0d7575afb868558df802cb7f25190e5b1b68e745', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-082', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：11里面有几个十和几个一？","options":["11个十和0个一","1个十和1个一","0个十和11个一","1个十和2个一"],"answer":1,"explanation":"11=10+1，所以有1个十和1个一。"}'::jsonb, 'builtin', '数的认识', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '397241b020e8a5e250eefa71739c978c043ac5c35414837c9b0ca0f6e381da03', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-083', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：16和17，哪个数大？","options":["16","15","17","一样大"],"answer":2,"explanation":"17排在16后面，所以17大。"}'::jsonb, 'builtin', '数的比较', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '37594f8f89f3fba7ac0f2766b305b0f5f64fea84a2e2e6976bf3e6b9942e1c41', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-084', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：8+3=？","options":["10","12","8","11"],"answer":3,"explanation":"把8和3合起来是11。"}'::jsonb, 'builtin', '基本加法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'dffbcbd9e7aaaa437fadcc722ebc372ffa384834a56fc886da6b43969d2bfe7b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-085', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：16-4=？","options":["12","11","13","4"],"answer":0,"explanation":"从16里去掉4，还剩12。"}'::jsonb, 'builtin', '基本减法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '6c1a3f46808b2cf257d7a91060e8dac0eac0615ac9e6918ba4a63c2568e68424', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-086', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：小鸟在树枝上面。树枝在小鸟的哪边？","options":["上面","下面","左边","右边"],"answer":1,"explanation":"小鸟在树枝上面，树枝就在小鸟下面。"}'::jsonb, 'builtin', '位置与顺序', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'a4427aebc55d20a9798e7ffb38fc7885c8e1c4ca32fd2eebbc326d54e1d88388', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-087', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：用3根直小棒首尾相连，能围成什么图形？","options":["圆","正方形","三角形","长方形"],"answer":2,"explanation":"3根直小棒首尾相连能围成三角形。"}'::jsonb, 'builtin', '常见图形', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'c78e294d0e6f40062aa4d587bb9d2e7bcd5942f16d1a3c44f3e0159c387d003c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-088', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：分针指向12，时针指向11，现在是？","options":["11时半","12时","12时3","11时"],"answer":3,"explanation":"分针指12表示整时，时针指11就是11时。"}'::jsonb, 'builtin', '钟表初步', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '6fe824a607c6147e79b39b3b161f11e91833595f30c58921a330dee5249a74d5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-089', 'math', 1, 2, 'choice', '{"stem":"家庭晚餐：苹果6个，梨8个，香蕉4个。哪种水果最多？","options":["梨","苹果","香蕉","一样多"],"answer":0,"explanation":"梨有8个，数量最多。"}'::jsonb, 'builtin', '分类统计', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '9fadaccbdacd153d12e33ab681d625f8bbe593da52a55bc5cbf542e444b977a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-090', 'math', 1, 3, 'choice', '{"stem":"家庭晚餐：车上原有9人，又上来3人。车限坐20人，现在的人数是？","options":["9人，超过20人","12人，没有超过20人","3人，没有超过20人","8人，超过20人"],"answer":1,"explanation":"只需一次加法：9+3=12，12比20小，没有超过限坐人数。"}'::jsonb, 'builtin', '一步问题', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '264d2be9ac3c60f75b52ca990e7b1d3cad4a528517c878c5c5599bfd7d72eb72', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-091', 'math', 1, 3, 'choice', '{"stem":"校园花园：一个数比12大1，又比14小1，这个数是多少？","options":["12","14","13","11"],"answer":2,"explanation":"同时符合两个条件的数是13。"}'::jsonb, 'builtin', '数的认识', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'f81876fe3014736fccf2c87b944d16b1b6cb5af49454fbf01e60ae007d8cfb0a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-092', 'math', 1, 3, 'choice', '{"stem":"校园花园：小红有17颗星，小明比小红多2颗。谁的星多？","options":["小红","一样多","不能判断","小明"],"answer":3,"explanation":"小明有17+2=19颗，比17颗多。"}'::jsonb, 'builtin', '数的比较', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '75dfcf7bb75e53e00e8b90e5d155acefbb222a6aa732646506ba698ca832e6c9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-093', 'math', 1, 3, 'choice', '{"stem":"校园花园：盒里有3支笔，又放进一些后共有9支。放进了多少支？","options":["6","7","3","4"],"answer":0,"explanation":"用总数减原有数：9-3=6支。"}'::jsonb, 'builtin', '基本加法', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'ad844888a60e33c5cbec047357cd32c20b6dc4d3761f6ad7eee9b140e79e4b5a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-094', 'math', 1, 3, 'choice', '{"stem":"校园花园：原有17个气球，送出一些后还剩11个。送出了多少个？","options":["11","6","5","17"],"answer":1,"explanation":"用原有数减剩下数：17-11=6个。"}'::jsonb, 'builtin', '基本减法', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'febc13aa0c64be906229e70f7837daf2169619892212a8cf83dceb88ccd73856', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-095', 'math', 1, 3, 'choice', '{"stem":"校园花园：从左数，小兔排第5。它左边有几个小动物？","options":["5","6","4","1"],"answer":2,"explanation":"排第5，前面也就是左边有4个。"}'::jsonb, 'builtin', '位置与顺序', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'e6ac0d9f37f0235e6d9483e29d5a8877d37ffac46d7c3d2467ad674bfc06869e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-096', 'math', 1, 3, 'choice', '{"stem":"校园花园：一个图形有4条直边，4个角，四条边一样长。它最可能是什么图形？","options":["圆","三角形","长方体","正方形"],"answer":3,"explanation":"正方形有4条一样长的直边和4个角。"}'::jsonb, 'builtin', '常见图形', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '75fd185f25af2255b14a6f65518f7476225f82cd7d641ec13fcc9bf4422cc26e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-097', 'math', 1, 3, 'choice', '{"stem":"校园花园：活动6时开始，1小时后结束。结束时间是？","options":["7时","6时","5时","8时"],"answer":0,"explanation":"6时过1小时是7时。"}'::jsonb, 'builtin', '钟表初步', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '56737c9311e7b6701a49be2d59cd3b62c2745df783d66ef174ca3264b94c165b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-098', 'math', 1, 3, 'choice', '{"stem":"校园花园：苹果3个，梨5个，香蕉2个。梨比苹果多几个？","options":["5","2","3","8"],"answer":1,"explanation":"5-3=2个。"}'::jsonb, 'builtin', '分类统计', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '28b92b2e716a3fff542c090ce00f09f36205c6fc00c82b6a0870d5477aefa246', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-099', 'math', 1, 3, 'choice', '{"stem":"校园花园：车上原有10人，又上来4人。车限坐20人，现在的人数是？","options":["10人，超过20人","4人，没有超过20人","14人，没有超过20人","6人，超过20人"],"answer":2,"explanation":"只需一次加法：10+4=14，14比20小，没有超过限坐人数。"}'::jsonb, 'builtin', '一步问题', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'd01f016311edb15955c9d9078484d066b11620765409e229e0dd13905d97b169', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-100', 'math', 1, 3, 'choice', '{"stem":"玩具商店：一个数比13大1，又比15小1，这个数是多少？","options":["13","15","12","14"],"answer":3,"explanation":"同时符合两个条件的数是14。"}'::jsonb, 'builtin', '数的认识', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'e006cdbb6dbd6189335db3bd97b4ed79ae57dfe255dc90818f07c0d1906b381e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-101', 'math', 1, 3, 'choice', '{"stem":"玩具商店：小红有18颗星，小明比小红多2颗。谁的星多？","options":["小明","小红","一样多","不能判断"],"answer":0,"explanation":"小明有18+2=20颗，比18颗多。"}'::jsonb, 'builtin', '数的比较', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'e0e37deabff683f15fdb323f016574be5eb821b0abd4ab9415929d43e34e19a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-102', 'math', 1, 3, 'choice', '{"stem":"玩具商店：盒里有4支笔，又放进一些后共有11支。放进了多少支？","options":["9","7","4","5"],"answer":1,"explanation":"用总数减原有数：11-4=7支。"}'::jsonb, 'builtin', '基本加法', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '160af95ef6658645f8229ce78e91d2195852bd876aede8d554f1a15da41328dc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-103', 'math', 1, 3, 'choice', '{"stem":"玩具商店：原有18个气球，送出一些后还剩11个。送出了多少个？","options":["11","6","7","18"],"answer":2,"explanation":"用原有数减剩下数：18-11=7个。"}'::jsonb, 'builtin', '基本减法', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '3ffd921638f714ff1be33b1918936cdbc0670a0c68a390756f3255e2d8ba373c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-104', 'math', 1, 3, 'choice', '{"stem":"玩具商店：从左数，小兔排第6。它左边有几个小动物？","options":["6","7","1","5"],"answer":3,"explanation":"排第6，前面也就是左边有5个。"}'::jsonb, 'builtin', '位置与顺序', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '94aeacc29dfa97fe93c0f4d96107b03f7915221108a08054db52cb046407b0ad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-105', 'math', 1, 3, 'choice', '{"stem":"玩具商店：一个平面图形有3条直边和3个角。它是什么图形？","options":["三角形","圆","正方形","长方体"],"answer":0,"explanation":"三角形有3条直边和3个角。"}'::jsonb, 'builtin', '常见图形', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '5f3dc631ae05ad391a5f1aa9e818749f2452c7783c7abc3f76bdca93f529315a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-106', 'math', 1, 1, 'fill', '{"stem":"玩具商店：分针指12，时针指8，是___时。","answer":"8","explanation":"分针指12表示整时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'b42f4cc48bfb50e7d11b43984612fa5eec406d1266e8812dfbe806a93815a23a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-107', 'math', 1, 1, 'fill', '{"stem":"玩具商店：红球5个、蓝球3个，___球多。","answer":"红","explanation":"5比3大，所以红球多。"}'::jsonb, 'builtin', '分类统计', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '3d6d0167f77c5c4a9f165fa4e9d5d50dd0729a184999efc953b1b017dcef1331', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-108', 'math', 1, 1, 'fill', '{"stem":"玩具商店：有8本书，又来2本，一共有___本。","answer":"10","explanation":"求一共用加法。"}'::jsonb, 'builtin', '一步问题', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'fb2bb3278c3e51a632386791e414615de786281ed23b72bd795cf6b3a0f0bc0b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-109', 'math', 1, 1, 'fill', '{"stem":"运动小组：15里面有1个十和___个一。","answer":"5","explanation":"15由1个十和5个一组成。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '393766f2b167a3887c14ecbb7232da7276ea0b989c03c40f8d838566a068414c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-110', 'math', 1, 1, 'fill', '{"stem":"运动小组：12比11___。","answer":"大","explanation":"后一个数比前一个数大1。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '7ec64657ee7f78b5299cada9c0b38ffd73dbadf844116828ebf18d9ed97d15d7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-111', 'math', 1, 1, 'fill', '{"stem":"运动小组：3+4=___。","answer":"7","explanation":"把两个数合起来。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'daed8ceba06a88a0aa3c86d91dfbc5e7b4a710a36fde8e8b2311a9263e7df54b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-112', 'math', 1, 1, 'fill', '{"stem":"运动小组：13-3=___。","answer":"10","explanation":"从总数中去掉3。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'a008d190ab256224a474056c70b3edbc2e10dbc964491f359a671831357a29d3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-113', 'math', 1, 1, 'fill', '{"stem":"运动小组：从左数第1个，也就是最___边的一个。","answer":"左","explanation":"从左开始数，第1个在最左边。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '23ba535bb928ec4a49a65ae4d328361ac1aba58f2fb7c2f6bf8c80a4109d7f0f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-114', 'math', 1, 1, 'fill', '{"stem":"运动小组：三角形有___个角。","answer":"3","explanation":"三角形有3条边和3个角。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '0ea034f2db24fb86330016d5c2af61f429ab8da9a8402e28527bc41b2f1b910d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-115', 'math', 1, 1, 'fill', '{"stem":"运动小组：分针指12，时针指8，是___时。","answer":"8","explanation":"分针指12表示整时。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '46d20754c4658416752d1ed1680b9e1ddb534ab97428486fc3abe21f4f5b1957', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-116', 'math', 1, 1, 'fill', '{"stem":"运动小组：红球5个、蓝球3个，___球多。","answer":"红","explanation":"5比3大，所以红球多。"}'::jsonb, 'builtin', '分类统计', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'd5787cee3d20ee17658d3b67d166ab59e2385d4f0fbd18c5e963f08e67f45e64', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-117', 'math', 1, 2, 'fill', '{"stem":"运动小组：有17本书，又来2本，一共有___本。","answer":"19","explanation":"求一共用加法。"}'::jsonb, 'builtin', '一步问题', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '43a3715d9d888e5f0d016beed09a45f419dd5dd7c930f9265bb7bc63a47f356e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-118', 'math', 1, 2, 'fill', '{"stem":"生日会：15里面有1个十和___个一。","answer":"5","explanation":"15由1个十和5个一组成。"}'::jsonb, 'builtin', '数的认识', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '4be153704ab1ccd8db3a8784ebbb82a37f95f71f6e5a31ac1db193ea67034912', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-119', 'math', 1, 2, 'fill', '{"stem":"生日会：21比20___。","answer":"大","explanation":"后一个数比前一个数大1。"}'::jsonb, 'builtin', '数的比较', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'fb774cce41f06de1bf3567efdc361250ba8d95dd11aa2a87dd5eb50ba13ec349', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-120', 'math', 1, 2, 'fill', '{"stem":"生日会：7+4=___。","answer":"11","explanation":"把两个数合起来。"}'::jsonb, 'builtin', '基本加法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '43a33c152d9831df5a74e9fe85c784defbb112a0bd6c34ec8402db930d9bc6e4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-121', 'math', 1, 2, 'fill', '{"stem":"生日会：12-3=___。","answer":"9","explanation":"从总数中去掉3。"}'::jsonb, 'builtin', '基本减法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '88f557464f6b5e18ef56fca151cd32f88dcff2bc92892581fbc934b088c8d894', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-122', 'math', 1, 2, 'fill', '{"stem":"生日会：从左数第1个，也就是最___边的一个。","answer":"左","explanation":"从左开始数，第1个在最左边。"}'::jsonb, 'builtin', '位置与顺序', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'e4b0bb24d6fc89d0c3533ef8150f9090a7f3022d14a2dbe054653068df7c9766', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-123', 'math', 1, 2, 'fill', '{"stem":"生日会：三角形有___个角。","answer":"3","explanation":"三角形有3条边和3个角。"}'::jsonb, 'builtin', '常见图形', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '9de340a503a32c4388e751a05b8eb7ca90d30b7b589d5734047a5595f60d0932', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-124', 'math', 1, 3, 'fill', '{"stem":"生日会：分针指12，时针指8，是___时。","answer":"8","explanation":"分针指12表示整时。"}'::jsonb, 'builtin', '钟表初步', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '49a66cf88953dab3be2f244fc952fc51edde4eb389b1e2ea294b3552f5becff9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-125', 'math', 1, 3, 'fill', '{"stem":"生日会：红球5个、蓝球3个，___球多。","answer":"红","explanation":"5比3大，所以红球多。"}'::jsonb, 'builtin', '分类统计', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '01d92a1395e577d1447a6b22f13a235fd3d42a338366980113d26304a84270dd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-126', 'math', 1, 3, 'fill', '{"stem":"生日会：有26本书，又来2本，一共有___本。","answer":"28","explanation":"求一共用加法。"}'::jsonb, 'builtin', '一步问题', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], 'a6082b1237da68ced04bf74ed159d0d2b2d0d98e96546851a6e60bad70e8b19e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-127', 'math', 1, 1, 'match', '{"stem":"公交站：把数与组成连起来。","left":["10","12","15","19"],"right":["1个十5个一","1个十","1个十9个一","1个十2个一"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据数的认识的基础知识逐项配对。"}'::jsonb, 'builtin', '数的认识', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '3ebc74bb6fd3e180e5c93c23aa4b117998bf68f0c35f28c84b69eca2b902767d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-128', 'math', 1, 1, 'match', '{"stem":"公交站：把比较式与意思连起来。","left":["3<5","8>6","7=7","10>9"],"right":["一样大","5更大","10更大","8更大"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据数的比较的基础知识逐项配对。"}'::jsonb, 'builtin', '数的比较', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '0b71a6003533de45934f4a719402035a75f50b87ea1c554a2510374babac5086', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-129', 'math', 1, 1, 'match', '{"stem":"公交站：把加法算式与得数连起来。","left":["2+3","4+4","6+3","7+5"],"right":["9","5","12","8"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据基本加法的基础知识逐项配对。"}'::jsonb, 'builtin', '基本加法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '47b1a1b8f7320e846a59432bf4ddf5640acac6ca08925da5cb28fef021d3e356', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-130', 'math', 1, 1, 'match', '{"stem":"公交站：把减法算式与得数连起来。","left":["8-3","10-2","12-3","15-5"],"right":["9","5","10","8"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据基本减法的基础知识逐项配对。"}'::jsonb, 'builtin', '基本减法', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '5ea1fdfc0fc8b785f72287e0548c2d9edd6e9f3e594b62a50965447c486ed2c4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-131', 'math', 1, 1, 'match', '{"stem":"公交站：把位置词与方向连起来。","left":["上","下","左","右"],"right":["靠左方向","天空方向","靠右方向","地面方向"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据位置与顺序的基础知识逐项配对。"}'::jsonb, 'builtin', '位置与顺序', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], '6ba9b4ea06d171924c44343bdd260b13dfc3600f6340012c7a6947d444ec5a79', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-132', 'math', 1, 1, 'match', '{"stem":"公交站：把图形与特点连起来。","left":["圆","三角形","正方形","长方形"],"right":["4条边一样长","没有角","对边一样长","3个角"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据常见图形的基础知识逐项配对。"}'::jsonb, 'builtin', '常见图形', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'a4d74c1521bfe7a80a5f5d3bd9527f74e0689cb655728b37fcf7d7da43050a29', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-133', 'math', 1, 1, 'match', '{"stem":"公交站：把钟面时间与读法连起来。","left":["6:00","7:30","8:00","9:30"],"right":["8时","6时","9时半","7时半"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据钟表初步的基础知识逐项配对。"}'::jsonb, 'builtin', '钟表初步', 'understand', array['全国通用', '低龄短句', '基础认知']::text[], 'f7b3e6e037b055e132c261b311494844d52a7a90cda657f989aca5efd420305a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-134', 'math', 1, 2, 'match', '{"stem":"公交站：把物品与类别连起来。","left":["水果","文具","动物","交通工具"],"right":["小猫","苹果","汽车","铅笔"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据分类统计的基础知识逐项配对。"}'::jsonb, 'builtin', '分类统计', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '977d77c283142d2d40cc6c4fce92f1a53306dfeecad6699d8a02254657c86ae8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-135', 'math', 1, 2, 'match', '{"stem":"公交站：把问题类型与合适的方法连起来。","left":["求一共","求还剩","求多几个","求少几个"],"right":["较大数减较小数","用加法","较大数减较小数","用减法"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据一步问题的基础知识逐项配对。"}'::jsonb, 'builtin', '一步问题', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '5d7f92837e9cd95ffa60ad877e1f2fe151274929d555fec92fcb363a27968ab9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-136', 'math', 1, 2, 'match', '{"stem":"手工活动：把数与组成连起来。","left":["10","12","15","19"],"right":["1个十5个一","1个十","1个十9个一","1个十2个一"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据数的认识的基础知识逐项配对。"}'::jsonb, 'builtin', '数的认识', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], 'a293eaca55b05f5d7dff9d2ca30b460658efb2f7fd771ded622aaea6bf8e2e81', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-137', 'math', 1, 2, 'match', '{"stem":"手工活动：把比较式与意思连起来。","left":["3<5","8>6","7=7","10>9"],"right":["一样大","5更大","10更大","8更大"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据数的比较的基础知识逐项配对。"}'::jsonb, 'builtin', '数的比较', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '9c7a54b9387d6c749b8d987c0910368ff8e1f1edc6e46ca2fe9961c5a6e91aaa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-138', 'math', 1, 2, 'match', '{"stem":"手工活动：把加法算式与得数连起来。","left":["2+3","4+4","6+3","7+5"],"right":["9","5","12","8"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据基本加法的基础知识逐项配对。"}'::jsonb, 'builtin', '基本加法', 'apply', array['全国通用', '低龄短句', '生活思考']::text[], '3bbdefdd40263d4f15eeb5967d29365ff0c100952fe87cd5ebe55a4dc01e786a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-139', 'math', 1, 3, 'match', '{"stem":"手工活动：把减法算式与得数连起来。","left":["8-3","10-2","12-3","15-5"],"right":["9","5","10","8"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据基本减法的基础知识逐项配对。"}'::jsonb, 'builtin', '基本减法', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '70a81fbb852354fc253fbb6b603f6aaaf88b21c56ce702cd7a9a6b0a93a6a04a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g1-math-authored-140', 'math', 1, 3, 'match', '{"stem":"手工活动：把位置词与方向连起来。","left":["上","下","左","右"],"right":["靠左方向","天空方向","靠右方向","地面方向"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据位置与顺序的基础知识逐项配对。"}'::jsonb, 'builtin', '位置与顺序', 'reason', array['全国通用', '低龄短句', '生活思考']::text[], '9c4eabb3b8b65f4923243a85515bcecc96fceb978d75fa1c15eab4633a9947ee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;

commit;
