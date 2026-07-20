-- Auto-generated from validated canonical question JSON.
-- Safe to run repeatedly: rows are upserted by external_id.
begin;

insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-001', 'chinese', 5, 1, 'choice', '{"stem":"材料得出“可靠的生态判断需要长期而细致的观察”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["只有掌握充分证据，才能作出可靠判断","虽然没有证据，但结论一定可靠","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证"],"answer":0,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '4d223d7eca906157b97aca242f7517701d4f573d4824e69d38f4866b0aadb4a1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-002', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“清晨，护林员老周沿着湿滑的山路巡查。他不时停下，拨开灌木查看土壤，又把新发现的鸟巢位置标在图上。雾渐渐散去，阳光越过山脊，林间的露珠一颗颗亮起来。回站后，他立即整理记录，因为连续的数据能帮助判断动物活动范围。”文章是怎样组织内容的？","options":["按词语笔画多少排列","按巡查过程和回站整理的先后展开","反复写同一个无关细节","先给结论却完全不提供过程"],"answer":1,"explanation":"全文按巡查过程和回站整理的先后展开。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], 'ed4d6e6491d851a6da967f8625c5c014a1ee1879a3013d4ffec69f7402c24417', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-003', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“清晨，护林员老周沿着湿滑的山路巡查。他不时停下，拨开灌木查看土壤，又把新发现的鸟巢位置标在图上。雾渐渐散去，阳光越过山脊，林间的露珠一颗颗亮起来。回站后，他立即整理记录，因为连续的数据能帮助判断动物活动范围。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","主要介绍一种电子游戏规则","护林员细致巡查并用连续记录保护森林","全文只是赞美颜色鲜艳"],"answer":2,"explanation":"概括保留了主要对象、做法和结果：护林员细致巡查并用连续记录保护森林。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], 'af811b62490a6bb4e969d771b4bc5ea0bf9cb6f53b6a86bf5cf7e10519919e4d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-004', 'chinese', 5, 1, 'choice', '{"stem":"人物细节是“停下查看、标注位置、立即整理记录”。这样写比直接说“他很好”好在哪里？","options":["隐去人物所有行动","只让句子字数变多","证明人物永远不会犯错","用可观察的行动支撑人物特点"],"answer":3,"explanation":"具体细节“停下查看、标注位置、立即整理记录”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '15d26d4f484f357d938708a77166b55980c3a8249976aa6342d511d8e741ae7d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-005', 'chinese', 5, 1, 'choice', '{"stem":"画面中出现“雾散、阳光越过山脊、露珠发亮”。这组景物描写最直接的作用是？","options":["形成鲜明场景并配合主题内容","代替全部人物行动","删去时间和空间线索","说明景物与文章无关"],"answer":0,"explanation":"具体景物构成画面，并与“护林员细致巡查并用连续记录保护森林”相配合。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], '1e09834db0c65157090a74147aaff110dd947607efc2b1d76fe4573b841631fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-006', 'chinese', 5, 1, 'choice', '{"stem":"某一说明片段“用具体行动和环境变化呈现工作过程”。这样处理的目的是？","options":["用无关句子混淆重点","用明确的过程或证据把特点说清楚","只表达情绪而不介绍对象","让读者无法验证信息"],"answer":1,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], '7272c60604ac8eb7efcf79189e988347bf9fdbc4e74c2bf69effa970c5596c95', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-007', 'chinese', 5, 1, 'choice', '{"stem":"线索一：“停下查看、标注位置、立即整理记录”。线索二：“护林员细致巡查并用连续记录保护森林”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","文中行动和结果之间完全无关","可靠的生态判断需要长期而细致的观察","只要猜测就不需要文本依据"],"answer":2,"explanation":"两条线索共同支持“可靠的生态判断需要长期而细致的观察”。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], '02d99c68b9aac95ffbf98c15734bf3852ad663805494114b626aeb9783cae321', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-008', 'chinese', 5, 1, 'choice', '{"stem":"材料中的行动或资料指向“敬业负责”。哪项做法与这种价值最一致？","options":["只追求新奇而歪曲原意","把浪费当作值得夸耀的事","不查证任何资料就随意编造","先了解背景和事实，再以负责的态度付诸实践"],"answer":3,"explanation":"理解背景、尊重事实并负责实践，能体现“敬业负责”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读理解']::text[], 'eecbfc983cb370b6cf9828866f5a694fa2c2e38102dc662a367c20dedad3c261', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-009', 'chinese', 5, 1, 'choice', '{"stem":"现在要围绕“护林员细致巡查并用连续记录保护森林”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["记录应包含时间、地点、发现和后续处理","只写口号，不写对象与办法","删除所有关键数据和事实","不考虑读者需要与使用场景"],"answer":0,"explanation":"“记录应包含时间、地点、发现和后续处理”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'understand', array['全国通用', '阅读理解']::text[], '7b469317ba28283a558ddd65be3e80d4ad3e811d57aa860f2b16fe53fe0a6265', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-010', 'chinese', 5, 1, 'choice', '{"stem":"材料得出“文化遗存修复不能只追求外表崭新”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["虽然没有证据，但结论一定可靠","只有掌握充分证据，才能作出可靠判断","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证"],"answer":1,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '74ea66edd455642597e3251d6ea0ae611f98aca8f155ce343d5b5338ae5c8e94', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-011', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“学校准备修复一面旧砖墙。建筑师先查阅老照片，发现墙上的菱形花纹与当地传统民居相似；随后测量每块砖的尺寸，让新砖保持原有比例。完工后，新墙既安全牢固，又保留了校园过去的样子。”文章是怎样组织内容的？","options":["按词语笔画多少排列","反复写同一个无关细节","从查资料、测量到修复结果逐步推进","先给结论却完全不提供过程"],"answer":2,"explanation":"全文从查资料、测量到修复结果逐步推进。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], 'dfafae3b102f03912d3cbc6eeca22dd718f8aa556a04f983ad0917a92cf580ab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-012', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“学校准备修复一面旧砖墙。建筑师先查阅老照片，发现墙上的菱形花纹与当地传统民居相似；随后测量每块砖的尺寸，让新砖保持原有比例。完工后，新墙既安全牢固，又保留了校园过去的样子。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳","修复旧墙时兼顾安全与历史风貌"],"answer":3,"explanation":"概括保留了主要对象、做法和结果：修复旧墙时兼顾安全与历史风貌。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], '5bb11eae64b0592b20159b1c58290054adea49dec2fd7dd4ce5aa1b2405ee1b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-013', 'chinese', 5, 1, 'choice', '{"stem":"人物细节是“查阅照片并精确测量砖块”。这样写比直接说“他很好”好在哪里？","options":["用可观察的行动支撑人物特点","隐去人物所有行动","只让句子字数变多","证明人物永远不会犯错"],"answer":0,"explanation":"具体细节“查阅照片并精确测量砖块”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '4ff9105b2bdb074f69e206bca307985049d2762c28d713a5d7d8a87554cf394e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-014', 'chinese', 5, 1, 'choice', '{"stem":"画面中出现“菱形花纹与新旧砖墙协调相接”。这组景物描写最直接的作用是？","options":["代替全部人物行动","形成鲜明场景并配合主题内容","删去时间和空间线索","说明景物与文章无关"],"answer":1,"explanation":"具体景物构成画面，并与“修复旧墙时兼顾安全与历史风貌”相配合。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], '7ee0373d6abaade3ca2a8c12b57b174c16db89b65b92b5ac12bf0b12fd89516e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-015', 'chinese', 5, 1, 'choice', '{"stem":"某一说明片段“通过修复前后的做法说明保护原则”。这样处理的目的是？","options":["用无关句子混淆重点","只表达情绪而不介绍对象","用明确的过程或证据把特点说清楚","让读者无法验证信息"],"answer":2,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], 'c8584b1efaa19050c3b8de6deee800f3df41ef5db08d68e88650cde19019275c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-016', 'chinese', 5, 1, 'choice', '{"stem":"线索一：“查阅照片并精确测量砖块”。线索二：“修复旧墙时兼顾安全与历史风貌”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","文中行动和结果之间完全无关","只要猜测就不需要文本依据","文化遗存修复不能只追求外表崭新"],"answer":3,"explanation":"两条线索共同支持“文化遗存修复不能只追求外表崭新”。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], '2df2994f6cf2f2b25030f5efc622f3a4d9c23bf5813aaa426a217638d072fcde', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-017', 'chinese', 5, 1, 'choice', '{"stem":"材料中的行动或资料指向“尊重并延续地方建筑文化”。哪项做法与这种价值最一致？","options":["先了解背景和事实，再以负责的态度付诸实践","只追求新奇而歪曲原意","把浪费当作值得夸耀的事","不查证任何资料就随意编造"],"answer":0,"explanation":"理解背景、尊重事实并负责实践，能体现“尊重并延续地方建筑文化”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读理解']::text[], '08fb84033c95ab0922bb8b3914e3564a833f2b80f375929791659d8a538d8ca5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-018', 'chinese', 5, 1, 'choice', '{"stem":"现在要围绕“修复旧墙时兼顾安全与历史风貌”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["只写口号，不写对象与办法","方案说明要交代依据、做法与预期效果","删除所有关键数据和事实","不考虑读者需要与使用场景"],"answer":1,"explanation":"“方案说明要交代依据、做法与预期效果”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'understand', array['全国通用', '阅读理解']::text[], 'ff39e701783d0422f6ee1e91a91bc2f8932ceea977992cc73a113edb1604eb2b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-019', 'chinese', 5, 1, 'choice', '{"stem":"材料得出“采访者既要准备问题，也要照顾受访者的表达感受”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["虽然没有证据，但结论一定可靠","一边删除事实，一边随意猜测","只有掌握充分证据，才能作出可靠判断","不但不看材料，而且拒绝验证"],"answer":2,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '4a43bf263bbb232e71aa1f3be309fbb1a4a46430fe95953008ef973a791dfc22', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-020', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“小岚第一次采访社区老人时，问题又长又多，老人常常记不清她问到了哪里。她回去删去重复问题，按“童年生活—街巷变化—未来愿望”重新排序。第二次采访，老人讲得从容，许多细节也自然地串联起来。”文章是怎样组织内容的？","options":["按词语笔画多少排列","反复写同一个无关细节","先给结论却完全不提供过程","先写问题，再写调整办法和改进效果"],"answer":3,"explanation":"全文先写问题，再写调整办法和改进效果。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], '654a308cf20f2866404b6574e7b67b6d6ece89ce719ce93e826ea2b1fd85c181', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-021', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“小岚第一次采访社区老人时，问题又长又多，老人常常记不清她问到了哪里。她回去删去重复问题，按“童年生活—街巷变化—未来愿望”重新排序。第二次采访，老人讲得从容，许多细节也自然地串联起来。”最全面而简洁的概括是？","options":["合理设计采访提纲能获得更清楚的信息","只写了天气，没有人物或事件","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳"],"answer":0,"explanation":"概括保留了主要对象、做法和结果：合理设计采访提纲能获得更清楚的信息。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], '156b83f7e9c130ee3ea3d266f1c5a033caaa313675ee8dabcafbb973c4fd581c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-022', 'chinese', 5, 1, 'choice', '{"stem":"人物细节是“发现问题后主动删减并重排问题”。这样写比直接说“他很好”好在哪里？","options":["隐去人物所有行动","用可观察的行动支撑人物特点","只让句子字数变多","证明人物永远不会犯错"],"answer":1,"explanation":"具体细节“发现问题后主动删减并重排问题”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '94d0c449b47d89f4f5ead39d10319e3a629db61aa75649cda7f0934ae30a957f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-023', 'chinese', 5, 1, 'choice', '{"stem":"画面中出现“老人从容讲述，往事逐渐清晰”。这组景物描写最直接的作用是？","options":["代替全部人物行动","删去时间和空间线索","形成鲜明场景并配合主题内容","说明景物与文章无关"],"answer":2,"explanation":"具体景物构成画面，并与“合理设计采访提纲能获得更清楚的信息”相配合。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], '234515b3a00ef37c60cb89565fc531fd7c67e7ee51da37eb45ac1c787142849e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-024', 'chinese', 5, 1, 'choice', '{"stem":"某一说明片段“运用前后对比突出提纲调整的作用”。这样处理的目的是？","options":["用无关句子混淆重点","只表达情绪而不介绍对象","让读者无法验证信息","用明确的过程或证据把特点说清楚"],"answer":3,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], '299ebf54dc9d413f0962567125bb830ce3fc534165e9169cdbf7d27fa49d2c5b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-025', 'chinese', 5, 1, 'choice', '{"stem":"线索一：“发现问题后主动删减并重排问题”。线索二：“合理设计采访提纲能获得更清楚的信息”。合并两处信息，最合理的推断是？","options":["采访者既要准备问题，也要照顾受访者的表达感受","一个细节可以证明任何事情","文中行动和结果之间完全无关","只要猜测就不需要文本依据"],"answer":0,"explanation":"两条线索共同支持“采访者既要准备问题，也要照顾受访者的表达感受”。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], 'd5a18d2c938435c891c76524d80d05559597370b70d3a6174f37ab65f58c1167', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-026', 'chinese', 5, 1, 'choice', '{"stem":"材料中的行动或资料指向“倾听长者并保存社区记忆”。哪项做法与这种价值最一致？","options":["只追求新奇而歪曲原意","先了解背景和事实，再以负责的态度付诸实践","把浪费当作值得夸耀的事","不查证任何资料就随意编造"],"answer":1,"explanation":"理解背景、尊重事实并负责实践，能体现“倾听长者并保存社区记忆”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读理解']::text[], 'ac18297564398d9eaa0723916a2553ebb9f6ad6bbb7113e60a43f93ea5a318f9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-027', 'chinese', 5, 1, 'choice', '{"stem":"现在要围绕“合理设计采访提纲能获得更清楚的信息”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["只写口号，不写对象与办法","删除所有关键数据和事实","采访提纲应主题集中、顺序清楚、问题简洁","不考虑读者需要与使用场景"],"answer":2,"explanation":"“采访提纲应主题集中、顺序清楚、问题简洁”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'understand', array['全国通用', '阅读理解']::text[], 'b5126b33586dbcc7883a6215b32b0bcfaeb9b0234af82fb86fdde6784735ee8a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-028', 'chinese', 5, 1, 'choice', '{"stem":"材料得出“自然观察要尽量减少观察者对对象的影响”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["虽然没有证据，但结论一定可靠","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证","只有掌握充分证据，才能作出可靠判断"],"answer":3,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '513ba6957baa9f1db1c8b74d4035baa0946a2fcc983348191517c417884e6678', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-029', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“潮水退去，滩涂上留下弯弯曲曲的水纹。几只白鹭缓慢踱步，忽然把尖嘴探入浅水。远处的芦苇被风压低，又一层层抬起。观察组没有靠近，只用望远镜记录，因为过度惊扰会改变鸟类原本的行为。”文章是怎样组织内容的？","options":["先描写滩涂景象，再说明观察方式及原因","按词语笔画多少排列","反复写同一个无关细节","先给结论却完全不提供过程"],"answer":0,"explanation":"全文先描写滩涂景象，再说明观察方式及原因。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], '34e240f5d621559c29255424905c9f0ed648d2a9abffdda9db2d84ebe642956a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-030', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“潮水退去，滩涂上留下弯弯曲曲的水纹。几只白鹭缓慢踱步，忽然把尖嘴探入浅水。远处的芦苇被风压低，又一层层抬起。观察组没有靠近，只用望远镜记录，因为过度惊扰会改变鸟类原本的行为。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","观察组在不惊扰白鹭的前提下开展记录","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳"],"answer":1,"explanation":"概括保留了主要对象、做法和结果：观察组在不惊扰白鹭的前提下开展记录。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], '59a68ceddb201cc34a4adc8a7fd266dc749dbfc4fa3ea95945a8b1a0b402088a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-031', 'chinese', 5, 1, 'choice', '{"stem":"人物细节是“保持距离并使用望远镜观察”。这样写比直接说“他很好”好在哪里？","options":["隐去人物所有行动","只让句子字数变多","用可观察的行动支撑人物特点","证明人物永远不会犯错"],"answer":2,"explanation":"具体细节“保持距离并使用望远镜观察”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '6bfec63d8b8a843e10a2c130b38d01643b8b773d8915f96798a6f03fd20626d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-032', 'chinese', 5, 1, 'choice', '{"stem":"画面中出现“水纹、白鹭与随风起伏的芦苇构成动态画面”。这组景物描写最直接的作用是？","options":["代替全部人物行动","删去时间和空间线索","说明景物与文章无关","形成鲜明场景并配合主题内容"],"answer":3,"explanation":"具体景物构成画面，并与“观察组在不惊扰白鹭的前提下开展记录”相配合。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], '6a22693e41676f4d94dd204c0e3b5ff2869c221a07f59a8ea793af44d324134e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-033', 'chinese', 5, 1, 'choice', '{"stem":"某一说明片段“细致描写与因果说明结合”。这样处理的目的是？","options":["用明确的过程或证据把特点说清楚","用无关句子混淆重点","只表达情绪而不介绍对象","让读者无法验证信息"],"answer":0,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], '4e17fa650d57eafadc83384e526ff388719555ec7db7242c78dc5399bd8cce47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-034', 'chinese', 5, 1, 'choice', '{"stem":"线索一：“保持距离并使用望远镜观察”。线索二：“观察组在不惊扰白鹭的前提下开展记录”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","自然观察要尽量减少观察者对对象的影响","文中行动和结果之间完全无关","只要猜测就不需要文本依据"],"answer":1,"explanation":"两条线索共同支持“自然观察要尽量减少观察者对对象的影响”。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], '8c7a3346ec460f32a6986f043bf016938a497835d05fa0b1a71f3cc2aea57827', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-035', 'chinese', 5, 1, 'choice', '{"stem":"材料中的行动或资料指向“顺应自然、珍爱生灵”。哪项做法与这种价值最一致？","options":["只追求新奇而歪曲原意","把浪费当作值得夸耀的事","先了解背景和事实，再以负责的态度付诸实践","不查证任何资料就随意编造"],"answer":2,"explanation":"理解背景、尊重事实并负责实践，能体现“顺应自然、珍爱生灵”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读理解']::text[], 'a7a1508db0435d1874566e80a2e0f931e0b1eee2d0ec8d640f4f536db9dec8bb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-036', 'chinese', 5, 1, 'choice', '{"stem":"现在要围绕“观察组在不惊扰白鹭的前提下开展记录”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["只写口号，不写对象与办法","删除所有关键数据和事实","不考虑读者需要与使用场景","观察报告应区分看到的现象和作出的解释"],"answer":3,"explanation":"“观察报告应区分看到的现象和作出的解释”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'understand', array['全国通用', '阅读理解']::text[], 'e8060acfb7f3f2846864f376c545cc1906ebe35439778e0e8eecd2bbfcf86b09', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-037', 'chinese', 5, 1, 'choice', '{"stem":"材料得出“评价设施效果要尽量控制雨量等条件”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["只有掌握充分证据，才能作出可靠判断","虽然没有证据，但结论一定可靠","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证"],"answer":0,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '98f01370d47abacd6f6f120cd09abcdb24dbe87d31d712108a9099acc3ab9a26', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-038', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“一座小型雨水花园通常比周围地面略低，里面种着耐湿植物。下雨时，屋顶和道路上的部分雨水流入花园，先被土壤和植物根系滞留，再缓慢下渗。研究记录显示，同等雨量下，设置雨水花园的区域地表积水时间更短。”文章是怎样组织内容的？","options":["按词语笔画多少排列","先介绍结构和过程，再用记录说明效果","反复写同一个无关细节","先给结论却完全不提供过程"],"answer":1,"explanation":"全文先介绍结构和过程，再用记录说明效果。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], '2d8606c82c7260f7e1f91fb92fced46a590d7cd251ccd631307b4a8d6add3cea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-039', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“一座小型雨水花园通常比周围地面略低，里面种着耐湿植物。下雨时，屋顶和道路上的部分雨水流入花园，先被土壤和植物根系滞留，再缓慢下渗。研究记录显示，同等雨量下，设置雨水花园的区域地表积水时间更短。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","主要介绍一种电子游戏规则","雨水花园通过滞留和下渗减轻地面积水","全文只是赞美颜色鲜艳"],"answer":2,"explanation":"概括保留了主要对象、做法和结果：雨水花园通过滞留和下渗减轻地面积水。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], '1ffd7786e57453e3db4897bf34c797624d1c34a967dcb4a4f779c1dc8e622dcb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-040', 'chinese', 5, 1, 'choice', '{"stem":"人物细节是“研究人员在同等雨量条件下进行记录”。这样写比直接说“他很好”好在哪里？","options":["隐去人物所有行动","只让句子字数变多","证明人物永远不会犯错","用可观察的行动支撑人物特点"],"answer":3,"explanation":"具体细节“研究人员在同等雨量条件下进行记录”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '27a00a3956370fad9f27888fa0697ce5a4131699549362f8f27af19e4bdcc3d6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-041', 'chinese', 5, 1, 'choice', '{"stem":"画面中出现“低处花园里的耐湿植物承接雨水”。这组景物描写最直接的作用是？","options":["形成鲜明场景并配合主题内容","代替全部人物行动","删去时间和空间线索","说明景物与文章无关"],"answer":0,"explanation":"具体景物构成画面，并与“雨水花园通过滞留和下渗减轻地面积水”相配合。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], '70b45661905bcbb123e2c11d3dec0a96472a1f3b27da95d6ec1518763c419a86', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-042', 'chinese', 5, 1, 'choice', '{"stem":"某一说明片段“作诠释并用对比记录说明效果”。这样处理的目的是？","options":["用无关句子混淆重点","用明确的过程或证据把特点说清楚","只表达情绪而不介绍对象","让读者无法验证信息"],"answer":1,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], '47adf884cbba3a259703e7293ab35efec09cedebb2473f09e8069f7d71c717c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-043', 'chinese', 5, 1, 'choice', '{"stem":"线索一：“研究人员在同等雨量条件下进行记录”。线索二：“雨水花园通过滞留和下渗减轻地面积水”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","文中行动和结果之间完全无关","评价设施效果要尽量控制雨量等条件","只要猜测就不需要文本依据"],"answer":2,"explanation":"两条线索共同支持“评价设施效果要尽量控制雨量等条件”。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], 'd5b9b88d6d453c67a44a8e8e7a2bd4e5902c4f0678d9002b522da0e1b8322311', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-044', 'chinese', 5, 1, 'choice', '{"stem":"材料中的行动或资料指向“因地制宜利用自然力量”。哪项做法与这种价值最一致？","options":["只追求新奇而歪曲原意","把浪费当作值得夸耀的事","不查证任何资料就随意编造","先了解背景和事实，再以负责的态度付诸实践"],"answer":3,"explanation":"理解背景、尊重事实并负责实践，能体现“因地制宜利用自然力量”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读理解']::text[], 'b8609d426e48bef5b945e222ea069b3c6261db5454f4ae8cb5866d14b57bb979', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-045', 'chinese', 5, 1, 'choice', '{"stem":"现在要围绕“雨水花园通过滞留和下渗减轻地面积水”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["科普说明应把结构、原理和效果写清楚","只写口号，不写对象与办法","删除所有关键数据和事实","不考虑读者需要与使用场景"],"answer":0,"explanation":"“科普说明应把结构、原理和效果写清楚”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'understand', array['全国通用', '阅读理解']::text[], '3018d83330a487651817fe0d8da6456abc572f0412d5b3be430cb82f75d97763', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-046', 'chinese', 5, 1, 'choice', '{"stem":"材料得出“传统手艺的稳定质量依靠长期训练和严格步骤”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["虽然没有证据，但结论一定可靠","只有掌握充分证据，才能作出可靠判断","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证"],"answer":1,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '599204f502e2e241b5a48b7d231d101e240fb40b78cb672b0c654d1ecc45cfc6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-047', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“木版年画要经过画稿、刻版、调色、套印等多道工序。套印时，每一块版对应一种颜色，位置稍有偏差，画面就会错位。老师傅落版前总要反复对准标记，手腕稳稳落下，鲜亮的颜色便一层层叠在纸上。”文章是怎样组织内容的？","options":["按词语笔画多少排列","反复写同一个无关细节","先总说工序，再重点说明套印要求和操作","先给结论却完全不提供过程"],"answer":2,"explanation":"全文先总说工序，再重点说明套印要求和操作。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], 'fde7cb87d4d9909f2379a50b6bb5149111ec4175fbaed41bcca585a66a346fb1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-048', 'chinese', 5, 1, 'choice', '{"stem":"阅读短文：“木版年画要经过画稿、刻版、调色、套印等多道工序。套印时，每一块版对应一种颜色，位置稍有偏差，画面就会错位。老师傅落版前总要反复对准标记，手腕稳稳落下，鲜亮的颜色便一层层叠在纸上。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳","木版年画的制作工序精细，套印尤其讲究准确"],"answer":3,"explanation":"概括保留了主要对象、做法和结果：木版年画的制作工序精细，套印尤其讲究准确。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], 'f3259930324ed6a568dc935b788697a27769269dff07aeabdfb04f848dcfb535', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-049', 'chinese', 5, 1, 'choice', '{"stem":"人物细节是“老师傅反复对准并稳定落版”。这样写比直接说“他很好”好在哪里？","options":["用可观察的行动支撑人物特点","隐去人物所有行动","只让句子字数变多","证明人物永远不会犯错"],"answer":0,"explanation":"具体细节“老师傅反复对准并稳定落版”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '59c3a683d5e8b06ff2bbcb7e7359ef4a0f7928f6e0f19f6474c3ca2b8db93b52', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-050', 'chinese', 5, 1, 'choice', '{"stem":"画面中出现“多层鲜亮颜色在纸上逐渐形成画面”。这组景物描写最直接的作用是？","options":["代替全部人物行动","形成鲜明场景并配合主题内容","删去时间和空间线索","说明景物与文章无关"],"answer":1,"explanation":"具体景物构成画面，并与“木版年画的制作工序精细，套印尤其讲究准确”相配合。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], 'd2bb22184f6a1b470eef09e3491ead2284ce4e5434d7427093f4653ae1c86275', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-051', 'chinese', 5, 1, 'choice', '{"stem":"某一说明片段“列举工序并举例说明套印难点”。这样处理的目的是？","options":["用无关句子混淆重点","只表达情绪而不介绍对象","用明确的过程或证据把特点说清楚","让读者无法验证信息"],"answer":2,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], 'b88798debebdf73eb0704e5867a5936ebe99dc64f6eddefd5f33dca18fe8dd1a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-052', 'chinese', 5, 1, 'choice', '{"stem":"线索一：“老师傅反复对准并稳定落版”。线索二：“木版年画的制作工序精细，套印尤其讲究准确”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","文中行动和结果之间完全无关","只要猜测就不需要文本依据","传统手艺的稳定质量依靠长期训练和严格步骤"],"answer":3,"explanation":"两条线索共同支持“传统手艺的稳定质量依靠长期训练和严格步骤”。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], '400680cee0d3951d1549e4a15ae94743646357a8bc3557dd5cbda5b73c43b66a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-053', 'chinese', 5, 2, 'choice', '{"stem":"材料中的行动或资料指向“木版年画体现传统工艺智慧”。哪项做法与这种价值最一致？","options":["先了解背景和事实，再以负责的态度付诸实践","只追求新奇而歪曲原意","把浪费当作值得夸耀的事","不查证任何资料就随意编造"],"answer":0,"explanation":"理解背景、尊重事实并负责实践，能体现“木版年画体现传统工艺智慧”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '跨段整合']::text[], 'f559315c392ef77504efea1bbc9ea5f7712db6c60ca8320defca7a0e41bb642c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-054', 'chinese', 5, 2, 'choice', '{"stem":"现在要围绕“木版年画的制作工序精细，套印尤其讲究准确”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["只写口号，不写对象与办法","介绍工艺时可按步骤写并突出关键环节","删除所有关键数据和事实","不考虑读者需要与使用场景"],"answer":1,"explanation":"“介绍工艺时可按步骤写并突出关键环节”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'apply', array['全国通用', '跨段整合']::text[], 'f45cb71bc14748d08b84775a9d042bca44397173fa74b01299b4c757a4a40d7e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-055', 'chinese', 5, 2, 'choice', '{"stem":"材料得出“解决集体问题要兼顾效率与不同人的需要”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["虽然没有证据，但结论一定可靠","一边删除事实，一边随意猜测","只有掌握充分证据，才能作出可靠判断","不但不看材料，而且拒绝验证"],"answer":2,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'apply', array['全国通用', '跨段整合']::text[], '35146e417fbf420b317e324f1e44d7092940e71f1d5689d5a5c2b231ffec4c72', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-056', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“午休后的教室有些闷热，窗玻璃蒙着薄薄的水汽。班长没有马上把所有窗户推到底，而是先询问靠窗同学的感受，再打开两侧上方的窗，并提醒大家添衣。几分钟后，空气清新了，靠窗同学也没有觉得太冷。”文章是怎样组织内容的？","options":["按词语笔画多少排列","反复写同一个无关细节","先给结论却完全不提供过程","从发现问题到权衡需求、采取措施和验证效果"],"answer":3,"explanation":"全文从发现问题到权衡需求、采取措施和验证效果。"}'::jsonb, 'builtin', '篇章逻辑', 'apply', array['全国通用', '跨段整合']::text[], '83bb5cc18c5b104a388f4fd6d24dba54d23f7ca11f699e4f389b9e6b025410f2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-057', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“午休后的教室有些闷热，窗玻璃蒙着薄薄的水汽。班长没有马上把所有窗户推到底，而是先询问靠窗同学的感受，再打开两侧上方的窗，并提醒大家添衣。几分钟后，空气清新了，靠窗同学也没有觉得太冷。”最全面而简洁的概括是？","options":["班长通过周到安排改善通风并照顾同学感受","只写了天气，没有人物或事件","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳"],"answer":0,"explanation":"概括保留了主要对象、做法和结果：班长通过周到安排改善通风并照顾同学感受。"}'::jsonb, 'builtin', '内容概括', 'apply', array['全国通用', '跨段整合']::text[], 'af1a81a8f99908940d0659ff25ae521366542d63f777d4ee02feef3c81cc97ec', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-058', 'chinese', 5, 2, 'choice', '{"stem":"人物细节是“先询问、再适度开窗并提醒添衣”。这样写比直接说“他很好”好在哪里？","options":["隐去人物所有行动","用可观察的行动支撑人物特点","只让句子字数变多","证明人物永远不会犯错"],"answer":1,"explanation":"具体细节“先询问、再适度开窗并提醒添衣”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'apply', array['全国通用', '跨段整合']::text[], 'bd1814ad859381c705b63bb9e3982a5208d3f5c03dddff912519c94b0e2519e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-059', 'chinese', 5, 2, 'choice', '{"stem":"画面中出现“闷热教室、玻璃水汽与清新空气形成变化”。这组景物描写最直接的作用是？","options":["代替全部人物行动","删去时间和空间线索","形成鲜明场景并配合主题内容","说明景物与文章无关"],"answer":2,"explanation":"具体景物构成画面，并与“班长通过周到安排改善通风并照顾同学感受”相配合。"}'::jsonb, 'builtin', '景物描写', 'apply', array['全国通用', '跨段整合']::text[], 'd90e0fba7b7abc15eaa2cf48a08201de15cbd7530586daa5dc484862e382c2a4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-060', 'chinese', 5, 2, 'choice', '{"stem":"某一说明片段“用行动细节和结果表现人物特点”。这样处理的目的是？","options":["用无关句子混淆重点","只表达情绪而不介绍对象","让读者无法验证信息","用明确的过程或证据把特点说清楚"],"answer":3,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'apply', array['全国通用', '跨段整合']::text[], '1f5567ed37784b13f511deed151f2c3f33d3edf86f21e221599a74f0bf656e3b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-061', 'chinese', 5, 2, 'choice', '{"stem":"线索一：“先询问、再适度开窗并提醒添衣”。线索二：“班长通过周到安排改善通风并照顾同学感受”。合并两处信息，最合理的推断是？","options":["解决集体问题要兼顾效率与不同人的需要","一个细节可以证明任何事情","文中行动和结果之间完全无关","只要猜测就不需要文本依据"],"answer":0,"explanation":"两条线索共同支持“解决集体问题要兼顾效率与不同人的需要”。"}'::jsonb, 'builtin', '跨段推断', 'apply', array['全国通用', '跨段整合']::text[], '8632adaa3a7201607e5e3c973d5094984688f4da3d49471c0aabf5832414e64f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-062', 'chinese', 5, 2, 'choice', '{"stem":"材料中的行动或资料指向“体谅他人、和谐相处”。哪项做法与这种价值最一致？","options":["只追求新奇而歪曲原意","先了解背景和事实，再以负责的态度付诸实践","把浪费当作值得夸耀的事","不查证任何资料就随意编造"],"answer":1,"explanation":"理解背景、尊重事实并负责实践，能体现“体谅他人、和谐相处”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '跨段整合']::text[], 'd1cfa82c1131106fafaefdf46d2fc8c5c06ec3cde85e5215ad8974b2465767b0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-063', 'chinese', 5, 2, 'choice', '{"stem":"现在要围绕“班长通过周到安排改善通风并照顾同学感受”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["只写口号，不写对象与办法","删除所有关键数据和事实","提出班级建议时应说明影响和照顾措施","不考虑读者需要与使用场景"],"answer":2,"explanation":"“提出班级建议时应说明影响和照顾措施”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'apply', array['全国通用', '跨段整合']::text[], '56caa756ca10e569e0eec703a69051d58c37677312014189062dfdb93c02f3e2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-064', 'chinese', 5, 2, 'choice', '{"stem":"材料得出“研究历史建筑需要实物与文献相互印证”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["虽然没有证据，但结论一定可靠","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证","只有掌握充分证据，才能作出可靠判断"],"answer":3,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'apply', array['全国通用', '跨段整合']::text[], 'ccb12cb96d570417a69645beda52fe40017e3aa617c627322a47c9fe91dc8783', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-065', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“古桥的石栏上没有完全相同的纹样：有的是卷云，有的是莲花，还有的是首尾相接的鱼。研究者把纹样拓印下来，与地方旧志中的图样比较，发现不同时期修缮留下了各自的特点。古桥因此像一本可以阅读的石头史书。”文章是怎样组织内容的？","options":["从观察纹样到比较资料并形成认识","按词语笔画多少排列","反复写同一个无关细节","先给结论却完全不提供过程"],"answer":0,"explanation":"全文从观察纹样到比较资料并形成认识。"}'::jsonb, 'builtin', '篇章逻辑', 'apply', array['全国通用', '跨段整合']::text[], 'd86587cd7af3e189a22be9b04156e0fe3138fd7ef80056bee6799bce81a85a9a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-066', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“古桥的石栏上没有完全相同的纹样：有的是卷云，有的是莲花，还有的是首尾相接的鱼。研究者把纹样拓印下来，与地方旧志中的图样比较，发现不同时期修缮留下了各自的特点。古桥因此像一本可以阅读的石头史书。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","古桥纹样保存了不同时期的修缮信息","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳"],"answer":1,"explanation":"概括保留了主要对象、做法和结果：古桥纹样保存了不同时期的修缮信息。"}'::jsonb, 'builtin', '内容概括', 'apply', array['全国通用', '跨段整合']::text[], 'e1c3838dcd0cbb370d1de9a8beb8e17e4322d3c79fa02f7aea6513d61f6dc08f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-067', 'chinese', 5, 2, 'choice', '{"stem":"人物细节是“研究者拓印纹样并查阅旧志比较”。这样写比直接说“他很好”好在哪里？","options":["隐去人物所有行动","只让句子字数变多","用可观察的行动支撑人物特点","证明人物永远不会犯错"],"answer":2,"explanation":"具体细节“研究者拓印纹样并查阅旧志比较”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'apply', array['全国通用', '跨段整合']::text[], '8331b6efeac9df7ea3b0a8e1586d900a1a288da95067355b31faf7e748f9f1c4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-068', 'chinese', 5, 2, 'choice', '{"stem":"画面中出现“卷云、莲花和游鱼纹样铺展在石栏上”。这组景物描写最直接的作用是？","options":["代替全部人物行动","删去时间和空间线索","说明景物与文章无关","形成鲜明场景并配合主题内容"],"answer":3,"explanation":"具体景物构成画面，并与“古桥纹样保存了不同时期的修缮信息”相配合。"}'::jsonb, 'builtin', '景物描写', 'apply', array['全国通用', '跨段整合']::text[], 'd3fec083a44ae12dd5a519732b74ae877fe3af3e3392f0aa84f0686251c7f986', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-069', 'chinese', 5, 2, 'choice', '{"stem":"某一说明片段“分类举例、作比较并使用比喻”。这样处理的目的是？","options":["用明确的过程或证据把特点说清楚","用无关句子混淆重点","只表达情绪而不介绍对象","让读者无法验证信息"],"answer":0,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'apply', array['全国通用', '跨段整合']::text[], 'be31fab257a70514cfab23cb02afd5e710508529e78660fcfbc3ed93863d6b23', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-070', 'chinese', 5, 2, 'choice', '{"stem":"线索一：“研究者拓印纹样并查阅旧志比较”。线索二：“古桥纹样保存了不同时期的修缮信息”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","研究历史建筑需要实物与文献相互印证","文中行动和结果之间完全无关","只要猜测就不需要文本依据"],"answer":1,"explanation":"两条线索共同支持“研究历史建筑需要实物与文献相互印证”。"}'::jsonb, 'builtin', '跨段推断', 'apply', array['全国通用', '跨段整合']::text[], 'f4fbbaab2d3dc3e90bc6a057ea44bae361566307e9be6d425531b459638db737', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-071', 'chinese', 5, 2, 'choice', '{"stem":"材料中的行动或资料指向“古桥承载地方历史和审美传统”。哪项做法与这种价值最一致？","options":["只追求新奇而歪曲原意","把浪费当作值得夸耀的事","先了解背景和事实，再以负责的态度付诸实践","不查证任何资料就随意编造"],"answer":2,"explanation":"理解背景、尊重事实并负责实践，能体现“古桥承载地方历史和审美传统”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '跨段整合']::text[], 'd4233608ddea3cebc9a30cd8870e561b6542db75dd4a1915dfc387f308cdfb00', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-072', 'chinese', 5, 2, 'choice', '{"stem":"现在要围绕“古桥纹样保存了不同时期的修缮信息”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["只写口号，不写对象与办法","删除所有关键数据和事实","不考虑读者需要与使用场景","文化讲解应把具体细节与历史意义联系起来"],"answer":3,"explanation":"“文化讲解应把具体细节与历史意义联系起来”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'apply', array['全国通用', '跨段整合']::text[], 'cdbc6d46133670e4c83c1be1a81a9df13b01dc6a6a76210c515e20aed39f0503', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-073', 'chinese', 5, 2, 'choice', '{"stem":"材料得出“一次小样本实验不足以得到十分确定的结论”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["只有掌握充分证据，才能作出可靠判断","虽然没有证据，但结论一定可靠","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证"],"answer":0,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'apply', array['全国通用', '跨段整合']::text[], '1eacdf27c9669e5a31a1a0cc605e6c7e75a58bca0ec5082ea97142667f18b997', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-074', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“科学小组想知道遮光是否影响薄荷生长。他们选取长势相近的两盆薄荷，浇相同的水，一盆正常见光，另一盆每天遮光六小时。两周后，遮光组茎更细长、叶色更浅。大家没有马上断言，而是计划增加样本再验证。”文章是怎样组织内容的？","options":["按词语笔画多少排列","按提出问题、控制实验、观察结果和继续验证展开","反复写同一个无关细节","先给结论却完全不提供过程"],"answer":1,"explanation":"全文按提出问题、控制实验、观察结果和继续验证展开。"}'::jsonb, 'builtin', '篇章逻辑', 'apply', array['全国通用', '跨段整合']::text[], 'b593920bfe841e8bdb1b212137315f0d43daf558574d7e8d9996c4af4d767ef4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-075', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“科学小组想知道遮光是否影响薄荷生长。他们选取长势相近的两盆薄荷，浇相同的水，一盆正常见光，另一盆每天遮光六小时。两周后，遮光组茎更细长、叶色更浅。大家没有马上断言，而是计划增加样本再验证。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","主要介绍一种电子游戏规则","小组用对照实验研究光照对薄荷生长的影响","全文只是赞美颜色鲜艳"],"answer":2,"explanation":"概括保留了主要对象、做法和结果：小组用对照实验研究光照对薄荷生长的影响。"}'::jsonb, 'builtin', '内容概括', 'apply', array['全国通用', '跨段整合']::text[], '81c4586a7c6b2a2940178cd85975ea6d19939d2680e5aac1ac291390f779baba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-076', 'chinese', 5, 2, 'choice', '{"stem":"人物细节是“得到结果后仍计划增加样本验证”。这样写比直接说“他很好”好在哪里？","options":["隐去人物所有行动","只让句子字数变多","证明人物永远不会犯错","用可观察的行动支撑人物特点"],"answer":3,"explanation":"具体细节“得到结果后仍计划增加样本验证”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'apply', array['全国通用', '跨段整合']::text[], '5cebcb59df4180c664cb4fe0c3543c8898ba9117e0d743b64aaaf21a1d7d1047', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-077', 'chinese', 5, 2, 'choice', '{"stem":"画面中出现“遮光组细长的茎和较浅的叶色形成可见差异”。这组景物描写最直接的作用是？","options":["形成鲜明场景并配合主题内容","代替全部人物行动","删去时间和空间线索","说明景物与文章无关"],"answer":0,"explanation":"具体景物构成画面，并与“小组用对照实验研究光照对薄荷生长的影响”相配合。"}'::jsonb, 'builtin', '景物描写', 'apply', array['全国通用', '跨段整合']::text[], 'fd3487647f3c3e631f2bd0957eacf586988aedf09ed749f2309be3a30f7ef22e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-078', 'chinese', 5, 2, 'choice', '{"stem":"某一说明片段“列数字、作比较并呈现实验变量”。这样处理的目的是？","options":["用无关句子混淆重点","用明确的过程或证据把特点说清楚","只表达情绪而不介绍对象","让读者无法验证信息"],"answer":1,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'apply', array['全国通用', '跨段整合']::text[], '0240a13ec937fa8b8da96cef4c974ab05a7de4ca8b2316a85303c151fa95aa16', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-079', 'chinese', 5, 2, 'choice', '{"stem":"线索一：“得到结果后仍计划增加样本验证”。线索二：“小组用对照实验研究光照对薄荷生长的影响”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","文中行动和结果之间完全无关","一次小样本实验不足以得到十分确定的结论","只要猜测就不需要文本依据"],"answer":2,"explanation":"两条线索共同支持“一次小样本实验不足以得到十分确定的结论”。"}'::jsonb, 'builtin', '跨段推断', 'apply', array['全国通用', '跨段整合']::text[], '4ad73ddd41d666d5ecdb6df3de4bf0c03cfe2abdca685b9c4902cf6c18d9d5a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-080', 'chinese', 5, 2, 'choice', '{"stem":"材料中的行动或资料指向“求真务实、谨慎验证”。哪项做法与这种价值最一致？","options":["只追求新奇而歪曲原意","把浪费当作值得夸耀的事","不查证任何资料就随意编造","先了解背景和事实，再以负责的态度付诸实践"],"answer":3,"explanation":"理解背景、尊重事实并负责实践，能体现“求真务实、谨慎验证”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '跨段整合']::text[], 'ec982cb1d4c58a451a72e794d33e2f445b110124014a6d06e8c4bc5e5d3e0294', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-081', 'chinese', 5, 2, 'choice', '{"stem":"现在要围绕“小组用对照实验研究光照对薄荷生长的影响”完成真实写作任务。哪项要求最能帮助读者理解并行动？","options":["实验报告要写清变量、现象与结论限度","只写口号，不写对象与办法","删除所有关键数据和事实","不考虑读者需要与使用场景"],"answer":0,"explanation":"“实验报告要写清变量、现象与结论限度”能使表达清楚、可信并便于使用。"}'::jsonb, 'builtin', '实际表达', 'apply', array['全国通用', '跨段整合']::text[], '143cc9dfb058d0cfef2b7686c17d20c19a279fec3506413b4ec5b0d519bcadd6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-082', 'chinese', 5, 2, 'choice', '{"stem":"材料得出“快递员把物品安全和收件人需要放在心上”的认识。哪个复句能准确表达“依据充分才能得出结论”？","options":["虽然没有证据，但结论一定可靠","只有掌握充分证据，才能作出可靠判断","一边删除事实，一边随意猜测","不但不看材料，而且拒绝验证"],"answer":1,"explanation":"“只有……才……”准确表达必要条件关系。"}'::jsonb, 'builtin', '复杂句', 'apply', array['全国通用', '跨段整合']::text[], 'c8a292640cc08912fb2b4d94973162174a0d7e172d34e1f476bbd373e208a5e4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-083', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“雨夜里，快递员把车停在屋檐下，将几个纸箱重新套上防水袋。他低头核对地址时，雨水顺着帽檐往下滴；确认无误后，他把箱子抱在胸前，绕开积水送到老人家门口。老人连声道谢，他只是摆摆手，又转身走进雨幕。”文章是怎样组织内容的？","options":["按词语笔画多少排列","反复写同一个无关细节","围绕雨中护送包裹的动作依次叙述","先给结论却完全不提供过程"],"answer":2,"explanation":"全文围绕雨中护送包裹的动作依次叙述。"}'::jsonb, 'builtin', '篇章逻辑', 'apply', array['全国通用', '跨段整合']::text[], 'b5b424f39eb5c124e577edb758f797d32a968273f7f0b8ed7904ae0e53bf82cc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-084', 'chinese', 5, 2, 'choice', '{"stem":"综合短文中的相关信息：“雨夜里，快递员把车停在屋檐下，将几个纸箱重新套上防水袋。他低头核对地址时，雨水顺着帽檐往下滴；确认无误后，他把箱子抱在胸前，绕开积水送到老人家门口。老人连声道谢，他只是摆摆手，又转身走进雨幕。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳","快递员在雨夜认真保护并送达包裹"],"answer":3,"explanation":"概括保留了主要对象、做法和结果：快递员在雨夜认真保护并送达包裹。"}'::jsonb, 'builtin', '内容概括', 'apply', array['全国通用', '跨段整合']::text[], '4e7038de35e97e447b38c8a54b5c8c0cacf46539620ce9683f32fbe119c6517e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-085', 'chinese', 5, 2, 'choice', '{"stem":"人物细节是“套防水袋、核对地址、抱紧纸箱并绕开积水”。这样写比直接说“他很好”好在哪里？","options":["用可观察的行动支撑人物特点","隐去人物所有行动","只让句子字数变多","证明人物永远不会犯错"],"answer":0,"explanation":"具体细节“套防水袋、核对地址、抱紧纸箱并绕开积水”能让读者自己判断人物特点。"}'::jsonb, 'builtin', '人物描写', 'apply', array['全国通用', '跨段整合']::text[], '4758c227896677cdd8735b790696f4ac4c3743cb328f80a32a1fb2df903d163d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-086', 'chinese', 5, 2, 'choice', '{"stem":"画面中出现“雨水沿帽檐滴落，人物转身走入雨幕”。这组景物描写最直接的作用是？","options":["代替全部人物行动","形成鲜明场景并配合主题内容","删去时间和空间线索","说明景物与文章无关"],"answer":1,"explanation":"具体景物构成画面，并与“快递员在雨夜认真保护并送达包裹”相配合。"}'::jsonb, 'builtin', '景物描写', 'apply', array['全国通用', '跨段整合']::text[], '3378152db0b47eac3d7326c402155ff5fa30833f30b380f1477e115eadd69604', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-087', 'chinese', 5, 2, 'choice', '{"stem":"某一说明片段“用动作和环境描写共同突出人物品质”。这样处理的目的是？","options":["用无关句子混淆重点","只表达情绪而不介绍对象","用明确的过程或证据把特点说清楚","让读者无法验证信息"],"answer":2,"explanation":"说明方法要服务于特点和事理的清晰呈现。"}'::jsonb, 'builtin', '说明方法', 'apply', array['全国通用', '跨段整合']::text[], '055cc8be74f10d8a6f233871152b88d33eff631e7a4821ee96863cd65d0631ec', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-088', 'chinese', 5, 2, 'choice', '{"stem":"线索一：“套防水袋、核对地址、抱紧纸箱并绕开积水”。线索二：“快递员在雨夜认真保护并送达包裹”。合并两处信息，最合理的推断是？","options":["一个细节可以证明任何事情","文中行动和结果之间完全无关","只要猜测就不需要文本依据","快递员把物品安全和收件人需要放在心上"],"answer":3,"explanation":"两条线索共同支持“快递员把物品安全和收件人需要放在心上”。"}'::jsonb, 'builtin', '跨段推断', 'apply', array['全国通用', '跨段整合']::text[], 'b788d03e3009049423102a00227cc8cbf52dd6bc63477fed4cbbd045c656df61', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-089', 'chinese', 5, 2, 'choice', '{"stem":"材料中的行动或资料指向“尽职守信、尊重劳动”。哪项做法与这种价值最一致？","options":["先了解背景和事实，再以负责的态度付诸实践","只追求新奇而歪曲原意","把浪费当作值得夸耀的事","不查证任何资料就随意编造"],"answer":0,"explanation":"理解背景、尊重事实并负责实践，能体现“尽职守信、尊重劳动”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '跨段整合']::text[], '3e965686f4d7596c0cfae57c26736095d1fbe982d6631eb196e1aba0890b9686', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-090', 'chinese', 5, 3, 'choice', '{"stem":"为“快递员在雨夜认真保护并送达包裹”制作面向真实读者的作品，交付前哪项检查最有价值？","options":["版面是否占满所有空白","读者能否根据事实理解重点，并按明确步骤采取行动","是否把证据和来源全部删掉","是否使用大量与任务无关的口号"],"answer":1,"explanation":"真实表达要同时检查可信度、可理解性和可操作性。"}'::jsonb, 'builtin', '实际表达', 'reason', array['全国通用', '跨段整合']::text[], '887cf4ae00d0a686e8a5698acba5953a01ab815a2da9bfac4868538ea1e16a93', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-091', 'chinese', 5, 3, 'choice', '{"stem":"文章的证据支持“减少浪费需要同时改进供给和取餐方式”，但不能说明所有情况。哪个复句表达最严谨？","options":["只要有一个例子，就能证明永远正确","因为已经有结论，所以可以删掉所有证据","虽然已有证据支持，但仍需在更多情况中验证","不但不需要查证，而且可以随意扩大范围"],"answer":2,"explanation":"转折复句同时承认已有支持和证据范围的局限。"}'::jsonb, 'builtin', '复杂句', 'reason', array['全国通用', '跨段整合']::text[], '0878e06b3c8a61ebf8a90a5b144d0b1b1b331a826c7721982de7b44726f68db2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-092', 'chinese', 5, 3, 'choice', '{"stem":"联系全文并判断证据是否充分：“为了减少食堂剩饭，学生会先连续五天称量各年级剩余饭菜，再调查大家不爱吃和取量过多的原因。根据数据，食堂调整了部分菜品，窗口也增加“小份可添”的选择。两周后，人均剩余量下降了近三成。”文章是怎样组织内容的？","options":["按词语笔画多少排列","反复写同一个无关细节","先给结论却完全不提供过程","按调查、分析、改进和效果评估组织材料"],"answer":3,"explanation":"全文按调查、分析、改进和效果评估组织材料。"}'::jsonb, 'builtin', '篇章逻辑', 'reason', array['全国通用', '跨段整合']::text[], '580b4c277f64dee3c9aff4ed8e1a432d703170b00d500a0c8c84a71e2eb2d736', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-093', 'chinese', 5, 3, 'choice', '{"stem":"联系全文并判断证据是否充分：“为了减少食堂剩饭，学生会先连续五天称量各年级剩余饭菜，再调查大家不爱吃和取量过多的原因。根据数据，食堂调整了部分菜品，窗口也增加“小份可添”的选择。两周后，人均剩余量下降了近三成。”最全面而简洁的概括是？","options":["学校依据调查数据采取措施减少食物浪费","只写了天气，没有人物或事件","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳"],"answer":0,"explanation":"概括保留了主要对象、做法和结果：学校依据调查数据采取措施减少食物浪费。"}'::jsonb, 'builtin', '内容概括', 'reason', array['全国通用', '跨段整合']::text[], '2d9d6e7a64ed49fe2103e4aa2a5adc16b0c5470dd06ab992c7126e18020dc03f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-094', 'chinese', 5, 3, 'choice', '{"stem":"细节“学生会持续称量并调查原因”和主要内容“学校依据调查数据采取措施减少食物浪费”之间是什么关系？","options":["细节只负责增加字数","具体行动为人物品质和主题提供可验证的证据","两者相互矛盾且无法理解","主题可以完全不需要文本证据"],"answer":1,"explanation":"人物特点不是空泛标签，要由可观察的行动细节支撑。"}'::jsonb, 'builtin', '人物描写', 'reason', array['全国通用', '跨段整合']::text[], '5636ab3cfd870bef7bd7e6ac32869c2ee7071a6cfdddc9533b512ad064105ce6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-095', 'chinese', 5, 3, 'choice', '{"stem":"如果删去“窗口新增小份餐，餐盘里的剩饭明显减少”这组画面，文章最可能失去什么？","options":["所有事件的起因和结果","全部人物姓名和语言","与主题相配合的具体环境感和画面感","文章中每一个说明数据"],"answer":2,"explanation":"景物细节主要贡献场景、氛围及与主题的呼应。"}'::jsonb, 'builtin', '景物描写', 'reason', array['全国通用', '跨段整合']::text[], '4e7e1022c217cfa085f6a207e41fb7b61f16d1088bbf4ebe2d15d00a5e5012a7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-096', 'chinese', 5, 3, 'choice', '{"stem":"片段采用“列数字并以前后数据作比较”。若要检查这种说明是否有效，最关键的标准是？","options":["是否使用了最多形容词","句子是否越长越好","是否可以不考虑说明对象","方法所呈现的过程或证据是否真正支持被说明的特点"],"answer":3,"explanation":"说明方法的价值取决于它能否有效说清对象特点。"}'::jsonb, 'builtin', '说明方法', 'reason', array['全国通用', '跨段整合']::text[], '7fbb82a9ace18893b12f70d924d21f1ac688f82dff4be1dfa41d8d403d0d43c8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-097', 'chinese', 5, 3, 'choice', '{"stem":"线索一：“学生会持续称量并调查原因”。线索二：“学校依据调查数据采取措施减少食物浪费”。合并两处信息，最合理的推断是？","options":["减少浪费需要同时改进供给和取餐方式","一个细节可以证明任何事情","文中行动和结果之间完全无关","只要猜测就不需要文本依据"],"answer":0,"explanation":"两条线索共同支持“减少浪费需要同时改进供给和取餐方式”。"}'::jsonb, 'builtin', '跨段推断', 'reason', array['全国通用', '跨段整合']::text[], '2c7c0e76460bf2fbba5e01b08661926276a0ad93e5f781ca535da53fd324a608', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-098', 'chinese', 5, 3, 'choice', '{"stem":"面对“珍惜粮食、反对浪费”这一主题，哪种学习方式既尊重文化又保持求证意识？","options":["为了吸引人随意改写历史","对照实物与可靠资料，区分事实、解释和个人感受","认为传说和实证资料完全一样","只记结论而不查阅来源"],"answer":1,"explanation":"尊重传统不等于放弃求证，两者应在可靠资料上结合。"}'::jsonb, 'builtin', '传统文化', 'reason', array['全国通用', '跨段整合']::text[], '6c9b2589343171e279e5623b6a4b9dabe40c7e3d7e80032cd7a30ea4527db413', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-099', 'chinese', 5, 3, 'choice', '{"stem":"为“学校依据调查数据采取措施减少食物浪费”制作面向真实读者的作品，交付前哪项检查最有价值？","options":["版面是否占满所有空白","是否把证据和来源全部删掉","读者能否根据事实理解重点，并按明确步骤采取行动","是否使用大量与任务无关的口号"],"answer":2,"explanation":"真实表达要同时检查可信度、可理解性和可操作性。"}'::jsonb, 'builtin', '实际表达', 'reason', array['全国通用', '跨段整合']::text[], '9714536a7f627d6a096b0e79f3b8257129cea980c2415ccaa17070e5d4cb3a10', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-100', 'chinese', 5, 3, 'choice', '{"stem":"文章的证据支持“合适的观测条件会影响能够收集的信息”，但不能说明所有情况。哪个复句表达最严谨？","options":["只要有一个例子，就能证明永远正确","因为已经有结论，所以可以删掉所有证据","不但不需要查证，而且可以随意扩大范围","虽然已有证据支持，但仍需在更多情况中验证"],"answer":3,"explanation":"转折复句同时承认已有支持和证据范围的局限。"}'::jsonb, 'builtin', '复杂句', 'reason', array['全国通用', '跨段整合']::text[], '3bb4af885a240c2afb03c911282efd292db74b51e86b65d03d0e6f2598433800', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-101', 'chinese', 5, 3, 'choice', '{"stem":"联系全文并判断证据是否充分：“夜空观测活动开始前，老师让大家先关闭白光手电，改用蒙着红纸的弱光。最初几分钟，大家只看见几颗亮星；眼睛适应黑暗后，更多星星渐渐显现。老师解释，强光会使眼睛重新适应明亮环境，影响观察暗弱天体。”文章是怎样组织内容的？","options":["先写操作和现象变化，再解释科学原因","按词语笔画多少排列","反复写同一个无关细节","先给结论却完全不提供过程"],"answer":0,"explanation":"全文先写操作和现象变化，再解释科学原因。"}'::jsonb, 'builtin', '篇章逻辑', 'reason', array['全国通用', '跨段整合']::text[], '8f04f8df07602cb17f876f26e998223533cb49f36da75f74afeeec02d6681bbd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-102', 'chinese', 5, 3, 'choice', '{"stem":"联系全文并判断证据是否充分：“夜空观测活动开始前，老师让大家先关闭白光手电，改用蒙着红纸的弱光。最初几分钟，大家只看见几颗亮星；眼睛适应黑暗后，更多星星渐渐显现。老师解释，强光会使眼睛重新适应明亮环境，影响观察暗弱天体。”最全面而简洁的概括是？","options":["只写了天气，没有人物或事件","控制照明并等待暗适应有助于观察星空","主要介绍一种电子游戏规则","全文只是赞美颜色鲜艳"],"answer":1,"explanation":"概括保留了主要对象、做法和结果：控制照明并等待暗适应有助于观察星空。"}'::jsonb, 'builtin', '内容概括', 'reason', array['全国通用', '跨段整合']::text[], '661618dab352747ad2f08266aac4ccae9b9cd7ab02b0937f2c4835c37897cbad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-103', 'chinese', 5, 3, 'choice', '{"stem":"细节“老师提前规定照明方式并解释原因”和主要内容“控制照明并等待暗适应有助于观察星空”之间是什么关系？","options":["细节只负责增加字数","两者相互矛盾且无法理解","具体行动为人物品质和主题提供可验证的证据","主题可以完全不需要文本证据"],"answer":2,"explanation":"人物特点不是空泛标签，要由可观察的行动细节支撑。"}'::jsonb, 'builtin', '人物描写', 'reason', array['全国通用', '跨段整合']::text[], 'c16e96427d165af177fd3a98bddabdc0a6b51e2c607339dd8284e1b2ee8f2acc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-104', 'chinese', 5, 3, 'choice', '{"stem":"如果删去“黑暗中越来越多星星逐渐显现”这组画面，文章最可能失去什么？","options":["所有事件的起因和结果","全部人物姓名和语言","文章中每一个说明数据","与主题相配合的具体环境感和画面感"],"answer":3,"explanation":"景物细节主要贡献场景、氛围及与主题的呼应。"}'::jsonb, 'builtin', '景物描写', 'reason', array['全国通用', '跨段整合']::text[], '159c5839ab9bb1a8dbb4c649da3175f74f203994b2ae913fb9706c9d3eca0630', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-105', 'chinese', 5, 3, 'choice', '{"stem":"片段采用“描述现象并作科学解释”。若要检查这种说明是否有效，最关键的标准是？","options":["方法所呈现的过程或证据是否真正支持被说明的特点","是否使用了最多形容词","句子是否越长越好","是否可以不考虑说明对象"],"answer":0,"explanation":"说明方法的价值取决于它能否有效说清对象特点。"}'::jsonb, 'builtin', '说明方法', 'reason', array['全国通用', '跨段整合']::text[], '91fbda7f36bda6555374c979e50c90e4c8861b219ffb59d334b7e2da65b87a9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-106', 'chinese', 5, 1, 'fill', '{"stem":"“虽然实验出现偏差，___大家没有立刻放弃。”应填转折词。","answer":"但是","explanation":"结合五年级语文知识，填“但是”能使表达准确完整。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '648cf217c4184167a5e0b2fe3ed84ae6eb0e67153903ab695003a431129e85f0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-107', 'chinese', 5, 1, 'fill', '{"stem":"先提出问题，再分析原因，最后给出办法，文章层次会更___。","answer":"清楚","explanation":"结合五年级语文知识，填“清楚”能使表达准确完整。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], 'a9aa4957364c291b5623709d3bcee70f5d0e29d19934cab5bf3633806411ab22', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-108', 'chinese', 5, 1, 'fill', '{"stem":"概括一件事通常要抓住主要人物、事件和___。","answer":"结果","explanation":"结合五年级语文知识，填“结果”能使表达准确完整。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], '62b3ffcd5da4231f3659dbd5509da2bed9b563e9ca8afd54674132b3180b80e2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-109', 'chinese', 5, 1, 'fill', '{"stem":"人物的语言、动作、神态和心理都属于___描写。","answer":"人物","explanation":"结合五年级语文知识，填“人物”能使表达准确完整。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '33ca4c6129690d01b92c98b9da2b66f99a4d38f353933dbf2d9f669f631f61e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-110', 'chinese', 5, 1, 'fill', '{"stem":"景物描写不仅形成画面，也常能烘托气氛和人物___。","answer":"心情","explanation":"结合五年级语文知识，填“心情”能使表达准确完整。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], '748d93ad641b379711caf38853c94105e8d4f8e40af64557a5a1ab357c5c1c3a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-111', 'chinese', 5, 1, 'fill', '{"stem":"用准确数量说明特点的方法叫列___。","answer":"数字","explanation":"结合五年级语文知识，填“数字”能使表达准确完整。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], '3a0166dac23a746386143c99917e0610d8c92b364b1cf7c115523cf016f8767f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-112', 'chinese', 5, 1, 'fill', '{"stem":"跨段推断要整合多处信息，并指出结论的___。","answer":"依据","explanation":"结合五年级语文知识，填“依据”能使表达准确完整。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], '08493560a18e783f2ecc17df9796c1428678bbd36840983634779c6b056a0afb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-113', 'chinese', 5, 1, 'fill', '{"stem":"介绍非遗项目时，既要说明技艺，也要尊重文化___。","answer":"内涵","explanation":"结合五年级语文知识，填“内涵”能使表达准确完整。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '阅读理解']::text[], '6becc2c3b24ec31101ec52878cb738c64252adfdfd0246de71e5a51034554466', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-114', 'chinese', 5, 1, 'fill', '{"stem":"调查报告应写明对象、方法、数据和___。","answer":"结论","explanation":"结合五年级语文知识，填“结论”能使表达准确完整。"}'::jsonb, 'builtin', '实际表达', 'understand', array['全国通用', '阅读理解']::text[], 'dd363c54b45008ea39beca8f642cf4e1a54540465df1918198321de5b704c464', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-115', 'chinese', 5, 1, 'fill', '{"stem":"“不仅认真记录，___反复验证”表示递进关系。","answer":"还","explanation":"结合五年级语文知识，填“还”能使表达准确完整。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '17dd7a40a9068a5883e7501e079d609de251dcec71e859437cc0fcf982fa4471', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-116', 'chinese', 5, 1, 'fill', '{"stem":"过渡句可以承接上文并引出___。","answer":"下文","explanation":"结合五年级语文知识，填“下文”能使表达准确完整。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], '8bf98bd1b21d5eb4520a22d99bed5fae9bb9670798d2cce7eff97e4c167b20d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-117', 'chinese', 5, 2, 'fill', '{"stem":"概括不能照抄全部内容，要分清主要和___。","answer":"次要","explanation":"结合五年级语文知识，填“次要”能使表达准确完整。"}'::jsonb, 'builtin', '内容概括', 'apply', array['全国通用', '跨段整合']::text[], '1023cdd3dd553d0274a3d249a239c3a309b03598a57a0b099e41fedcd897d42e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-118', 'chinese', 5, 2, 'fill', '{"stem":"用“攥紧拳头、深吸一口气”可以表现人物的紧张或___。","answer":"坚定","explanation":"结合五年级语文知识，填“坚定”能使表达准确完整。"}'::jsonb, 'builtin', '人物描写', 'apply', array['全国通用', '跨段整合']::text[], '31f7e5c6514a123a11b3d9907fbedcdf26bf2727e53555bc7174a055bc195b92', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-119', 'chinese', 5, 2, 'fill', '{"stem":"“云层裂开，阳光洒向水面”属于___描写。","answer":"景物","explanation":"结合五年级语文知识，填“景物”能使表达准确完整。"}'::jsonb, 'builtin', '景物描写', 'apply', array['全国通用', '跨段整合']::text[], 'f0011807e009df7eb8d4af9d7f39ebb6f267b5c76a10088620977f64d849fe8f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-120', 'chinese', 5, 2, 'fill', '{"stem":"把两种事物放在一起比较叫作___比较。","answer":"作","explanation":"结合五年级语文知识，填“作”能使表达准确完整。"}'::jsonb, 'builtin', '说明方法', 'apply', array['全国通用', '跨段整合']::text[], 'c36042e83599278d73ceb5f1f86b50c1b105d54b4d8ef7ebc1a945eda0453d92', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-121', 'chinese', 5, 2, 'fill', '{"stem":"推断不能超出文本证据允许的合理___。","answer":"范围","explanation":"结合五年级语文知识，填“范围”能使表达准确完整。"}'::jsonb, 'builtin', '跨段推断', 'apply', array['全国通用', '跨段整合']::text[], '806e3d4a0f2dfb049775fc057e0dcdbc6475c25e04243a7fc917a0c2852e22aa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-122', 'chinese', 5, 2, 'fill', '{"stem":"古建筑、传统节日和民间工艺都是文化___的重要内容。","answer":"传承","explanation":"结合五年级语文知识，填“传承”能使表达准确完整。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '跨段整合']::text[], 'c163a0fac15cd7549ed0e5dbef736b2bc34cd8ef18c614bdf47a245a6016efb9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-123', 'chinese', 5, 2, 'fill', '{"stem":"建议书除了说明问题，还应提出具体可行的___。","answer":"建议","explanation":"结合五年级语文知识，填“建议”能使表达准确完整。"}'::jsonb, 'builtin', '实际表达', 'apply', array['全国通用', '跨段整合']::text[], 'cf4277dd4f9e1ee6a2ca03081584b31b9bdb0ee67a2c17478fbbf81db4391f6c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-124', 'chinese', 5, 3, 'fill', '{"stem":"照应开头可以使文章结构更加___。","answer":"完整","explanation":"结合五年级语文知识，填“完整”能使表达准确完整。"}'::jsonb, 'builtin', '篇章逻辑', 'reason', array['全国通用', '跨段整合']::text[], '0fd63c4fa974c7ef6c4bf320f003841a4d9d01f38c4143654614d278c90b6ab9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-125', 'chinese', 5, 3, 'fill', '{"stem":"多个证据指向同一结论时，推断通常更有___力。","answer":"说服","explanation":"结合五年级语文知识，填“说服”能使表达准确完整。"}'::jsonb, 'builtin', '跨段推断', 'reason', array['全国通用', '跨段整合']::text[], '5213d9260433e03f269f12c9facbbd008b3c0d4244a06115d46caaea4af5b465', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-126', 'chinese', 5, 3, 'fill', '{"stem":"发通知要写清时间、地点、参加对象和注意___。","answer":"事项","explanation":"结合五年级语文知识，填“事项”能使表达准确完整。"}'::jsonb, 'builtin', '实际表达', 'reason', array['全国通用', '跨段整合']::text[], '156f5c6a81b075fb20eba1a1fa1c510b1a272c9e6a7960281ec6e248f319cf33', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-127', 'chinese', 5, 1, 'match', '{"stem":"五年级阅读方法图谱：匹配关联词所表示的逻辑关系。","left":["因为……所以……","虽然……但是……","如果……就……","不仅……还……"],"right":["假设","因果","递进","转折"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据复杂句的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '复杂句', 'understand', array['全国通用', '阅读理解']::text[], '8adc46015048328c9e977c3e633e5e96af423ba9dd9ed7e45939b4e79c59bd00', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-128', 'chinese', 5, 1, 'match', '{"stem":"五年级阅读方法图谱：匹配篇章结构与它的展开方式。","left":["总—分","问题—分析—解决","时间顺序","对比结构"],"right":["按先后推进","先概括再展开","突出前后差异","逐层解决问题"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据篇章逻辑的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '篇章逻辑', 'understand', array['全国通用', '阅读理解']::text[], 'a9d831945cbf2d0a1f8d91a27290f9a0ebce2331cc15d865f2754869dd64c370', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-129', 'chinese', 5, 1, 'match', '{"stem":"五年级阅读方法图谱：匹配概括要素与需要回答的问题。","left":["人物","事件","结果","中心"],"right":["最后怎样","谁","主要说明什么","做什么"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据内容概括的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '内容概括', 'understand', array['全国通用', '阅读理解']::text[], 'c029d3a743f00c5a6a31c05f793c05573da80ead9eaad00352abb6f9df257507', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-130', 'chinese', 5, 1, 'match', '{"stem":"五年级阅读方法图谱：匹配人物描写类型与对应内容。","left":["语言","动作","神态","心理"],"right":["面部表情","说的话","内心想法","做的事"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据人物描写的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '人物描写', 'understand', array['全国通用', '阅读理解']::text[], '10c338be3aface269bffb3b51d58779f659b0123c061eebc88fa3d16042c09d0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-131', 'chinese', 5, 1, 'match', '{"stem":"五年级阅读方法图谱：匹配景物观察角度与感知内容。","left":["颜色","声音","形态","变化"],"right":["外形姿态","视觉色彩","动态过程","听觉感受"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据景物描写的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '景物描写', 'understand', array['全国通用', '阅读理解']::text[], 'f5ebec7efbb08f00631688e49a8a68399e47001fa68fb112eb849a049bf8ef37', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-132', 'chinese', 5, 1, 'match', '{"stem":"五年级阅读方法图谱：匹配说明方法与它的做法。","left":["列数字","作比较","举例子","打比方"],"right":["举实例","用数量","作形象比喻","比异同"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据说明方法的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '说明方法', 'understand', array['全国通用', '阅读理解']::text[], '12ff77a2ba6df7bf2f88300886af6b7e5dda0a4b6d0f5b420e70953f3421edcb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-133', 'chinese', 5, 1, 'match', '{"stem":"五年级阅读方法图谱：匹配推断步骤中的概念与作用。","left":["事实","证据","联系","结论"],"right":["信息关系","原文信息","合理判断","支持材料"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据跨段推断的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '跨段推断', 'understand', array['全国通用', '阅读理解']::text[], 'fd110002f59242b2147c9192fe26891d4d595b54b1958ee675ec324cdef5a5ef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-134', 'chinese', 5, 2, 'match', '{"stem":"五年级阅读方法图谱：匹配传统文化类别与具体内容。","left":["节气","非遗","古建筑","传统节日"],"right":["历史空间","时令知识","民俗活动","传承技艺"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据传统文化的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '跨段整合']::text[], 'be5e92ddd6715f82a0918f6cf3e1af5028d53eff68e8362d430a48d5de25ec0f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-135', 'chinese', 5, 2, 'match', '{"stem":"五年级阅读方法图谱：匹配实用文体与它的主要任务。","left":["通知","建议书","调查报告","讲解词"],"right":["呈现研究","告知事项","介绍对象","提出办法"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据实际表达的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '实际表达', 'apply', array['全国通用', '跨段整合']::text[], '2f5a2e4f282a86a2b8aca575604321a06de98c051415e1e261c1bece75b739f9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-136', 'chinese', 5, 2, 'match', '{"stem":"综合语文实践清单：匹配关联词所表示的逻辑关系。","left":["因为……所以……","虽然……但是……","如果……就……","不仅……还……"],"right":["假设","因果","递进","转折"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据复杂句的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '复杂句', 'apply', array['全国通用', '跨段整合']::text[], '021ab50a3a1eecea65f9ecf454ca2da828b8ddeada71c83091fbd4b8fc5cf270', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-137', 'chinese', 5, 2, 'match', '{"stem":"综合语文实践清单：匹配篇章结构与它的展开方式。","left":["总—分","问题—分析—解决","时间顺序","对比结构"],"right":["按先后推进","先概括再展开","突出前后差异","逐层解决问题"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据篇章逻辑的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '篇章逻辑', 'apply', array['全国通用', '跨段整合']::text[], '5b976c4643dc74b84960ff526c53f428adb3d2d65b8be80594375d4867cf7257', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-138', 'chinese', 5, 2, 'match', '{"stem":"综合语文实践清单：匹配概括要素与需要回答的问题。","left":["人物","事件","结果","中心"],"right":["最后怎样","谁","主要说明什么","做什么"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据内容概括的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '内容概括', 'apply', array['全国通用', '跨段整合']::text[], '51d942927c5a35a0024453df21ad08fc46851fba162357f100f45c883fa279ac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-139', 'chinese', 5, 3, 'match', '{"stem":"综合语文实践清单：匹配人物描写类型与对应内容。","left":["语言","动作","神态","心理"],"right":["面部表情","说的话","内心想法","做的事"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据人物描写的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '人物描写', 'reason', array['全国通用', '跨段整合']::text[], '1784b02608d9df1f55caa6fdd6e101fcb813b0a44e278d9e5e208c012e34f94b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-chinese-authored-140', 'chinese', 5, 3, 'match', '{"stem":"综合语文实践清单：匹配景物观察角度与感知内容。","left":["颜色","声音","形态","变化"],"right":["外形姿态","视觉色彩","动态过程","听觉感受"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据景物描写的定义和使用场景逐项配对。"}'::jsonb, 'builtin', '景物描写', 'reason', array['全国通用', '跨段整合']::text[], '61940b9247274a28d06ec1703ae92beb8f04c326e8b3bcb92d86cd2d6785a35a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-001', 'english', 5, 1, 'choice', '{"stem":"Read: “Last Friday, Mia measured the bean plants at the school garden to learn how sunlight changes plant growth. The sunny group grew more leaves. Mia will compare the new leaves tomorrow.” What is the paragraph mainly about?","options":["Mia''s study task and what the record showed","a fictional trip with no plan","a meal with no information","a list of unrelated colours"],"answer":0,"explanation":"The paragraph connects a task, its purpose, a result and a next step."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '142c738362913c05b6b0018571920601abca8c3c88fbd0a305c5b34d0929189d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-002', 'english', 5, 1, 'choice', '{"stem":"The note says, “Last Friday, Mia measured the bean plants.” Which phrase shows a completed past action?","options":["will compare the new leaves tomorrow","measured the bean plants","to learn how sunlight changes plant growth","complete a growth chart"],"answer":1,"explanation":"The past-time phrase and “measured the bean plants” show a completed action."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], '46843803d6bf7b091b1a3829b09450658ffd2228e089e4c632a00ee018b50371', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-003', 'english', 5, 1, 'choice', '{"stem":"Mia needs help with the task “complete a growth chart”. Which request is clear and polite?","options":["Do it now because I say so!","What colour is yesterday?","Could you please help me complete a growth chart?","I will not explain the task."],"answer":2,"explanation":"“Could you please...?” makes a polite request and names the needed task."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], '3b63a1d2c6a097f1d40ea5eb25b23fc42012677f07847ea0315e4c588f8a817e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-004', 'english', 5, 1, 'choice', '{"stem":"Read: “Mia checked the tallest plant and then wrote about it in the project folder.” What does “it” refer to?","options":["Mia","school garden","to learn how sunlight changes plant growth","the tallest plant"],"answer":3,"explanation":"The pronoun refers back to the singular noun phrase “the tallest plant”."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], 'a1659a860e3e47fcb6fc97970b4ece5a74204a1b3b5a378893c426065698f75b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-005', 'english', 5, 1, 'choice', '{"stem":"Fact 1: Mia worked to learn how sunlight changes plant growth. Fact 2: the sunny group grew more leaves. What can we reasonably infer?","options":["The task produced information useful for its purpose.","The result proves every future case.","No observation was made.","The place must close forever."],"answer":0,"explanation":"The purpose and recorded result are connected, but the evidence does not prove every possible case."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], '1e134b6245687b90716e7a3313f8639fc39b72dce05e4a6b3ceba7d158d46284', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-006', 'english', 5, 1, 'choice', '{"stem":"Project card: “Who: Mia; where: school garden; result: the sunny group grew more leaves.” Which note keeps all three fields?","options":["another pupil — airport — no result","Mia — school garden — the sunny group grew more leaves","Mia — wrong place — no record","nobody — nowhere — nothing"],"answer":1,"explanation":"The correct note preserves the person, place and result."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], '59973dea0c67e3e9327ede6752e6f446bb3ec510b10800b8bbd2ab21db673a72', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-007', 'english', 5, 1, 'choice', '{"stem":"Mia reports, “the sunny group grew more leaves.” Which sentence best introduces this evidence?","options":["I have no evidence, but I am always right.","Please forget every result.","According to our record, the sunny group grew more leaves.","This number is a colour."],"answer":2,"explanation":"“According to our record” clearly introduces evidence from collected information."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], '1c78ecda98e77e96368f231100b8efd774c52b8c8ccc766bd100aa568dcc1ca5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-008', 'english', 5, 1, 'choice', '{"stem":"Mia must complete a growth chart. Which first step is most useful?","options":["Remove the purpose and all evidence","Copy an unrelated story","Choose a design before reading the information","Select key facts from the activity record, including that the sunny group grew more leaves"],"answer":3,"explanation":"A real task should begin by selecting information that supports its purpose."}'::jsonb, 'builtin', '真实任务', 'understand', array['全国通用', 'project English']::text[], 'f129173a1338dd076123f48170c1ac67d87797e241240e2daa7660582d0a2a80', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-009', 'english', 5, 1, 'choice', '{"stem":"Read: “Yesterday afternoon, Leo sorted returned books at the community library to help younger readers find books. Readers found the story area faster. Leo will design shelf labels next week.” What is the paragraph mainly about?","options":["Leo''s study task and what the record showed","a fictional trip with no plan","a meal with no information","a list of unrelated colours"],"answer":0,"explanation":"The paragraph connects a task, its purpose, a result and a next step."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '69584327bdb13fe31cd27c90c25e6509b1e27e35c1e6187a923e2857764bd5fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-010', 'english', 5, 1, 'choice', '{"stem":"The note says, “Yesterday afternoon, Leo sorted returned books.” Which phrase shows a completed past action?","options":["will design shelf labels next week","sorted returned books","to help younger readers find books","make a clear library map"],"answer":1,"explanation":"The past-time phrase and “sorted returned books” show a completed action."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], '7d3371f02e5675c50f82d253c41b609354d691d1e4c7fd828631453dd0a18c82', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-011', 'english', 5, 1, 'choice', '{"stem":"Leo needs help with the task “make a clear library map”. Which request is clear and polite?","options":["Do it now because I say so!","What colour is yesterday?","Could you please help me make a clear library map?","I will not explain the task."],"answer":2,"explanation":"“Could you please...?” makes a polite request and names the needed task."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], 'd0c99c6031fcca70cd60d037b526ff0eca2bfe912e115066be24820593792374', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-012', 'english', 5, 1, 'choice', '{"stem":"Read: “Leo checked the history shelf and then wrote about it in the project folder.” What does “it” refer to?","options":["Leo","community library","to help younger readers find books","the history shelf"],"answer":3,"explanation":"The pronoun refers back to the singular noun phrase “the history shelf”."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], '0136b49833a6e9eb5dbe1d7153ff12046eacc7265b405b8ba9c8cb4e87dfa6bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-013', 'english', 5, 1, 'choice', '{"stem":"Fact 1: Leo worked to help younger readers find books. Fact 2: readers found the story area faster. What can we reasonably infer?","options":["The task produced information useful for its purpose.","The result proves every future case.","No observation was made.","The place must close forever."],"answer":0,"explanation":"The purpose and recorded result are connected, but the evidence does not prove every possible case."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], '446981d126c2a9d3a62662e93c9f579f9d6e85d9bdd765e91cfe9efed0602a5d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-014', 'english', 5, 1, 'choice', '{"stem":"Project card: “Who: Leo; where: community library; result: readers found the story area faster.” Which note keeps all three fields?","options":["another pupil — airport — no result","Leo — community library — readers found the story area faster","Leo — wrong place — no record","nobody — nowhere — nothing"],"answer":1,"explanation":"The correct note preserves the person, place and result."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], '1fd5f497555e6cac2c269133e9043f8d983764e9dafd6294fd7f6f08974f1d39', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-015', 'english', 5, 1, 'choice', '{"stem":"Leo reports, “readers found the story area faster.” Which sentence best introduces this evidence?","options":["I have no evidence, but I am always right.","Please forget every result.","According to our record, readers found the story area faster.","This number is a colour."],"answer":2,"explanation":"“According to our record” clearly introduces evidence from collected information."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], '7fb4d01cff3d21ebc511fe2776475c89eaec7b59148449f06c2ea5dbc81899a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-016', 'english', 5, 1, 'choice', '{"stem":"Leo must make a clear library map. Which first step is most useful?","options":["Remove the purpose and all evidence","Copy an unrelated story","Choose a design before reading the information","Select key facts from the activity record, including that readers found the story area faster"],"answer":3,"explanation":"A real task should begin by selecting information that supports its purpose."}'::jsonb, 'builtin', '真实任务', 'understand', array['全国通用', 'project English']::text[], '60ce7bff33d043cee1c8585135dff7304900b972ed66323cd7fdc88410e20923', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-017', 'english', 5, 1, 'choice', '{"stem":"Read: “On Tuesday, Emma tested three paper bridges at the science room to discover which shape holds more coins. The folded bridge held the most coins. Emma will strengthen the best design tomorrow.” What is the paragraph mainly about?","options":["Emma''s study task and what the record showed","a fictional trip with no plan","a meal with no information","a list of unrelated colours"],"answer":0,"explanation":"The paragraph connects a task, its purpose, a result and a next step."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '3f6962ff80477dfd2eb9d8276e41b42604b5e2bdfe5f2ef4c39ed74251f16430', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-018', 'english', 5, 1, 'choice', '{"stem":"The note says, “On Tuesday, Emma tested three paper bridges.” Which phrase shows a completed past action?","options":["will strengthen the best design tomorrow","tested three paper bridges","to discover which shape holds more coins","write a fair-test report"],"answer":1,"explanation":"The past-time phrase and “tested three paper bridges” show a completed action."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], 'c8321b3882499c3bcb987c204b3aab090957d0d520b8a3c8711984b64c39fa5c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-019', 'english', 5, 1, 'choice', '{"stem":"Emma needs help with the task “write a fair-test report”. Which request is clear and polite?","options":["Do it now because I say so!","What colour is yesterday?","Could you please help me write a fair-test report?","I will not explain the task."],"answer":2,"explanation":"“Could you please...?” makes a polite request and names the needed task."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], 'e9ca551337ebda63d426bb5a1a19860f6ef43c75c76b72404e8f6aa340520027', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-020', 'english', 5, 1, 'choice', '{"stem":"Read: “Emma checked the folded bridge and then wrote about it in the project folder.” What does “it” refer to?","options":["Emma","science room","to discover which shape holds more coins","the folded bridge"],"answer":3,"explanation":"The pronoun refers back to the singular noun phrase “the folded bridge”."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], '8c5ba7e2ba10e97570b68ad20616bdf07aa9c5d0f858253be96cc80fde39e13c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-021', 'english', 5, 1, 'choice', '{"stem":"Fact 1: Emma worked to discover which shape holds more coins. Fact 2: the folded bridge held the most coins. What can we reasonably infer?","options":["The task produced information useful for its purpose.","The result proves every future case.","No observation was made.","The place must close forever."],"answer":0,"explanation":"The purpose and recorded result are connected, but the evidence does not prove every possible case."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], 'ca9d0d503154cace023f2e63cd4aa13e1852fb15d548baf70bb05e1b4c32983d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-022', 'english', 5, 1, 'choice', '{"stem":"Project card: “Who: Emma; where: science room; result: the folded bridge held the most coins.” Which note keeps all three fields?","options":["another pupil — airport — no result","Emma — science room — the folded bridge held the most coins","Emma — wrong place — no record","nobody — nowhere — nothing"],"answer":1,"explanation":"The correct note preserves the person, place and result."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], 'ff0bb9e86975513fa699deec79f58e7eb87b5d23c8ee26f470ce180fad2bad71', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-023', 'english', 5, 1, 'choice', '{"stem":"Emma reports, “the folded bridge held the most coins.” Which sentence best introduces this evidence?","options":["I have no evidence, but I am always right.","Please forget every result.","According to our record, the folded bridge held the most coins.","This number is a colour."],"answer":2,"explanation":"“According to our record” clearly introduces evidence from collected information."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], 'e92faddb3da2ff9e4a028a3fd2afc312678e3c5c6973cf46bab888a8ce04c41d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-024', 'english', 5, 1, 'choice', '{"stem":"Emma must write a fair-test report. Which first step is most useful?","options":["Remove the purpose and all evidence","Copy an unrelated story","Choose a design before reading the information","Select key facts from the activity record, including that the folded bridge held the most coins"],"answer":3,"explanation":"A real task should begin by selecting information that supports its purpose."}'::jsonb, 'builtin', '真实任务', 'understand', array['全国通用', 'project English']::text[], 'aa41aac329974423473669c5d16c5afc9cd080d0319ae7e957a8f15452030db5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-025', 'english', 5, 1, 'choice', '{"stem":"Read: “Last Monday, Noah recorded four running times at the sports field to improve his pacing plan. His final two laps were more even. Noah will practise a steady pace this weekend.” What is the paragraph mainly about?","options":["Noah''s study task and what the record showed","a fictional trip with no plan","a meal with no information","a list of unrelated colours"],"answer":0,"explanation":"The paragraph connects a task, its purpose, a result and a next step."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '57054e3d505460f8dd094f8af0d9bdadb69098d3b0813daac67c6366f3950a45', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-026', 'english', 5, 1, 'choice', '{"stem":"The note says, “Last Monday, Noah recorded four running times.” Which phrase shows a completed past action?","options":["will practise a steady pace this weekend","recorded four running times","to improve his pacing plan","prepare a training timetable"],"answer":1,"explanation":"The past-time phrase and “recorded four running times” show a completed action."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], 'c31519f8352734c4e9b6fa156c0c9aa250168b6130ff7a1f00e6244db91b1f09', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-027', 'english', 5, 1, 'choice', '{"stem":"Noah needs help with the task “prepare a training timetable”. Which request is clear and polite?","options":["Do it now because I say so!","What colour is yesterday?","Could you please help me prepare a training timetable?","I will not explain the task."],"answer":2,"explanation":"“Could you please...?” makes a polite request and names the needed task."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], '4c2716da277c8900de6712578b0c943cd2e42e590cfd1e24f7acf578d3a364ae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-028', 'english', 5, 1, 'choice', '{"stem":"Read: “Noah checked the second lap and then wrote about it in the project folder.” What does “it” refer to?","options":["Noah","sports field","to improve his pacing plan","the second lap"],"answer":3,"explanation":"The pronoun refers back to the singular noun phrase “the second lap”."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], '81942700f16cd348e253311f17db9f881fba47291cc35b690772a49d5e6412ce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-029', 'english', 5, 1, 'choice', '{"stem":"Fact 1: Noah worked to improve his pacing plan. Fact 2: his final two laps were more even. What can we reasonably infer?","options":["The task produced information useful for its purpose.","The result proves every future case.","No observation was made.","The place must close forever."],"answer":0,"explanation":"The purpose and recorded result are connected, but the evidence does not prove every possible case."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], 'd1d76a7d8f4b64566d060659f58070dc5fc9f1fa5ac5a87090cea34ced8fc93b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-030', 'english', 5, 1, 'choice', '{"stem":"Project card: “Who: Noah; where: sports field; result: his final two laps were more even.” Which note keeps all three fields?","options":["another pupil — airport — no result","Noah — sports field — his final two laps were more even","Noah — wrong place — no record","nobody — nowhere — nothing"],"answer":1,"explanation":"The correct note preserves the person, place and result."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], 'e4439e4f7aa9a94a273bc41927032087775d856b54f4d7cf8e5899b07f59945e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-031', 'english', 5, 1, 'choice', '{"stem":"Noah reports, “his final two laps were more even.” Which sentence best introduces this evidence?","options":["I have no evidence, but I am always right.","Please forget every result.","According to our record, his final two laps were more even.","This number is a colour."],"answer":2,"explanation":"“According to our record” clearly introduces evidence from collected information."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], '56c32df9a1fdedbe0ee603fdb11c10bfe492d1ecec23300b70627715a624c278', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-032', 'english', 5, 1, 'choice', '{"stem":"Noah must prepare a training timetable. Which first step is most useful?","options":["Remove the purpose and all evidence","Copy an unrelated story","Choose a design before reading the information","Select key facts from the activity record, including that his final two laps were more even"],"answer":3,"explanation":"A real task should begin by selecting information that supports its purpose."}'::jsonb, 'builtin', '真实任务', 'understand', array['全国通用', 'project English']::text[], '84368c0f919ba4dc95b8d41e48034d23088909d8bbd3ed8929878f763bb530c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-033', 'english', 5, 1, 'choice', '{"stem":"Read: “After lunch yesterday, Sophie weighed food waste at the school kitchen to reduce unfinished meals. The soup group left the least food. Sophie will share smaller-serving advice on Friday.” What is the paragraph mainly about?","options":["Sophie''s study task and what the record showed","a fictional trip with no plan","a meal with no information","a list of unrelated colours"],"answer":0,"explanation":"The paragraph connects a task, its purpose, a result and a next step."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], 'c4ef63c7d991300c4a2386461912731e35f92d0c54b6f28b72be691c337a6f0a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-034', 'english', 5, 1, 'choice', '{"stem":"The note says, “After lunch yesterday, Sophie weighed food waste.” Which phrase shows a completed past action?","options":["will share smaller-serving advice on Friday","weighed food waste","to reduce unfinished meals","create a food-saving notice"],"answer":1,"explanation":"The past-time phrase and “weighed food waste” show a completed action."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], '8a0f175ec5bde59c1a122185a35e36392a9adab4ff4f7bff4821e7c0efe7e0ce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-035', 'english', 5, 1, 'choice', '{"stem":"Sophie needs help with the task “create a food-saving notice”. Which request is clear and polite?","options":["Do it now because I say so!","What colour is yesterday?","Could you please help me create a food-saving notice?","I will not explain the task."],"answer":2,"explanation":"“Could you please...?” makes a polite request and names the needed task."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], '51e61753b6cef31669bbdd230e050c9e315a4fe87eb31efcbc273641e5e3f9f1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-036', 'english', 5, 1, 'choice', '{"stem":"Read: “Sophie checked the waste box and then wrote about it in the project folder.” What does “it” refer to?","options":["Sophie","school kitchen","to reduce unfinished meals","the waste box"],"answer":3,"explanation":"The pronoun refers back to the singular noun phrase “the waste box”."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], '8250d8df1f31c2ec20b7417a1d9a04dc2e65dd843865ee7e66b9db1d85cea62a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-037', 'english', 5, 1, 'choice', '{"stem":"Fact 1: Sophie worked to reduce unfinished meals. Fact 2: the soup group left the least food. What can we reasonably infer?","options":["The task produced information useful for its purpose.","The result proves every future case.","No observation was made.","The place must close forever."],"answer":0,"explanation":"The purpose and recorded result are connected, but the evidence does not prove every possible case."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], '1800e2e3cb9bb3efef955302c67353961b74ff61431a3fc1eeef876c23ef5f69', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-038', 'english', 5, 1, 'choice', '{"stem":"Project card: “Who: Sophie; where: school kitchen; result: the soup group left the least food.” Which note keeps all three fields?","options":["another pupil — airport — no result","Sophie — school kitchen — the soup group left the least food","Sophie — wrong place — no record","nobody — nowhere — nothing"],"answer":1,"explanation":"The correct note preserves the person, place and result."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], '14a9e7d9b88ffb49bc0d8032122f1614e72d269f447eae3816a74827f4a2bea5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-039', 'english', 5, 1, 'choice', '{"stem":"Sophie reports, “the soup group left the least food.” Which sentence best introduces this evidence?","options":["I have no evidence, but I am always right.","Please forget every result.","According to our record, the soup group left the least food.","This number is a colour."],"answer":2,"explanation":"“According to our record” clearly introduces evidence from collected information."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], 'c80e934470926cf2973ccc8cf497874ecf50c61c880dd4687230d20003ee7e05', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-040', 'english', 5, 1, 'choice', '{"stem":"Sophie must create a food-saving notice. Which first step is most useful?","options":["Remove the purpose and all evidence","Copy an unrelated story","Choose a design before reading the information","Select key facts from the activity record, including that the soup group left the least food"],"answer":3,"explanation":"A real task should begin by selecting information that supports its purpose."}'::jsonb, 'builtin', '真实任务', 'understand', array['全国通用', 'project English']::text[], '5628d2a2654b886b925e94aa8eb6eb6813893f7fc42c81a2493c5dcb9670412b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-041', 'english', 5, 1, 'choice', '{"stem":"Read: “During Saturday’s visit, Ethan sketched an old wooden window at the local museum to explain a traditional building style. His group noticed repeated flower shapes. Ethan will add notes about its patterns tonight.” What is the paragraph mainly about?","options":["Ethan''s study task and what the record showed","a fictional trip with no plan","a meal with no information","a list of unrelated colours"],"answer":0,"explanation":"The paragraph connects a task, its purpose, a result and a next step."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '60345fb755a0fbdc27a45ae31d54d9a90b320af2f5b6e01d2a575c85c46d60c1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-042', 'english', 5, 1, 'choice', '{"stem":"The note says, “During Saturday’s visit, Ethan sketched an old wooden window.” Which phrase shows a completed past action?","options":["will add notes about its patterns tonight","sketched an old wooden window","to explain a traditional building style","give a two-minute exhibit talk"],"answer":1,"explanation":"The past-time phrase and “sketched an old wooden window” show a completed action."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], '0799bd90114cf3ae40e8557e29326c97b3c3bee3f5208aac2635497c0958ac14', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-043', 'english', 5, 1, 'choice', '{"stem":"Ethan needs help with the task “give a two-minute exhibit talk”. Which request is clear and polite?","options":["Do it now because I say so!","What colour is yesterday?","Could you please help me give a two-minute exhibit talk?","I will not explain the task."],"answer":2,"explanation":"“Could you please...?” makes a polite request and names the needed task."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], 'd97877bde7a5dcb38c3787df031b86dc9fc4fae6fa8435320264202c175bd231', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-044', 'english', 5, 1, 'choice', '{"stem":"Read: “Ethan checked the window sketch and then wrote about it in the project folder.” What does “it” refer to?","options":["Ethan","local museum","to explain a traditional building style","the window sketch"],"answer":3,"explanation":"The pronoun refers back to the singular noun phrase “the window sketch”."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], '31bedaa9df09424f69d7eae60a8dac4ef8b8ecd945cbfe03277a613459554a35', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-045', 'english', 5, 1, 'choice', '{"stem":"Fact 1: Ethan worked to explain a traditional building style. Fact 2: his group noticed repeated flower shapes. What can we reasonably infer?","options":["The task produced information useful for its purpose.","The result proves every future case.","No observation was made.","The place must close forever."],"answer":0,"explanation":"The purpose and recorded result are connected, but the evidence does not prove every possible case."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], 'e7955835466a882134836611f958aa2d5270558a0e8538b5cac6b60426ccabef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-046', 'english', 5, 1, 'choice', '{"stem":"Project card: “Who: Ethan; where: local museum; result: his group noticed repeated flower shapes.” Which note keeps all three fields?","options":["another pupil — airport — no result","Ethan — local museum — his group noticed repeated flower shapes","Ethan — wrong place — no record","nobody — nowhere — nothing"],"answer":1,"explanation":"The correct note preserves the person, place and result."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], '581ca04109f42fdfda9a37dbb6376ed5b9a65ffe858efbf2f761adad7ace855e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-047', 'english', 5, 1, 'choice', '{"stem":"Ethan reports, “his group noticed repeated flower shapes.” Which sentence best introduces this evidence?","options":["I have no evidence, but I am always right.","Please forget every result.","According to our record, his group noticed repeated flower shapes.","This number is a colour."],"answer":2,"explanation":"“According to our record” clearly introduces evidence from collected information."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], '040fc680e744e1af722677a7d15ca22be0793c73dae6cd57a8539724d1b70fc3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-048', 'english', 5, 1, 'choice', '{"stem":"Ethan must give a two-minute exhibit talk. Which first step is most useful?","options":["Remove the purpose and all evidence","Copy an unrelated story","Choose a design before reading the information","Select key facts from the activity record, including that his group noticed repeated flower shapes"],"answer":3,"explanation":"A real task should begin by selecting information that supports its purpose."}'::jsonb, 'builtin', '真实任务', 'understand', array['全国通用', 'project English']::text[], 'dfaf0bd5baa10a112ff866a99b760e01d5bce46267f7c81c6ed8ae744b9084c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-049', 'english', 5, 1, 'choice', '{"stem":"Read: “Early Sunday morning, Ava counted birds from a quiet path at the wetland centre to avoid disturbing the animals. More birds appeared after the group became quiet. Ava will check another observation record later.” What is the paragraph mainly about?","options":["Ava''s study task and what the record showed","a fictional trip with no plan","a meal with no information","a list of unrelated colours"],"answer":0,"explanation":"The paragraph connects a task, its purpose, a result and a next step."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], 'd19db33c50081aa3273690e5f675b6be130b9d26852f9fc0ceea0aca129c57c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-050', 'english', 5, 1, 'choice', '{"stem":"The note says, “Early Sunday morning, Ava counted birds from a quiet path.” Which phrase shows a completed past action?","options":["will check another observation record later","counted birds from a quiet path","to avoid disturbing the animals","organise an observation table"],"answer":1,"explanation":"The past-time phrase and “counted birds from a quiet path” show a completed action."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], '9cd202d268ef93d11fd8094360f7920cd50c93dd4de34b6aa9a173c5f5c4bab2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-051', 'english', 5, 1, 'choice', '{"stem":"Ava needs help with the task “organise an observation table”. Which request is clear and polite?","options":["Do it now because I say so!","What colour is yesterday?","Could you please help me organise an observation table?","I will not explain the task."],"answer":2,"explanation":"“Could you please...?” makes a polite request and names the needed task."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], 'eeac85d46362211dc82b873cf55cf283c13da05770dddfc2e7f8be7f3fbcba2f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-052', 'english', 5, 1, 'choice', '{"stem":"Read: “Ava checked the bird list and then wrote about it in the project folder.” What does “it” refer to?","options":["Ava","wetland centre","to avoid disturbing the animals","the bird list"],"answer":3,"explanation":"The pronoun refers back to the singular noun phrase “the bird list”."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], '1bb4cc2bbf38cc0c4a038ca857a9e32646fdbaabaef65ea815aaf27f88cc43f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-053', 'english', 5, 2, 'choice', '{"stem":"The log records “more birds appeared after the group became quiet”. Ava will check another observation record later. Which inference is best supported?","options":["The next step will use or check information from the earlier result.","The result can never change with more evidence.","The project has no purpose.","The next step happened many years ago."],"answer":0,"explanation":"The future step logically follows the collected result, while certainty beyond the evidence is not justified."}'::jsonb, 'builtin', '简单推断', 'apply', array['全国通用', 'evidence-based reading']::text[], 'b16c3cd3f0be2e3174b0af0a33a9ef105fa8417a5e5e977b30a709ee8709657e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-054', 'english', 5, 2, 'choice', '{"stem":"Two notes must be merged. A: “Ava; counted birds from a quiet path; early Sunday morning.” B: “Result: more birds appeared after the group became quiet; next: will check another observation record later.” Which summary loses no key field?","options":["Only the pupil’s name is known.","Ava completed the activity early Sunday morning, recorded that more birds appeared after the group became quiet, and will check another observation record later","The activity had no time, result or next step.","A different person did an opposite task."],"answer":1,"explanation":"The correct summary preserves actor, completed action, time, result and next step."}'::jsonb, 'builtin', '信息整理', 'apply', array['全国通用', 'evidence-based reading']::text[], 'c181b880565ae9f23163d5bb77239a1b1b84915885d1e38d032ab297488d7172', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-055', 'english', 5, 2, 'choice', '{"stem":"Ava''s record says “more birds appeared after the group became quiet” and the project task is to organise an observation table. Which sentence clearly separates evidence from a suggestion?","options":["The suggestion is a fact because I like it.","There is no difference between data and opinion.","Our record shows that more birds appeared after the group became quiet; therefore, we suggest using it to organise an observation table.","Delete the result before making a suggestion."],"answer":2,"explanation":"“Our record shows” introduces evidence; “therefore, we suggest” introduces a recommendation."}'::jsonb, 'builtin', '功能表达', 'apply', array['全国通用', 'evidence-based reading']::text[], '9ac1eb0c7f80454de033a9c4599f167d00af8435086d88f466596de04a475926', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-056', 'english', 5, 2, 'choice', '{"stem":"For the task “organise an observation table”, which plan follows a useful order?","options":["decorate first → remove evidence → ignore the audience → stop","copy everything → mix the order → hide the purpose → guess","choose an answer → avoid reading → change the task → delete","identify the audience → select evidence → organise it → check whether the task is clear"],"answer":3,"explanation":"A real communication task begins with audience and evidence, then organises and checks the result."}'::jsonb, 'builtin', '真实任务', 'apply', array['全国通用', 'evidence-based reading']::text[], 'f7142a1093dfee520981dbf2a54d008fcfec30e1321720d7a7d995c8e833d4f8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-057', 'english', 5, 2, 'choice', '{"stem":"Read the project log: “Before school today, Daniel recorded the class rhythm practice at the music room to help the group practise accurately. The third part needed a slower beat. Daniel will mark the difficult bars this evening.” Which title includes both the investigation and its value?","options":["Daniel''s evidence for the task “send useful practice feedback”","A day with no action or result","A guide to an unrelated airport","Why records should always be deleted"],"answer":0,"explanation":"A strong title represents both what was done and how the result will be used."}'::jsonb, 'builtin', '段落阅读', 'apply', array['全国通用', 'evidence-based reading']::text[], '8e9c8d6376129af631852849b3689718b9126fa0d411b7378286b85476c526b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-058', 'english', 5, 2, 'choice', '{"stem":"Log: “Daniel recorded the class rhythm practice before school today. Daniel will mark the difficult bars this evening.” Which description of time is correct?","options":["Both actions happen every minute.","The first action is completed; the second is planned.","Both actions finished before the past record.","The second sentence has no future meaning."],"answer":1,"explanation":"The past form reports completed work; “will” reports a future plan."}'::jsonb, 'builtin', '常见时态', 'apply', array['全国通用', 'evidence-based reading']::text[], '7d132ab36046dcc6a7457498e109f76d214267797c2c74e82d5961404ba95c3e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-059', 'english', 5, 2, 'choice', '{"stem":"Daniel presents “the third part needed a slower beat”, but a classmate does not understand how it supports the task. Which reply is most helpful?","options":["You must agree without a reason.","The result has nothing to do with our work.","Let me explain how this result helps us send useful practice feedback.","I will hide the record."],"answer":2,"explanation":"The reply offers a clear explanation linking evidence to the shared task."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'evidence-based reading']::text[], '5619dcb5957d6683d0b32ac95b4ff9573d40f69398659777ea00f13b599a95cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-060', 'english', 5, 2, 'choice', '{"stem":"Read: “Daniel described the sound file in the report because it was important to the project.” Which noun does “it” replace, and why?","options":["Daniel, because a person is a folder","music room, because every place is paper","to help the group practise accurately, because a purpose is an object","the sound file, because it is the item described as important"],"answer":3,"explanation":"Grammar and meaning both point to the singular item immediately discussed."}'::jsonb, 'builtin', '指代理解', 'apply', array['全国通用', 'evidence-based reading']::text[], 'fdea4bef656f1805867f07982e69a093819819b222e9dc26a721d3863ffdaa10', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-061', 'english', 5, 2, 'choice', '{"stem":"The log records “the third part needed a slower beat”. Daniel will mark the difficult bars this evening. Which inference is best supported?","options":["The next step will use or check information from the earlier result.","The result can never change with more evidence.","The project has no purpose.","The next step happened many years ago."],"answer":0,"explanation":"The future step logically follows the collected result, while certainty beyond the evidence is not justified."}'::jsonb, 'builtin', '简单推断', 'apply', array['全国通用', 'evidence-based reading']::text[], 'b368289e1225972ca463dc82db47e608fe7056adfe7cfdb9412b27d3d6d3f8f8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-062', 'english', 5, 2, 'choice', '{"stem":"Two notes must be merged. A: “Daniel; recorded the class rhythm practice; before school today.” B: “Result: the third part needed a slower beat; next: will mark the difficult bars this evening.” Which summary loses no key field?","options":["Only the pupil’s name is known.","Daniel completed the activity before school today, recorded that the third part needed a slower beat, and will mark the difficult bars this evening","The activity had no time, result or next step.","A different person did an opposite task."],"answer":1,"explanation":"The correct summary preserves actor, completed action, time, result and next step."}'::jsonb, 'builtin', '信息整理', 'apply', array['全国通用', 'evidence-based reading']::text[], '5d22430e03d2474da2b9c4355df34bf911e6547d0e89e9995e9a60f8f9110bc2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-063', 'english', 5, 2, 'choice', '{"stem":"Daniel''s record says “the third part needed a slower beat” and the project task is to send useful practice feedback. Which sentence clearly separates evidence from a suggestion?","options":["The suggestion is a fact because I like it.","There is no difference between data and opinion.","Our record shows that the third part needed a slower beat; therefore, we suggest using it to send useful practice feedback.","Delete the result before making a suggestion."],"answer":2,"explanation":"“Our record shows” introduces evidence; “therefore, we suggest” introduces a recommendation."}'::jsonb, 'builtin', '功能表达', 'apply', array['全国通用', 'evidence-based reading']::text[], 'c7a1709e280f7ce6ec585f7f9b7f74317369b3e97791f7c2e0c628333f73652a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-064', 'english', 5, 2, 'choice', '{"stem":"For the task “send useful practice feedback”, which plan follows a useful order?","options":["decorate first → remove evidence → ignore the audience → stop","copy everything → mix the order → hide the purpose → guess","choose an answer → avoid reading → change the task → delete","identify the audience → select evidence → organise it → check whether the task is clear"],"answer":3,"explanation":"A real communication task begins with audience and evidence, then organises and checks the result."}'::jsonb, 'builtin', '真实任务', 'apply', array['全国通用', 'evidence-based reading']::text[], '387ac152bdd16ff9139bec16e9567fa7da7fc5829d6a0d0c43c36f1268a9fa8d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-065', 'english', 5, 2, 'choice', '{"stem":"Read the project log: “On Wednesday evening, Chloe checked two weekend routes at the bus station to plan a museum trip. Route 6 required one fewer change. Chloe will confirm the first-bus time tomorrow.” Which title includes both the investigation and its value?","options":["Chloe''s evidence for the task “choose a route for the group”","A day with no action or result","A guide to an unrelated airport","Why records should always be deleted"],"answer":0,"explanation":"A strong title represents both what was done and how the result will be used."}'::jsonb, 'builtin', '段落阅读', 'apply', array['全国通用', 'evidence-based reading']::text[], 'bdd6c27e71bfa840c116339ed4a5a214b724141080dca5d695171cf02f84ea36', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-066', 'english', 5, 2, 'choice', '{"stem":"Log: “Chloe checked two weekend routes on Wednesday evening. Chloe will confirm the first-bus time tomorrow.” Which description of time is correct?","options":["Both actions happen every minute.","The first action is completed; the second is planned.","Both actions finished before the past record.","The second sentence has no future meaning."],"answer":1,"explanation":"The past form reports completed work; “will” reports a future plan."}'::jsonb, 'builtin', '常见时态', 'apply', array['全国通用', 'evidence-based reading']::text[], 'a52c54fac36c65c7b8120c39965db3eed9f133e0e819d5a469d5698ac155f999', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-067', 'english', 5, 2, 'choice', '{"stem":"Chloe presents “Route 6 required one fewer change”, but a classmate does not understand how it supports the task. Which reply is most helpful?","options":["You must agree without a reason.","The result has nothing to do with our work.","Let me explain how this result helps us choose a route for the group.","I will hide the record."],"answer":2,"explanation":"The reply offers a clear explanation linking evidence to the shared task."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'evidence-based reading']::text[], '2bf9662ccabe0e77bbdf0e3abe06032658609aa59adbab27d168e51eb2931181', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-068', 'english', 5, 2, 'choice', '{"stem":"Read: “Chloe described the route card in the report because it was important to the project.” Which noun does “it” replace, and why?","options":["Chloe, because a person is a folder","bus station, because every place is paper","to plan a museum trip, because a purpose is an object","the route card, because it is the item described as important"],"answer":3,"explanation":"Grammar and meaning both point to the singular item immediately discussed."}'::jsonb, 'builtin', '指代理解', 'apply', array['全国通用', 'evidence-based reading']::text[], 'ed6277cb1bfb4a474981745c8ef272fc9f5105311046437a842c2aa77018bd06', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-069', 'english', 5, 2, 'choice', '{"stem":"The log records “Route 6 required one fewer change”. Chloe will confirm the first-bus time tomorrow. Which inference is best supported?","options":["The next step will use or check information from the earlier result.","The result can never change with more evidence.","The project has no purpose.","The next step happened many years ago."],"answer":0,"explanation":"The future step logically follows the collected result, while certainty beyond the evidence is not justified."}'::jsonb, 'builtin', '简单推断', 'apply', array['全国通用', 'evidence-based reading']::text[], '7e9bce837ec7360079a67478c13e360f7063aa511927076cc9f46a0426e01c91', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-070', 'english', 5, 2, 'choice', '{"stem":"Two notes must be merged. A: “Chloe; checked two weekend routes; on Wednesday evening.” B: “Result: Route 6 required one fewer change; next: will confirm the first-bus time tomorrow.” Which summary loses no key field?","options":["Only the pupil’s name is known.","Chloe completed the activity on Wednesday evening, recorded that Route 6 required one fewer change, and will confirm the first-bus time tomorrow","The activity had no time, result or next step.","A different person did an opposite task."],"answer":1,"explanation":"The correct summary preserves actor, completed action, time, result and next step."}'::jsonb, 'builtin', '信息整理', 'apply', array['全国通用', 'evidence-based reading']::text[], '0b1e3fdb01fc1642a435bfb6c6b265ec77227cacd0877883289257576fd102f1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-071', 'english', 5, 2, 'choice', '{"stem":"Chloe''s record says “Route 6 required one fewer change” and the project task is to choose a route for the group. Which sentence clearly separates evidence from a suggestion?","options":["The suggestion is a fact because I like it.","There is no difference between data and opinion.","Our record shows that Route 6 required one fewer change; therefore, we suggest using it to choose a route for the group.","Delete the result before making a suggestion."],"answer":2,"explanation":"“Our record shows” introduces evidence; “therefore, we suggest” introduces a recommendation."}'::jsonb, 'builtin', '功能表达', 'apply', array['全国通用', 'evidence-based reading']::text[], '125fa349af8f13114bd48d2e5cc577df6dbda6105608e76eb23f74e745677c50', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-072', 'english', 5, 2, 'choice', '{"stem":"For the task “choose a route for the group”, which plan follows a useful order?","options":["decorate first → remove evidence → ignore the audience → stop","copy everything → mix the order → hide the purpose → guess","choose an answer → avoid reading → change the task → delete","identify the audience → select evidence → organise it → check whether the task is clear"],"answer":3,"explanation":"A real communication task begins with audience and evidence, then organises and checks the result."}'::jsonb, 'builtin', '真实任务', 'apply', array['全国通用', 'evidence-based reading']::text[], 'c5ff78c31758106bcff84a26cc8341c0ff824066be9c2373146e397a901ae0ab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-073', 'english', 5, 2, 'choice', '{"stem":"Read the project log: “Last Thursday, Jack interviewed a volunteer at the recycling centre to explain correct waste sorting. Many mistakes involved dirty containers. Jack will turn the notes into a poster next week.” Which title includes both the investigation and its value?","options":["Jack''s evidence for the task “make a sorting guide”","A day with no action or result","A guide to an unrelated airport","Why records should always be deleted"],"answer":0,"explanation":"A strong title represents both what was done and how the result will be used."}'::jsonb, 'builtin', '段落阅读', 'apply', array['全国通用', 'evidence-based reading']::text[], 'a38862580a5c4fc665eefc27447e63763539cf137eb7177e49fcabaa750ec0fb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-074', 'english', 5, 2, 'choice', '{"stem":"Log: “Jack interviewed a volunteer last Thursday. Jack will turn the notes into a poster next week.” Which description of time is correct?","options":["Both actions happen every minute.","The first action is completed; the second is planned.","Both actions finished before the past record.","The second sentence has no future meaning."],"answer":1,"explanation":"The past form reports completed work; “will” reports a future plan."}'::jsonb, 'builtin', '常见时态', 'apply', array['全国通用', 'evidence-based reading']::text[], '58e3410ce68b1e66e1f46385bdaf09940fce64e3f724725af25c8f8bc3f2f367', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-075', 'english', 5, 2, 'choice', '{"stem":"Jack presents “many mistakes involved dirty containers”, but a classmate does not understand how it supports the task. Which reply is most helpful?","options":["You must agree without a reason.","The result has nothing to do with our work.","Let me explain how this result helps us make a sorting guide.","I will hide the record."],"answer":2,"explanation":"The reply offers a clear explanation linking evidence to the shared task."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'evidence-based reading']::text[], '8e9591dd336983a0e6da2841dfcba709bc67f6241a820c563f676d48213baef0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-076', 'english', 5, 2, 'choice', '{"stem":"Read: “Jack described the interview note in the report because it was important to the project.” Which noun does “it” replace, and why?","options":["Jack, because a person is a folder","recycling centre, because every place is paper","to explain correct waste sorting, because a purpose is an object","the interview note, because it is the item described as important"],"answer":3,"explanation":"Grammar and meaning both point to the singular item immediately discussed."}'::jsonb, 'builtin', '指代理解', 'apply', array['全国通用', 'evidence-based reading']::text[], '4fa5035290133dcb122ffef96f4d453cea2e192c0b9ec52e2ad4d3c980f42d50', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-077', 'english', 5, 2, 'choice', '{"stem":"The log records “many mistakes involved dirty containers”. Jack will turn the notes into a poster next week. Which inference is best supported?","options":["The next step will use or check information from the earlier result.","The result can never change with more evidence.","The project has no purpose.","The next step happened many years ago."],"answer":0,"explanation":"The future step logically follows the collected result, while certainty beyond the evidence is not justified."}'::jsonb, 'builtin', '简单推断', 'apply', array['全国通用', 'evidence-based reading']::text[], '117696d9506bcc886641b8db1eb6d6486440fc56d448aee160a20396c0e480e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-078', 'english', 5, 2, 'choice', '{"stem":"Two notes must be merged. A: “Jack; interviewed a volunteer; last Thursday.” B: “Result: many mistakes involved dirty containers; next: will turn the notes into a poster next week.” Which summary loses no key field?","options":["Only the pupil’s name is known.","Jack completed the activity last Thursday, recorded that many mistakes involved dirty containers, and will turn the notes into a poster next week","The activity had no time, result or next step.","A different person did an opposite task."],"answer":1,"explanation":"The correct summary preserves actor, completed action, time, result and next step."}'::jsonb, 'builtin', '信息整理', 'apply', array['全国通用', 'evidence-based reading']::text[], '95aeef14dcecc70a30252d8ebf20f6f0cfa5fbf534320a6bb7251a8c22921a40', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-079', 'english', 5, 2, 'choice', '{"stem":"Jack''s record says “many mistakes involved dirty containers” and the project task is to make a sorting guide. Which sentence clearly separates evidence from a suggestion?","options":["The suggestion is a fact because I like it.","There is no difference between data and opinion.","Our record shows that many mistakes involved dirty containers; therefore, we suggest using it to make a sorting guide.","Delete the result before making a suggestion."],"answer":2,"explanation":"“Our record shows” introduces evidence; “therefore, we suggest” introduces a recommendation."}'::jsonb, 'builtin', '功能表达', 'apply', array['全国通用', 'evidence-based reading']::text[], '94c6550a04475bef19da8cd901d28c61803da26375906071f97accad03964cb2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-080', 'english', 5, 2, 'choice', '{"stem":"For the task “make a sorting guide”, which plan follows a useful order?","options":["decorate first → remove evidence → ignore the audience → stop","copy everything → mix the order → hide the purpose → guess","choose an answer → avoid reading → change the task → delete","identify the audience → select evidence → organise it → check whether the task is clear"],"answer":3,"explanation":"A real communication task begins with audience and evidence, then organises and checks the result."}'::jsonb, 'builtin', '真实任务', 'apply', array['全国通用', 'evidence-based reading']::text[], '49f5f461f84c040c17307b4978c73348ab6a499a306898490d6bdd49aa81dfab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-081', 'english', 5, 2, 'choice', '{"stem":"Read the project log: “At eight this morning, Lily read the rain gauge at the weather station to report changes in local rainfall. Wednesday had the highest reading. Lily will compare the weekly totals on Sunday.” Which title includes both the investigation and its value?","options":["Lily''s evidence for the task “present a weekly weather summary”","A day with no action or result","A guide to an unrelated airport","Why records should always be deleted"],"answer":0,"explanation":"A strong title represents both what was done and how the result will be used."}'::jsonb, 'builtin', '段落阅读', 'apply', array['全国通用', 'evidence-based reading']::text[], 'aafd381dbd08fc4c8f01b9f3b355875fd10d5fbee5d70ac9073c76e57d1e0c64', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-082', 'english', 5, 2, 'choice', '{"stem":"Log: “Lily read the rain gauge at eight this morning. Lily will compare the weekly totals on Sunday.” Which description of time is correct?","options":["Both actions happen every minute.","The first action is completed; the second is planned.","Both actions finished before the past record.","The second sentence has no future meaning."],"answer":1,"explanation":"The past form reports completed work; “will” reports a future plan."}'::jsonb, 'builtin', '常见时态', 'apply', array['全国通用', 'evidence-based reading']::text[], 'aa4744bd358fe64f37a47a541597729d78b85df939f657ab1ffd0e53a18c55b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-083', 'english', 5, 2, 'choice', '{"stem":"Lily presents “Wednesday had the highest reading”, but a classmate does not understand how it supports the task. Which reply is most helpful?","options":["You must agree without a reason.","The result has nothing to do with our work.","Let me explain how this result helps us present a weekly weather summary.","I will hide the record."],"answer":2,"explanation":"The reply offers a clear explanation linking evidence to the shared task."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'evidence-based reading']::text[], '2d08958413635e9b7a654dcfde275b29f8d70022f1886ea2b0886d5bfe78456b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-084', 'english', 5, 2, 'choice', '{"stem":"Read: “Lily described the rainfall table in the report because it was important to the project.” Which noun does “it” replace, and why?","options":["Lily, because a person is a folder","weather station, because every place is paper","to report changes in local rainfall, because a purpose is an object","the rainfall table, because it is the item described as important"],"answer":3,"explanation":"Grammar and meaning both point to the singular item immediately discussed."}'::jsonb, 'builtin', '指代理解', 'apply', array['全国通用', 'evidence-based reading']::text[], '85918e830b4cd1a6ea13c229cdd2da85e29695b529298d9a599f882aed20a275', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-085', 'english', 5, 2, 'choice', '{"stem":"The log records “Wednesday had the highest reading”. Lily will compare the weekly totals on Sunday. Which inference is best supported?","options":["The next step will use or check information from the earlier result.","The result can never change with more evidence.","The project has no purpose.","The next step happened many years ago."],"answer":0,"explanation":"The future step logically follows the collected result, while certainty beyond the evidence is not justified."}'::jsonb, 'builtin', '简单推断', 'apply', array['全国通用', 'evidence-based reading']::text[], '9004c05024717cf99bd5d4c60c1aa4fe921722282f67ae6cf8ca2eb6082bd1f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-086', 'english', 5, 2, 'choice', '{"stem":"Two notes must be merged. A: “Lily; read the rain gauge; at eight this morning.” B: “Result: Wednesday had the highest reading; next: will compare the weekly totals on Sunday.” Which summary loses no key field?","options":["Only the pupil’s name is known.","Lily completed the activity at eight this morning, recorded that Wednesday had the highest reading, and will compare the weekly totals on Sunday","The activity had no time, result or next step.","A different person did an opposite task."],"answer":1,"explanation":"The correct summary preserves actor, completed action, time, result and next step."}'::jsonb, 'builtin', '信息整理', 'apply', array['全国通用', 'evidence-based reading']::text[], '693907f0f8fd395a0e3ba4f554d440f25603cee787c1eeca64310d05785309d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-087', 'english', 5, 2, 'choice', '{"stem":"Lily''s record says “Wednesday had the highest reading” and the project task is to present a weekly weather summary. Which sentence clearly separates evidence from a suggestion?","options":["The suggestion is a fact because I like it.","There is no difference between data and opinion.","Our record shows that Wednesday had the highest reading; therefore, we suggest using it to present a weekly weather summary.","Delete the result before making a suggestion."],"answer":2,"explanation":"“Our record shows” introduces evidence; “therefore, we suggest” introduces a recommendation."}'::jsonb, 'builtin', '功能表达', 'apply', array['全国通用', 'evidence-based reading']::text[], 'b0028151622450cdea1239328012cf82fe6e0aae608e29bd2571144215a0978a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-088', 'english', 5, 2, 'choice', '{"stem":"For the task “present a weekly weather summary”, which plan follows a useful order?","options":["decorate first → remove evidence → ignore the audience → stop","copy everything → mix the order → hide the purpose → guess","choose an answer → avoid reading → change the task → delete","identify the audience → select evidence → organise it → check whether the task is clear"],"answer":3,"explanation":"A real communication task begins with audience and evidence, then organises and checks the result."}'::jsonb, 'builtin', '真实任务', 'apply', array['全国通用', 'evidence-based reading']::text[], '9c65025115d014ee4b2f6630851df8edb0e32fb7ece63005947b014730ff56e8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-089', 'english', 5, 2, 'choice', '{"stem":"Read the project log: “After class yesterday, Owen tested the microphone positions at the school hall to make every speaker easy to hear. The centre position produced the clearest sound. Owen will place floor marks before the show.” Which title includes both the investigation and its value?","options":["Owen''s evidence for the task “write instructions for speakers”","A day with no action or result","A guide to an unrelated airport","Why records should always be deleted"],"answer":0,"explanation":"A strong title represents both what was done and how the result will be used."}'::jsonb, 'builtin', '段落阅读', 'apply', array['全国通用', 'evidence-based reading']::text[], '6498c69c172749199a770f87267efee391f8ae28d2a2ee93e26605b8000d67cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-090', 'english', 5, 3, 'choice', '{"stem":"Which rewrite keeps the time order in this log: “Owen tested the microphone positions after class yesterday and will place floor marks before the show”?","options":["The future step caused an action that never happened.","After completing the recorded work, Owen plans the stated next step.","Both actions are permanent facts with no time.","The past action will begin after the future step is finished yesterday."],"answer":1,"explanation":"The completed action comes first and the future plan follows it."}'::jsonb, 'builtin', '常见时态', 'reason', array['全国通用', 'evidence-based reading']::text[], 'cbc0bed0b68f2a4226566e3bab4ca82e5e43153952b8d0ffa203f71c81510035', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-091', 'english', 5, 3, 'choice', '{"stem":"While Owen is working on the task “write instructions for speakers”, a listener hears “the centre position produced the clearest sound” and says, “One result may not be enough.” Which reply is polite and evidence-aware?","options":["Be quiet; one result proves everything.","Evidence is not needed in a project.","That is a fair point. We can check more records before making a stronger claim.","I will change the numbers to win."],"answer":2,"explanation":"The reply respects the concern and proposes gathering more evidence."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', 'evidence-based reading']::text[], 'f1c6034eda2de0f220c1c42be795e7ad3fa476b3c6be84ec50650f3d626504c8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-092', 'english', 5, 3, 'choice', '{"stem":"In “Owen described the centre position after checking the report because it was needed to write instructions for speakers,” what evidence resolves the pronoun?","options":["the person’s name alone","the place is always the nearest word","all nouns must have the same meaning","singular grammar and the meaning that the centre position can support the task"],"answer":3,"explanation":"Reliable reference uses both grammatical agreement and sentence meaning."}'::jsonb, 'builtin', '指代理解', 'reason', array['全国通用', 'evidence-based reading']::text[], '4fd9c59faa388431be79f80cf085e42875a59060ae04f173638d253f62e7bb04', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-093', 'english', 5, 3, 'choice', '{"stem":"Evidence: “the centre position produced the clearest sound.” Purpose: “to make every speaker easy to hear.” Which conclusion is careful enough for the evidence?","options":["The result supports a useful possibility, but more records may strengthen the conclusion.","The result proves the same outcome everywhere forever.","The evidence should be ignored because it is not perfect.","The purpose automatically makes every claim true."],"answer":0,"explanation":"A careful inference uses the evidence without claiming more certainty than it provides."}'::jsonb, 'builtin', '简单推断', 'reason', array['全国通用', 'evidence-based reading']::text[], 'f0b0b05bb809c4b480a28a906d7c5eabc8dfa71ab1133f4452a976355f200b63', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-094', 'english', 5, 3, 'choice', '{"stem":"To build the task “write instructions for speakers”, which field order makes the evidence easiest to check?","options":["answer → hidden method → no result → decoration","question or purpose → method and time → result → next action","name only → unrelated joke → repeated title → blank","future action → changed numbers → unknown source → guess"],"answer":1,"explanation":"This order shows why information was collected, how it was collected, what it showed and what follows."}'::jsonb, 'builtin', '信息整理', 'reason', array['全国通用', 'evidence-based reading']::text[], '2f326f92ec1269fbe9c19ddaf61705285c7ed0d3a98d892b7a24024ad9b0beaf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-095', 'english', 5, 3, 'choice', '{"stem":"Which wording reports “the centre position produced the clearest sound” without presenting it as an unlimited fact?","options":["This proves that the centre position produced the clearest sound in every place and time.","Everyone knows it, so no source is needed.","In this record, the centre position produced the clearest sound.","The opposite result is true because we prefer it."],"answer":2,"explanation":"“In this record” correctly limits the claim to the available evidence."}'::jsonb, 'builtin', '功能表达', 'reason', array['全国通用', 'evidence-based reading']::text[], '9725d2d8ba5bf665461e1a001d8b8ceb0156c513bb481d8564ee4fa53f45bf8d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-096', 'english', 5, 3, 'choice', '{"stem":"Before Owen finishes “write instructions for speakers”, which check best tests whether the product is trustworthy and usable?","options":["Is every fact hidden behind decoration?","Does it avoid naming any source or purpose?","Is it long even when the order is unclear?","Can the audience trace each main claim to the record and follow the intended action?"],"answer":3,"explanation":"A trustworthy product makes claims traceable and gives its audience a clear path to use the information."}'::jsonb, 'builtin', '真实任务', 'reason', array['全国通用', 'evidence-based reading']::text[], '9c5676672aeea8a4512871c1a60b2ca503914f79e2108ea37f43e53ea4b0d8c8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-097', 'english', 5, 3, 'choice', '{"stem":"Read: “On a warm afternoon, Ruby surveyed visitors about shade at the neighbourhood park to suggest better resting areas. Families preferred seats near trees. Ruby will group the answers by age tomorrow.” Which outline best represents the paragraph’s reasoning?","options":["completed action → observed result → future use or check","future claim → no action → unrelated ending","place name → colour list → imaginary meal","answer first → remove evidence → change the subject"],"answer":0,"explanation":"The paragraph moves from completed work to evidence and then to a planned next step."}'::jsonb, 'builtin', '段落阅读', 'reason', array['全国通用', 'evidence-based reading']::text[], 'c859ff21af6d35e0ebd8a8c40a29279438edd0ed13cf1c2d2fb50e166316ac0c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-098', 'english', 5, 3, 'choice', '{"stem":"Which rewrite keeps the time order in this log: “Ruby surveyed visitors about shade on a warm afternoon and will group the answers by age tomorrow”?","options":["The future step caused an action that never happened.","After completing the recorded work, Ruby plans the stated next step.","Both actions are permanent facts with no time.","The past action will begin after the future step is finished yesterday."],"answer":1,"explanation":"The completed action comes first and the future plan follows it."}'::jsonb, 'builtin', '常见时态', 'reason', array['全国通用', 'evidence-based reading']::text[], 'd385e5f424687da83020cc6c973bfa2a3848f139ac1189aa07856fd4a3ab88c7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-099', 'english', 5, 3, 'choice', '{"stem":"While Ruby is working on the task “prepare an evidence-based suggestion”, a listener hears “families preferred seats near trees” and says, “One result may not be enough.” Which reply is polite and evidence-aware?","options":["Be quiet; one result proves everything.","Evidence is not needed in a project.","That is a fair point. We can check more records before making a stronger claim.","I will change the numbers to win."],"answer":2,"explanation":"The reply respects the concern and proposes gathering more evidence."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', 'evidence-based reading']::text[], '5f1cc9a6993dce589e57c8bbc8fe01264496afcf3724e9f192b6ab44e2b3d94a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-100', 'english', 5, 3, 'choice', '{"stem":"In “Ruby described the survey form after checking the report because it was needed to prepare an evidence-based suggestion,” what evidence resolves the pronoun?","options":["the person’s name alone","the place is always the nearest word","all nouns must have the same meaning","singular grammar and the meaning that the survey form can support the task"],"answer":3,"explanation":"Reliable reference uses both grammatical agreement and sentence meaning."}'::jsonb, 'builtin', '指代理解', 'reason', array['全国通用', 'evidence-based reading']::text[], 'ec697ccd2f2513a0613252a4d2c1e68642ed2158975e34a1439fcb2bf6de600d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-101', 'english', 5, 3, 'choice', '{"stem":"Evidence: “families preferred seats near trees.” Purpose: “to suggest better resting areas.” Which conclusion is careful enough for the evidence?","options":["The result supports a useful possibility, but more records may strengthen the conclusion.","The result proves the same outcome everywhere forever.","The evidence should be ignored because it is not perfect.","The purpose automatically makes every claim true."],"answer":0,"explanation":"A careful inference uses the evidence without claiming more certainty than it provides."}'::jsonb, 'builtin', '简单推断', 'reason', array['全国通用', 'evidence-based reading']::text[], '9879298208ceb2e0ffa2489f15c563e39f94562cb9e3c5ad4cbafe84822ee348', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-102', 'english', 5, 3, 'choice', '{"stem":"To build the task “prepare an evidence-based suggestion”, which field order makes the evidence easiest to check?","options":["answer → hidden method → no result → decoration","question or purpose → method and time → result → next action","name only → unrelated joke → repeated title → blank","future action → changed numbers → unknown source → guess"],"answer":1,"explanation":"This order shows why information was collected, how it was collected, what it showed and what follows."}'::jsonb, 'builtin', '信息整理', 'reason', array['全国通用', 'evidence-based reading']::text[], 'bc2617cc0c65e554a9a2ba6c4968d109ba307a12ed4b207708d60ed1f9fcaf3a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-103', 'english', 5, 3, 'choice', '{"stem":"Which wording reports “families preferred seats near trees” without presenting it as an unlimited fact?","options":["This proves that families preferred seats near trees in every place and time.","Everyone knows it, so no source is needed.","In this record, families preferred seats near trees.","The opposite result is true because we prefer it."],"answer":2,"explanation":"“In this record” correctly limits the claim to the available evidence."}'::jsonb, 'builtin', '功能表达', 'reason', array['全国通用', 'evidence-based reading']::text[], '9db37f1aa4388a9a9ed2c87fb8730fac946f62e1e0d0477529fb08f5f21168ee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-104', 'english', 5, 3, 'choice', '{"stem":"Before Ruby finishes “prepare an evidence-based suggestion”, which check best tests whether the product is trustworthy and usable?","options":["Is every fact hidden behind decoration?","Does it avoid naming any source or purpose?","Is it long even when the order is unclear?","Can the audience trace each main claim to the record and follow the intended action?"],"answer":3,"explanation":"A trustworthy product makes claims traceable and gives its audience a clear path to use the information."}'::jsonb, 'builtin', '真实任务', 'reason', array['全国通用', 'evidence-based reading']::text[], '0622435e4af18a13d7700aeb15745e92b64348012ef712b962cec8846e05db26', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-105', 'english', 5, 3, 'choice', '{"stem":"Read: “During Friday’s workshop, Henry photographed each stage of printmaking at the art classroom to teach another class the process. Careful alignment made the colours clearer. Henry will arrange the photos in order tonight.” Which outline best represents the paragraph’s reasoning?","options":["completed action → observed result → future use or check","future claim → no action → unrelated ending","place name → colour list → imaginary meal","answer first → remove evidence → change the subject"],"answer":0,"explanation":"The paragraph moves from completed work to evidence and then to a planned next step."}'::jsonb, 'builtin', '段落阅读', 'reason', array['全国通用', 'evidence-based reading']::text[], '5ad1163b3b970ebe6e41ac76f844ccbd5ebeb68efbc57ff1404e8a5f7e345ae1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-106', 'english', 5, 1, 'fill', '{"stem":"A paragraph’s main idea connects its important details, not just one small ___.","answer":"detail","explanation":"The word “detail” completes the sentence accurately."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '355aa57f9ad2410b55942dfcf6de7b822fe0ebd575a8937139a304346b30976e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-107', 'english', 5, 1, 'fill', '{"stem":"Yesterday we ___ the results.（填 record 的过去式）","answer":"recorded","explanation":"The word “recorded” completes the sentence accurately."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], 'd62a2175f62248be666eb3ce99bf1c4e3221344e130a02ee2c38ebbdf49cbb2e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-108', 'english', 5, 1, 'fill', '{"stem":"To disagree politely, say “I understand, ___ I see it differently.”","answer":"but","explanation":"The word “but” completes the sentence accurately."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], '6b2bd3881323246b1993d1fc1e49390b1a72c51c1b9f51ee8c5e44870b0aa87c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-109', 'english', 5, 1, 'fill', '{"stem":"In “The map is useful, so keep it,” “it” refers to the ___.","answer":"map","explanation":"The word “map” completes the sentence accurately."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], '72dd48c74511fe9cb6a14a328cc7bf4e3015ace1165b243167b0b23cace581f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-110', 'english', 5, 1, 'fill', '{"stem":"A careful inference is based on evidence, not a wild ___.","answer":"guess","explanation":"The word “guess” completes the sentence accurately."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], '034110104dbfa42cf4a5c046b49bb575950241f04b46e33ae4cbbfa7bfe76259', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-111', 'english', 5, 1, 'fill', '{"stem":"A table can organise time, method and ___.","answer":"result","explanation":"The word “result” completes the sentence accurately."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], '433aca148ac596fb2f9747d538e8a079596ebe215641b39bc76273d39808f711', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-112', 'english', 5, 1, 'fill', '{"stem":"“According to the survey” introduces collected ___.","answer":"evidence","explanation":"The word “evidence” completes the sentence accurately."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], '20a6c5aa67a9ae38214329196bc64c77434b548ec2abbb9285e3ecafcf5eaaff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-113', 'english', 5, 1, 'fill', '{"stem":"Before writing a notice, think about its audience and ___.","answer":"purpose","explanation":"The word “purpose” completes the sentence accurately."}'::jsonb, 'builtin', '真实任务', 'understand', array['全国通用', 'project English']::text[], '8a58a60fd66d1fb06a8b0e6e20381066d2e48f29edd442ce7fdf6256cb22508c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-114', 'english', 5, 1, 'fill', '{"stem":"Words such as “however” may signal a change or ___.","answer":"contrast","explanation":"The word “contrast” completes the sentence accurately."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '5c62eb5763be3405d505583d02f991b21572ae965327fad97f15b81951b31256', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-115', 'english', 5, 1, 'fill', '{"stem":"Tomorrow we ___ check the second record.","answer":"will","explanation":"The word “will” completes the sentence accurately."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], 'b2377b1b105926322f6c8343ce0b3749fbb904b8be307744c4cf3d52f1e4a9e8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-116', 'english', 5, 1, 'fill', '{"stem":"“Could you explain that again, ___?” completes a polite request.","answer":"please","explanation":"The word “please” completes the sentence accurately."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], 'b894350a3e9d7d7398dfb35ca9a90a206281c742aa424d1be547199a66f1ac63', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-117', 'english', 5, 2, 'fill', '{"stem":"A pronoun must agree in meaning and number with the noun it ___.","answer":"replaces","explanation":"The word “replaces” completes the sentence accurately."}'::jsonb, 'builtin', '指代理解', 'apply', array['全国通用', 'evidence-based reading']::text[], '62eb30f2adb15164dc69077217a96b3bc10fdcba9a04dd27e8964692be5e19f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-118', 'english', 5, 2, 'fill', '{"stem":"One example may support an idea but may not ___ it for every case.","answer":"prove","explanation":"The word “prove” completes the sentence accurately."}'::jsonb, 'builtin', '简单推断', 'apply', array['全国通用', 'evidence-based reading']::text[], '669096ab5bdb19c258f4608436e1474d4d6d82474275e960fa01add5cbec7310', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-119', 'english', 5, 2, 'fill', '{"stem":"A useful summary keeps key facts and removes ___ details.","answer":"unrelated","explanation":"The word “unrelated” completes the sentence accurately."}'::jsonb, 'builtin', '信息整理', 'apply', array['全国通用', 'evidence-based reading']::text[], '1286d38ba4c9b60d2f352b2157317f59604ef7a59d737ba8591b7639ece6fe96', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-120', 'english', 5, 2, 'fill', '{"stem":"Use “therefore” to introduce a result or ___.","answer":"conclusion","explanation":"The word “conclusion” completes the sentence accurately."}'::jsonb, 'builtin', '功能表达', 'apply', array['全国通用', 'evidence-based reading']::text[], '729568f016373fe42184516f9a1b4419b2ff1d08008cdf1346ed5dbb3ff1c9a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-121', 'english', 5, 2, 'fill', '{"stem":"A report should let readers trace a claim back to its ___.","answer":"source","explanation":"The word “source” completes the sentence accurately."}'::jsonb, 'builtin', '真实任务', 'apply', array['全国通用', 'evidence-based reading']::text[], '220554f33aa1bf11bc04bebd89f25fbf0f3434955d8bf63c47201898d57d6217', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-122', 'english', 5, 2, 'fill', '{"stem":"The relationship among sentences forms the paragraph’s ___.","answer":"logic","explanation":"The word “logic” completes the sentence accurately."}'::jsonb, 'builtin', '段落阅读', 'apply', array['全国通用', 'evidence-based reading']::text[], 'f076e5ed4130719c00107c85c5e633c996167b9e8f2908d5d104b98e0edfbbbf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-123', 'english', 5, 2, 'fill', '{"stem":"She has ___ the chart already.（填 finish 的过去分词）","answer":"finished","explanation":"The word “finished” completes the sentence accurately."}'::jsonb, 'builtin', '常见时态', 'apply', array['全国通用', 'evidence-based reading']::text[], '1a57b84835e5983caa947b1402b4bfb3a3acbb9197e4d6465e87b5f1e204fd02', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-124', 'english', 5, 3, 'fill', '{"stem":"When evidence is limited, use careful words such as “may” or “___”.","answer":"might","explanation":"The word “might” completes the sentence accurately."}'::jsonb, 'builtin', '简单推断', 'reason', array['全国通用', 'evidence-based reading']::text[], 'af8ae6923613fe2af34d8c18c5a51c620d6a484d4363a6a5b7ca916312f6855c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-125', 'english', 5, 3, 'fill', '{"stem":"To compare records fairly, keep the same categories and ___.","answer":"units","explanation":"The word “units” completes the sentence accurately."}'::jsonb, 'builtin', '信息整理', 'reason', array['全国通用', 'evidence-based reading']::text[], '8f60215a9a09fbe6a978e7c2019117247f3834e5afc75b5ccde95357d8d468ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-126', 'english', 5, 3, 'fill', '{"stem":"After drafting a guide, test whether another reader can ___ it.","answer":"use","explanation":"The word “use” completes the sentence accurately."}'::jsonb, 'builtin', '真实任务', 'reason', array['全国通用', 'evidence-based reading']::text[], '7649f701a8cdd0bc278081d07608be719942278c251f2cb44d6045e2bf8c6637', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-127', 'english', 5, 1, 'match', '{"stem":"Use the project language chart. Match each paragraph-reading term with its job.","left":["main idea","supporting detail","title","paragraph order"],"right":["short topic label","central message","logic between sentences","specific evidence"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 段落阅读 items."}'::jsonb, 'builtin', '段落阅读', 'understand', array['全国通用', 'project English']::text[], '3adeaa947905ad925825f0531834632e83873eda7b2925d9f6779c1bcc43c610', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-128', 'english', 5, 1, 'match', '{"stem":"Use the project language chart. Match each verb form with its time meaning.","left":["worked","works","is working","will work"],"right":["happening now","completed past","future plan","regular present"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 常见时态 items."}'::jsonb, 'builtin', '常见时态', 'understand', array['全国通用', 'project English']::text[], '0de308228ee6816246004ea03d6742cf37feff32144fc6e84b297205ea9eab2a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-129', 'english', 5, 1, 'match', '{"stem":"Use the project language chart. Match each polite sentence with its purpose.","left":["Could you help?","I see your point.","Could you repeat that?","Thank you."],"right":["ask for clarification","request help","show thanks","acknowledge an idea"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 情境交际 items."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'project English']::text[], 'cab4a282d79addca2382a214a32fd1fff84aa0625955090446d6b1679a8b6e58', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-130', 'english', 5, 1, 'match', '{"stem":"Use the project language chart. Match each pronoun with what it can replace.","left":["he","she","it","they"],"right":["one thing","one male person","several people or things","one female person"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 指代理解 items."}'::jsonb, 'builtin', '指代理解', 'understand', array['全国通用', 'project English']::text[], 'c429226cd1ff5c91fd5a69ceefc1dfa56ab19c97d7153f284f0426da04bff42e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-131', 'english', 5, 1, 'match', '{"stem":"Use the project language chart. Match each reasoning term with its meaning.","left":["fact","clue","inference","overclaim"],"right":["reasoned conclusion","direct information","claim beyond evidence","supporting sign"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 简单推断 items."}'::jsonb, 'builtin', '简单推断', 'understand', array['全国通用', 'project English']::text[], '5dd9d97c38303ac9f3292b40d333902afc7f7441ddc0c541c5a227570999a414', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-132', 'english', 5, 1, 'match', '{"stem":"Use the project language chart. Match each record field with the information it stores.","left":["who","when","method","result"],"right":["how work was done","person","what the record showed","time"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 信息整理 items."}'::jsonb, 'builtin', '信息整理', 'understand', array['全国通用', 'project English']::text[], '5e71ca2ec34f62ee2fe5289c14c0460e4c03089184311dcef7fe0878e9721206', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-133', 'english', 5, 1, 'match', '{"stem":"Use the project language chart. Match each linking expression with its function.","left":["according to","however","therefore","for example"],"right":["show conclusion","introduce source","give an instance","show contrast"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 功能表达 items."}'::jsonb, 'builtin', '功能表达', 'understand', array['全国通用', 'project English']::text[], 'f4b4535dff176462125a0907cbe09749c02463fb47a6ce7ba9a733aed8de3c21', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-134', 'english', 5, 2, 'match', '{"stem":"Use the project language chart. Match each project element with the question it answers.","left":["audience","purpose","evidence","review"],"right":["supporting information","intended reader","final check","reason for creating"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 真实任务 items."}'::jsonb, 'builtin', '真实任务', 'apply', array['全国通用', 'evidence-based reading']::text[], '4f7b9ad722299d2c26743ecee9a3aa8353086e76da72e4bf3ca1db98fa65af3b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-135', 'english', 5, 2, 'match', '{"stem":"Review the communication checklist. Match each paragraph-reading term with its job.","left":["main idea","supporting detail","title","paragraph order"],"right":["short topic label","central message","logic between sentences","specific evidence"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 段落阅读 items."}'::jsonb, 'builtin', '段落阅读', 'apply', array['全国通用', 'evidence-based reading']::text[], '5d96b7cb7b55f6134dd9e1005eaa72a9ff63b92d69dcf3fa5c5219910895cde2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-136', 'english', 5, 2, 'match', '{"stem":"Review the communication checklist. Match each verb form with its time meaning.","left":["worked","works","is working","will work"],"right":["happening now","completed past","future plan","regular present"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 常见时态 items."}'::jsonb, 'builtin', '常见时态', 'apply', array['全国通用', 'evidence-based reading']::text[], 'bd037321c56293305b2c2923cc9faa6a637b60661e11fa7847525bdc8ed9fe80', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-137', 'english', 5, 2, 'match', '{"stem":"Review the communication checklist. Match each polite sentence with its purpose.","left":["Could you help?","I see your point.","Could you repeat that?","Thank you."],"right":["ask for clarification","request help","show thanks","acknowledge an idea"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 情境交际 items."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'evidence-based reading']::text[], '315c07f6b979f91fad5d5c8cb49fbe180a16406bf7538b8a033972e3c2195a23', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-138', 'english', 5, 2, 'match', '{"stem":"Review the communication checklist. Match each pronoun with what it can replace.","left":["he","she","it","they"],"right":["one thing","one male person","several people or things","one female person"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 指代理解 items."}'::jsonb, 'builtin', '指代理解', 'apply', array['全国通用', 'evidence-based reading']::text[], '4d31838d36b7a73fe4cd1e6c30ec64f130abee2726429c671165442e53daf3d6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-139', 'english', 5, 3, 'match', '{"stem":"Review the communication checklist. Match each reasoning term with its meaning.","left":["fact","clue","inference","overclaim"],"right":["reasoned conclusion","direct information","claim beyond evidence","supporting sign"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 简单推断 items."}'::jsonb, 'builtin', '简单推断', 'reason', array['全国通用', 'evidence-based reading']::text[], 'b497b2fca8291138710e5a561233566b6deedef9de36944c14e0a4430abd786d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-english-authored-140', 'english', 5, 3, 'match', '{"stem":"Review the communication checklist. Match each record field with the information it stores.","left":["who","when","method","result"],"right":["how work was done","person","what the record showed","time"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 信息整理 items."}'::jsonb, 'builtin', '信息整理', 'reason', array['全国通用', 'evidence-based reading']::text[], 'eb8d083704655a85404e827cd2abcdc694048d2f7c9cf91d952243893706ecd8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-001', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：9.0+2.6=？","options":["11.6元","20.6元","9.0元","12.6元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是11.6元。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], 'bd5085c1ba327e4ad28f7ac1938cc97f592c3df929b9a1211e641412c22d1e5a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-002', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：同分母分数3/16+4/16=？","options":["1/16","7/16","7/17","1/2"],"answer":1,"explanation":"分母不变，分子相加并约分：3/16+4/16=7/16。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '8f80575f5ce4a98e62b296375f300ea7ab80b0e5fa0e208880ae11f6136bb2a9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-003', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：32是16的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"32=16×2，所以32是16的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], '6076cceabee7f30ae6f45f5e129d05d852b75c4695554dc5954a387a38097fc6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-004', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：解方程x+10=17，x=？","options":["17","10","-3","7"],"answer":3,"explanation":"等式两边同时减10，得到x=7。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], 'f5dc5e4834787dd8ff186f595e37b1fdf685f53a86a4f555f4303bda993d78ac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-005', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：三角形标志底10厘米、高7厘米，面积是多少？","options":["35平方厘米","70平方厘米","17平方厘米","42平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=10×7÷2=35平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], '4020376129757484405df5affc41623efe80fe1bb7c060dec6e8104f5a14a699', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-006', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：长方体盒子长6厘米、宽5厘米、高7厘米，体积是多少？","options":["30立方厘米","210立方厘米","18立方厘米","217立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=210立方厘米。"}'::jsonb, 'builtin', '体积初步', 'understand', array['全国通用', '基础巩固']::text[], '826718cd2ac966f50fd4acce03eacc89843ce0374e1c7f9c9db2deb52018ba8c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-007', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：四天记录为14、17、20、13，平均数是多少？","options":["64","18","16","17"],"answer":2,"explanation":"总数64除以4，平均数是16。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], '9601d4cd8134a54113070a79058a2ccc1ec5a18e90380e34ea34260fdcd8584c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-008', 'math', 5, 1, 'choice', '{"stem":"校园劳动周：每件作品8元，买6件共多少元？","options":["14元","40元","54元","48元"],"answer":3,"explanation":"总价=单价×数量=8×6=48元。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], '12d9266cd957d42518047079cbc70bd6a2a6a03b5c8f4bb966103fb7f925c7d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-009', 'math', 5, 1, 'choice', '{"stem":"社区图书角：9.3+2.6=？","options":["11.9元","21.2元","9.3元","12.9元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是11.9元。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], 'f6097e4a75096f3c3ac71266ef716b3aead3c9d2d95fe14c3b06328ad7305742', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-010', 'math', 5, 1, 'choice', '{"stem":"社区图书角：同分母分数1/8+5/8=？","options":["1/2","3/4","6/9","7/8"],"answer":1,"explanation":"分母不变，分子相加并约分：1/8+5/8=3/4。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], 'd9e1e1ab6882b68961346fbc072bd2c227194622605e563bcc90a18a7e3d9f79', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-011', 'math', 5, 1, 'choice', '{"stem":"社区图书角：36是18的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"36=18×2，所以36是18的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], '9ce862bd15ec705a6a9549a44e9c8c216c5b1fe35fd38f090f410fbd982c92cd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-012', 'math', 5, 1, 'choice', '{"stem":"社区图书角：解方程x+11=19，x=？","options":["19","11","-3","8"],"answer":3,"explanation":"等式两边同时减11，得到x=8。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], '1df47eef4f7d7f088932ac2dc851f19221239b104f009905bb6e648525cfb589', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-013', 'math', 5, 1, 'choice', '{"stem":"社区图书角：三角形标志底11厘米、高8厘米，面积是多少？","options":["44平方厘米","88平方厘米","19平方厘米","52平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=11×8÷2=44平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], '1111c013bd75a00d3adf3b155f208914b99418e558982746ae338cdf64328df9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-014', 'math', 5, 1, 'choice', '{"stem":"社区图书角：长方体盒子长7厘米、宽3厘米、高8厘米，体积是多少？","options":["21立方厘米","168立方厘米","18立方厘米","176立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=168立方厘米。"}'::jsonb, 'builtin', '体积初步', 'understand', array['全国通用', '基础巩固']::text[], '7ff50e6f409a2fd1a29624471a16d0bde6e6ce5c3e1b71964209dc7d4b084252', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-015', 'math', 5, 1, 'choice', '{"stem":"社区图书角：四天记录为15、18、21、14，平均数是多少？","options":["68","19","17","18"],"answer":2,"explanation":"总数68除以4，平均数是17。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], '0a317caf6f155497db3a281d571a1b095119f1e5feaff6a9621edbfc2ee881c8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-016', 'math', 5, 1, 'choice', '{"stem":"社区图书角：每件作品9元，买4件共多少元？","options":["13元","27元","40元","36元"],"answer":3,"explanation":"总价=单价×数量=9×4=36元。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], '6cfdd266e5f06bed8413e12460c287587c713a3b8debc953b6b882a3adc46599', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-017', 'math', 5, 1, 'choice', '{"stem":"科技节展台：9.6+2.6=？","options":["12.2元","21.8元","9.6元","13.2元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是12.2元。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], 'e9ff2218cbac2d6400f2a3f512a202cf42008ca5766dbdff5dcdebae86603472', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-018', 'math', 5, 1, 'choice', '{"stem":"科技节展台：同分母分数2/12+2/12=？","options":["0/1","1/3","4/13","5/12"],"answer":1,"explanation":"分母不变，分子相加并约分：2/12+2/12=1/3。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '0971edd843866bc847cfe63e124472beca72e8298b2cf075e0cade0f5fde2389', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-019', 'math', 5, 1, 'choice', '{"stem":"科技节展台：40是20的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"40=20×2，所以40是20的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], '198b8b7c7468396a9119c071351abb64f1ff265bb5edd54d08f996c2905055e6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-020', 'math', 5, 1, 'choice', '{"stem":"科技节展台：解方程x+12=21，x=？","options":["21","12","-3","9"],"answer":3,"explanation":"等式两边同时减12，得到x=9。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], 'dc6172d8f1ca0069e73132f029fe7db17ddf6581076d40142b0ab27ef9d87e9a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-021', 'math', 5, 1, 'choice', '{"stem":"科技节展台：三角形标志底12厘米、高5厘米，面积是多少？","options":["30平方厘米","60平方厘米","17平方厘米","35平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=12×5÷2=30平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], '10452f4c8417f84c7700f09ee828bd32b0a14153fb890a1b0e8101fa04add5eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-022', 'math', 5, 1, 'choice', '{"stem":"科技节展台：长方体盒子长4厘米、宽4厘米、高9厘米，体积是多少？","options":["16立方厘米","144立方厘米","17立方厘米","153立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=144立方厘米。"}'::jsonb, 'builtin', '体积初步', 'understand', array['全国通用', '基础巩固']::text[], 'ea7c42b0cc22e6146eb24acfd03359a436291854cf98125f4ba7e4dafd54bc96', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-023', 'math', 5, 1, 'choice', '{"stem":"科技节展台：四天记录为16、19、22、15，平均数是多少？","options":["72","20","18","19"],"answer":2,"explanation":"总数72除以4，平均数是18。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], '7a596ff6b6f53c204210fc8e27d5a76606d30a40e43611cccb3b609e34fc10a0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-024', 'math', 5, 1, 'choice', '{"stem":"科技节展台：每件作品10元，买5件共多少元？","options":["15元","40元","55元","50元"],"answer":3,"explanation":"总价=单价×数量=10×5=50元。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], 'f170be4e547074acc8317edb29a8208d8e09f64c88c471685236f80a5e4c0c21', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-025', 'math', 5, 1, 'choice', '{"stem":"节水调查：9.9+2.6=？","options":["12.5元","22.4元","9.9元","13.5元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是12.5元。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], 'e39c72af06a5c5d22101e17f3f5c3dd1ffdc5fb58a6382704ca878c32829d956', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-026', 'math', 5, 1, 'choice', '{"stem":"节水调查：同分母分数3/16+3/16=？","options":["0/1","3/8","6/17","7/16"],"answer":1,"explanation":"分母不变，分子相加并约分：3/16+3/16=3/8。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '892f21ca49cedb35feb446f673c3da1e8badf6cdfb2ccc8e977a795b07f14b15', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-027', 'math', 5, 1, 'choice', '{"stem":"节水调查：44是22的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"44=22×2，所以44是22的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], 'ad1025cb05a2415cc9fcb8d61608e957965076514501b5f895e193e5de74c94f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-028', 'math', 5, 1, 'choice', '{"stem":"节水调查：解方程x+8=18，x=？","options":["18","8","2","10"],"answer":3,"explanation":"等式两边同时减8，得到x=10。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], '20ca30bc90924f0b4a4ed7ba4efc460237447cfd1ac1fc6bc41ae49640b902f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-029', 'math', 5, 1, 'choice', '{"stem":"节水调查：三角形标志底13厘米、高6厘米，面积是多少？","options":["39平方厘米","78平方厘米","19平方厘米","45平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=13×6÷2=39平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], 'bce0bfc1114c36bd326c479c9bf2a592545f95e6c982f89cbb72d2d058932619', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-030', 'math', 5, 1, 'choice', '{"stem":"节水调查：长方体盒子长5厘米、宽5厘米、高5厘米，体积是多少？","options":["25立方厘米","125立方厘米","15立方厘米","130立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=125立方厘米。"}'::jsonb, 'builtin', '体积初步', 'understand', array['全国通用', '基础巩固']::text[], 'b1b1eee17a7a60647fa2a2575e49cc336dc9d22d945f0cff32e1c4e208b61d76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-031', 'math', 5, 1, 'choice', '{"stem":"节水调查：四天记录为17、20、23、16，平均数是多少？","options":["76","21","19","20"],"answer":2,"explanation":"总数76除以4，平均数是19。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], '543a6084a1d299188ee0619fdc891e22224979804b126006ab6669760ec86387', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-032', 'math', 5, 1, 'choice', '{"stem":"节水调查：每件作品11元，买6件共多少元？","options":["17元","55元","72元","66元"],"answer":3,"explanation":"总价=单价×数量=11×6=66元。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], '72e41f4cd4dd9bdbe5931af7cbd75950deb238ddbe4b24884567fcbb399f4b70', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-033', 'math', 5, 1, 'choice', '{"stem":"班级种植园：10.2+2.6=？","options":["12.8元","23.0元","10.2元","13.8元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是12.8元。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], '2171be8ae5e448f62b8f59f44a83f2094a17502a4db7b7bdea246d46fcfb0ef8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-034', 'math', 5, 1, 'choice', '{"stem":"班级种植园：同分母分数1/8+4/8=？","options":["3/8","5/8","5/9","3/4"],"answer":1,"explanation":"分母不变，分子相加并约分：1/8+4/8=5/8。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], 'efd1f69dc475f1b0fc8a814970c46edf445244e3e8ad9ffa82461c31124e0150', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-035', 'math', 5, 1, 'choice', '{"stem":"班级种植园：48是24的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"48=24×2，所以48是24的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], '9d45ca618ccaa1743798fbd0e22e720333ea01772c30f6610f61e84a58fbf7b1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-036', 'math', 5, 1, 'choice', '{"stem":"班级种植园：解方程x+9=20，x=？","options":["20","9","2","11"],"answer":3,"explanation":"等式两边同时减9，得到x=11。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], 'f339448e06710ae70ad8c47c5cb35d68c3c487212583b43883a881782d6f54c3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-037', 'math', 5, 1, 'choice', '{"stem":"班级种植园：三角形标志底14厘米、高7厘米，面积是多少？","options":["49平方厘米","98平方厘米","21平方厘米","56平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=14×7÷2=49平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], '18c915a681a4b389302e6cd754ea5f3d6e38ce0d5fd434ee5c9aaff58a590102', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-038', 'math', 5, 1, 'choice', '{"stem":"班级种植园：长方体盒子长6厘米、宽3厘米、高6厘米，体积是多少？","options":["18立方厘米","108立方厘米","15立方厘米","114立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=108立方厘米。"}'::jsonb, 'builtin', '体积初步', 'understand', array['全国通用', '基础巩固']::text[], 'dd7dda042242eae1b926ee5dcdac17a599fc87f119ab03671023047fbbbdbb35', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-039', 'math', 5, 1, 'choice', '{"stem":"班级种植园：四天记录为18、21、24、17，平均数是多少？","options":["80","22","20","21"],"answer":2,"explanation":"总数80除以4，平均数是20。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], '8ed606f55acfe9daab9454a9f48ceaebe85d23c9ae4b94a5e2a7bb31ca402405', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-040', 'math', 5, 1, 'choice', '{"stem":"班级种植园：每件作品12元，买4件共多少元？","options":["16元","36元","52元","48元"],"answer":3,"explanation":"总价=单价×数量=12×4=48元。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], 'eedb3305449dc3325072b3d29c13a92c6a0f1f6426747c60484dff5917c88bd4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-041', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：10.5+2.6=？","options":["13.1元","23.6元","10.5元","14.1元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是13.1元。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], '07ebdd86d858492cdd71c2421a7b7f0fc47729ee35992eef3e897f0dfb716509', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-042', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：同分母分数2/12+5/12=？","options":["1/4","7/12","7/13","2/3"],"answer":1,"explanation":"分母不变，分子相加并约分：2/12+5/12=7/12。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '789b175cb7b017c5e34f44ab35b7b2987884fdf2106598b0f05f17355e723cb0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-043', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：52是26的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"52=26×2，所以52是26的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], 'feae8e2a785701cb01a2a97ba4fe2fdeca1400500bf02c655a0b7276a38efd85', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-044', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：解方程x+10=22，x=？","options":["22","10","2","12"],"answer":3,"explanation":"等式两边同时减10，得到x=12。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], '13a290de2051488728166d2c2e9410387f955b1ec19e2a4358be54c99ee945a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-045', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：三角形标志底15厘米、高8厘米，面积是多少？","options":["60平方厘米","120平方厘米","23平方厘米","68平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=15×8÷2=60平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], '8de07e342412543f5221601df5131da21c86afad506561fbe523d8c80f940065', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-046', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：长方体盒子长7厘米、宽4厘米、高7厘米，体积是多少？","options":["28立方厘米","196立方厘米","18立方厘米","203立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=196立方厘米。"}'::jsonb, 'builtin', '体积初步', 'understand', array['全国通用', '基础巩固']::text[], '547988ce0c879afe1d5a837bc87982fbc43dfc1be439a50a98fb5f4bd2187113', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-047', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：四天记录为19、22、25、18，平均数是多少？","options":["84","23","21","22"],"answer":2,"explanation":"总数84除以4，平均数是21。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], '13292b5ee28ee341ede1d782dacf8ca827c27b04d4d4ad8d25ec16cb375e4e6c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-048', 'math', 5, 1, 'choice', '{"stem":"城市规划馆：每件作品13元，买5件共多少元？","options":["18元","52元","70元","65元"],"answer":3,"explanation":"总价=单价×数量=13×5=65元。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], '0e3ae538b4ab5e73e93e20bda6b5fd14c2ca001ae9eacad5b71933d4f00c7805', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-049', 'math', 5, 1, 'choice', '{"stem":"健康运动营：10.8+2.6=？","options":["13.4元","24.2元","10.8元","14.4元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是13.4元。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], '459d68130204b5f8abece8a88b5669f27abc791ba0daa95ffecadf0439b816ae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-050', 'math', 5, 1, 'choice', '{"stem":"健康运动营：同分母分数3/16+2/16=？","options":["1/16","5/16","5/17","3/8"],"answer":1,"explanation":"分母不变，分子相加并约分：3/16+2/16=5/16。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '76e2885a8264e66c9cc9889622790ec4eef6df2b133fe4772c43846198e46c0f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-051', 'math', 5, 1, 'choice', '{"stem":"健康运动营：56是28的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"56=28×2，所以56是28的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], '7aa32c6b6a7af403f0acd9fdf618c141c6e4f34a2b1fcf169880d55f5ec5c7b1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-052', 'math', 5, 1, 'choice', '{"stem":"健康运动营：解方程x+11=24，x=？","options":["24","11","2","13"],"answer":3,"explanation":"等式两边同时减11，得到x=13。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], '939e390061f31c3f5bffa4a5fff968b7accbfbc4a26f315031068e8a615cf8ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-053', 'math', 5, 2, 'choice', '{"stem":"健康运动营：三角形标志底16厘米、高5厘米，面积是多少？","options":["40平方厘米","80平方厘米","21平方厘米","45平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=16×5÷2=40平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'apply', array['全国通用', '综合应用']::text[], '07e5fb61bb74fbb5628220535de1271536d3fea86cf69aeb45fc4f235e91feb2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-054', 'math', 5, 2, 'choice', '{"stem":"健康运动营：长方体盒子长4厘米、宽5厘米、高8厘米，体积是多少？","options":["20立方厘米","160立方厘米","17立方厘米","168立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=160立方厘米。"}'::jsonb, 'builtin', '体积初步', 'apply', array['全国通用', '综合应用']::text[], 'd0c02843fc931febf7d812a5d3aa480b9c83fbd8b70e5dc13d615658d452fe95', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-055', 'math', 5, 2, 'choice', '{"stem":"健康运动营：四天记录为20、23、26、19，平均数是多少？","options":["88","24","22","23"],"answer":2,"explanation":"总数88除以4，平均数是22。"}'::jsonb, 'builtin', '统计', 'apply', array['全国通用', '综合应用']::text[], '33a39956875a7389e33a5287d00a72cd3d47f016fbb538ac5af84f80d455298b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-056', 'math', 5, 2, 'choice', '{"stem":"健康运动营：每件作品14元，买6件共多少元？","options":["20元","70元","90元","84元"],"answer":3,"explanation":"总价=单价×数量=14×6=84元。"}'::jsonb, 'builtin', '综合应用', 'apply', array['全国通用', '综合应用']::text[], '048cf6469424ab0c286d4fbf449cdb10b1f0bfe5462707a5993fdf6d659533c7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-057', 'math', 5, 2, 'choice', '{"stem":"传统文化展：每本笔记本11.1元，买3本共多少元？","options":["33.3元","44.4元","30.7元","34.3元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是33.3元。"}'::jsonb, 'builtin', '小数运算', 'apply', array['全国通用', '综合应用']::text[], 'c29bb8598d2d3adae40afc2e12f9aa966d8c71f697da799350cbd86d08ae9fa7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-058', 'math', 5, 2, 'choice', '{"stem":"传统文化展：同分母分数1/8+3/8=？","options":["1/4","1/2","4/9","5/8"],"answer":1,"explanation":"分母不变，分子相加并约分：1/8+3/8=1/2。"}'::jsonb, 'builtin', '分数运算', 'apply', array['全国通用', '综合应用']::text[], '8665442711a0ea7bfd032496fc15088a9b266324cbe2812702c096f3bf09a34e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-059', 'math', 5, 2, 'choice', '{"stem":"传统文化展：90是30的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"90=30×3，所以90是30的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'apply', array['全国通用', '综合应用']::text[], 'fa3de6a94ec970bc1e8ef11a0e2adaffcf91e28af02d741ff8982fb96e63147d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-060', 'math', 5, 2, 'choice', '{"stem":"传统文化展：解方程x+12=26，x=？","options":["26","12","2","14"],"answer":3,"explanation":"等式两边同时减12，得到x=14。"}'::jsonb, 'builtin', '简易方程', 'apply', array['全国通用', '综合应用']::text[], '806d782031d8c9dad2d08fac2a583d3dc896ee5771341e78cc0cb1091ade99b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-061', 'math', 5, 2, 'choice', '{"stem":"传统文化展：三角形标志底17厘米、高6厘米，面积是多少？","options":["51平方厘米","102平方厘米","23平方厘米","57平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=17×6÷2=51平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'apply', array['全国通用', '综合应用']::text[], '15069917e04b3431a2318a908994925115ee19777c7d7002bd13baccc8e5fab7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-062', 'math', 5, 2, 'choice', '{"stem":"传统文化展：长方体盒子长5厘米、宽3厘米、高9厘米，体积是多少？","options":["15立方厘米","135立方厘米","17立方厘米","144立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=135立方厘米。"}'::jsonb, 'builtin', '体积初步', 'apply', array['全国通用', '综合应用']::text[], '4faa50dc2cd87d6d3d93d0cc7ddc201dbf89406ca326411c5f6a43b794a43217', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-063', 'math', 5, 2, 'choice', '{"stem":"传统文化展：四天记录为21、24、27、20，平均数是多少？","options":["92","25","23","24"],"answer":2,"explanation":"总数92除以4，平均数是23。"}'::jsonb, 'builtin', '统计', 'apply', array['全国通用', '综合应用']::text[], '25e3c22de082368ae6ca4cd6f0a16f3d14fcecbec6ace033392e6e0d73a3ddec', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-064', 'math', 5, 2, 'choice', '{"stem":"传统文化展：每件作品15元，买4件共多少元？","options":["19元","45元","64元","60元"],"answer":3,"explanation":"总价=单价×数量=15×4=60元。"}'::jsonb, 'builtin', '综合应用', 'apply', array['全国通用', '综合应用']::text[], 'c9e554c1927ddeb98b677485ce00362a35db2098c606a3b43d8669f8c78072d0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-065', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：每本笔记本11.4元，买4本共多少元？","options":["45.6元","57.0元","43.0元","46.6元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是45.6元。"}'::jsonb, 'builtin', '小数运算', 'apply', array['全国通用', '综合应用']::text[], '4b357ac75b16eb68f6e8685f327dedfcff34ba4521bbfb79bc79050948f3e1b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-066', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：同分母分数2/12+4/12=？","options":["1/6","1/2","6/13","7/12"],"answer":1,"explanation":"分母不变，分子相加并约分：2/12+4/12=1/2。"}'::jsonb, 'builtin', '分数运算', 'apply', array['全国通用', '综合应用']::text[], '94d0cbebbc0a431b6466d77391075659499501907a438a2694f224daa7671b93', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-067', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：96是32的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"96=32×3，所以96是32的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'apply', array['全国通用', '综合应用']::text[], 'c3cd3baea8be31b51d0b517d28b062bc806dab8d3d7510076d35a99cd51d1113', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-068', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：解方程x+8=23，x=？","options":["23","8","7","15"],"answer":3,"explanation":"等式两边同时减8，得到x=15。"}'::jsonb, 'builtin', '简易方程', 'apply', array['全国通用', '综合应用']::text[], '359cca131e92bbfe69f76d1c37dbe4c16c6c30ff9002ddbb75b8b7636cee0a6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-069', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：三角形标志底18厘米、高7厘米，面积是多少？","options":["63平方厘米","126平方厘米","25平方厘米","70平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=18×7÷2=63平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'apply', array['全国通用', '综合应用']::text[], '15aaac6a7618263a818d822f83d63471784d06a4a13df2c300bb1cb3d31fd40a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-070', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：长方体盒子长6厘米、宽4厘米、高5厘米，体积是多少？","options":["24立方厘米","120立方厘米","15立方厘米","125立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=120立方厘米。"}'::jsonb, 'builtin', '体积初步', 'apply', array['全国通用', '综合应用']::text[], '73f230b653a3dec3e37d95d33a0bfe719e47c142f14728da2e32ff9d51aac7de', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-071', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：四天记录为22、25、28、21，平均数是多少？","options":["96","26","24","25"],"answer":2,"explanation":"总数96除以4，平均数是24。"}'::jsonb, 'builtin', '统计', 'apply', array['全国通用', '综合应用']::text[], '8b8a6495e78a09aad544bee38147e969c25fa6b9cf7f588e2e81ed2f6bc57c1c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-072', 'math', 5, 2, 'choice', '{"stem":"家庭购物单：每件作品16元，买5件共多少元？","options":["21元","64元","85元","80元"],"answer":3,"explanation":"总价=单价×数量=16×5=80元。"}'::jsonb, 'builtin', '综合应用', 'apply', array['全国通用', '综合应用']::text[], '15cffe36ddeb2eddbbd5de096e4d0a356366318e7b7d26e17479d25ef0d7f722', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-073', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：每本笔记本11.7元，买5本共多少元？","options":["58.5元","70.2元","55.9元","59.5元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是58.5元。"}'::jsonb, 'builtin', '小数运算', 'apply', array['全国通用', '综合应用']::text[], '0a2d59867285b5e8087b0bbbc36ca3db5af143182e7d0a114f528038eea96d96', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-074', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：同分母分数3/16+5/16=？","options":["1/8","1/2","8/17","9/16"],"answer":1,"explanation":"分母不变，分子相加并约分：3/16+5/16=1/2。"}'::jsonb, 'builtin', '分数运算', 'apply', array['全国通用', '综合应用']::text[], '3d783ed30fac82bfd11844ecf876dc4761b7fb1d81b9065aab55cac7f3475f07', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-075', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：102是34的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"102=34×3，所以102是34的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'apply', array['全国通用', '综合应用']::text[], 'e3821d4a65bada813d3284afa70c31b103be377957451dfccd7f38a31b26b506', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-076', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：解方程x+9=25，x=？","options":["25","9","7","16"],"answer":3,"explanation":"等式两边同时减9，得到x=16。"}'::jsonb, 'builtin', '简易方程', 'apply', array['全国通用', '综合应用']::text[], 'a68008bef273f9181a58e2900ca65ad69084fb08f502ad8507f6eb3bab4d174c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-077', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：三角形标志底19厘米、高8厘米，面积是多少？","options":["76平方厘米","152平方厘米","27平方厘米","84平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=19×8÷2=76平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'apply', array['全国通用', '综合应用']::text[], '51fbc48512410f894f25ff7636359b38d7cfbf728d3024d7156d853310fe0532', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-078', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：长方体盒子长7厘米、宽5厘米、高6厘米，体积是多少？","options":["35立方厘米","210立方厘米","18立方厘米","216立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=210立方厘米。"}'::jsonb, 'builtin', '体积初步', 'apply', array['全国通用', '综合应用']::text[], 'a74f9a905037112aecc2b37b89c339cc914f2cc0c668efad58cb9fc3df728332', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-079', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：四天记录为23、26、29、22，平均数是多少？","options":["100","27","25","26"],"answer":2,"explanation":"总数100除以4，平均数是25。"}'::jsonb, 'builtin', '统计', 'apply', array['全国通用', '综合应用']::text[], '624c0623b3e37ec72986b9a2c67129e0b62400dbe5ac8c5140ab21ad6481342b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-080', 'math', 5, 2, 'choice', '{"stem":"湿地观察站：每件作品17元，买6件共多少元？","options":["23元","85元","108元","102元"],"answer":3,"explanation":"总价=单价×数量=17×6=102元。"}'::jsonb, 'builtin', '综合应用', 'apply', array['全国通用', '综合应用']::text[], 'aaad645e050c656d30e002d4a29744a16c5e9b465a8bf1cd0349e9afc5bc5b56', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-081', 'math', 5, 2, 'choice', '{"stem":"校车调度表：每本笔记本12.0元，买3本共多少元？","options":["36.0元","48.0元","33.4元","37.0元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是36.0元。"}'::jsonb, 'builtin', '小数运算', 'apply', array['全国通用', '综合应用']::text[], '499b449ea09351abbfb312a8a942bffdd0eff7557a607746de201f87802962bf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-082', 'math', 5, 2, 'choice', '{"stem":"校车调度表：同分母分数1/8+2/8=？","options":["1/8","3/8","3/9","1/2"],"answer":1,"explanation":"分母不变，分子相加并约分：1/8+2/8=3/8。"}'::jsonb, 'builtin', '分数运算', 'apply', array['全国通用', '综合应用']::text[], 'd85fa57e541ce622e73016398419c430da512162ee71e1f2e14341e81b1f08f8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-083', 'math', 5, 2, 'choice', '{"stem":"校车调度表：108是36的什么数？","options":["质数","小数","倍数","分数"],"answer":2,"explanation":"108=36×3，所以108是36的倍数。"}'::jsonb, 'builtin', '因数与倍数', 'apply', array['全国通用', '综合应用']::text[], '9c789816937c6110161de5cf62ce3b9ab410028cb9965d004b90a11b95d65501', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-084', 'math', 5, 2, 'choice', '{"stem":"校车调度表：解方程x+10=27，x=？","options":["27","10","7","17"],"answer":3,"explanation":"等式两边同时减10，得到x=17。"}'::jsonb, 'builtin', '简易方程', 'apply', array['全国通用', '综合应用']::text[], 'f292fa4008bb3a3442a3f6b1bdc53af546f0ba432cbc26a9b3c6b923e53f781d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-085', 'math', 5, 2, 'choice', '{"stem":"校车调度表：三角形标志底20厘米、高5厘米，面积是多少？","options":["50平方厘米","100平方厘米","25平方厘米","55平方厘米"],"answer":0,"explanation":"三角形面积=底×高÷2=20×5÷2=50平方厘米。"}'::jsonb, 'builtin', '平面图形面积', 'apply', array['全国通用', '综合应用']::text[], '6c3bb384fd81997cb0fefb861817989e42534bb3e404039fa120b4de98403037', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-086', 'math', 5, 2, 'choice', '{"stem":"校车调度表：长方体盒子长4厘米、宽3厘米、高7厘米，体积是多少？","options":["12立方厘米","84立方厘米","14立方厘米","91立方厘米"],"answer":1,"explanation":"长方体体积=长×宽×高=84立方厘米。"}'::jsonb, 'builtin', '体积初步', 'apply', array['全国通用', '综合应用']::text[], '1c35f8f4543c3437b15c74c578d00823ad22260e10a6505891a2a3f1ba374677', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-087', 'math', 5, 2, 'choice', '{"stem":"校车调度表：四天记录为24、27、30、23，平均数是多少？","options":["104","28","26","27"],"answer":2,"explanation":"总数104除以4，平均数是26。"}'::jsonb, 'builtin', '统计', 'apply', array['全国通用', '综合应用']::text[], '97fa9636714f0ca127d72bba1aff350a900da328ed2544538329455bbc16cbb5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-088', 'math', 5, 2, 'choice', '{"stem":"校车调度表：每件作品18元，买4件共多少元？","options":["22元","54元","76元","72元"],"answer":3,"explanation":"总价=单价×数量=18×4=72元。"}'::jsonb, 'builtin', '综合应用', 'apply', array['全国通用', '综合应用']::text[], 'ce3da8cc9ca5e27f67f38a6ea614fc624db2bba53190e7ff45aa109989820717', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-089', 'math', 5, 2, 'choice', '{"stem":"手工作品展：每本笔记本12.3元，买4本共多少元？","options":["49.2元","61.5元","46.6元","50.2元"],"answer":0,"explanation":"按小数加法或乘法计算，结果是49.2元。"}'::jsonb, 'builtin', '小数运算', 'apply', array['全国通用', '综合应用']::text[], '79a55511e7cdeb245b7ea5c960e93a273fdb52a77232cebb366f384f8e3b4081', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-090', 'math', 5, 3, 'choice', '{"stem":"手工作品展：一块试验田上午完成2/12，下午完成3/12，未完成部分占全田几分之几？","options":["5/12","7/12","5/6","2/3"],"answer":1,"explanation":"先算完成2/12+3/12=5/12，再用1减，未完成7/12。"}'::jsonb, 'builtin', '分数运算', 'reason', array['全国通用', '综合应用']::text[], '716eaa4b60a94cba5d546be2f314058e71adc419145b9359714ab42564740f06', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-091', 'math', 5, 3, 'choice', '{"stem":"手工作品展：7盒彩笔和11本册子要分别平均分给若干组且都无剩余，组数必须同时是什么？","options":["77的所有倍数","18的因数","7和11的公因数","只能是77"],"answer":2,"explanation":"能同时整除两种数量的组数，必须是两个数的公因数。"}'::jsonb, 'builtin', '因数与倍数', 'reason', array['全国通用', '综合应用']::text[], '417321a42387ea5aec0681aba563298b0466320e9cca74b1c2424744c9202ef1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-092', 'math', 5, 3, 'choice', '{"stem":"手工作品展：方程3x+11=65中，x等于多少？","options":["29","54","17","18"],"answer":3,"explanation":"先减11，再除以3，得到x=18。"}'::jsonb, 'builtin', '简易方程', 'reason', array['全国通用', '综合应用']::text[], 'b522233bd4476f755c68c092a3db1615ee856ac9847f6cc652cf69a41fb85c84', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-093', 'math', 5, 3, 'choice', '{"stem":"手工作品展：梯形花坛上底18米、下底21米、高6米，面积是多少？","options":["117平方米","126平方米","234平方米","45平方米"],"answer":0,"explanation":"梯形面积=（上底+下底）×高÷2，得117平方米。"}'::jsonb, 'builtin', '平面图形面积', 'reason', array['全国通用', '综合应用']::text[], 'c8f20dfc36b14c7d5a63ca93553cad74509361990dd1a4beffca80e63624dcde', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-094', 'math', 5, 3, 'choice', '{"stem":"手工作品展：长方体水箱长5分米、宽4分米、高8分米，已装水140升，还能装多少升？","options":["160升","20升","140升","17升"],"answer":1,"explanation":"容量5×4×8=160升，减去已有水量，还能装20升。"}'::jsonb, 'builtin', '体积初步', 'reason', array['全国通用', '综合应用']::text[], 'dfa8bb416d8a4f857ed19f5d718a11e41e0d3a06d05ce1277a0cf30e66aa7323', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-095', 'math', 5, 3, 'choice', '{"stem":"手工作品展：四组回收量为25、28、31、24千克。若第五组加入后平均数变为28千克，第五组回收多少千克？","options":["28千克","108千克","32千克","31千克"],"answer":2,"explanation":"五组总量应为28×5=140，减原四组108，第五组是32千克。"}'::jsonb, 'builtin', '统计', 'reason', array['全国通用', '综合应用']::text[], '4b731334a5357c04bd576a5a670e993ba8075fe9e065666888f82a196009f34f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-096', 'math', 5, 3, 'choice', '{"stem":"手工作品展：义卖品每件19元，买5件后优惠6元；用100元付款，还剩多少元？","options":["5元","89元","94元","11元"],"answer":3,"explanation":"先算19×5-6=89元，再算100-89=11元。"}'::jsonb, 'builtin', '综合应用', 'reason', array['全国通用', '综合应用']::text[], '80fd546c540c0351e594c598745b25efcdc253c3cb29f21a778c56c430f55b34', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-097', 'math', 5, 3, 'choice', '{"stem":"气象记录组：每本笔记本12.6元，买5本，付90元，应找回多少元？","options":["27.0元","39.6元","24.4元","28.0元"],"answer":0,"explanation":"先算总价12.6×5=63.0元，再用90减总价，找回27.0元。"}'::jsonb, 'builtin', '小数运算', 'reason', array['全国通用', '综合应用']::text[], 'ae609ef6f48e75c25b1ebd56608ccb998f95a226f270b1f3f085804a180a3528', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-098', 'math', 5, 3, 'choice', '{"stem":"气象记录组：一块试验田上午完成3/16，下午完成4/16，未完成部分占全田几分之几？","options":["7/16","9/16","13/16","5/8"],"answer":1,"explanation":"先算完成3/16+4/16=7/16，再用1减，未完成9/16。"}'::jsonb, 'builtin', '分数运算', 'reason', array['全国通用', '综合应用']::text[], '838a4f68462721a6f0290ce5837506b08ec5be393c2f5b40f41d7709d82827b3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-099', 'math', 5, 3, 'choice', '{"stem":"气象记录组：8盒彩笔和12本册子要分别平均分给若干组且都无剩余，组数必须同时是什么？","options":["96的所有倍数","20的因数","8和12的公因数","只能是96"],"answer":2,"explanation":"能同时整除两种数量的组数，必须是两个数的公因数。"}'::jsonb, 'builtin', '因数与倍数', 'reason', array['全国通用', '综合应用']::text[], '29d299d6043fe765f90686a442218bdc2258c56acaffbd2f2cd18b0323e5f09b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-100', 'math', 5, 3, 'choice', '{"stem":"气象记录组：方程4x+12=88中，x等于多少？","options":["31","76","18","19"],"answer":3,"explanation":"先减12，再除以4，得到x=19。"}'::jsonb, 'builtin', '简易方程', 'reason', array['全国通用', '综合应用']::text[], '2b09bfa4fd956688456cbe954f3a314e7aa1ff93b4fbda5724e01badf4bfdb38', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-101', 'math', 5, 3, 'choice', '{"stem":"气象记录组：梯形花坛上底19米、下底22米、高7米，面积是多少？","options":["143.5平方米","154平方米","287平方米","48平方米"],"answer":0,"explanation":"梯形面积=（上底+下底）×高÷2，得143.5平方米。"}'::jsonb, 'builtin', '平面图形面积', 'reason', array['全国通用', '综合应用']::text[], '81d62af016a09e54937d4127a2c1c79bed3d848bb8cf8a58cc08b8453e0ca129', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-102', 'math', 5, 3, 'choice', '{"stem":"气象记录组：长方体水箱长6分米、宽5分米、高9分米，已装水240升，还能装多少升？","options":["270升","30升","240升","20升"],"answer":1,"explanation":"容量6×5×9=270升，减去已有水量，还能装30升。"}'::jsonb, 'builtin', '体积初步', 'reason', array['全国通用', '综合应用']::text[], '6b6951ed64fd5579a75e40d37a832134cecb21953c83dcbf253925eae85c8c5c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-103', 'math', 5, 3, 'choice', '{"stem":"气象记录组：四组回收量为26、29、32、25千克。若第五组加入后平均数变为29千克，第五组回收多少千克？","options":["29千克","112千克","33千克","32千克"],"answer":2,"explanation":"五组总量应为29×5=145，减原四组112，第五组是33千克。"}'::jsonb, 'builtin', '统计', 'reason', array['全国通用', '综合应用']::text[], 'bd6dd179d22db29e9950720dc0ef29d90a64b9dc614de39fe2be2d1f56f13708', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-104', 'math', 5, 3, 'choice', '{"stem":"气象记录组：义卖品每件20元，买6件后优惠7元；用150元付款，还剩多少元？","options":["30元","113元","143元","37元"],"answer":3,"explanation":"先算20×6-7=113元，再算150-113=37元。"}'::jsonb, 'builtin', '综合应用', 'reason', array['全国通用', '综合应用']::text[], 'a8c16581ab371bf382cf360e85553b7d910a20448c268b694cb334258eaddaaf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-105', 'math', 5, 3, 'choice', '{"stem":"爱心义卖场：每本笔记本12.9元，买3本，付60元，应找回多少元？","options":["21.3元","34.2元","18.7元","22.3元"],"answer":0,"explanation":"先算总价12.9×3=38.7元，再用60减总价，找回21.3元。"}'::jsonb, 'builtin', '小数运算', 'reason', array['全国通用', '综合应用']::text[], 'f79289e7bcdde9434c5fc88d94e9746d032a8e30cc815137c06c9ee838ad9bd6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-106', 'math', 5, 1, 'fill', '{"stem":"爱心义卖场：1/8+2/8=___","answer":"3/8","explanation":"同分母分数分子相加并约分。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '236e97508884d0d8c56d861371001c1d6a5fbf9f265e746d59fbe820315ef135', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-107', 'math', 5, 1, 'fill', '{"stem":"爱心义卖场：13的最小倍数是___。","answer":"13","explanation":"一个非零自然数的最小倍数是它本身。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], 'e9cf9bdac2cd35dac792cef7aacbd8370998aa791a06b8df17c5a5a9dc2be5b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-108', 'math', 5, 1, 'fill', '{"stem":"爱心义卖场：x+8=17，x=___。","answer":"9","explanation":"等式两边同时减去同一个数。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], '695c5c1d90a3eeb39a1f07c38db828c2d5828e332d2195e465251d11690cd0f8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-109', 'math', 5, 1, 'fill', '{"stem":"爱心义卖场：平行四边形底11厘米、高4厘米，面积是___平方厘米。","answer":"44","explanation":"平行四边形面积=底×高。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], 'ff7eaba87b9547375e70171d8ec0cbeb12becf8906712fcf04d4623e8e4ef07b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-110', 'math', 5, 1, 'fill', '{"stem":"爱心义卖场：棱长2厘米的正方体体积是___立方厘米。","answer":"8","explanation":"正方体体积=棱长×棱长×棱长。"}'::jsonb, 'builtin', '体积初步', 'understand', array['全国通用', '基础巩固']::text[], 'e516cfe4b594cad51e75b88204a3ecba52e19cad39a3b846b27901cf56455a86', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-111', 'math', 5, 1, 'fill', '{"stem":"爱心义卖场：数据15、17、19的平均数是___。","answer":"17","explanation":"三个等距数的平均数是中间数。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], '9ab6fad40bcd71b20f939a26ad7bf43abf0791f6299b7c681b987ca890518146', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-112', 'math', 5, 1, 'fill', '{"stem":"爱心义卖场：每盒彩笔14支，买3盒用去5支，还剩___支。","answer":"37","explanation":"先乘求总数，再减用去的。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], 'ff835682d106a9b8ee493a92cb34a6c52457b80cd0a6cbd3ced1d5ad048b8cd8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-113', 'math', 5, 1, 'fill', '{"stem":"研学路线图：3.9+1.8=___","answer":"5.7","explanation":"小数点对齐相加。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], '0db064ac8ae12ffd0410f512569487e30980f70c30ca5f0d826160a457b66289', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-114', 'math', 5, 1, 'fill', '{"stem":"研学路线图：1/8+4/8=___","answer":"5/8","explanation":"同分母分数分子相加并约分。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '882492326757b1967c5ccd6b86568d9504fc9eefc11387337cc1e1ad4c1ed524', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-115', 'math', 5, 1, 'fill', '{"stem":"研学路线图：21的最小倍数是___。","answer":"21","explanation":"一个非零自然数的最小倍数是它本身。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], 'd9bd6cc8d05e872b0882f2104a8ad76f39912fb2d47084c6ca522fcfcdc13cdc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-116', 'math', 5, 1, 'fill', '{"stem":"研学路线图：x+16=25，x=___。","answer":"9","explanation":"等式两边同时减去同一个数。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], '32e6e77b6412775489a60c5bf3a357da5ebee11ee3ae13d4361a298f39b49cfc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-117', 'math', 5, 2, 'fill', '{"stem":"研学路线图：平行四边形底19厘米、高4厘米，面积是___平方厘米。","answer":"76","explanation":"平行四边形面积=底×高。"}'::jsonb, 'builtin', '平面图形面积', 'apply', array['全国通用', '综合应用']::text[], 'f695a34a1adbea3e18ec274579a7f3c9b3ea454152f4e028b3c2fcf7bc56c344', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-118', 'math', 5, 2, 'fill', '{"stem":"研学路线图：棱长2厘米的正方体体积是___立方厘米。","answer":"8","explanation":"正方体体积=棱长×棱长×棱长。"}'::jsonb, 'builtin', '体积初步', 'apply', array['全国通用', '综合应用']::text[], '48ad0588d0b56ce69736efbd99c1b1039036194b0fcf84d56a4ca262b46efd3c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-119', 'math', 5, 2, 'fill', '{"stem":"研学路线图：数据23、25、27的平均数是___。","answer":"25","explanation":"三个等距数的平均数是中间数。"}'::jsonb, 'builtin', '统计', 'apply', array['全国通用', '综合应用']::text[], 'f2acd0cc5e7fa60dc785aaf7ae292c52d7d70cfe677a9729e78f4ba5c06052c7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-120', 'math', 5, 2, 'fill', '{"stem":"研学路线图：每盒彩笔22支，买3盒用去5支，还剩___支。","answer":"61","explanation":"先乘求总数，再减用去的。"}'::jsonb, 'builtin', '综合应用', 'apply', array['全国通用', '综合应用']::text[], '201a6dcf105498485fb2845b323df1418686d5747726f4771b9ad1e95adee2b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-121', 'math', 5, 2, 'fill', '{"stem":"食堂营养周：4.7+1.8=___","answer":"6.5","explanation":"小数点对齐相加。"}'::jsonb, 'builtin', '小数运算', 'apply', array['全国通用', '综合应用']::text[], 'f0f16910f320d88bbf1665693e7e747e2bf1d72c1db8cbcb30850c8fc82c86e1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-122', 'math', 5, 2, 'fill', '{"stem":"食堂营养周：1/8+3/8=___","answer":"1/2","explanation":"同分母分数分子相加并约分。"}'::jsonb, 'builtin', '分数运算', 'apply', array['全国通用', '综合应用']::text[], '3f1eafdc9a72b97fb03099631a8a07b95d71de2b3a8fd86e17c65ebed2944cef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-123', 'math', 5, 2, 'fill', '{"stem":"食堂营养周：29的最小倍数是___。","answer":"29","explanation":"一个非零自然数的最小倍数是它本身。"}'::jsonb, 'builtin', '因数与倍数', 'apply', array['全国通用', '综合应用']::text[], '5c2819d70c4099d4fd4dbb10734f9a8e610138d3c1bf67f027c0b95f6881cb05', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-124', 'math', 5, 3, 'fill', '{"stem":"食堂营养周：x+24=33，x=___。","answer":"9","explanation":"等式两边同时减去同一个数。"}'::jsonb, 'builtin', '简易方程', 'reason', array['全国通用', '综合应用']::text[], '24683c49ccd4a92d902883765eb4f391edbc550f57213bda3f0a96da6548e513', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-125', 'math', 5, 3, 'fill', '{"stem":"食堂营养周：平行四边形底27厘米、高4厘米，面积是___平方厘米。","answer":"108","explanation":"平行四边形面积=底×高。"}'::jsonb, 'builtin', '平面图形面积', 'reason', array['全国通用', '综合应用']::text[], '54a8cc17368a2e0265c1f0eebe1333f592dce20948ffdc318adb3ceb32576042', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-126', 'math', 5, 3, 'fill', '{"stem":"食堂营养周：棱长2厘米的正方体体积是___立方厘米。","answer":"8","explanation":"正方体体积=棱长×棱长×棱长。"}'::jsonb, 'builtin', '体积初步', 'reason', array['全国通用', '综合应用']::text[], '56a0862947f3a13428234aca7c066a54c1f667793cf764feebae13a0b58e5632', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-127', 'math', 5, 1, 'match', '{"stem":"食堂营养周：把统计量与求法或含义配对。","left":["总数","平均数","最大值","变化趋势"],"right":["最大的数","全部相加","观察增减","总数÷份数"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用统计的定义和计算规则完成配对。"}'::jsonb, 'builtin', '统计', 'understand', array['全国通用', '基础巩固']::text[], 'd444a3575b51bac2e37b653e865b9184c44e96d588e1f55554876249a66dd128', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-128', 'math', 5, 1, 'match', '{"stem":"食堂营养周：把实际问题中的数量与对应关系式配对。","left":["总价","路程","工作总量","剩余量"],"right":["效率×时间","单价×数量","原有-用去+增加","速度×时间"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用综合应用的定义和计算规则完成配对。"}'::jsonb, 'builtin', '综合应用', 'understand', array['全国通用', '基础巩固']::text[], 'e6cc8a85ca8fe57aa84692a1f8a604bfbe9b5c19e70d636f276908591c44af4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-129', 'math', 5, 1, 'match', '{"stem":"公园志愿岗：把每个小数算式与计算结果配对。","left":["2.5+1.5","6.4-2.4","1.2×5","8.4÷2"],"right":["6","4","4.2","4"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用小数运算的定义和计算规则完成配对。"}'::jsonb, 'builtin', '小数运算', 'understand', array['全国通用', '基础巩固']::text[], 'a7aaee4594a4eef7a3af5ca7fa857b338ff21aacb28e71f53056ca9d8a9dc79c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-130', 'math', 5, 1, 'match', '{"stem":"公园志愿岗：把每个分数算式与最简结果配对。","left":["1/4+1/4","3/5-1/5","2/3+1/3","7/8-3/8"],"right":["1","1/2","1/2","2/5"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用分数运算的定义和计算规则完成配对。"}'::jsonb, 'builtin', '分数运算', 'understand', array['全国通用', '基础巩固']::text[], '645548a7b9d102c7af9c0cc00130dfe6f7389e3f179ed233ad0f7897affd4b72', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-131', 'math', 5, 1, 'match', '{"stem":"公园志愿岗：判断左边各数符合右边哪种整除关系。","left":["2","3","5","12"],"right":["25的因数","12的因数","6的倍数","18的因数"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用因数与倍数的定义和计算规则完成配对。"}'::jsonb, 'builtin', '因数与倍数', 'understand', array['全国通用', '基础巩固']::text[], '3d8b92cb2a0bf5bbba5b489721b61e07681ecc83c97cf22f43e6149af0080d65', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-132', 'math', 5, 1, 'match', '{"stem":"公园志愿岗：把每个方程与它的解配对。","left":["x+3=8","2x=12","x-4=7","3x+1=10"],"right":["x=11","x=5","x=3","x=6"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用简易方程的定义和计算规则完成配对。"}'::jsonb, 'builtin', '简易方程', 'understand', array['全国通用', '基础巩固']::text[], '91f6062fb77a4c48007f259ac3459e7f3786c7168821851fae21439bf6a7051d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-133', 'math', 5, 1, 'match', '{"stem":"公园志愿岗：把图形名称与面积公式配对。","left":["长方形","平行四边形","三角形","梯形"],"right":["底×高÷2","长×宽","（上底+下底）×高÷2","底×高"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用平面图形面积的定义和计算规则完成配对。"}'::jsonb, 'builtin', '平面图形面积', 'understand', array['全国通用', '基础巩固']::text[], '2ce81112c399229fda5529774ead4401614276af013446bc160cc9497559fbb5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-134', 'math', 5, 2, 'match', '{"stem":"公园志愿岗：把体积或容积单位与生活实例配对。","left":["立方厘米","立方分米","升","毫升"],"right":["水桶容量","小方块体积","滴管容量","纸箱体积"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用体积初步的定义和计算规则完成配对。"}'::jsonb, 'builtin', '体积初步', 'apply', array['全国通用', '综合应用']::text[], '7b6e1153a43eaf1ab424652ccf0ed0407023e216d160c89be751af2e5bc5e1da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-135', 'math', 5, 2, 'match', '{"stem":"公园志愿岗：把统计量与求法或含义配对。","left":["总数","平均数","最大值","变化趋势"],"right":["最大的数","全部相加","观察增减","总数÷份数"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用统计的定义和计算规则完成配对。"}'::jsonb, 'builtin', '统计', 'apply', array['全国通用', '综合应用']::text[], 'cae1974d23135489102681b9c8b9c9cbafd25bbc81f73dccd3e394706de585e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-136', 'math', 5, 2, 'match', '{"stem":"公园志愿岗：把实际问题中的数量与对应关系式配对。","left":["总价","路程","工作总量","剩余量"],"right":["效率×时间","单价×数量","原有-用去+增加","速度×时间"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用综合应用的定义和计算规则完成配对。"}'::jsonb, 'builtin', '综合应用', 'apply', array['全国通用', '综合应用']::text[], '451cd0740d10be9eac7de022afb1c475e28632125e6ae7a93f48a640b9bee6a7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-137', 'math', 5, 2, 'match', '{"stem":"学校广播站：把每个小数算式与计算结果配对。","left":["2.5+1.5","6.4-2.4","1.2×5","8.4÷2"],"right":["6","4","4.2","4"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用小数运算的定义和计算规则完成配对。"}'::jsonb, 'builtin', '小数运算', 'apply', array['全国通用', '综合应用']::text[], '2c4e5227649cd6afa00ac087fc23eb4729724c3c0bff5cb70573bf8803c79519', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-138', 'math', 5, 2, 'match', '{"stem":"学校广播站：把每个分数算式与最简结果配对。","left":["1/4+1/4","3/5-1/5","2/3+1/3","7/8-3/8"],"right":["1","1/2","1/2","2/5"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用分数运算的定义和计算规则完成配对。"}'::jsonb, 'builtin', '分数运算', 'apply', array['全国通用', '综合应用']::text[], '7504cabca865be84a16b8ad0d9c003c7b3340cf86d7990b596430bf5cb5dfb4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-139', 'math', 5, 3, 'match', '{"stem":"学校广播站：判断左边各数符合右边哪种整除关系。","left":["2","3","5","12"],"right":["25的因数","12的因数","6的倍数","18的因数"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用因数与倍数的定义和计算规则完成配对。"}'::jsonb, 'builtin', '因数与倍数', 'reason', array['全国通用', '综合应用']::text[], '653f5634ad66854f6d1202fc627fa53cf0b8dc605df81a45c95ecd84d3904255', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g5-math-authored-140', 'math', 5, 3, 'match', '{"stem":"学校广播站：把每个方程与它的解配对。","left":["x+3=8","2x=12","x-4=7","3x+1=10"],"right":["x=11","x=5","x=3","x=6"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"逐项运用简易方程的定义和计算规则完成配对。"}'::jsonb, 'builtin', '简易方程', 'reason', array['全国通用', '综合应用']::text[], 'f71e85964101e58627acf3b37bae3e2a03ec932d261a48e6e4fa1a11fc1ddf66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;

commit;
