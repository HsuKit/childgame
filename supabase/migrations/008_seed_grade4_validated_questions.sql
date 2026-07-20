-- Auto-generated from validated canonical question JSON.
-- Safe to run repeatedly: rows are upserted by external_id.
begin;

insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-001', 'chinese', 4, 1, 'choice', '{"stem":"___今天下雨，运动会___改到体育馆举行。","options":["因为……所以……","虽然……但是……","如果……就……","不但……而且……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“因为……所以……”。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], '0b7a298dd938b2c2e135afe3c7fbc73e59578ad0891853973ba6a3c02a480b9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-002', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“雨停后，操场上还有积水。值日生先用扫帚把水推向排水口，又立起“小心地滑”的提示牌。很快，通道恢复了安全。”这段话的句段关系是？","options":["按地点远近排列","先写问题，再写解决办法和结果","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先写问题，再写解决办法和结果”。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], 'e04728f253459abbe2630add52c9e3121680eb2a34e7601814a6c018c4c57665', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-003', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“雨停后，操场上还有积水。值日生先用扫帚把水推向排水口，又立起“小心地滑”的提示牌。很快，通道恢复了安全。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","值日生及时处理积水保障安全","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“值日生及时处理积水保障安全”展开。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], '50c47bf0916e9eed6d31c46c5c10a776925f14ea895187b8c6d41e3bc2f343da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-004', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“雨停后，操场上还有积水。值日生先用扫帚把水推向排水口，又立起“小心地滑”的提示牌。很快，通道恢复了安全。”哪项信息最能支持“值日生及时处理积水保障安全”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","扫水并立起提示牌"],"answer":3,"explanation":"“扫水并立起提示牌”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], 'f71d93db423405aea297a1b3f0e4376cd6bef51a9cd5402133eeb89c857086e1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-005', 'chinese', 4, 1, 'choice', '{"stem":"根据短文：“雨停后，操场上还有积水。值日生先用扫帚把水推向排水口，又立起“小心地滑”的提示牌。很快，通道恢复了安全。”可以合理推断什么？","options":["值日生做事细心负责","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“值日生做事细心负责”。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], 'aacf905489bc592bc0209aeffb2c56891ef06201483000629a6142253c0235ab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-006', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“雨停后，操场上还有积水。值日生先用扫帚把水推向排水口，又立起“小心地滑”的提示牌。很快，通道恢复了安全。”作者怎样把事情写清楚？","options":["只罗列无关词语","按事情发展顺序写清处理积水的过程","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文按事情发展顺序写清处理积水的过程。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], '3f2ea7bc743a6541dedc5aa2b4958f2b5e623b2f2b1165947c435a8c8281bb7b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-007', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“雨停后，操场上还有积水。值日生先用扫帚把水推向排水口，又立起“小心地滑”的提示牌。很快，通道恢复了安全。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","积水会使通道湿滑","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“积水会使通道湿滑”。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], '3056aef4d5fe6a5fdb485ba2dff5ff0f01145f7299935cadc1525ce7ee9cbf04', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-008', 'chinese', 4, 1, 'choice', '{"stem":"“一道残阳铺水中，半江瑟瑟半江红”描写的时间最可能是？","options":["清晨","正午","深夜","傍晚"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“傍晚”。"}'::jsonb, 'builtin', '古诗文初步', 'understand', array['全国通用', '阅读理解']::text[], '11ca82cd9828a90a50d56ed0233b9025f0e4cffa5a32918a80703e3517469b3e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-009', 'chinese', 4, 1, 'choice', '{"stem":"___路程很远，队员们___按时到达了。","options":["虽然……但是……","因为……所以……","只要……就……","一边……一边……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“虽然……但是……”。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], 'fa1afbf53412f01e03e1a4caba8d15d28ca3bb3ce1875f6676f160d1e6b3ca2a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-010', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“小区原来只有一只旧衣回收箱，常常装满。居民提出建议后，物业增加了两只，并标明投放要求。如今旧衣分类更方便了。”这段话的句段关系是？","options":["按地点远近排列","先写原来的问题，再写改进和变化","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先写原来的问题，再写改进和变化”。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], 'a43d9490ac9d1f30cee15d4d007c44eb24e904928dfe95bcd5ec3498b63945d3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-011', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“小区原来只有一只旧衣回收箱，常常装满。居民提出建议后，物业增加了两只，并标明投放要求。如今旧衣分类更方便了。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","增加回收箱改善了旧衣回收","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“增加回收箱改善了旧衣回收”展开。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], 'feef41a9d7a6c02f2e3e72d28545f9c9219f7b38893dc0ec19fb00918db26943', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-012', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“小区原来只有一只旧衣回收箱，常常装满。居民提出建议后，物业增加了两只，并标明投放要求。如今旧衣分类更方便了。”哪项信息最能支持“增加回收箱改善了旧衣回收”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","增加两只并标明投放要求"],"answer":3,"explanation":"“增加两只并标明投放要求”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], 'f2b7f40a333d1e91958649c6b9bd63ca019c398a5bb3e54082c42a466fe953d6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-013', 'chinese', 4, 1, 'choice', '{"stem":"根据短文：“小区原来只有一只旧衣回收箱，常常装满。居民提出建议后，物业增加了两只，并标明投放要求。如今旧衣分类更方便了。”可以合理推断什么？","options":["居民建议得到了重视","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“居民建议得到了重视”。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], 'b8e820965a50f71ab94eb63d8b50e554e3ff45546d674d1c06877cae77eab6d0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-014', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“小区原来只有一只旧衣回收箱，常常装满。居民提出建议后，物业增加了两只，并标明投放要求。如今旧衣分类更方便了。”作者怎样把事情写清楚？","options":["只罗列无关词语","通过前后变化表现改进效果","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文通过前后变化表现改进效果。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], 'a4c568d6558ebc88cac2949596cd08271cf4f40b1af05a61660e9a2c94d7a248', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-015', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“小区原来只有一只旧衣回收箱，常常装满。居民提出建议后，物业增加了两只，并标明投放要求。如今旧衣分类更方便了。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","清楚的投放要求有助于分类","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“清楚的投放要求有助于分类”。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], 'ae967466957a5e8d39d7d35fb44ecf58aeedd67d47cc1059fb78f9a10788ad1f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-016', 'chinese', 4, 1, 'choice', '{"stem":"“不识庐山真面目，只缘身在此山中”中的“缘”意思是？","options":["缘分","沿着","边缘","因为"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“因为”。"}'::jsonb, 'builtin', '古诗文初步', 'understand', array['全国通用', '阅读理解']::text[], '1c572e04b1bc8d7c3d3f183ccd4ff39ae08e5f32c89a7b9830a86289607185e6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-017', 'chinese', 4, 1, 'choice', '{"stem":"___认真观察，___能发现植物每天的变化。","options":["只要……就……","即使……也……","因为……所以……","不是……而是……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“只要……就……”。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], '194a43297584d3d9f40ce9f0532aa1e96962c3681076a3a2d76974c3eb5d1430', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-018', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“为了观察绿豆发芽，小语每天早上七点测量并记录。第五天，她发现有一盆长得慢，检查后发现这盆得到的阳光较少。”这段话的句段关系是？","options":["按地点远近排列","先写观察过程，再写发现及原因","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先写观察过程，再写发现及原因”。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], 'aca9ebb27a5ddaa7af743ff5d23d0a4828ab1ed00089140a8ae2586b4c6119a3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-019', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“为了观察绿豆发芽，小语每天早上七点测量并记录。第五天，她发现有一盆长得慢，检查后发现这盆得到的阳光较少。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","连续观察帮助发现绿豆生长差异的原因","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“连续观察帮助发现绿豆生长差异的原因”展开。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], 'b8854b77869c64d5557245c5fc7b6c636d83330207500aec11e753bad3399802', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-020', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“为了观察绿豆发芽，小语每天早上七点测量并记录。第五天，她发现有一盆长得慢，检查后发现这盆得到的阳光较少。”哪项信息最能支持“连续观察帮助发现绿豆生长差异的原因”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","每天同一时间测量并记录"],"answer":3,"explanation":"“每天同一时间测量并记录”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], '9efa3d0cc0bf53594ed2c03e1b66ca00c1ba6b0701775d12ce00454a5037b22a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-021', 'chinese', 4, 1, 'choice', '{"stem":"根据短文：“为了观察绿豆发芽，小语每天早上七点测量并记录。第五天，她发现有一盆长得慢，检查后发现这盆得到的阳光较少。”可以合理推断什么？","options":["阳光可能影响绿豆生长","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“阳光可能影响绿豆生长”。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], 'fdda169b7723f1ba782de04584f55703e3b847be4f9f42e69e8f0c993fa227ef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-022', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“为了观察绿豆发芽，小语每天早上七点测量并记录。第五天，她发现有一盆长得慢，检查后发现这盆得到的阳光较少。”作者怎样把事情写清楚？","options":["只罗列无关词语","用具体时间和发现推进事件","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文用具体时间和发现推进事件。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], '2c79d875efb431843b47ad573c2dac98020f021db4b56d1eadb460c3b04602a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-023', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“为了观察绿豆发芽，小语每天早上七点测量并记录。第五天，她发现有一盆长得慢，检查后发现这盆得到的阳光较少。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","对比记录能帮助寻找原因","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“对比记录能帮助寻找原因”。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], '7a19480bf6cc89ffd29dd6c024b809fe4d7cfcb6464f177035a84bae4a4ea391', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-024', 'chinese', 4, 1, 'choice', '{"stem":"“梅须逊雪三分白，雪却输梅一段香”主要写梅和雪？","options":["完全相同","都没有优点","只比较大小","各有长处"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“各有长处”。"}'::jsonb, 'builtin', '古诗文初步', 'understand', array['全国通用', '阅读理解']::text[], '531c5d62cba805f42e4d3f8e92335efda2a70459d50a7ca1dc744774f0cc6d66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-025', 'chinese', 4, 1, 'choice', '{"stem":"小林___会画画，___会制作手工作品。","options":["不但……而且……","如果……就……","虽然……但是……","因为……所以……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“不但……而且……”。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], 'd04b331f54678061fa4e22fef2a66cd2765403ef8003849b1b83af8f83b5d67a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-026', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“图书管理员把书按类别摆放，又在书架侧面贴上编号。读者先看分类标牌，再按编号寻找，很快就能找到需要的书。”这段话的句段关系是？","options":["按地点远近排列","先写整理方法，再写使用效果","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先写整理方法，再写使用效果”。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], 'e98c46a8d246df8f2055a0ff4f36d6b6f216fc13735b61d0af2e52097cd65c2d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-027', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“图书管理员把书按类别摆放，又在书架侧面贴上编号。读者先看分类标牌，再按编号寻找，很快就能找到需要的书。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","分类和编号让找书更高效","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“分类和编号让找书更高效”展开。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], '0125c8a16eb1edc9ec36532645da30b42f74defd4dd9a3acdc907dfe50aabe48', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-028', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“图书管理员把书按类别摆放，又在书架侧面贴上编号。读者先看分类标牌，再按编号寻找，很快就能找到需要的书。”哪项信息最能支持“分类和编号让找书更高效”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","按类别摆放并贴编号"],"answer":3,"explanation":"“按类别摆放并贴编号”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], '5748cb5badf5b26744eab90ae608b65f5249fdbc1bf1471862cf853ec9f7b4a6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-029', 'chinese', 4, 1, 'choice', '{"stem":"根据短文：“图书管理员把书按类别摆放，又在书架侧面贴上编号。读者先看分类标牌，再按编号寻找，很快就能找到需要的书。”可以合理推断什么？","options":["清楚的规则能节省查找时间","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“清楚的规则能节省查找时间”。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], '08a06fe090be29187c42f9d180c1bda2ba6608f9bdca5bbdd25c8fd8eec5494b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-030', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“图书管理员把书按类别摆放，又在书架侧面贴上编号。读者先看分类标牌，再按编号寻找，很快就能找到需要的书。”作者怎样把事情写清楚？","options":["只罗列无关词语","围绕整理前后的使用过程叙述","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文围绕整理前后的使用过程叙述。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], '78213e9d198dd80662a05ea16fd71d8ee731b69b5152795e752d04e634f6f763', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-031', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“图书管理员把书按类别摆放，又在书架侧面贴上编号。读者先看分类标牌，再按编号寻找，很快就能找到需要的书。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","分类标牌和编号具有索引作用","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“分类标牌和编号具有索引作用”。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], 'c2d6b54a8d0f652b5512351802f824b5f7f01fca6b05594b45c4f66f7de7e330', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-032', 'chinese', 4, 1, 'choice', '{"stem":"“可怜九月初三夜，露似真珠月似弓”用了什么修辞？","options":["排比","反问","夸张","比喻"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“比喻”。"}'::jsonb, 'builtin', '古诗文初步', 'understand', array['全国通用', '阅读理解']::text[], '964bb805c6fa9813213e4f9e191875ef95629944ca36493be0a314bf92e2cb42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-033', 'chinese', 4, 1, 'choice', '{"stem":"___明天不下雨，我们___去公园调查昆虫。","options":["如果……就……","不但……而且……","因为……所以……","一边……一边……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“如果……就……”。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], '6a81742433763d36358c2ca1642911ef55d6ff182997efcfa228c040e1801b2e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-034', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“午后突然刮起大风，阳台上的花盆摇晃起来。小杰先关好窗户，再把花盆搬到墙边，最后检查门窗是否牢固。”这段话的句段关系是？","options":["按地点远近排列","按先后顺序写应对大风的行动","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“按先后顺序写应对大风的行动”。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], '5e7eafa9a1bc94390ce91f22c8e5657f723d5c3cc14689646bb5f3d4641b5c5d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-035', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“午后突然刮起大风，阳台上的花盆摇晃起来。小杰先关好窗户，再把花盆搬到墙边，最后检查门窗是否牢固。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","小杰有条理地消除大风带来的隐患","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“小杰有条理地消除大风带来的隐患”展开。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], '1d5882d69a9582e291642cce215a04fbc47424e00b41c1db9a5be14d72ef6148', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-036', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“午后突然刮起大风，阳台上的花盆摇晃起来。小杰先关好窗户，再把花盆搬到墙边，最后检查门窗是否牢固。”哪项信息最能支持“小杰有条理地消除大风带来的隐患”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","关窗、搬花盆并检查门窗"],"answer":3,"explanation":"“关窗、搬花盆并检查门窗”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], 'e2d90ab613002b0779ee3b74aaf19b7615c74f81ada5dfcf32211a72d9a03590', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-037', 'chinese', 4, 1, 'choice', '{"stem":"根据短文：“午后突然刮起大风，阳台上的花盆摇晃起来。小杰先关好窗户，再把花盆搬到墙边，最后检查门窗是否牢固。”可以合理推断什么？","options":["遇到突发情况应先保证安全","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“遇到突发情况应先保证安全”。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], '3e47a8cba7346faee32a1d3be7b93258823abedc6e025751457d4218ca828ac7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-038', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“午后突然刮起大风，阳台上的花盆摇晃起来。小杰先关好窗户，再把花盆搬到墙边，最后检查门窗是否牢固。”作者怎样把事情写清楚？","options":["只罗列无关词语","用“先、再、最后”组织事件","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文用“先、再、最后”组织事件。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], '1d353d0b88b94a2c6e0e702949691ef79643adb8c34b21829a0387f026e87350', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-039', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“午后突然刮起大风，阳台上的花盆摇晃起来。小杰先关好窗户，再把花盆搬到墙边，最后检查门窗是否牢固。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","大风可能使高处物品掉落","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“大风可能使高处物品掉落”。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], 'fb1f51e7e4c415462aab921e5b66cf18c505d792bfab403054dc51b4bd99e454', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-040', 'chinese', 4, 1, 'choice', '{"stem":"“横看成岭侧成峰，远近高低各不同”说明观察角度不同会怎样？","options":["改变山的高度","让山消失","使天气变化","看到不同景象"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“看到不同景象”。"}'::jsonb, 'builtin', '古诗文初步', 'understand', array['全国通用', '阅读理解']::text[], 'f49a51f4be5f8e3f8cb5fe694704db038621823b859fe8178c9be7bb9ae5867c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-041', 'chinese', 4, 1, 'choice', '{"stem":"妹妹___听音乐，___整理书架。","options":["一边……一边……","只要……就……","虽然……但是……","不是……而是……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“一边……一边……”。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], '87eecab5a4488f792def25f9699d983fd1bf1ad1a7684eaa284b7ec23663ba23', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-042', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“一张普通纸巾吸水快，但湿后容易破；厨房纸稍厚，吸水后仍较结实。实验小组用相同水量测试，得出了这个结论。”这段话的句段关系是？","options":["按地点远近排列","先比较现象，再说明实验结论","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先比较现象，再说明实验结论”。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], 'd5664b84cfce11daa41e2fa162c3b57e87b00d2ca786e6e126fa37c6fc352ba6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-043', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“一张普通纸巾吸水快，但湿后容易破；厨房纸稍厚，吸水后仍较结实。实验小组用相同水量测试，得出了这个结论。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","不同纸张的吸水性和湿强度不同","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“不同纸张的吸水性和湿强度不同”展开。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], '418e4a006244af76f30f6a332998f814b30bcdd4e13fe5a4263e026d527f0da7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-044', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“一张普通纸巾吸水快，但湿后容易破；厨房纸稍厚，吸水后仍较结实。实验小组用相同水量测试，得出了这个结论。”哪项信息最能支持“不同纸张的吸水性和湿强度不同”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","使用相同水量分别测试"],"answer":3,"explanation":"“使用相同水量分别测试”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], '266baef4db760e7ef8dee4989883567dfe4da5c856ef906bbd8bd78c7e27f935', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-045', 'chinese', 4, 1, 'choice', '{"stem":"根据短文：“一张普通纸巾吸水快，但湿后容易破；厨房纸稍厚，吸水后仍较结实。实验小组用相同水量测试，得出了这个结论。”可以合理推断什么？","options":["选择擦水纸张还要考虑湿后强度","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“选择擦水纸张还要考虑湿后强度”。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], '630e8dc204c64bb877ef5d2559260dfd3c8aed346882e6c6742d1e7c8c9830cc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-046', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“一张普通纸巾吸水快，但湿后容易破；厨房纸稍厚，吸水后仍较结实。实验小组用相同水量测试，得出了这个结论。”作者怎样把事情写清楚？","options":["只罗列无关词语","按实验和结论的顺序记录","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文按实验和结论的顺序记录。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], 'bd3daa17b2c85dbf0c600e78f31fcc02f12bdd15775a4952436591d3efbebee2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-047', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“一张普通纸巾吸水快，但湿后容易破；厨房纸稍厚，吸水后仍较结实。实验小组用相同水量测试，得出了这个结论。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","控制水量相同能使比较更公平","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“控制水量相同能使比较更公平”。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], '74bcfc0d26a064751fab1089c0f5ba0aab9a781e8b27740c4144c56ca5cbbdcf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-048', 'chinese', 4, 1, 'choice', '{"stem":"“返景入深林，复照青苔上”描写的是哪种景象？","options":["大雨落入树林","月光照亮雪地","清晨浓雾散去","夕阳照进树林"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“夕阳照进树林”。"}'::jsonb, 'builtin', '古诗文初步', 'understand', array['全国通用', '阅读理解']::text[], '08b46ad552287085f12b4ccdd1944c302fe5e25b3a6274f07a52c0b9c4b4e351', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-049', 'chinese', 4, 1, 'choice', '{"stem":"这本书___故事有趣，___插图也很精美。","options":["不仅……还……","因为……所以……","如果……就……","即使……也……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“不仅……还……”。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], 'c6dc171d5c7a872b5aa152e77b66812d700242c134164a1267f00e747def6664', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-050', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“城市里的树木能遮阴，也能吸收一部分灰尘。夏天，树荫下的地面温度通常比阳光直射处低。因此，合理增加绿地有助于改善生活环境。”这段话的句段关系是？","options":["按地点远近排列","先列作用和现象，再得出结论","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先列作用和现象，再得出结论”。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], 'ebb2c42d969586b2b779ab85930f4c57605fe63a6950d7ff01c4015d6c597c63', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-051', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“城市里的树木能遮阴，也能吸收一部分灰尘。夏天，树荫下的地面温度通常比阳光直射处低。因此，合理增加绿地有助于改善生活环境。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","合理增加绿地能改善城市环境","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“合理增加绿地能改善城市环境”展开。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], 'fdfc987658e301d2636abfd6d88587d048a4c62f0b50e5fd77d24f3dc3d42270', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-052', 'chinese', 4, 1, 'choice', '{"stem":"阅读：“城市里的树木能遮阴，也能吸收一部分灰尘。夏天，树荫下的地面温度通常比阳光直射处低。因此，合理增加绿地有助于改善生活环境。”哪项信息最能支持“合理增加绿地能改善城市环境”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","树木遮阴、吸尘并降低树荫地面温度"],"answer":3,"explanation":"“树木遮阴、吸尘并降低树荫地面温度”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], '5502e9e10c51929d88db2735ca8fba285756f1b830c0b48ffe4e0abf6fb3df8b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-053', 'chinese', 4, 2, 'choice', '{"stem":"根据短文：“城市里的树木能遮阴，也能吸收一部分灰尘。夏天，树荫下的地面温度通常比阳光直射处低。因此，合理增加绿地有助于改善生活环境。”可以合理推断什么？","options":["绿地规划应考虑居民活动区域","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“绿地规划应考虑居民活动区域”。"}'::jsonb, 'builtin', '概括与推断', 'apply', array['全国通用', '信息整合']::text[], '292c303bf5a6c67f172588be82614ffbb4e44a4f4b5507d39f4a4ba80fd79563', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-054', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“城市里的树木能遮阴，也能吸收一部分灰尘。夏天，树荫下的地面温度通常比阳光直射处低。因此，合理增加绿地有助于改善生活环境。”作者怎样把事情写清楚？","options":["只罗列无关词语","从现象过渡到建议","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文从现象过渡到建议。"}'::jsonb, 'builtin', '叙事文本', 'apply', array['全国通用', '信息整合']::text[], 'b001caf74f1f35035268bfeb31115f1991d7c8bb31f990ecff89294452ae4802', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-055', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“城市里的树木能遮阴，也能吸收一部分灰尘。夏天，树荫下的地面温度通常比阳光直射处低。因此，合理增加绿地有助于改善生活环境。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","树荫能减少阳光直射带来的升温","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“树荫能减少阳光直射带来的升温”。"}'::jsonb, 'builtin', '说明性文本', 'apply', array['全国通用', '信息整合']::text[], 'ad9a4dbc5b9e11caf5ad10d52380a0ad9b43e4a306cbc2535d17279f398579eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-056', 'chinese', 4, 2, 'choice', '{"stem":"“莫愁前路无知己，天下谁人不识君”表达了怎样的情感？","options":["愤怒和责备","惊讶和害怕","骄傲和自满","鼓励和惜别"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“鼓励和惜别”。"}'::jsonb, 'builtin', '古诗文初步', 'apply', array['全国通用', '信息整合']::text[], '867d96c53243a0e3f55151521b6fbabe112c0902f3f1ffffbaf33119c13e9eb0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-057', 'chinese', 4, 2, 'choice', '{"stem":"___遇到难题，他___没有放弃。","options":["即使……也……","一边……一边……","因为……所以……","不但……而且……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“即使……也……”。"}'::jsonb, 'builtin', '关联词', 'apply', array['全国通用', '信息整合']::text[], '4051c59ace786ebbc81b14c8e65afa854fa7a586a92e689ef61edcf9ff757a53', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-058', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“候鸟迁徙并不是随意飞行。它们会利用太阳、星星和地球磁场辨别方向，还会在途中选择食物充足的地方休息。”这段话的句段关系是？","options":["按地点远近排列","先否定误解，再说明事实","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先否定误解，再说明事实”。"}'::jsonb, 'builtin', '句段关系', 'apply', array['全国通用', '信息整合']::text[], 'abbe574a924b7b200b8729e7ef230322cdbf8f583383cf92428ac166eef4026e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-059', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“候鸟迁徙并不是随意飞行。它们会利用太阳、星星和地球磁场辨别方向，还会在途中选择食物充足的地方休息。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","候鸟利用多种线索有规律地迁徙","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“候鸟利用多种线索有规律地迁徙”展开。"}'::jsonb, 'builtin', '中心意思', 'apply', array['全国通用', '信息整合']::text[], 'dd1108b46d9b86356784ab1c3ce327641e5afc77d2559fa8d4fb313d8d79aad4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-060', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“候鸟迁徙并不是随意飞行。它们会利用太阳、星星和地球磁场辨别方向，还会在途中选择食物充足的地方休息。”哪项信息最能支持“候鸟利用多种线索有规律地迁徙”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","利用太阳、星星和地球磁场辨向"],"answer":3,"explanation":"“利用太阳、星星和地球磁场辨向”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'apply', array['全国通用', '信息整合']::text[], '5118cbf7e2f0ea63041798b5f37615714490ca7bddca8d20a2f78103b14fa2ba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-061', 'chinese', 4, 2, 'choice', '{"stem":"根据短文：“候鸟迁徙并不是随意飞行。它们会利用太阳、星星和地球磁场辨别方向，还会在途中选择食物充足的地方休息。”可以合理推断什么？","options":["迁徙路线需要方向和补给条件","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“迁徙路线需要方向和补给条件”。"}'::jsonb, 'builtin', '概括与推断', 'apply', array['全国通用', '信息整合']::text[], '4d893c6c9287dd7aed009a48604d1885082c4ba17de8921f7c65ef01af03fb13', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-062', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“候鸟迁徙并不是随意飞行。它们会利用太阳、星星和地球磁场辨别方向，还会在途中选择食物充足的地方休息。”作者怎样把事情写清楚？","options":["只罗列无关词语","先提出观点再列举依据","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文先提出观点再列举依据。"}'::jsonb, 'builtin', '叙事文本', 'apply', array['全国通用', '信息整合']::text[], 'a472d3019c736938fc17dfc29f7d8dd8a544d236ffcd23c987b5520d0dc0be73', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-063', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“候鸟迁徙并不是随意飞行。它们会利用太阳、星星和地球磁场辨别方向，还会在途中选择食物充足的地方休息。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","候鸟会选择食物充足处休息","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“候鸟会选择食物充足处休息”。"}'::jsonb, 'builtin', '说明性文本', 'apply', array['全国通用', '信息整合']::text[], 'ad9f687d9fbc47d41a07f6809b64cdc6302916e8290f7e15ffaf4676df72cf42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-064', 'chinese', 4, 2, 'choice', '{"stem":"“生当作人杰，死亦为鬼雄”表现了怎样的精神？","options":["胆小犹豫","悠闲自在","悲观退缩","豪迈坚定"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“豪迈坚定”。"}'::jsonb, 'builtin', '古诗文初步', 'apply', array['全国通用', '信息整合']::text[], '7188f3f32bb2ca7aa0c234eab6790b53f047da15c2a7f2c3f61dfc12472e05f2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-065', 'chinese', 4, 2, 'choice', '{"stem":"我们要做的___抱怨困难，___想办法解决。","options":["不是……而是……","如果……就……","虽然……但是……","因为……所以……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“不是……而是……”。"}'::jsonb, 'builtin', '关联词', 'apply', array['全国通用', '信息整合']::text[], '8d7d39c48009a86174f786324dbd0f11c6bc61f98553311c6383a330a044c92e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-066', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小溪旁的木桥年久失修，村民过桥很不方便。大家共同商量方案，有人准备木料，有人负责施工，还有人设置临时绕行标志。新桥很快建好了。”这段话的句段关系是？","options":["按地点远近排列","先写困难，再写合作解决的过程","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先写困难，再写合作解决的过程”。"}'::jsonb, 'builtin', '句段关系', 'apply', array['全国通用', '信息整合']::text[], 'fe6d10cae93fec0501329d01601a5956801690a7cea07b4c6115bd713a692f60', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-067', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小溪旁的木桥年久失修，村民过桥很不方便。大家共同商量方案，有人准备木料，有人负责施工，还有人设置临时绕行标志。新桥很快建好了。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","村民合作修好木桥","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“村民合作修好木桥”展开。"}'::jsonb, 'builtin', '中心意思', 'apply', array['全国通用', '信息整合']::text[], 'd5042bdc27eb84fd2cf591d443a4348143f4a6176b2c94d1d5178321e4473fea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-068', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小溪旁的木桥年久失修，村民过桥很不方便。大家共同商量方案，有人准备木料，有人负责施工，还有人设置临时绕行标志。新桥很快建好了。”哪项信息最能支持“村民合作修好木桥”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","分工准备木料、施工和设置标志"],"answer":3,"explanation":"“分工准备木料、施工和设置标志”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'apply', array['全国通用', '信息整合']::text[], '0eb96f701504f8529f47ec4e80b826ee971b8c69e7fa13b935dd3a60950afd07', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-069', 'chinese', 4, 2, 'choice', '{"stem":"根据短文：“小溪旁的木桥年久失修，村民过桥很不方便。大家共同商量方案，有人准备木料，有人负责施工，还有人设置临时绕行标志。新桥很快建好了。”可以合理推断什么？","options":["合理分工能提高办事效率","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“合理分工能提高办事效率”。"}'::jsonb, 'builtin', '概括与推断', 'apply', array['全国通用', '信息整合']::text[], '0e10eb8df858915aa95b2e0b1c6a3bfd48232f14923bffc4e0753a2da7e3dcc3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-070', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小溪旁的木桥年久失修，村民过桥很不方便。大家共同商量方案，有人准备木料，有人负责施工，还有人设置临时绕行标志。新桥很快建好了。”作者怎样把事情写清楚？","options":["只罗列无关词语","通过人物分工推动事情发展","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文通过人物分工推动事情发展。"}'::jsonb, 'builtin', '叙事文本', 'apply', array['全国通用', '信息整合']::text[], '8a2be0ec11013380d22169835edb40561f6d69e2c2f7e282f1ea35fab8942061', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-071', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小溪旁的木桥年久失修，村民过桥很不方便。大家共同商量方案，有人准备木料，有人负责施工，还有人设置临时绕行标志。新桥很快建好了。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","临时标志能保障施工期间通行安全","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“临时标志能保障施工期间通行安全”。"}'::jsonb, 'builtin', '说明性文本', 'apply', array['全国通用', '信息整合']::text[], 'a87426a5d44e0039b7e0d28035ba2d5c5014065fb19d3134e3231961158cdf40', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-072', 'chinese', 4, 2, 'choice', '{"stem":"“家家乞巧望秋月”与哪个传统节日有关？","options":["春节","端午","清明","七夕"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“七夕”。"}'::jsonb, 'builtin', '古诗文初步', 'apply', array['全国通用', '信息整合']::text[], '0baa25e3d25aac54745a2bee0f89c75ddcb14b575f9a7ef58867ceb0d854e182', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-073', 'chinese', 4, 2, 'choice', '{"stem":"___风很大，___风筝仍然飞得很稳。","options":["尽管……可是……","只要……就……","不是……而是……","因为……所以……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“尽管……可是……”。"}'::jsonb, 'builtin', '关联词', 'apply', array['全国通用', '信息整合']::text[], 'af7267eaad02ea45dfc60bcf08d61ab5608ea2884a479162b887409654ca1cc8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-074', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“海绵城市会用透水路面、下凹绿地等设施吸收和储存雨水。雨量小时，水慢慢渗入地下；雨量大时，一部分水会被暂时储存，从而减轻排水压力。”这段话的句段关系是？","options":["按地点远近排列","先介绍设施，再分情况说明作用","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先介绍设施，再分情况说明作用”。"}'::jsonb, 'builtin', '句段关系', 'apply', array['全国通用', '信息整合']::text[], '5ff314f907984701612911326f2d4bf0ad760beca2357c897ba3cc5f047d2d62', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-075', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“海绵城市会用透水路面、下凹绿地等设施吸收和储存雨水。雨量小时，水慢慢渗入地下；雨量大时，一部分水会被暂时储存，从而减轻排水压力。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","海绵城市设施能调节雨水、减轻排水压力","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“海绵城市设施能调节雨水、减轻排水压力”展开。"}'::jsonb, 'builtin', '中心意思', 'apply', array['全国通用', '信息整合']::text[], '3fcf6ffec11ecc818b9cef7dd3bde088de573785f13f0cc808f9fc68916a6818', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-076', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“海绵城市会用透水路面、下凹绿地等设施吸收和储存雨水。雨量小时，水慢慢渗入地下；雨量大时，一部分水会被暂时储存，从而减轻排水压力。”哪项信息最能支持“海绵城市设施能调节雨水、减轻排水压力”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","透水路面渗水、下凹绿地储水"],"answer":3,"explanation":"“透水路面渗水、下凹绿地储水”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'apply', array['全国通用', '信息整合']::text[], '783fbd644105d8c1803938966729fc38a750a161882b49b5765a88e2dea3d662', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-077', 'chinese', 4, 2, 'choice', '{"stem":"根据短文：“海绵城市会用透水路面、下凹绿地等设施吸收和储存雨水。雨量小时，水慢慢渗入地下；雨量大时，一部分水会被暂时储存，从而减轻排水压力。”可以合理推断什么？","options":["城市建设需同时考虑渗水和储水","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“城市建设需同时考虑渗水和储水”。"}'::jsonb, 'builtin', '概括与推断', 'apply', array['全国通用', '信息整合']::text[], 'd53516aeab94ad2eb0c147c18f9fb61041bc6a4eb3d2f81db18caf8b28d28666', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-078', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“海绵城市会用透水路面、下凹绿地等设施吸收和储存雨水。雨量小时，水慢慢渗入地下；雨量大时，一部分水会被暂时储存，从而减轻排水压力。”作者怎样把事情写清楚？","options":["只罗列无关词语","按雨量不同分情况说明","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文按雨量不同分情况说明。"}'::jsonb, 'builtin', '叙事文本', 'apply', array['全国通用', '信息整合']::text[], '63a62a6a0890b927b39add1b6ebe959967ba28781d85d3ff7bd2fb1ec993e535', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-079', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“海绵城市会用透水路面、下凹绿地等设施吸收和储存雨水。雨量小时，水慢慢渗入地下；雨量大时，一部分水会被暂时储存，从而减轻排水压力。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","下凹绿地可暂时储存部分雨水","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“下凹绿地可暂时储存部分雨水”。"}'::jsonb, 'builtin', '说明性文本', 'apply', array['全国通用', '信息整合']::text[], '9c8313c26e3b31c6f1598b5404361e711a439adf508c4872e57212502c5b886e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-080', 'chinese', 4, 2, 'choice', '{"stem":"“但使龙城飞将在，不教胡马度阴山”表达诗人什么愿望？","options":["游览山水","回乡种田","学习书法","保卫边疆"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“保卫边疆”。"}'::jsonb, 'builtin', '古诗文初步', 'apply', array['全国通用', '信息整合']::text[], 'b71448c7d9803b4f0628d67550e24bd7e80e388e57798a9dacf40027ad829ae9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-081', 'chinese', 4, 2, 'choice', '{"stem":"___先查阅资料，___能让调查更有依据。","options":["只有……才……","虽然……但是……","不是……而是……","一边……一边……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“只有……才……”。"}'::jsonb, 'builtin', '关联词', 'apply', array['全国通用', '信息整合']::text[], 'f3f2340f923c57d5a4ca8e7afebc27f86acbe178df7923f7d0e77a0a563ab490', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-082', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小林第一次讲解模型时，只顾低头读稿，听众听不清重点。第二次，他缩短文字、增加示意图，并抬头与听众交流，讲解效果明显提高。”这段话的句段关系是？","options":["按地点远近排列","通过两次表现对比说明改进","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“通过两次表现对比说明改进”。"}'::jsonb, 'builtin', '句段关系', 'apply', array['全国通用', '信息整合']::text[], '74493453107bbbf15ac2cbf0ba767475073b344d68565dcff4d61ab607de8909', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-083', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小林第一次讲解模型时，只顾低头读稿，听众听不清重点。第二次，他缩短文字、增加示意图，并抬头与听众交流，讲解效果明显提高。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","调整讲解方式能提高表达效果","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“调整讲解方式能提高表达效果”展开。"}'::jsonb, 'builtin', '中心意思', 'apply', array['全国通用', '信息整合']::text[], 'ca4c9f269d8eb237511b00ef0a8770df8fa7d2873b97c586fc95cdc0a6c9f1ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-084', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小林第一次讲解模型时，只顾低头读稿，听众听不清重点。第二次，他缩短文字、增加示意图，并抬头与听众交流，讲解效果明显提高。”哪项信息最能支持“调整讲解方式能提高表达效果”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","缩短文字、增加示意图并与听众交流"],"answer":3,"explanation":"“缩短文字、增加示意图并与听众交流”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'apply', array['全国通用', '信息整合']::text[], '75b31ab3ab3339533d4a0f135a7bd4c87370bf89a01a39eeea6cfe4424d94890', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-085', 'chinese', 4, 2, 'choice', '{"stem":"根据短文：“小林第一次讲解模型时，只顾低头读稿，听众听不清重点。第二次，他缩短文字、增加示意图，并抬头与听众交流，讲解效果明显提高。”可以合理推断什么？","options":["有效表达要关注听众是否理解","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“有效表达要关注听众是否理解”。"}'::jsonb, 'builtin', '概括与推断', 'apply', array['全国通用', '信息整合']::text[], '4acb98f8a41a069b1f99c1a9b08016815a1f6b3c4a69696eb6a93e481da212c4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-086', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小林第一次讲解模型时，只顾低头读稿，听众听不清重点。第二次，他缩短文字、增加示意图，并抬头与听众交流，讲解效果明显提高。”作者怎样把事情写清楚？","options":["只罗列无关词语","用前后对比突出人物进步","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文用前后对比突出人物进步。"}'::jsonb, 'builtin', '叙事文本', 'apply', array['全国通用', '信息整合']::text[], 'dc6d9783fd29d26da858c648820ee5fabfee6722c9807654a21c56ccbdeeba41', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-087', 'chinese', 4, 2, 'choice', '{"stem":"阅读：“小林第一次讲解模型时，只顾低头读稿，听众听不清重点。第二次，他缩短文字、增加示意图，并抬头与听众交流，讲解效果明显提高。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","示意图能帮助呈现模型结构","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“示意图能帮助呈现模型结构”。"}'::jsonb, 'builtin', '说明性文本', 'apply', array['全国通用', '信息整合']::text[], '92ae9d1e0e0fcb4fdfe29d8011bd788c8a5d80e6c5209903b40a4dfe64f30fad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-088', 'chinese', 4, 2, 'choice', '{"stem":"“千里黄云白日曛，北风吹雁雪纷纷”描写怎样的天气？","options":["晴空万里","春雨绵绵","炎热无风","风雪交加"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“风雪交加”。"}'::jsonb, 'builtin', '古诗文初步', 'apply', array['全国通用', '信息整合']::text[], 'a0121933021201d1b3e74eed79eb71fbd9159e40a8665e2303b0e908515845d4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-089', 'chinese', 4, 2, 'choice', '{"stem":"我们___要节约用水，___要提醒身边的人。","options":["既……又……","如果……就……","因为……所以……","即使……也……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“既……又……”。"}'::jsonb, 'builtin', '关联词', 'apply', array['全国通用', '信息整合']::text[], '7202d170617f86a1fa433cdc94fb37d54f1035994de2dbedb6a586dd649585af', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-090', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“有些植物的种子带着小钩，能挂在动物毛上旅行；有些种子很轻，能随风飘远；还有些果实成熟后会弹出种子。不同结构帮助种子传播到新的地方。”这段话的句段关系是？","options":["按地点远近排列","先分类举例，再概括共同作用","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“先分类举例，再概括共同作用”。"}'::jsonb, 'builtin', '句段关系', 'reason', array['全国通用', '信息整合']::text[], '729a2dacce7bb19f5c446899bdf4b18818baddaea278888301cc2481aacc3295', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-091', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“有些植物的种子带着小钩，能挂在动物毛上旅行；有些种子很轻，能随风飘远；还有些果实成熟后会弹出种子。不同结构帮助种子传播到新的地方。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","植物种子利用不同结构传播","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“植物种子利用不同结构传播”展开。"}'::jsonb, 'builtin', '中心意思', 'reason', array['全国通用', '信息整合']::text[], '06637b962798a15ae7626ab7d0342815c309586105c44e88fa1e14145c64dad8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-092', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“有些植物的种子带着小钩，能挂在动物毛上旅行；有些种子很轻，能随风飘远；还有些果实成熟后会弹出种子。不同结构帮助种子传播到新的地方。”哪项信息最能支持“植物种子利用不同结构传播”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","小钩附着、轻种子随风、果实弹射"],"answer":3,"explanation":"“小钩附着、轻种子随风、果实弹射”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'reason', array['全国通用', '信息整合']::text[], '2adc52dba76a5d6854484d7f997d79d0f80cd92d9ed7af65bf9b69acaa433da7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-093', 'chinese', 4, 3, 'choice', '{"stem":"根据短文：“有些植物的种子带着小钩，能挂在动物毛上旅行；有些种子很轻，能随风飘远；还有些果实成熟后会弹出种子。不同结构帮助种子传播到新的地方。”可以合理推断什么？","options":["种子结构与传播方式相适应","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“种子结构与传播方式相适应”。"}'::jsonb, 'builtin', '概括与推断', 'reason', array['全国通用', '信息整合']::text[], 'e9ea1c47472521a50120155a0283d9ad95f1bdcf992865160af87f7db725604f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-094', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“有些植物的种子带着小钩，能挂在动物毛上旅行；有些种子很轻，能随风飘远；还有些果实成熟后会弹出种子。不同结构帮助种子传播到新的地方。”作者怎样把事情写清楚？","options":["只罗列无关词语","并列列举三种传播现象","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文并列列举三种传播现象。"}'::jsonb, 'builtin', '叙事文本', 'reason', array['全国通用', '信息整合']::text[], 'd2924667582964a5ac19b621ef814521cb117d8e5203fb8749930ea7ca0b3520', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-095', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“有些植物的种子带着小钩，能挂在动物毛上旅行；有些种子很轻，能随风飘远；还有些果实成熟后会弹出种子。不同结构帮助种子传播到新的地方。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","带小钩的种子可借助动物传播","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“带小钩的种子可借助动物传播”。"}'::jsonb, 'builtin', '说明性文本', 'reason', array['全国通用', '信息整合']::text[], '35b121b8895e4cdb259aca3bd3648b1c85fb6a3e78d3ed40b23c537ce3fbd425', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-096', 'chinese', 4, 3, 'choice', '{"stem":"“醉卧沙场君莫笑，古来征战几人回”中的“沙场”指？","options":["沙滩","田野","集市","战场"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“战场”。"}'::jsonb, 'builtin', '古诗文初步', 'reason', array['全国通用', '信息整合']::text[], 'b0a369247356fe652198c9368ddda8a8dd4b641fea6a2c70a545a6cc64e13d5d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-097', 'chinese', 4, 3, 'choice', '{"stem":"___实验失败了，大家___重新检查步骤。","options":["由于……因此……","不但……而且……","一边……一边……","虽然……但是……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“由于……因此……”。"}'::jsonb, 'builtin', '关联词', 'reason', array['全国通用', '信息整合']::text[], 'a7cf4a1e54d5bc685ceef8a561f250fff3a13030b38a1f5fd1ed3a5344beb736', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-098', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“研究小组发现，教室开灯时间常比需要的长。他们连续一周记录光照和开灯情况，提出“靠窗区域光线充足时少开一组灯”的建议，并比较实施前后的用电量。”这段话的句段关系是？","options":["按地点远近排列","从发现问题到调查、建议和验证","各句互不相关","只写结论不写依据"],"answer":1,"explanation":"段落内容体现了“从发现问题到调查、建议和验证”。"}'::jsonb, 'builtin', '句段关系', 'reason', array['全国通用', '信息整合']::text[], '9fad454e16d68811ab840bd61483a8210f8c486bbd54e5cb2b7524f7dc89f75c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-099', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“研究小组发现，教室开灯时间常比需要的长。他们连续一周记录光照和开灯情况，提出“靠窗区域光线充足时少开一组灯”的建议，并比较实施前后的用电量。”最恰当的中心意思是？","options":["只介绍天气和时间","重点描写人物外貌","用记录和对比验证节电建议","说明一种游戏规则"],"answer":2,"explanation":"关键内容都围绕“用记录和对比验证节电建议”展开。"}'::jsonb, 'builtin', '中心意思', 'reason', array['全国通用', '信息整合']::text[], 'b6ca7f8d875d533c4fd774c2b163d380e0dadf06ee7ba968a6202821fb4af0ca', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-100', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“研究小组发现，教室开灯时间常比需要的长。他们连续一周记录光照和开灯情况，提出“靠窗区域光线充足时少开一组灯”的建议，并比较实施前后的用电量。”哪项信息最能支持“用记录和对比验证节电建议”？","options":["文中出现了几个标点","故事发生在某一天","段落使用了许多常用字","连续记录并比较实施前后用电量"],"answer":3,"explanation":"“连续记录并比较实施前后用电量”是直接支持中心意思的具体证据。"}'::jsonb, 'builtin', '证据定位', 'reason', array['全国通用', '信息整合']::text[], '1623cd1494404750cfebd67ca09354a2dbbd8e3808dc8e0b6038a7de5a53261e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-101', 'chinese', 4, 3, 'choice', '{"stem":"根据短文：“研究小组发现，教室开灯时间常比需要的长。他们连续一周记录光照和开灯情况，提出“靠窗区域光线充足时少开一组灯”的建议，并比较实施前后的用电量。”可以合理推断什么？","options":["节能建议应有数据支持","所有问题都能自动解决","只要等待就一定成功","文中人物从不需要合作"],"answer":0,"explanation":"结合文中的做法和结果，可以推断“节能建议应有数据支持”。"}'::jsonb, 'builtin', '概括与推断', 'reason', array['全国通用', '信息整合']::text[], 'b2ef58a9d274b627cd25decf4c171407eb9573f4b65ac5f90c77d16202c40fee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-102', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“研究小组发现，教室开灯时间常比需要的长。他们连续一周记录光照和开灯情况，提出“靠窗区域光线充足时少开一组灯”的建议，并比较实施前后的用电量。”作者怎样把事情写清楚？","options":["只罗列无关词语","按研究步骤展开内容","不断重复同一句话","完全省略人物行动"],"answer":1,"explanation":"短文按研究步骤展开内容。"}'::jsonb, 'builtin', '叙事文本', 'reason', array['全国通用', '信息整合']::text[], 'cbb23d700f66bd3156035e58813caf890dc3ba43d1c0f9d398e9e86fada5ad4a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-103', 'chinese', 4, 3, 'choice', '{"stem":"阅读：“研究小组发现，教室开灯时间常比需要的长。他们连续一周记录光照和开灯情况，提出“靠窗区域光线充足时少开一组灯”的建议，并比较实施前后的用电量。”下列哪项知识能从文中得到？","options":["所有事物的特点都相同","任何结论都不需要证据","靠窗区域自然光通常更充足","观察和记录没有作用"],"answer":2,"explanation":"短文明确说明或支持了“靠窗区域自然光通常更充足”。"}'::jsonb, 'builtin', '说明性文本', 'reason', array['全国通用', '信息整合']::text[], '9a0ace3aa72ce065091183a6dad42352f3fafdb900a27378a57562d54ca037b1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-104', 'chinese', 4, 3, 'choice', '{"stem":"“嫦娥应悔偷灵药，碧海青天夜夜心”涉及哪个神话人物？","options":["女娲","夸父","盘古","嫦娥"],"answer":3,"explanation":"结合诗句中的关键词和画面，正确理解是“嫦娥”。"}'::jsonb, 'builtin', '古诗文初步', 'reason', array['全国通用', '信息整合']::text[], 'b023b08f613366049db56913af40986124c3813da3dbd437f302e43fcdd70e2a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-105', 'chinese', 4, 3, 'choice', '{"stem":"___证据充分，结论___更有说服力。","options":["只有……才……","即使……也……","不是……而是……","一边……一边……"],"answer":0,"explanation":"前后分句的逻辑关系适合使用“只有……才……”。"}'::jsonb, 'builtin', '关联词', 'reason', array['全国通用', '信息整合']::text[], '6792baae26bd977f6f3f313a91d5579549628a44acc2eade31fec1beef631921', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-106', 'chinese', 4, 1, 'fill', '{"stem":"___天气寒冷，清洁工___按时清扫街道。（填转折关联词）","answer":"虽然……但是……","explanation":"结合四年级语言和阅读知识，填“虽然……但是……”最恰当。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], 'afb59c2cc784216032c062bd59bf7f3a261edd6edc9ad0be46f4950635a082ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-107', 'chinese', 4, 1, 'fill', '{"stem":"段落先提出问题，再写解决办法，这属于“问题—___”关系。","answer":"解决","explanation":"结合四年级语言和阅读知识，填“解决”最恰当。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], 'b87ddb63fa91e66f2e4c2addf2fb8b5f0d56ef6cc225bc6469171b3ec1ae37fe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-108', 'chinese', 4, 1, 'fill', '{"stem":"概括中心意思时，要抓住反复出现的重点内容，舍去___信息。","answer":"次要","explanation":"结合四年级语言和阅读知识，填“次要”最恰当。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], 'a2099804489d3571c92611fd98042504c8a8011134a8fd6ea173ab0b6223c5f2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-109', 'chinese', 4, 1, 'fill', '{"stem":"支持观点的具体事实、数据或语句，可以称为___。","answer":"证据","explanation":"结合四年级语言和阅读知识，填“证据”最恰当。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], '4d943e2ea940b8eebacca8da12d7015b7fb940d51eded6ad50e4ed5813de93e9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-110', 'chinese', 4, 1, 'fill', '{"stem":"推断必须以文章内容为依据，不能凭空___。","answer":"猜测","explanation":"结合四年级语言和阅读知识，填“猜测”最恰当。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], 'ccce4626c7f0bb2b7db7c566928f9e029d373228acbaf99bcc1ecf13d5b756ca', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-111', 'chinese', 4, 1, 'fill', '{"stem":"叙事通常要写清人物、时间、地点和事情的起因、经过、___。","answer":"结果","explanation":"结合四年级语言和阅读知识，填“结果”最恰当。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], 'a67716f9c7ef78d1fa3443cb1dfe0c547e76df0b339d000547ff2de28478d304', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-112', 'chinese', 4, 1, 'fill', '{"stem":"列出具体数字来说明事物特点的方法叫列___。","answer":"数字","explanation":"结合四年级语言和阅读知识，填“数字”最恰当。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], '3474a4a01ac05df2a8767162216137f67166aa62017db4950f19b45a1fbff33e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-113', 'chinese', 4, 1, 'fill', '{"stem":"“不识庐山真面目，只缘身在此山中”中的“缘”是“___”的意思。","answer":"因为","explanation":"结合四年级语言和阅读知识，填“因为”最恰当。"}'::jsonb, 'builtin', '古诗文初步', 'understand', array['全国通用', '阅读理解']::text[], 'c7f0d9bcc34251b42b7d744c4884895902a836832e18047a29d870a33ed4d60e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-114', 'chinese', 4, 1, 'fill', '{"stem":"___努力练习，___能熟练掌握这项技能。","answer":"只有……才……","explanation":"结合四年级语言和阅读知识，填“只有……才……”最恰当。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], '13b26688c11995172e4a59ef2a465fdd157c4761e4b5dcd0a93653609aa9930f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-115', 'chinese', 4, 1, 'fill', '{"stem":"“先总说特点，再分别举例”属于先总后___。","answer":"分","explanation":"结合四年级语言和阅读知识，填“分”最恰当。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], '8782e8f445ff9fabf785d207b63c26694472b2128f8908486af8fd2734f59245', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-116', 'chinese', 4, 1, 'fill', '{"stem":"文章的题目、开头、结尾和反复出现的词句常能提示___意思。","answer":"中心","explanation":"结合四年级语言和阅读知识，填“中心”最恰当。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], 'eba4390b456d7cda9e099ead8a3cc0f5f7656be84d306a12d6015212de2e5dd0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-117', 'chinese', 4, 2, 'fill', '{"stem":"寻找证据时，应回到原文定位相关的关键词和___。","answer":"句子","explanation":"结合四年级语言和阅读知识，填“句子”最恰当。"}'::jsonb, 'builtin', '证据定位', 'apply', array['全国通用', '信息整合']::text[], '2bd2c977678458eabe74b0fa6d15ab8a1a14d842a96f95d84a5ecfb89827c45e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-118', 'chinese', 4, 2, 'fill', '{"stem":"由“地面湿、行人撑伞”可以推断刚刚下过___。","answer":"雨","explanation":"结合四年级语言和阅读知识，填“雨”最恰当。"}'::jsonb, 'builtin', '概括与推断', 'apply', array['全国通用', '信息整合']::text[], '4c7477df142259b195205cae83c8bac1c456f9e62754df16316f0624b1af7802', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-119', 'chinese', 4, 2, 'fill', '{"stem":"人物的语言、动作和心理能帮助表现人物___。","answer":"特点","explanation":"结合四年级语言和阅读知识，填“特点”最恰当。"}'::jsonb, 'builtin', '叙事文本', 'apply', array['全国通用', '信息整合']::text[], '475aedcf92af9436f3cea8ef8054415f71ec5b66aa51fa35dd3323a0d24d59f7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-120', 'chinese', 4, 2, 'fill', '{"stem":"把两种事物放在一起比较，可以突出它们的相同点和___点。","answer":"不同","explanation":"结合四年级语言和阅读知识，填“不同”最恰当。"}'::jsonb, 'builtin', '说明性文本', 'apply', array['全国通用', '信息整合']::text[], '3ff78f7334ff117c99632b3b03d5fe5d27553fd2415fbb9c37cf8f5c1c30ba9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-121', 'chinese', 4, 2, 'fill', '{"stem":"“梅须逊雪三分白”中的“逊”是“不如”的___。","answer":"意思","explanation":"结合四年级语言和阅读知识，填“意思”最恰当。"}'::jsonb, 'builtin', '古诗文初步', 'apply', array['全国通用', '信息整合']::text[], '6f3cad37e14f27a0e5d3f1dfe16e36f205615ad83b82185129ee21f3fd3eb77d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-122', 'chinese', 4, 2, 'fill', '{"stem":"“不仅……还……”表示前后内容是___关系。","answer":"递进","explanation":"结合四年级语言和阅读知识，填“递进”最恰当。"}'::jsonb, 'builtin', '关联词', 'apply', array['全国通用', '信息整合']::text[], '496d4c4beeba43fac679067bed11419a210656a2bdb3e94244243bc43028db20', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-123', 'chinese', 4, 2, 'fill', '{"stem":"转折句前后意思发生变化，常用“但是、可是、___”连接。","answer":"却","explanation":"结合四年级语言和阅读知识，填“却”最恰当。"}'::jsonb, 'builtin', '句段关系', 'apply', array['全国通用', '信息整合']::text[], 'b48ec9b5482c20aa467a73b88817b069b46980514b590869232bfe6a79b9ce0a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-124', 'chinese', 4, 3, 'fill', '{"stem":"综合两处以上信息得出合理结论，也要说明推断的___。","answer":"依据","explanation":"结合四年级语言和阅读知识，填“依据”最恰当。"}'::jsonb, 'builtin', '概括与推断', 'reason', array['全国通用', '信息整合']::text[], '2c535e2e33288293d1b1e683fb99d57139ccbb7b1bcfa36517161ec79eb6a27f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-125', 'chinese', 4, 3, 'fill', '{"stem":"说明文中的例子要与被说明的___密切相关。","answer":"特点","explanation":"结合四年级语言和阅读知识，填“特点”最恰当。"}'::jsonb, 'builtin', '说明性文本', 'reason', array['全国通用', '信息整合']::text[], 'db8131c5b6d57089ba10255f0cae3539fe4d09e559c080c223d361d551de0b69', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-126', 'chinese', 4, 3, 'fill', '{"stem":"“纸上得来终觉浅”提醒我们还要重视亲身___。","answer":"实践","explanation":"结合四年级语言和阅读知识，填“实践”最恰当。"}'::jsonb, 'builtin', '古诗文初步', 'reason', array['全国通用', '信息整合']::text[], '182721f9954e3cd121a2a3de99a545a470102e3a134745e9a52e067ef6b77c17', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-127', 'chinese', 4, 1, 'match', '{"stem":"阅读方法整理：把关联词内容与正确解释连起来","left":["因为……所以……","虽然……但是……","如果……就……","不但……而且……"],"right":["假设","因果","递进","转折"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据关联词的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '关联词', 'understand', array['全国通用', '阅读理解']::text[], '91e5b578228b16222445947f0023c94ea0f5c0a80c0de2fa2d68edb27bebfa32', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-128', 'chinese', 4, 1, 'match', '{"stem":"阅读方法整理：把句段关系内容与正确解释连起来","left":["总—分","问题—解决","原因—结果","现象—结论"],"right":["先说明缘由再写结果","先概括再展开","先观察再概括","先提困难再写办法"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据句段关系的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '句段关系', 'understand', array['全国通用', '阅读理解']::text[], '4a306eeca56a483fa6b568e56dceeffddc24e189d3bc410a5ee8990cfa747a3d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-129', 'chinese', 4, 1, 'match', '{"stem":"阅读方法整理：把中心意思内容与正确解释连起来","left":["植树","阅读","运动","垃圾分类"],"right":["增强体质","改善环境","方便回收","增长知识"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据中心意思的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '中心意思', 'understand', array['全国通用', '阅读理解']::text[], '92cd30ec801173af2f1dbc18e5ce5a5729cb0007991b4c2272db819505fdc68a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-130', 'chinese', 4, 1, 'match', '{"stem":"阅读方法整理：把证据定位内容与正确解释连起来","left":["观点","事实","数据","例子"],"right":["具体数量","要说明的看法","具体事例","真实发生的情况"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据证据定位的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '证据定位', 'understand', array['全国通用', '阅读理解']::text[], 'df227664a65b20ee287b8c466eac42953b5d9f1e6f8f71365d624c93e8dd8f92', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-131', 'chinese', 4, 1, 'match', '{"stem":"阅读方法整理：把概括与推断内容与正确解释连起来","left":["乌云密布","树叶摇动","地面结冰","灯光熄灭"],"right":["气温较低","可能下雨","可能停电或关灯","可能有风"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据概括与推断的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '概括与推断', 'understand', array['全国通用', '阅读理解']::text[], 'a0200a20ee56845696767c8882d6557842bb850ce15182211795b42674684fdb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-132', 'chinese', 4, 1, 'match', '{"stem":"阅读方法整理：把叙事文本内容与正确解释连起来","left":["语言","动作","心理","外貌"],"right":["心里怎样想","说了什么","长什么样","做了什么"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据叙事文本的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '叙事文本', 'understand', array['全国通用', '阅读理解']::text[], '649db783236a2c93e227ed128eeb24788a33546f11eaf83a2511fe367a369501', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-133', 'chinese', 4, 1, 'match', '{"stem":"阅读方法整理：把说明性文本内容与正确解释连起来","left":["列数字","作比较","举例子","分类别"],"right":["列举实例","用数量说明","分成类别","比较异同"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据说明性文本的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '说明性文本', 'understand', array['全国通用', '阅读理解']::text[], '59a9b485926039f19ac3372edbcf40ed3c191331d47d5c6173bc9b626d81eaac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-134', 'chinese', 4, 2, 'match', '{"stem":"阅读方法整理：把古诗文初步内容与正确解释连起来","left":["缘","逊","沙场","躬行"],"right":["战场","因为","亲自实践","不如"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据古诗文初步的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '古诗文初步', 'apply', array['全国通用', '信息整合']::text[], '68d9072f9645891795167cc7f37f2d09f41c974adae85e0b6fab2fbd8b7e04a4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-135', 'chinese', 4, 2, 'match', '{"stem":"综合阅读实践：把关联词内容与正确解释连起来","left":["因为……所以……","虽然……但是……","如果……就……","不但……而且……"],"right":["假设","因果","递进","转折"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据关联词的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '关联词', 'apply', array['全国通用', '信息整合']::text[], '860294a1a95492d2a1ed63477bea3bb005a9bf2ee76829975f1efda546715853', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-136', 'chinese', 4, 2, 'match', '{"stem":"综合阅读实践：把句段关系内容与正确解释连起来","left":["总—分","问题—解决","原因—结果","现象—结论"],"right":["先说明缘由再写结果","先概括再展开","先观察再概括","先提困难再写办法"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据句段关系的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '句段关系', 'apply', array['全国通用', '信息整合']::text[], '267e0925efb5332cf7698df743e7a84b81df3aefc6453d33714309c0b795c476', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-137', 'chinese', 4, 2, 'match', '{"stem":"综合阅读实践：把中心意思内容与正确解释连起来","left":["植树","阅读","运动","垃圾分类"],"right":["增强体质","改善环境","方便回收","增长知识"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据中心意思的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '中心意思', 'apply', array['全国通用', '信息整合']::text[], 'efda9cf8d5d7c9cbf8805081c87ec9627d52ff8e4459460ae4b6e8d8da1200e2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-138', 'chinese', 4, 2, 'match', '{"stem":"综合阅读实践：把证据定位内容与正确解释连起来","left":["观点","事实","数据","例子"],"right":["具体数量","要说明的看法","具体事例","真实发生的情况"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据证据定位的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '证据定位', 'apply', array['全国通用', '信息整合']::text[], 'bb8498e3f7dd82fc3bd34ad73aa03e3c101282e5eacad7e0bfb36ea8ad4c2afa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-139', 'chinese', 4, 3, 'match', '{"stem":"综合阅读实践：把概括与推断内容与正确解释连起来","left":["乌云密布","树叶摇动","地面结冰","灯光熄灭"],"right":["气温较低","可能下雨","可能停电或关灯","可能有风"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据概括与推断的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '概括与推断', 'reason', array['全国通用', '信息整合']::text[], '601216d43c46f65498a89883230cd94bc4e5835e79a53116cfa97e64600518e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-chinese-authored-140', 'chinese', 4, 3, 'match', '{"stem":"综合阅读实践：把叙事文本内容与正确解释连起来","left":["语言","动作","心理","外貌"],"right":["心里怎样想","说了什么","长什么样","做了什么"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据叙事文本的含义和文章阅读方法逐项配对。"}'::jsonb, 'builtin', '叙事文本', 'reason', array['全国通用', '信息整合']::text[], '04a9f079b931f7ee400f342e02b21f211e3b1b4a0e3917d319a1876390406d42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-001', 'english', 4, 1, 'choice', '{"stem":"Read this activity note: “Tom often visits the library. It is next to the art room. Today Tom is reading a science book to find facts about space.” What is its main idea?","options":["Tom''s activity in the library","a map of a different town","a meal with no people","a story about yesterday''s storm"],"answer":0,"explanation":"The note connects Tom, the library, the present activity and its purpose."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '92a5348901d9629375b9911500b584b1629ee7342b4b75d4f5e76a6cfeaffb87', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-002', 'english', 4, 1, 'choice', '{"stem":"A school guide says, “The library is next to the art room.” Which location should Tom follow?","options":["under the sea","next to the art room","inside a bus","far beyond the moon"],"answer":1,"explanation":"The guide directly locates the library next to the art room."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '441b75027fb4c9faabcb0168a644b9478d935a598d2bab6f02f06af24519a8fe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-003', 'english', 4, 1, 'choice', '{"stem":"Tom often goes to the library to find facts about space. In this activity record, which word tells how often the visit happens?","options":["yesterday","at five o’clock","often","for two metres"],"answer":2,"explanation":"“often” is a frequency word, not a date, clock time or distance."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'ce29b6f04eed0e2974c880e574fdedbcba98bdbd76641c1be337d8b1cd30c306', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-004', 'english', 4, 1, 'choice', '{"stem":"Look at today''s library report: “Tom is reading a science book.” What is happening now?","options":["sleeping at home","buying a train","climbing on the roof","reading a science book"],"answer":3,"explanation":"The form “is reading a science book” names the action happening now."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '15d6151eac91a91e8a531f4551d2a7f1a8f89ac1671b6933133e4a74b27a5fe5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-005', 'english', 4, 1, 'choice', '{"stem":"Compare: a blue robot is taller than a red toy car. Which word describes the comparison?","options":["taller","yesterday","carefully","between"],"answer":0,"explanation":"“taller” is the comparative word in the sentence."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '14286cb21db04c6a1d35bc88f802ba1426d40d3a79e6b862eeb676c8ea2d9018', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-006', 'english', 4, 1, 'choice', '{"stem":"Combine two clues: “Tom''s destination is the library.” “The plan is to find facts about space.” Which record includes both facts?","options":["the playground; to miss the lesson","the library; to find facts about space","the kitchen; to lose all the books","the station; to wait until midnight"],"answer":1,"explanation":"One clue gives the library; the other gives the purpose “to find facts about space”."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '6a7b8054a8428b92af88ea3156ba199d58cbf7a1bab8197cab5871b9483b4c9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-007', 'english', 4, 1, 'choice', '{"stem":"Tom wants to reach the library to find facts about space. A sign says it is next to the art room. Which question asks for directions politely?","options":["Give me that book now.","How old is the colour blue?","Excuse me, how can I get to the library?","I never go anywhere."],"answer":2,"explanation":"“Excuse me” is polite, and “how can I get to...” asks for directions clearly."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'abe9ba0b22f8d8f9e0f79332dddaf9c75855d94a54edb59e172c351ee86790f2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-008', 'english', 4, 1, 'choice', '{"stem":"Information card: “Visitor: Tom; place: library; activity: reading a science book.” Which note copies all three fields correctly?","options":["Tom — airport — sleeping","Nobody — nowhere — nothing","Tom — hospital — buying a plane","Tom — library — reading a science book"],"answer":3,"explanation":"The matching note keeps the same person, place and activity as the card."}'::jsonb, 'builtin', '信息匹配', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '32fbbdb2ce54f3b7962d95042a7b936d6560a6b262a43363d3a8806eaafb1814', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-009', 'english', 4, 1, 'choice', '{"stem":"Read this activity note: “Lucy usually visits the garden. It is behind the classroom. Today Lucy is watering the flowers to care for the class plants.” What is its main idea?","options":["Lucy''s activity in the garden","a map of a different town","a meal with no people","a story about yesterday''s storm"],"answer":0,"explanation":"The note connects Lucy, the garden, the present activity and its purpose."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '32e11db799d35bf04237112e5b0786021a84cfff1ec0c1640228a2f893d42ede', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-010', 'english', 4, 1, 'choice', '{"stem":"A school guide says, “The garden is behind the classroom.” Which location should Lucy follow?","options":["under the sea","behind the classroom","inside a bus","far beyond the moon"],"answer":1,"explanation":"The guide directly locates the garden behind the classroom."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'd4028329fff8c350d79af682b5eecfd9a8ae67025972eef00a6e3ce0a0f00178', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-011', 'english', 4, 1, 'choice', '{"stem":"Lucy usually goes to the garden to care for the class plants. In this activity record, which word tells how often the visit happens?","options":["yesterday","at five o’clock","usually","for two metres"],"answer":2,"explanation":"“usually” is a frequency word, not a date, clock time or distance."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'c016f99bf1ed7ffbefc1d68540049aa1df295d106eac37ec35bed63c47331a4f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-012', 'english', 4, 1, 'choice', '{"stem":"Look at today''s garden report: “Lucy is watering the flowers.” What is happening now?","options":["sleeping at home","buying a train","climbing on the roof","watering the flowers"],"answer":3,"explanation":"The form “is watering the flowers” names the action happening now."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '37edb7dcf509b8fae3898fe3c2d9a40eb85a219b2083acd5e4c38adf4cd34231', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-013', 'english', 4, 1, 'choice', '{"stem":"Compare: the sunflower is taller than the rose. Which word describes the comparison?","options":["taller","yesterday","carefully","between"],"answer":0,"explanation":"“taller” is the comparative word in the sentence."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '6ff974fee21c90f59a610f3c453d837c895a6dce46746a4ae304f86b316878de', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-014', 'english', 4, 1, 'choice', '{"stem":"Combine two clues: “Lucy''s destination is the garden.” “The plan is to care for the class plants.” Which record includes both facts?","options":["the playground; to miss the lesson","the garden; to care for the class plants","the kitchen; to lose all the books","the station; to wait until midnight"],"answer":1,"explanation":"One clue gives the garden; the other gives the purpose “to care for the class plants”."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '40ff79b3501460dba8bedf17d94300d42dd1fd4f3830db49414cede876856006', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-015', 'english', 4, 1, 'choice', '{"stem":"Lucy wants to reach the garden to care for the class plants. A sign says it is behind the classroom. Which question asks for directions politely?","options":["Give me that book now.","How old is the colour blue?","Excuse me, how can I get to the garden?","I never go anywhere."],"answer":2,"explanation":"“Excuse me” is polite, and “how can I get to...” asks for directions clearly."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '34e582161d7cfc8ad39f392c9a524b70195d0c66cb40806b96b4049bb7dcd76a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-016', 'english', 4, 1, 'choice', '{"stem":"Information card: “Visitor: Lucy; place: garden; activity: watering the flowers.” Which note copies all three fields correctly?","options":["Lucy — airport — sleeping","Nobody — nowhere — nothing","Lucy — hospital — buying a plane","Lucy — garden — watering the flowers"],"answer":3,"explanation":"The matching note keeps the same person, place and activity as the card."}'::jsonb, 'builtin', '信息匹配', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '461d443d04c49133ede6b06f26836efd2e242b37bac6e543daf42dfec5d50441', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-017', 'english', 4, 1, 'choice', '{"stem":"Read this activity note: “Mike sometimes visits the playground. It is in front of the gym. Today Mike is playing basketball to prepare for a class game.” What is its main idea?","options":["Mike''s activity in the playground","a map of a different town","a meal with no people","a story about yesterday''s storm"],"answer":0,"explanation":"The note connects Mike, the playground, the present activity and its purpose."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '494faaef07e7d79252a8c9539cce00a881793af086318473c080ad5eb3df7837', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-018', 'english', 4, 1, 'choice', '{"stem":"A school guide says, “The playground is in front of the gym.” Which location should Mike follow?","options":["under the sea","in front of the gym","inside a bus","far beyond the moon"],"answer":1,"explanation":"The guide directly locates the playground in front of the gym."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '214d95b389826ef0f5946f981f3ffe599c0d957639bb993195d00e15c8352d01', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-019', 'english', 4, 1, 'choice', '{"stem":"Mike sometimes goes to the playground to prepare for a class game. In this activity record, which word tells how often the visit happens?","options":["yesterday","at five o’clock","sometimes","for two metres"],"answer":2,"explanation":"“sometimes” is a frequency word, not a date, clock time or distance."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'a368c18114bdcf8f9a7a02b49591f9dd86306b50467f41860fd21ffc2ae68937', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-020', 'english', 4, 1, 'choice', '{"stem":"Look at today''s playground report: “Mike is playing basketball.” What is happening now?","options":["sleeping at home","buying a train","climbing on the roof","playing basketball"],"answer":3,"explanation":"The form “is playing basketball” names the action happening now."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'bf5a31cd69b992e454c0ed7fcae1a401259df5fa5e7e253d1a28fdd813060a24', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-021', 'english', 4, 1, 'choice', '{"stem":"Compare: Mike is faster than Ben. Which word describes the comparison?","options":["faster","yesterday","carefully","between"],"answer":0,"explanation":"“faster” is the comparative word in the sentence."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '73c0480ffd2c2fe93fea5c6460770d0459adadceecc15e0d4921fb17f9c81699', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-022', 'english', 4, 1, 'choice', '{"stem":"Combine two clues: “Mike''s destination is the playground.” “The plan is to prepare for a class game.” Which record includes both facts?","options":["the playground; to miss the lesson","the playground; to prepare for a class game","the kitchen; to lose all the books","the station; to wait until midnight"],"answer":1,"explanation":"One clue gives the playground; the other gives the purpose “to prepare for a class game”."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'ad02e0ae2d2ee84a6cd9e3a842aabe08443f53d47c8d6d1fba440bbeaa54ab7c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-023', 'english', 4, 1, 'choice', '{"stem":"Mike wants to reach the playground to prepare for a class game. A sign says it is in front of the gym. Which question asks for directions politely?","options":["Give me that book now.","How old is the colour blue?","Excuse me, how can I get to the playground?","I never go anywhere."],"answer":2,"explanation":"“Excuse me” is polite, and “how can I get to...” asks for directions clearly."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'fc6d214aa9ea3444159d9a4a0932c4dde2b945141f6fa817627f8eed1c197ea6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-024', 'english', 4, 1, 'choice', '{"stem":"Information card: “Visitor: Mike; place: playground; activity: playing basketball.” Which note copies all three fields correctly?","options":["Mike — airport — sleeping","Nobody — nowhere — nothing","Mike — hospital — buying a plane","Mike — playground — playing basketball"],"answer":3,"explanation":"The matching note keeps the same person, place and activity as the card."}'::jsonb, 'builtin', '信息匹配', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'b9860813b24654132433b60db04fadef69c7826bcc5ce3ba9e5a40e3c31e8bff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-025', 'english', 4, 1, 'choice', '{"stem":"Read this activity note: “Amy always visits the music room. It is between the lab and the hall. Today Amy is playing the piano to practise for the school show.” What is its main idea?","options":["Amy''s activity in the music room","a map of a different town","a meal with no people","a story about yesterday''s storm"],"answer":0,"explanation":"The note connects Amy, the music room, the present activity and its purpose."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'c36dd869285d0f4eb289d309b3598db6d8d24a9dd2eb61db8c10204220bcbf3a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-026', 'english', 4, 1, 'choice', '{"stem":"A school guide says, “The music room is between the lab and the hall.” Which location should Amy follow?","options":["under the sea","between the lab and the hall","inside a bus","far beyond the moon"],"answer":1,"explanation":"The guide directly locates the music room between the lab and the hall."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'c2a4a10c1200d41d592536150da352d5b6bb9a9ae97a1dce8898c20a823b7912', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-027', 'english', 4, 1, 'choice', '{"stem":"Amy always goes to the music room to practise for the school show. In this activity record, which word tells how often the visit happens?","options":["yesterday","at five o’clock","always","for two metres"],"answer":2,"explanation":"“always” is a frequency word, not a date, clock time or distance."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '74bf149ffc8208f102c723eb85302920327ca520d58aab091ba40b83580532fb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-028', 'english', 4, 1, 'choice', '{"stem":"Look at today''s music room report: “Amy is playing the piano.” What is happening now?","options":["sleeping at home","buying a train","climbing on the roof","playing the piano"],"answer":3,"explanation":"The form “is playing the piano” names the action happening now."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '01dfe4ebb3443dab32cd29c9b77edf7b9777e36dc1edf9ce06a88182b7514cd4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-029', 'english', 4, 1, 'choice', '{"stem":"Compare: the piano is longer than the desk. Which word describes the comparison?","options":["longer","yesterday","carefully","between"],"answer":0,"explanation":"“longer” is the comparative word in the sentence."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'd41ca5a0a4e3ab030e8f8c8c1fe2860ba7c778f47b9cfd96bfc6798ef58aeaf6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-030', 'english', 4, 1, 'choice', '{"stem":"Combine two clues: “Amy''s destination is the music room.” “The plan is to practise for the school show.” Which record includes both facts?","options":["the playground; to miss the lesson","the music room; to practise for the school show","the kitchen; to lose all the books","the station; to wait until midnight"],"answer":1,"explanation":"One clue gives the music room; the other gives the purpose “to practise for the school show”."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '7e169479562306c13234186bc6de2ad4e5b1c38d76a106267eab974e950a5d8d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-031', 'english', 4, 1, 'choice', '{"stem":"Amy wants to reach the music room to practise for the school show. A sign says it is between the lab and the hall. Which question asks for directions politely?","options":["Give me that book now.","How old is the colour blue?","Excuse me, how can I get to the music room?","I never go anywhere."],"answer":2,"explanation":"“Excuse me” is polite, and “how can I get to...” asks for directions clearly."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'afba7af879523cf0485102936cc92c315a502c3a2e0756c50d80a76529b00fbc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-032', 'english', 4, 1, 'choice', '{"stem":"Information card: “Visitor: Amy; place: music room; activity: playing the piano.” Which note copies all three fields correctly?","options":["Amy — airport — sleeping","Nobody — nowhere — nothing","Amy — hospital — buying a plane","Amy — music room — playing the piano"],"answer":3,"explanation":"The matching note keeps the same person, place and activity as the card."}'::jsonb, 'builtin', '信息匹配', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '43aa30cd4095fbcf4614b59f60956fea321fd105c8c2ede933c9027b1351eb20', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-033', 'english', 4, 1, 'choice', '{"stem":"Read this activity note: “Jack often visits the kitchen. It is beside the dining room. Today Jack is making sandwiches to make lunch for his family.” What is its main idea?","options":["Jack''s activity in the kitchen","a map of a different town","a meal with no people","a story about yesterday''s storm"],"answer":0,"explanation":"The note connects Jack, the kitchen, the present activity and its purpose."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '576b1169404669ef8b3318fe664a6a5baac7448e2fd0305d15373115049f36c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-034', 'english', 4, 1, 'choice', '{"stem":"A school guide says, “The kitchen is beside the dining room.” Which location should Jack follow?","options":["under the sea","beside the dining room","inside a bus","far beyond the moon"],"answer":1,"explanation":"The guide directly locates the kitchen beside the dining room."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'fac9d9e901edd259da0216e03da1d117bf4e8f337c6f2acc2c60e456ae5646e0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-035', 'english', 4, 1, 'choice', '{"stem":"Jack often goes to the kitchen to make lunch for his family. In this activity record, which word tells how often the visit happens?","options":["yesterday","at five o’clock","often","for two metres"],"answer":2,"explanation":"“often” is a frequency word, not a date, clock time or distance."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '21b8907d5c21e7f13e9ce5a99c9a769e52db997dd815037d188bf6cffa5b7558', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-036', 'english', 4, 1, 'choice', '{"stem":"Look at today''s kitchen report: “Jack is making sandwiches.” What is happening now?","options":["sleeping at home","buying a train","climbing on the roof","making sandwiches"],"answer":3,"explanation":"The form “is making sandwiches” names the action happening now."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '08af9c05ea16801743fe3a1baea65e7206e975b77cbc2478db0caa597e99cae2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-037', 'english', 4, 1, 'choice', '{"stem":"Compare: the big plate is heavier than the small plate. Which word describes the comparison?","options":["heavier","yesterday","carefully","between"],"answer":0,"explanation":"“heavier” is the comparative word in the sentence."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'e2a54ba9f7c8ef2fccef705f77cfa0209cfc95a62b5f4b87d3488dbcecc66f89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-038', 'english', 4, 1, 'choice', '{"stem":"Combine two clues: “Jack''s destination is the kitchen.” “The plan is to make lunch for his family.” Which record includes both facts?","options":["the playground; to miss the lesson","the kitchen; to make lunch for his family","the kitchen; to lose all the books","the station; to wait until midnight"],"answer":1,"explanation":"One clue gives the kitchen; the other gives the purpose “to make lunch for his family”."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '2e28e7bea32c2770cf81ea4e09e73f2574c9c063e710c7d5298149d6afbbb217', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-039', 'english', 4, 1, 'choice', '{"stem":"Jack wants to reach the kitchen to make lunch for his family. A sign says it is beside the dining room. Which question asks for directions politely?","options":["Give me that book now.","How old is the colour blue?","Excuse me, how can I get to the kitchen?","I never go anywhere."],"answer":2,"explanation":"“Excuse me” is polite, and “how can I get to...” asks for directions clearly."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '69b57cc27492a4f60ae43975f38e7647628e974cac7b90fcf91f543ae3bc606a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-040', 'english', 4, 1, 'choice', '{"stem":"Information card: “Visitor: Jack; place: kitchen; activity: making sandwiches.” Which note copies all three fields correctly?","options":["Jack — airport — sleeping","Nobody — nowhere — nothing","Jack — hospital — buying a plane","Jack — kitchen — making sandwiches"],"answer":3,"explanation":"The matching note keeps the same person, place and activity as the card."}'::jsonb, 'builtin', '信息匹配', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '77da5df3196a5280578fa8c91e90cccf30c967b5134f06fd309f864de30237be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-041', 'english', 4, 1, 'choice', '{"stem":"Read this activity note: “Lily usually visits the park. It is across from the museum. Today Lily is flying a kite to enjoy the windy afternoon.” What is its main idea?","options":["Lily''s activity in the park","a map of a different town","a meal with no people","a story about yesterday''s storm"],"answer":0,"explanation":"The note connects Lily, the park, the present activity and its purpose."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'e828c46ec9fa59ee0c29876bedbd168c6e93f5774e51f5dcc1e04a95700edc46', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-042', 'english', 4, 1, 'choice', '{"stem":"A school guide says, “The park is across from the museum.” Which location should Lily follow?","options":["under the sea","across from the museum","inside a bus","far beyond the moon"],"answer":1,"explanation":"The guide directly locates the park across from the museum."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'dc38a40060bea42f1decd5bc33c7eb01ada228041b5e9e60e884a49666328ff7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-043', 'english', 4, 1, 'choice', '{"stem":"Lily usually goes to the park to enjoy the windy afternoon. In this activity record, which word tells how often the visit happens?","options":["yesterday","at five o’clock","usually","for two metres"],"answer":2,"explanation":"“usually” is a frequency word, not a date, clock time or distance."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '94731b4c05748f5ace34d073799498ad98bd5b73a79707b8313e76035ebedbbd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-044', 'english', 4, 1, 'choice', '{"stem":"Look at today''s park report: “Lily is flying a kite.” What is happening now?","options":["sleeping at home","buying a train","climbing on the roof","flying a kite"],"answer":3,"explanation":"The form “is flying a kite” names the action happening now."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'b94a351d537cc99d9146574655e0f5fd7218645c0618f410c28ef250889e6e94', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-045', 'english', 4, 1, 'choice', '{"stem":"Compare: Lily’s kite is higher than Sam’s kite. Which word describes the comparison?","options":["higher","yesterday","carefully","between"],"answer":0,"explanation":"“higher” is the comparative word in the sentence."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '6c29e685696a4007d91af84e7700419dc0a878d896c20aafc970b0628a0a1247', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-046', 'english', 4, 1, 'choice', '{"stem":"Combine two clues: “Lily''s destination is the park.” “The plan is to enjoy the windy afternoon.” Which record includes both facts?","options":["the playground; to miss the lesson","the park; to enjoy the windy afternoon","the kitchen; to lose all the books","the station; to wait until midnight"],"answer":1,"explanation":"One clue gives the park; the other gives the purpose “to enjoy the windy afternoon”."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '969282bf5a26ef742314e0c515628d060e5fb729e1729e31d205f13b09488468', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-047', 'english', 4, 1, 'choice', '{"stem":"Lily wants to reach the park to enjoy the windy afternoon. A sign says it is across from the museum. Which question asks for directions politely?","options":["Give me that book now.","How old is the colour blue?","Excuse me, how can I get to the park?","I never go anywhere."],"answer":2,"explanation":"“Excuse me” is polite, and “how can I get to...” asks for directions clearly."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '556d6900f9b3fcce9a8f782089a128f8748a7e5ebc60269a5d7a9e09913c4399', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-048', 'english', 4, 1, 'choice', '{"stem":"Information card: “Visitor: Lily; place: park; activity: flying a kite.” Which note copies all three fields correctly?","options":["Lily — airport — sleeping","Nobody — nowhere — nothing","Lily — hospital — buying a plane","Lily — park — flying a kite"],"answer":3,"explanation":"The matching note keeps the same person, place and activity as the card."}'::jsonb, 'builtin', '信息匹配', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '99b0dd63229c41170deb0de5e592e1c73589a0d432da5230255bf52f230b8110', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-049', 'english', 4, 1, 'choice', '{"stem":"Read this activity note: “Peter sometimes visits the computer room. It is on the second floor. Today Peter is making a class poster to share recycling tips.” What is its main idea?","options":["Peter''s activity in the computer room","a map of a different town","a meal with no people","a story about yesterday''s storm"],"answer":0,"explanation":"The note connects Peter, the computer room, the present activity and its purpose."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '10a17db57a6b882f5791f56610d7f43e08fbbe99f5f3cb3352e64403b8d096ee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-050', 'english', 4, 1, 'choice', '{"stem":"A school guide says, “The computer room is on the second floor.” Which location should Peter follow?","options":["under the sea","on the second floor","inside a bus","far beyond the moon"],"answer":1,"explanation":"The guide directly locates the computer room on the second floor."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '88d724a336952cf41e2196e00baa8159eafdf435ef2112d3211f0d7b9aeb98bb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-051', 'english', 4, 1, 'choice', '{"stem":"Peter sometimes goes to the computer room to share recycling tips. In this activity record, which word tells how often the visit happens?","options":["yesterday","at five o’clock","sometimes","for two metres"],"answer":2,"explanation":"“sometimes” is a frequency word, not a date, clock time or distance."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '12b976b7c68cadd9120be0ef205effe5bf3169e6057a1ab7f413ead1ed183a9d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-052', 'english', 4, 1, 'choice', '{"stem":"Look at today''s computer room report: “Peter is making a class poster.” What is happening now?","options":["sleeping at home","buying a train","climbing on the roof","making a class poster"],"answer":3,"explanation":"The form “is making a class poster” names the action happening now."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'd095f65520c51c385f3ef4e049d27c57b34f93d109b711661f9acd922e78b870', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-053', 'english', 4, 2, 'choice', '{"stem":"A report states, “Peter’s picture is larger than the title.” Which conclusion keeps the same comparison?","options":["When compared with the title, Peter’s picture is larger","the title must be larger than itself","the two things were not compared","the sentence only tells a clock time"],"answer":0,"explanation":"The comparative sentence gives Peter’s picture, rather than the title, the stated quality."}'::jsonb, 'builtin', '比较与描述', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '9a7423cda1336cc9a9d363d9e9ff96e8752fe4aeb9c0018c04d6e87dc1812bcc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-054', 'english', 4, 2, 'choice', '{"stem":"Read two sentences: “The computer room is on the second floor.” “Peter goes there to share recycling tips.” Which summary joins both clues without changing them?","options":["Peter avoids every place and purpose","Peter goes to the computer room, on the second floor, to share recycling tips","Peter goes to a station to miss school","The computer room moves to another town"],"answer":1,"explanation":"The summary preserves the location from the first sentence and the purpose from the second."}'::jsonb, 'builtin', '跨句信息', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '29b5102b6e0b0e0e9ee2c79d45553f9faa7d7a533b1a38dc7f923deec51a140a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-055', 'english', 4, 2, 'choice', '{"stem":"Peter knows the computer room is on the second floor, but still needs help finding it. What is the clearest polite request?","options":["Move! I want that road.","Is sometimes a colour?","Excuse me, could you show me the way to the computer room?","I will not listen to any answer."],"answer":2,"explanation":"The correct request is polite and asks specifically for the way to the destination."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '04376a4dd5b55baebe571a35d2601f4dd988e659fc4c4bcd0c56b853a4e4322c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-056', 'english', 4, 2, 'choice', '{"stem":"Compare the card with the note. Card: “Peter; computer room; making a class poster; purpose: share recycling tips.” Which note keeps every key field?","options":["Peter sleeps at an airport with no purpose","Another pupil leaves the computer room before arriving","Peter visits the computer room to do the opposite task","Peter is making a class poster at the computer room to share recycling tips"],"answer":3,"explanation":"The matching note keeps the person, place, present activity and purpose."}'::jsonb, 'builtin', '信息匹配', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '01b204c38943cc0e732d648dc93c092876cc307cb3b09318515b4a92d1b02b27', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-057', 'english', 4, 2, 'choice', '{"stem":"Read: “Kate often visits the reading corner, near the back door. Today, instead of the usual visit, Kate is telling a story to help younger pupils enjoy reading.” Which title covers the place, action and purpose?","options":["Kate''s purposeful visit to the reading corner","An empty building with no activity","A weather report for next month","Rules for buying a bus ticket"],"answer":0,"explanation":"A complete title should include the visit and its purpose, not just one small detail."}'::jsonb, 'builtin', '连贯短文', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'ded298815b815e136b27d490ba0a481e5968557f3e190df105d6e99f95086a0f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-058', 'english', 4, 2, 'choice', '{"stem":"The reading corner is near the back door. Kate has reached the named landmark. Which direction clue should be used next?","options":["turn yesterday","near the back door","walk for a colour","wait inside a question"],"answer":1,"explanation":"The location phrase “near the back door” connects the destination with the landmark."}'::jsonb, 'builtin', '方位表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '3c5e0df981f5d197eeda358220221c787b0b0c58eb78a3965efa9f638766e9a8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-059', 'english', 4, 2, 'choice', '{"stem":"The record says, “Kate often visits the reading corner, but today''s special task is to help younger pupils enjoy reading.” Which word describes the regular pattern rather than today''s task?","options":["telling a story","reading corner","often","help younger pupils enjoy reading"],"answer":2,"explanation":"“often” describes how regularly the visits happen."}'::jsonb, 'builtin', '频率表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '616e07583ab6250f2502fb230add08d3c4541698e2f30772067024464ec01e07', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-060', 'english', 4, 2, 'choice', '{"stem":"Kate often goes to the reading corner. A live message says, “Kate is telling a story now.” Which phrase belongs in the NOW column?","options":["goes there often","near the back door","help younger pupils enjoy reading","telling a story"],"answer":3,"explanation":"The present continuous phrase after “is” reports what is happening now."}'::jsonb, 'builtin', '进行中的动作', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'fa722751e010018f793f053b08b5b2056155b51caf2f49c50faaae35d01f90a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-061', 'english', 4, 2, 'choice', '{"stem":"A report states, “this story is longer than the last story.” Which conclusion keeps the same comparison?","options":["When compared with the last story, this story is longer","the last story must be longer than itself","the two things were not compared","the sentence only tells a clock time"],"answer":0,"explanation":"The comparative sentence gives this story, rather than the last story, the stated quality."}'::jsonb, 'builtin', '比较与描述', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'c2379adbea3188c25e6962e0dc3a863cbdc6a6628e9b7e46b00c7bd32a40b4cc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-062', 'english', 4, 2, 'choice', '{"stem":"Read two sentences: “The reading corner is near the back door.” “Kate goes there to help younger pupils enjoy reading.” Which summary joins both clues without changing them?","options":["Kate avoids every place and purpose","Kate goes to the reading corner, near the back door, to help younger pupils enjoy reading","Kate goes to a station to miss school","The reading corner moves to another town"],"answer":1,"explanation":"The summary preserves the location from the first sentence and the purpose from the second."}'::jsonb, 'builtin', '跨句信息', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'eb24185e4405ea84a9439211339f34af2b705709bee19b52dcf3993f00280bcb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-063', 'english', 4, 2, 'choice', '{"stem":"Kate knows the reading corner is near the back door, but still needs help finding it. What is the clearest polite request?","options":["Move! I want that road.","Is often a colour?","Excuse me, could you show me the way to the reading corner?","I will not listen to any answer."],"answer":2,"explanation":"The correct request is polite and asks specifically for the way to the destination."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'ec0d77af2b0d215cd02a64ec8830f340db67ca4737484e2a57b8d6fd13d3ed2d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-064', 'english', 4, 2, 'choice', '{"stem":"Compare the card with the note. Card: “Kate; reading corner; telling a story; purpose: help younger pupils enjoy reading.” Which note keeps every key field?","options":["Kate sleeps at an airport with no purpose","Another pupil leaves the reading corner before arriving","Kate visits the reading corner to do the opposite task","Kate is telling a story at the reading corner to help younger pupils enjoy reading"],"answer":3,"explanation":"The matching note keeps the person, place, present activity and purpose."}'::jsonb, 'builtin', '信息匹配', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'c2488ef21f4f764acf795ab46be1aa47081c9cf5146cffe7d631b04d391bf9d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-065', 'english', 4, 2, 'choice', '{"stem":"Read: “Sam usually visits the bus stop, opposite the post office. Today, instead of the usual visit, Sam is waiting for Bus 12 to arrive at school before eight.” Which title covers the place, action and purpose?","options":["Sam''s purposeful visit to the bus stop","An empty building with no activity","A weather report for next month","Rules for buying a bus ticket"],"answer":0,"explanation":"A complete title should include the visit and its purpose, not just one small detail."}'::jsonb, 'builtin', '连贯短文', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'a5a2b697d628f46ba1a37bf42c4f659c1dcc2fa27f6d6b7c302664de2c24eee8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-066', 'english', 4, 2, 'choice', '{"stem":"The bus stop is opposite the post office. Sam has reached the named landmark. Which direction clue should be used next?","options":["turn yesterday","opposite the post office","walk for a colour","wait inside a question"],"answer":1,"explanation":"The location phrase “opposite the post office” connects the destination with the landmark."}'::jsonb, 'builtin', '方位表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '0df29e0e14ae9bf088618480f4d4cd1e11c8b0b1f7ebd4bf69d0ccb3c7509f11', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-067', 'english', 4, 2, 'choice', '{"stem":"The record says, “Sam usually visits the bus stop, but today''s special task is to arrive at school before eight.” Which word describes the regular pattern rather than today''s task?","options":["waiting for Bus 12","bus stop","usually","arrive at school before eight"],"answer":2,"explanation":"“usually” describes how regularly the visits happen."}'::jsonb, 'builtin', '频率表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'ae8a64dc57197093a43c9de64e8a7072443b8c1494cbfa456d478438eddc70e9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-068', 'english', 4, 2, 'choice', '{"stem":"Sam usually goes to the bus stop. A live message says, “Sam is waiting for Bus 12 now.” Which phrase belongs in the NOW column?","options":["goes there usually","opposite the post office","arrive at school before eight","waiting for Bus 12"],"answer":3,"explanation":"The present continuous phrase after “is” reports what is happening now."}'::jsonb, 'builtin', '进行中的动作', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '835e0c5fc40ceec03c1b3d01becf7dc6377a83ad5fcab7c9796cddd01cd9e557', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-069', 'english', 4, 2, 'choice', '{"stem":"A report states, “Bus 12 is later than Bus 8.” Which conclusion keeps the same comparison?","options":["When compared with Bus 8, Bus 12 is later","Bus 8 must be later than itself","the two things were not compared","the sentence only tells a clock time"],"answer":0,"explanation":"The comparative sentence gives Bus 12, rather than Bus 8, the stated quality."}'::jsonb, 'builtin', '比较与描述', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'ebc81fad04293e71661aff8c4ce7915bd4e5aeaaccce2885403bf6b89772d36c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-070', 'english', 4, 2, 'choice', '{"stem":"Read two sentences: “The bus stop is opposite the post office.” “Sam goes there to arrive at school before eight.” Which summary joins both clues without changing them?","options":["Sam avoids every place and purpose","Sam goes to the bus stop, opposite the post office, to arrive at school before eight","Sam goes to a station to miss school","The bus stop moves to another town"],"answer":1,"explanation":"The summary preserves the location from the first sentence and the purpose from the second."}'::jsonb, 'builtin', '跨句信息', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'b834696ba704a6231d70024e885af09b6cac6bee876695c1d4119e16b39eb7a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-071', 'english', 4, 2, 'choice', '{"stem":"Sam knows the bus stop is opposite the post office, but still needs help finding it. What is the clearest polite request?","options":["Move! I want that road.","Is usually a colour?","Excuse me, could you show me the way to the bus stop?","I will not listen to any answer."],"answer":2,"explanation":"The correct request is polite and asks specifically for the way to the destination."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '1bad5a9c584c65b3f84e7a0606febf9ef2892f99725e247fa5c3d13092bffb58', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-072', 'english', 4, 2, 'choice', '{"stem":"Compare the card with the note. Card: “Sam; bus stop; waiting for Bus 12; purpose: arrive at school before eight.” Which note keeps every key field?","options":["Sam sleeps at an airport with no purpose","Another pupil leaves the bus stop before arriving","Sam visits the bus stop to do the opposite task","Sam is waiting for Bus 12 at the bus stop to arrive at school before eight"],"answer":3,"explanation":"The matching note keeps the person, place, present activity and purpose."}'::jsonb, 'builtin', '信息匹配', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '806b36577bfb9023e1989a1313cb9239f1c7b0de6998d390a2601a8dd4cc7f63', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-073', 'english', 4, 2, 'choice', '{"stem":"Read: “Anna always visits the sports centre, to the east of the park. Today, instead of the usual visit, Anna is swimming in lane three to improve her swimming.” Which title covers the place, action and purpose?","options":["Anna''s purposeful visit to the sports centre","An empty building with no activity","A weather report for next month","Rules for buying a bus ticket"],"answer":0,"explanation":"A complete title should include the visit and its purpose, not just one small detail."}'::jsonb, 'builtin', '连贯短文', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '504d14628be678b8bf83e5e88869c70db514560485293a0de6dbad39bf9696fc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-074', 'english', 4, 2, 'choice', '{"stem":"The sports centre is to the east of the park. Anna has reached the named landmark. Which direction clue should be used next?","options":["turn yesterday","to the east of the park","walk for a colour","wait inside a question"],"answer":1,"explanation":"The location phrase “to the east of the park” connects the destination with the landmark."}'::jsonb, 'builtin', '方位表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '73b817d4ded9d91a445f99ed6f3ae55b93008102216ad5f7020c12a1565bbb95', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-075', 'english', 4, 2, 'choice', '{"stem":"The record says, “Anna always visits the sports centre, but today''s special task is to improve her swimming.” Which word describes the regular pattern rather than today''s task?","options":["swimming in lane three","sports centre","always","improve her swimming"],"answer":2,"explanation":"“always” describes how regularly the visits happen."}'::jsonb, 'builtin', '频率表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '7dee53ea8b5299daf70dd8b7075b529f992bf9d6fb6bc33b7046dcad5efed88d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-076', 'english', 4, 2, 'choice', '{"stem":"Anna always goes to the sports centre. A live message says, “Anna is swimming in lane three now.” Which phrase belongs in the NOW column?","options":["goes there always","to the east of the park","improve her swimming","swimming in lane three"],"answer":3,"explanation":"The present continuous phrase after “is” reports what is happening now."}'::jsonb, 'builtin', '进行中的动作', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '0e183dda78deba9b67a8f13fd41413994196200cd8214129c9e987d4ead0395b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-077', 'english', 4, 2, 'choice', '{"stem":"A report states, “lane three is wider than lane two.” Which conclusion keeps the same comparison?","options":["When compared with lane two, lane three is wider","lane two must be wider than itself","the two things were not compared","the sentence only tells a clock time"],"answer":0,"explanation":"The comparative sentence gives lane three, rather than lane two, the stated quality."}'::jsonb, 'builtin', '比较与描述', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'bad2646677e042b46ebe106094d54b82e4e9c7426771324b0793d164ee74b711', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-078', 'english', 4, 2, 'choice', '{"stem":"Read two sentences: “The sports centre is to the east of the park.” “Anna goes there to improve her swimming.” Which summary joins both clues without changing them?","options":["Anna avoids every place and purpose","Anna goes to the sports centre, to the east of the park, to improve her swimming","Anna goes to a station to miss school","The sports centre moves to another town"],"answer":1,"explanation":"The summary preserves the location from the first sentence and the purpose from the second."}'::jsonb, 'builtin', '跨句信息', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '93b3412e433657281f4cbaf797029d5fb98a1eae591f6dcf4ee61a2fb93c678a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-079', 'english', 4, 2, 'choice', '{"stem":"Anna knows the sports centre is to the east of the park, but still needs help finding it. What is the clearest polite request?","options":["Move! I want that road.","Is always a colour?","Excuse me, could you show me the way to the sports centre?","I will not listen to any answer."],"answer":2,"explanation":"The correct request is polite and asks specifically for the way to the destination."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'a37165cd3f0f973914f787c5b40caab54e6c24fd6b94a4398455e13092b9bd53', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-080', 'english', 4, 2, 'choice', '{"stem":"Compare the card with the note. Card: “Anna; sports centre; swimming in lane three; purpose: improve her swimming.” Which note keeps every key field?","options":["Anna sleeps at an airport with no purpose","Another pupil leaves the sports centre before arriving","Anna visits the sports centre to do the opposite task","Anna is swimming in lane three at the sports centre to improve her swimming"],"answer":3,"explanation":"The matching note keeps the person, place, present activity and purpose."}'::jsonb, 'builtin', '信息匹配', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '536e5beb037bd2538d2fe0c23303277370cee57f330a6a8166f3e629c113cafd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-081', 'english', 4, 2, 'choice', '{"stem":"Read: “Ben often visits the community centre, at the end of Green Street. Today, instead of the usual visit, Ben is sorting old books to prepare books for sharing.” Which title covers the place, action and purpose?","options":["Ben''s purposeful visit to the community centre","An empty building with no activity","A weather report for next month","Rules for buying a bus ticket"],"answer":0,"explanation":"A complete title should include the visit and its purpose, not just one small detail."}'::jsonb, 'builtin', '连贯短文', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'be60fba7690086ff173bdc1964c9746806ebfc78e52dd20ef236d52e8289a4b8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-082', 'english', 4, 2, 'choice', '{"stem":"The community centre is at the end of Green Street. Ben has reached the named landmark. Which direction clue should be used next?","options":["turn yesterday","at the end of Green Street","walk for a colour","wait inside a question"],"answer":1,"explanation":"The location phrase “at the end of Green Street” connects the destination with the landmark."}'::jsonb, 'builtin', '方位表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'a6fa0b6d982b76a62fa9874794d0cb6472242f7945462b777cd31d32fd98e3b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-083', 'english', 4, 2, 'choice', '{"stem":"The record says, “Ben often visits the community centre, but today''s special task is to prepare books for sharing.” Which word describes the regular pattern rather than today''s task?","options":["sorting old books","community centre","often","prepare books for sharing"],"answer":2,"explanation":"“often” describes how regularly the visits happen."}'::jsonb, 'builtin', '频率表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '8e1ba9e700d6a3ac684f0d68c7a87ceacc142dae67bb68fa07e6e1be409ca11c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-084', 'english', 4, 2, 'choice', '{"stem":"Ben often goes to the community centre. A live message says, “Ben is sorting old books now.” Which phrase belongs in the NOW column?","options":["goes there often","at the end of Green Street","prepare books for sharing","sorting old books"],"answer":3,"explanation":"The present continuous phrase after “is” reports what is happening now."}'::jsonb, 'builtin', '进行中的动作', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'f72adb26a0f77182459ffce7152e37ece796682c3d4bc99646aa3adeb68c5cbf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-085', 'english', 4, 2, 'choice', '{"stem":"A report states, “the history box is heavier than the story box.” Which conclusion keeps the same comparison?","options":["When compared with the story box, the history box is heavier","the story box must be heavier than itself","the two things were not compared","the sentence only tells a clock time"],"answer":0,"explanation":"The comparative sentence gives the history box, rather than the story box, the stated quality."}'::jsonb, 'builtin', '比较与描述', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '5e576dfec650156c8a45ebbc8cf11095febfd0ab35ebc0dd5ffa7a089f3c8649', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-086', 'english', 4, 2, 'choice', '{"stem":"Read two sentences: “The community centre is at the end of Green Street.” “Ben goes there to prepare books for sharing.” Which summary joins both clues without changing them?","options":["Ben avoids every place and purpose","Ben goes to the community centre, at the end of Green Street, to prepare books for sharing","Ben goes to a station to miss school","The community centre moves to another town"],"answer":1,"explanation":"The summary preserves the location from the first sentence and the purpose from the second."}'::jsonb, 'builtin', '跨句信息', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '37e7502d499a82abc03bb2ec8a1c917551a7a023f43c7421ecb29b3e638ef6c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-087', 'english', 4, 2, 'choice', '{"stem":"Ben knows the community centre is at the end of Green Street, but still needs help finding it. What is the clearest polite request?","options":["Move! I want that road.","Is often a colour?","Excuse me, could you show me the way to the community centre?","I will not listen to any answer."],"answer":2,"explanation":"The correct request is polite and asks specifically for the way to the destination."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'e7777ac00e20e2d28961e793473503beb75f946014e42be51d13d5602e55e7b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-088', 'english', 4, 2, 'choice', '{"stem":"Compare the card with the note. Card: “Ben; community centre; sorting old books; purpose: prepare books for sharing.” Which note keeps every key field?","options":["Ben sleeps at an airport with no purpose","Another pupil leaves the community centre before arriving","Ben visits the community centre to do the opposite task","Ben is sorting old books at the community centre to prepare books for sharing"],"answer":3,"explanation":"The matching note keeps the person, place, present activity and purpose."}'::jsonb, 'builtin', '信息匹配', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'ab3c7e2556a559290408dbd0465ca65c6d28eab54bfb7177e13339dae3d1aa76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-089', 'english', 4, 2, 'choice', '{"stem":"Read: “Grace sometimes visits the science lab, above the school office. Today, instead of the usual visit, Grace is measuring plant leaves to compare plants in sun and shade.” Which title covers the place, action and purpose?","options":["Grace''s purposeful visit to the science lab","An empty building with no activity","A weather report for next month","Rules for buying a bus ticket"],"answer":0,"explanation":"A complete title should include the visit and its purpose, not just one small detail."}'::jsonb, 'builtin', '连贯短文', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'fd9b12eaa450b219d1d6cfd93a19008add772f8ca03f8c4bf95e75fecd898ab3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-090', 'english', 4, 3, 'choice', '{"stem":"Clue 1: the science lab is above the school office. Clue 2: Grace is already at the landmark named in clue 1. Which phrase must Grace understand to locate the destination?","options":["every Sunday","above the school office","measuring plant leaves","sometimes"],"answer":1,"explanation":"Only the location phrase describes the spatial relation between the landmark and destination."}'::jsonb, 'builtin', '方位表达', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], 'c661f8e550d368a4fd017c7f58e24b23728b39fbe19f4c8a01290a08350f8ffb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-091', 'english', 4, 3, 'choice', '{"stem":"A diary has many science lab entries, and its summary says “Grace sometimes goes there.” Which word is evidence about repeated visits but not about one exact day?","options":["today","science lab","sometimes","measuring plant leaves"],"answer":2,"explanation":"A frequency adverb summarizes a repeated pattern without naming one exact date."}'::jsonb, 'builtin', '频率表达', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '4e649b32abc886e8384304328fe04e407241a11aa1cefebcabdf29834ce6b946', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-092', 'english', 4, 3, 'choice', '{"stem":"Routine: “Grace sometimes visits the science lab.” Live update: “Today Grace is measuring plant leaves.” Which statement correctly separates habit from current action?","options":["Both sentences describe only yesterday.","The science lab is an action verb.","The live update says nothing is happening.","The visit is a habit; measuring plant leaves is happening now."],"answer":3,"explanation":"The simple present reports a habit, while “is ...ing” reports the current action."}'::jsonb, 'builtin', '进行中的动作', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '18416b5b3b6ab22823c967fdea90b317e2d3e2378afcc99efed83c3624c701b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-093', 'english', 4, 3, 'choice', '{"stem":"Given “plant A is greener than plant B,” which rewrite preserves both the direction and the quality of the comparison?","options":["Compared with plant B, plant A is greener.","Compared with plant A, plant B is greener.","plant A and plant B are never compared.","greener tells where both things are."],"answer":0,"explanation":"The rewrite keeps ${s.first} as the item with more of the compared quality."}'::jsonb, 'builtin', '比较与描述', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '30090ea77296b5942adc8327a7dfcd948b0357bfc73f2b3f7eaf51dcd5927c49', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-094', 'english', 4, 3, 'choice', '{"stem":"Sentence 1 locates the science lab above the school office. Sentence 2 says Grace is measuring plant leaves. Sentence 3 gives the reason: to compare plants in sun and shade. Which answer requires all three sentences?","options":["The science lab has a name.","Grace is measuring plant leaves at a place above the school office in order to compare plants in sun and shade","Grace exists.","There is one location word."],"answer":1,"explanation":"The correct answer combines location, action and purpose, so no single sentence is enough."}'::jsonb, 'builtin', '跨句信息', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], 'ddb9740b0a9e0dff090694daa2290d9b83e9a61dea619b49bac91a7dd7049eac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-095', 'english', 4, 3, 'choice', '{"stem":"Grace asks for the science lab. A helper says, “It is above the school office.” Which reply both confirms understanding and continues politely?","options":["Give me a different answer now!","I asked about a colour, not a place.","Thank you. So I should look above the school office, right?","Yesterday is taller than today."],"answer":2,"explanation":"The reply thanks the helper and checks the location information."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '4e14d3a86c27f7472a2ba5a16d6160d5b3af6a251dd27823ff277d45833c782b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-096', 'english', 4, 3, 'choice', '{"stem":"Card A says “Grace—science lab—measuring plant leaves.” Card B says “Purpose—compare plants in sun and shade; location—above the school office.” Which combined record is fully consistent?","options":["Grace; sleeping; airport; under the sea; no plan","unknown person; measuring plant leaves; wrong town; no purpose","Grace; opposite action; science lab; wrong location; compare plants in sun and shade","Grace; measuring plant leaves; science lab; above the school office; compare plants in sun and shade"],"answer":3,"explanation":"Every field in the correct record agrees with one of the two cards."}'::jsonb, 'builtin', '信息匹配', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '0857b11d7bafca5de380359578d4f9fa6d81f3ab778d6bd821758b2326094d02', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-097', 'english', 4, 3, 'choice', '{"stem":"Read: “The school hall is past the main gate. David usually visits it. Today David is putting chairs in rows, because the goal is to get ready for a parents’ meeting.” Which outline follows the text''s logic?","options":["location → regular visit → today''s action → purpose","purpose → no visitor → yesterday → colour","weather → price → meal → train","action → wrong place → no reason → silence"],"answer":0,"explanation":"The four sentences move from location and habit to the present action and its reason."}'::jsonb, 'builtin', '连贯短文', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '26a09622c25d36b84d0bc68a66f17f73ba4ce4c87bcfc1a20b274ffc77852779', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-098', 'english', 4, 3, 'choice', '{"stem":"Clue 1: the school hall is past the main gate. Clue 2: David is already at the landmark named in clue 1. Which phrase must David understand to locate the destination?","options":["every Sunday","past the main gate","putting chairs in rows","usually"],"answer":1,"explanation":"Only the location phrase describes the spatial relation between the landmark and destination."}'::jsonb, 'builtin', '方位表达', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '17bf610fab0c18912370e8bef5138082637067c0ebdead9049722b10b2fdf7a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-099', 'english', 4, 3, 'choice', '{"stem":"A diary has many school hall entries, and its summary says “David usually goes there.” Which word is evidence about repeated visits but not about one exact day?","options":["today","school hall","usually","putting chairs in rows"],"answer":2,"explanation":"A frequency adverb summarizes a repeated pattern without naming one exact date."}'::jsonb, 'builtin', '频率表达', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '99dde350214e7940931b6ef0f2abfebebf067c6e79d2bc78ee5436c5f417c87c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-100', 'english', 4, 3, 'choice', '{"stem":"Routine: “David usually visits the school hall.” Live update: “Today David is putting chairs in rows.” Which statement correctly separates habit from current action?","options":["Both sentences describe only yesterday.","The school hall is an action verb.","The live update says nothing is happening.","The visit is a habit; putting chairs in rows is happening now."],"answer":3,"explanation":"The simple present reports a habit, while “is ...ing” reports the current action."}'::jsonb, 'builtin', '进行中的动作', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '361afc255ff59afd8d32c862d84507a967dce6b283e0447d75f43eab018f8999', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-101', 'english', 4, 3, 'choice', '{"stem":"Given “the front row is shorter than the back row,” which rewrite preserves both the direction and the quality of the comparison?","options":["Compared with the back row, the front row is shorter.","Compared with the front row, the back row is shorter.","the front row and the back row are never compared.","shorter tells where both things are."],"answer":0,"explanation":"The rewrite keeps ${s.first} as the item with more of the compared quality."}'::jsonb, 'builtin', '比较与描述', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '99edd8fadd8fbb1e34e3301ea1299edb9bca4bae876ed8124dd80c407ad3bb0a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-102', 'english', 4, 3, 'choice', '{"stem":"Sentence 1 locates the school hall past the main gate. Sentence 2 says David is putting chairs in rows. Sentence 3 gives the reason: to get ready for a parents’ meeting. Which answer requires all three sentences?","options":["The school hall has a name.","David is putting chairs in rows at a place past the main gate in order to get ready for a parents’ meeting","David exists.","There is one location word."],"answer":1,"explanation":"The correct answer combines location, action and purpose, so no single sentence is enough."}'::jsonb, 'builtin', '跨句信息', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], 'd1fcc509661e557b3bd58da13a172882258f974aa900c97a4b3c76d3cda90239', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-103', 'english', 4, 3, 'choice', '{"stem":"David asks for the school hall. A helper says, “It is past the main gate.” Which reply both confirms understanding and continues politely?","options":["Give me a different answer now!","I asked about a colour, not a place.","Thank you. So I should look past the main gate, right?","Yesterday is taller than today."],"answer":2,"explanation":"The reply thanks the helper and checks the location information."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '9c95faf2fe2b89f06b3bee10373258191129bc1bd2bb0116e1b0374edbc8e296', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-104', 'english', 4, 3, 'choice', '{"stem":"Card A says “David—school hall—putting chairs in rows.” Card B says “Purpose—get ready for a parents’ meeting; location—past the main gate.” Which combined record is fully consistent?","options":["David; sleeping; airport; under the sea; no plan","unknown person; putting chairs in rows; wrong town; no purpose","David; opposite action; school hall; wrong location; get ready for a parents’ meeting","David; putting chairs in rows; school hall; past the main gate; get ready for a parents’ meeting"],"answer":3,"explanation":"Every field in the correct record agrees with one of the two cards."}'::jsonb, 'builtin', '信息匹配', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '4e10929378ffbb9fd4e8969ce00f8d8cdcb9b0d76a80afc8826dc84f30be2d59', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-105', 'english', 4, 3, 'choice', '{"stem":"Read: “The nature centre is at the foot of the hill. Helen often visits it. Today Helen is writing an observation note, because the goal is to explain how visitors affect birds.” Which outline follows the text''s logic?","options":["location → regular visit → today''s action → purpose","purpose → no visitor → yesterday → colour","weather → price → meal → train","action → wrong place → no reason → silence"],"answer":0,"explanation":"The four sentences move from location and habit to the present action and its reason."}'::jsonb, 'builtin', '连贯短文', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], 'f96fda46e8ff3463027cc29d3aff94444556b8f70d6cf80e3b6820b597b8685c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-106', 'english', 4, 1, 'fill', '{"stem":"First we read the map. Then we walk to the park. The word “Then” shows the ___ step.","answer":"second","explanation":"The word “second” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '4cefa6d6f7f3337008da8c2c0d752c35f50c612eb0ced8bdb15d827eba949444', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-107', 'english', 4, 1, 'fill', '{"stem":"The library is ___ the bank and the post office.（填 between）","answer":"between","explanation":"The word “between” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'd168723a83a248d6cd422e99690eca729f045bb3c1b03848eda627922450c2d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-108', 'english', 4, 1, 'fill', '{"stem":"I go to school every weekday. I ___ go to school from Monday to Friday.","answer":"always","explanation":"The word “always” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'ac2673647d9ac68c6f7b7769a95406fbc6dd2483dc6b49a434a20b762ed2c6fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-109', 'english', 4, 1, 'fill', '{"stem":"Look! The children are ___ football.（填 play 的正确形式）","answer":"playing","explanation":"The word “playing” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '8fa1c78784807c5e78359bbd6a99efc12bcf885d6d373b16f528a1835360c326', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-110', 'english', 4, 1, 'fill', '{"stem":"The giraffe is ___ than the dog.（填 tall 的比较级）","answer":"taller","explanation":"The word “taller” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'dc8c8cb521d1f0a4de379e3ac67a79c7e2d15d8fa8529db958f698f7f1f0c732', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-111', 'english', 4, 1, 'fill', '{"stem":"Read: “Mia has a map. She is looking for the museum.” Mia uses the map to find the ___.","answer":"museum","explanation":"The word “museum” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '0414df6aac88418c1b14d82b1ef77969812915b9da07590c54d703e0ca31a606', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-112', 'english', 4, 1, 'fill', '{"stem":"To ask for directions politely, begin with “___ me”.","answer":"excuse","explanation":"The word “excuse” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'fa0626830273ea183a09bd97f2e26c2d97317cb57ffd474921df5d349aa9236e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-113', 'english', 4, 1, 'fill', '{"stem":"The card says “Friday—art room—drawing”. The place is the ___ room.","answer":"art","explanation":"The word “art” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '信息匹配', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '44944f597c84e5fff4c0d991fa21a3f270a12923093853e927cdacf5e0974fc2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-114', 'english', 4, 1, 'fill', '{"stem":"A paragraph with “first, next, finally” describes an ___ of events.","answer":"order","explanation":"The word “order” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '8f43586dedf274e387a68ce0a244fca1a2d6c7f2d174de4dd113ae442eadc6d2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-115', 'english', 4, 1, 'fill', '{"stem":"The cat is ___ the table, not on it.（填 under）","answer":"under","explanation":"The word “under” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '6450f5bea202f97a90acc0dc2493c77a7510b20ad2b762e5d32a0ba567025b9a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-116', 'english', 4, 1, 'fill', '{"stem":"I do not eat ice cream on school days. I ___ eat it from Monday to Friday.","answer":"never","explanation":"The word “never” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'df5265494ea2d3636d40f6ba7a3de200896cc50674edfebdbc02e1bc74f5ebc7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-117', 'english', 4, 2, 'fill', '{"stem":"Mum is ___ dinner now.（填 cook 的正确形式）","answer":"cooking","explanation":"The word “cooking” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '进行中的动作', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '12d8b1e1ceca3b66a0ec5a767940c026947dc554273a5b787dfbd9177e338fa7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-118', 'english', 4, 2, 'fill', '{"stem":"This box is ___ than that one.（填 heavy 的比较级）","answer":"heavier","explanation":"The word “heavier” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '比较与描述', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'a8bf721912a4e53f0e71e4bff8af73087c20a6ac9a0c3b2699e47677ff82dbee', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-119', 'english', 4, 2, 'fill', '{"stem":"Read: “Leo is at the pool. He is learning to swim.” Leo learns swimming at the ___.","answer":"pool","explanation":"The word “pool” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '跨句信息', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '8652a27e3850c25620673ae6a2c5cbad9da79bd3eb888b2aa0de74e246e6f20e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-120', 'english', 4, 2, 'fill', '{"stem":"When you do not hear clearly, say “Could you say that ___?”","answer":"again","explanation":"The word “again” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '9606b62fcbc6d2410f967b57bb20af08eccfd90af62afd78ad8ccbca66522d9e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-121', 'english', 4, 2, 'fill', '{"stem":"A timetable line “8:00—English—Room 2” shows the time, subject and ___.","answer":"place","explanation":"The word “place” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '信息匹配', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'b227ccbe0f241c04674105a2f9b711a78f9ffe92a63999524af21c9f8a951454', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-122', 'english', 4, 2, 'fill', '{"stem":"The last sentence often gives the result or ___ of a short text.","answer":"ending","explanation":"The word “ending” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '连贯短文', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'c1a0036813d79598f96e5e927a016f5fc856aff840f209fb6f337d74a4131624', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-123', 'english', 4, 2, 'fill', '{"stem":"The shop is ___ from the school, on the other side of the road.","answer":"opposite","explanation":"The word “opposite” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '方位表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '3e2b88671880562362b828cac6bb44264e419de7086dcdac4e42132b0953d0b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-124', 'english', 4, 3, 'fill', '{"stem":"Listen! A bird is ___ in the tree.（填 sing 的正确形式）","answer":"singing","explanation":"The word “singing” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '进行中的动作', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], 'c6f73550e853994176c266b3923f8a4733d67af03db402004e10e8a8fd6d5fd3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-125', 'english', 4, 3, 'fill', '{"stem":"Read two facts before choosing; do not use only one ___.","answer":"sentence","explanation":"The word “sentence” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '跨句信息', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '087a7af78f70513269bb089cf06aeaf979c937433942ac4d8554538f17221bb9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-126', 'english', 4, 3, 'fill', '{"stem":"To match a notice correctly, compare its key time, place and ___.","answer":"activity","explanation":"The word “activity” completes the sentence with the correct meaning and form."}'::jsonb, 'builtin', '信息匹配', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], 'a340acc98e8f594a98046055607a319a07e9c4628b8a28f04a5f7bd43a9f71a8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-127', 'english', 4, 1, 'match', '{"stem":"Read the school language chart. Match each sequence word with its position in an activity plan.","left":["first","next","then","finally"],"right":["step 3","step 1","last step","step 2"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 连贯短文 items before connecting them."}'::jsonb, 'builtin', '连贯短文', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'edd8056769b948bb9ee2c33fa21d439ebd0ce379ee65520fcafc94abb9fa2832', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-128', 'english', 4, 1, 'match', '{"stem":"Read the school language chart. Match each location phrase with its Chinese meaning.","left":["in front of","behind","between","opposite"],"right":["两者之间","前面","对面","后面"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 方位表达 items before connecting them."}'::jsonb, 'builtin', '方位表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'bdcc7a24b8da14fd0b84f5b4a49e27d9b87c2a14e989a53d35863ab27616effa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-129', 'english', 4, 1, 'match', '{"stem":"Read the school language chart. Match each frequency word with how often it means.","left":["always","usually","sometimes","never"],"right":["有时","总是","从不","通常"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 频率表达 items before connecting them."}'::jsonb, 'builtin', '频率表达', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '403739e0287e2af415d3a1a192aa3460aa11fe88972a149bd61db932ae9fcf8b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-130', 'english', 4, 1, 'match', '{"stem":"Read the school language chart. Match each present action with the correct number of people and activity.","left":["is reading","are playing","is cooking","are singing"],"right":["one person cooks now","one person reads now","several people sing now","several people play now"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 进行中的动作 items before connecting them."}'::jsonb, 'builtin', '进行中的动作', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '5ca4b07c165bcb4d155bea284c8ad8e7b0ef15343601e63abfecdb3aed47a95e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-131', 'english', 4, 1, 'match', '{"stem":"Read the school language chart. Match each comparative adjective with its Chinese meaning.","left":["taller","shorter","heavier","faster"],"right":["更重","更高","更快","更短"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 比较与描述 items before connecting them."}'::jsonb, 'builtin', '比较与描述', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '2f743ec784218773a19923363ad622f011e9d758bfa3df50cd9d87022adc507c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-132', 'english', 4, 1, 'match', '{"stem":"Read the school language chart. Match each reading clue with the question it answers.","left":["person","place","time","purpose"],"right":["when","who","why","where"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 跨句信息 items before connecting them."}'::jsonb, 'builtin', '跨句信息', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], '9fde186facad6b7d63af4519e24dcba14adaa7b2da062768700610f3e25e2e4c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-133', 'english', 4, 1, 'match', '{"stem":"Read the school language chart. Match each polite expression with its purpose.","left":["Excuse me.","Could you help me?","Thank you.","I am sorry."],"right":["表示感谢","礼貌引起注意","表示歉意","请求帮助"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 情境交际 items before connecting them."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', '文字可作答', '日常表达']::text[], 'cf84268abc984cdecd07d542bb712886c8c1b161afc3620a65c61b015ce3df29', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-134', 'english', 4, 2, 'match', '{"stem":"Read the school language chart. Match each timetable entry with the activity at that place.","left":["8:00—library","9:00—playground","10:00—lab","11:00—hall"],"right":["doing an experiment","reading","having a meeting","running"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 信息匹配 items before connecting them."}'::jsonb, 'builtin', '信息匹配', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'a98794d771854dcc03220d28054a8359663ef12d69de57a4dbbc60c01a0876b8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-135', 'english', 4, 2, 'match', '{"stem":"Use the weekend practice card. Match each sequence word with its position in an activity plan.","left":["first","next","then","finally"],"right":["step 3","step 1","last step","step 2"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 连贯短文 items before connecting them."}'::jsonb, 'builtin', '连贯短文', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '5d8d4b42ba4936c60840d0ca74f4cfaf035178160359a153c5271fd02ad9bb65', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-136', 'english', 4, 2, 'match', '{"stem":"Use the weekend practice card. Match each location phrase with its Chinese meaning.","left":["in front of","behind","between","opposite"],"right":["两者之间","前面","对面","后面"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 方位表达 items before connecting them."}'::jsonb, 'builtin', '方位表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], '39c93a50c7c10b0c607f937f7d695be2ef8d11b7846ec26c86ddb83ed91eb7db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-137', 'english', 4, 2, 'match', '{"stem":"Use the weekend practice card. Match each frequency word with how often it means.","left":["always","usually","sometimes","never"],"right":["有时","总是","从不","通常"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 频率表达 items before connecting them."}'::jsonb, 'builtin', '频率表达', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'a3dbe35b8beb76abca13fdd6814a7a77505f862b0d2604ebbc529ee733f19799', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-138', 'english', 4, 2, 'match', '{"stem":"Use the weekend practice card. Match each present action with the correct number of people and activity.","left":["is reading","are playing","is cooking","are singing"],"right":["one person cooks now","one person reads now","several people sing now","several people play now"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 进行中的动作 items before connecting them."}'::jsonb, 'builtin', '进行中的动作', 'apply', array['全国通用', '文字可作答', '跨句理解']::text[], 'dc2c9dbf08e6820c91d44b0a0d7df1430edccbd1548e29346dfe66ba636f93ad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-139', 'english', 4, 3, 'match', '{"stem":"Use the weekend practice card. Match each comparative adjective with its Chinese meaning.","left":["taller","shorter","heavier","faster"],"right":["更重","更高","更快","更短"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 比较与描述 items before connecting them."}'::jsonb, 'builtin', '比较与描述', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], '6f3a433192445c042e300d5bcacef7fa6b91597bde434fb5ad6a38a2d9c95dec', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-english-authored-140', 'english', 4, 3, 'match', '{"stem":"Use the weekend practice card. Match each reading clue with the question it answers.","left":["person","place","time","purpose"],"right":["when","who","why","where"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 跨句信息 items before connecting them."}'::jsonb, 'builtin', '跨句信息', 'reason', array['全国通用', '文字可作答', '跨句理解']::text[], 'f78096e48e9fbdb83d1a48ee15d1d2fad371fc0b21bbf44813c0815a4467d093', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-001', 'math', 4, 1, 'choice', '{"stem":"校园读书节：计算总数：2481+617=？","options":["3098","2998","3108","3099"],"answer":0,"explanation":"列竖式计算得到3098。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], '7a374f28bfb297e8650603b1ec719c8c115cf772fca9cb713fb8ca34e00b00f7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-002', 'math', 4, 1, 'choice', '{"stem":"校园读书节：怎样简便计算25×15×4？结果是多少？","options":["475","1500","1400","1504"],"answer":1,"explanation":"先交换并结合25和4，25×4×15=100×15=1500。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], 'c604018abfad7fd60e362d50150a3839dd77ab512ab8dd1b30d25e611aae3986', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-003', 'math', 4, 1, 'choice', '{"stem":"校园读书节：两段彩带长3.3米和2.5米，一共多长？","options":["0.8米","6.8米","5.8米","6米"],"answer":2,"explanation":"小数点对齐相加，3.3+2.5=5.8米。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], 'f02f633416ad96b52b2556808d939792834246e009fb5d4c0368623d16ff1818', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-004', 'math', 4, 1, 'choice', '{"stem":"校园读书节：一个角是30°，它是什么角？","options":["平角","钝角","周角","锐角"],"answer":3,"explanation":"30°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], '62ceb92f19f15af59749437f7458a6d6c00a0ae806300cafd220b14d36806119', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-005', 'math', 4, 1, 'choice', '{"stem":"校园读书节：长方形相邻两条边的位置关系是什么？","options":["互相垂直","互相平行","完全重合","没有关系"],"answer":0,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], '3cfc144193d82efad40897a8b44268095cf8e2a56801a3b5b23394b4a3d67c2f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-006', 'math', 4, 1, 'choice', '{"stem":"校园读书节：三次测量结果是66、72、69厘米，平均是多少厘米？","options":["72厘米","69厘米","207厘米","75厘米"],"answer":1,"explanation":"总数除以3：（66+72+69）÷3=69厘米。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], '1fe5d4cf14deb2236ac51483821f3fcd3a4daeaee6d40bbe90214ac0a6226dd1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-007', 'math', 4, 1, 'choice', '{"stem":"校园读书节：统计表记录甲15票、乙20票、丙12票，谁最多？","options":["甲","丙","乙","一样多"],"answer":2,"explanation":"20最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], '7eab6bc58a21192106ec74959f91d8a644529e1c04f3e29c432292b3b9e22cfe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-008', 'math', 4, 1, 'choice', '{"stem":"校园读书节：原有135盒彩笔，发出33盒，又运来48盒，现在有多少盒？","options":["102盒","183盒","186盒","150盒"],"answer":3,"explanation":"先减发出的，再加运来的：135-33+48=150盒。"}'::jsonb, 'builtin', '多步问题', 'understand', array['全国通用', '基础巩固']::text[], '4824d4a962d10d39d63006539550e03069cfc6b762978b6a7dec5a56606a93f5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-009', 'math', 4, 1, 'choice', '{"stem":"校园读书节：每本练习册11元，买4本需要多少元？","options":["44元","15元","33元","48元"],"answer":0,"explanation":"总价=单价×数量，11×4=44元。"}'::jsonb, 'builtin', '数量关系', 'understand', array['全国通用', '基础巩固']::text[], 'd2981ba1c207167ebac5b953c1c693712cf3ebed63e46ef2e7b09e0a163149a9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-010', 'math', 4, 1, 'choice', '{"stem":"社区运动会：计算总数：2528+636=？","options":["3064","3164","3174","3165"],"answer":1,"explanation":"列竖式计算得到3164。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], '61ebd7dbd90a4aba1d602d477bdb5f624f999fa36a3bd3cf0ab90f3ae92389b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-011', 'math', 4, 1, 'choice', '{"stem":"社区运动会：怎样简便计算25×16×4？结果是多少？","options":["500","1500","1600","1604"],"answer":2,"explanation":"先交换并结合25和4，25×4×16=100×16=1600。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], '046b2455c12a9b075ca0e709f1e504b1804c5dd92c8c752e78e3a9723307df3f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-012', 'math', 4, 1, 'choice', '{"stem":"社区运动会：两段彩带长3.4米和2.6米，一共多长？","options":["0.8米","7.0米","6米","6.0米"],"answer":3,"explanation":"小数点对齐相加，3.4+2.6=6.0米。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], 'd9eeee80f2b60e7e3f7693a86b0d59f22a443932b9a28d025f3830946f5c6d37', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-013', 'math', 4, 1, 'choice', '{"stem":"社区运动会：一个角是35°，它是什么角？","options":["锐角","平角","钝角","周角"],"answer":0,"explanation":"35°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], '1aa550b8a087f7f3a223376ac3f6baa33bcd2fb0ad33e5efdc26e19968e6b9fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-014', 'math', 4, 1, 'choice', '{"stem":"社区运动会：长方形相邻两条边的位置关系是什么？","options":["互相平行","互相垂直","完全重合","没有关系"],"answer":1,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], '1ae1eb4f37f999562af03217e1d15a4b960557c074fe8b564459111ca3773833', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-015', 'math', 4, 1, 'choice', '{"stem":"社区运动会：三次测量结果是68、74、71厘米，平均是多少厘米？","options":["74厘米","213厘米","71厘米","77厘米"],"answer":2,"explanation":"总数除以3：（68+74+71）÷3=71厘米。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], '2ed39f011dffd0b75f23f880ea3f0686998639843137f61e98dc073fca12d338', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-016', 'math', 4, 1, 'choice', '{"stem":"社区运动会：统计表记录甲16票、乙21票、丙13票，谁最多？","options":["甲","丙","一样多","乙"],"answer":3,"explanation":"21最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], 'a391388ae1dde30f922165c5251d148005c0957cc9af8439162d992a33934deb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-017', 'math', 4, 1, 'choice', '{"stem":"社区运动会：原有140盒彩笔，发出34盒，又运来49盒，现在有多少盒？","options":["155盒","106盒","189盒","192盒"],"answer":0,"explanation":"先减发出的，再加运来的：140-34+49=155盒。"}'::jsonb, 'builtin', '多步问题', 'understand', array['全国通用', '基础巩固']::text[], 'a7e62f58d19aa792ffb38c54dc0b5015647c5c726ffcca2943ef7660481e1238', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-018', 'math', 4, 1, 'choice', '{"stem":"社区运动会：每本练习册12元，买5本需要多少元？","options":["17元","60元","48元","65元"],"answer":1,"explanation":"总价=单价×数量，12×5=60元。"}'::jsonb, 'builtin', '数量关系', 'understand', array['全国通用', '基础巩固']::text[], 'bf7ab5f567982011eef4fe0f19577723d4713c88820db21b523608d33be77daf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-019', 'math', 4, 1, 'choice', '{"stem":"科技体验日：计算总数：2575+655=？","options":["3130","3240","3230","3231"],"answer":2,"explanation":"列竖式计算得到3230。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], 'f64a23d9b0993995305ae00050cc3438ed3c82450f89f11782b568ea0c8492ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-020', 'math', 4, 1, 'choice', '{"stem":"科技体验日：怎样简便计算25×17×4？结果是多少？","options":["525","1600","1704","1700"],"answer":3,"explanation":"先交换并结合25和4，25×4×17=100×17=1700。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], '4faabcf91750a8c6c0e1a27adf535ffcb7aa2a1bff7fae4cde9bce6432b3522e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-021', 'math', 4, 1, 'choice', '{"stem":"科技体验日：两段彩带长3.5米和2.7米，一共多长？","options":["6.2米","0.8米","7.2米","6米"],"answer":0,"explanation":"小数点对齐相加，3.5+2.7=6.2米。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], 'a2dd7fc85444237e2f225a56ac80a3b871c599043f262d05e23da5b9dc6cf1ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-022', 'math', 4, 1, 'choice', '{"stem":"科技体验日：一个角是40°，它是什么角？","options":["平角","锐角","钝角","周角"],"answer":1,"explanation":"40°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], 'c626a55813eb91b40b87cd423390dad0e25ab90abfca06adafba4de0942adc54', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-023', 'math', 4, 1, 'choice', '{"stem":"科技体验日：长方形相邻两条边的位置关系是什么？","options":["互相平行","完全重合","互相垂直","没有关系"],"answer":2,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], 'c68a5d660a9eef0323d5f3fbf26d1c66804fb58370b4171e5d3058e24146faef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-024', 'math', 4, 1, 'choice', '{"stem":"科技体验日：三次测量结果是70、76、73厘米，平均是多少厘米？","options":["76厘米","219厘米","79厘米","73厘米"],"answer":3,"explanation":"总数除以3：（70+76+73）÷3=73厘米。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], '17c32b943ac38c656d26d37b955c9bc1796c365123d9abcf5533aaf7c6be38fa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-025', 'math', 4, 1, 'choice', '{"stem":"科技体验日：统计表记录甲17票、乙22票、丙14票，谁最多？","options":["乙","甲","丙","一样多"],"answer":0,"explanation":"22最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], '52925404c322f6fd8d48de6afda292a36821de552d33000a5b21b8c6e1b12126', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-026', 'math', 4, 1, 'choice', '{"stem":"科技体验日：原有145盒彩笔，发出35盒，又运来50盒，现在有多少盒？","options":["110盒","160盒","195盒","198盒"],"answer":1,"explanation":"先减发出的，再加运来的：145-35+50=160盒。"}'::jsonb, 'builtin', '多步问题', 'understand', array['全国通用', '基础巩固']::text[], '458d649d2a529cde501019d3377c7879538f74be16a3fee4bd83b24c017da2b3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-027', 'math', 4, 1, 'choice', '{"stem":"科技体验日：每本练习册13元，买6本需要多少元？","options":["19元","65元","78元","84元"],"answer":2,"explanation":"总价=单价×数量，13×6=78元。"}'::jsonb, 'builtin', '数量关系', 'understand', array['全国通用', '基础巩固']::text[], '618dba8fefc68b251fd0dddd66bcf016c18916a7663bcde6716708af113c295f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-028', 'math', 4, 1, 'choice', '{"stem":"环保调查：计算总数：2622+674=？","options":["3196","3306","3297","3296"],"answer":3,"explanation":"列竖式计算得到3296。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], '5f10b3ad8ced5db6f43000bd088f8040d4842d4ebf07b0494e40eba606452930', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-029', 'math', 4, 1, 'choice', '{"stem":"环保调查：怎样简便计算25×18×4？结果是多少？","options":["1800","550","1700","1804"],"answer":0,"explanation":"先交换并结合25和4，25×4×18=100×18=1800。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], 'a58ecb7734c91a8c36895aabcfba283275416d752f8b62ccf1cac7c0aa2f972e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-030', 'math', 4, 1, 'choice', '{"stem":"环保调查：两段彩带长3.6米和2.8米，一共多长？","options":["0.8米","6.4米","7.4米","6米"],"answer":1,"explanation":"小数点对齐相加，3.6+2.8=6.4米。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], '51f14c94e5c59e95c6514fad142d7f08ce35e9bf792de988287f8de008c040a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-031', 'math', 4, 1, 'choice', '{"stem":"环保调查：一个角是45°，它是什么角？","options":["平角","钝角","锐角","周角"],"answer":2,"explanation":"45°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], '8d31f0037d8a0b6814ed007ccbd013f036926730af3d91e358bac069bd746914', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-032', 'math', 4, 1, 'choice', '{"stem":"环保调查：长方形相邻两条边的位置关系是什么？","options":["互相平行","完全重合","没有关系","互相垂直"],"answer":3,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], 'c7e56f85f41e7415cbca000bdf98659d9fa1c61f673018fccc33f0eb1774a6be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-033', 'math', 4, 1, 'choice', '{"stem":"环保调查：三次测量结果是72、78、75厘米，平均是多少厘米？","options":["75厘米","78厘米","225厘米","81厘米"],"answer":0,"explanation":"总数除以3：（72+78+75）÷3=75厘米。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], 'a0dbe8ea7774c59b121ca43c53fe98f8529725a297b5578dc0ae56937be5ccfa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-034', 'math', 4, 1, 'choice', '{"stem":"环保调查：统计表记录甲18票、乙23票、丙15票，谁最多？","options":["甲","乙","丙","一样多"],"answer":1,"explanation":"23最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], '9b0d46a563ae648e1ce7d01dc28158782ec0295a46bb02e7501d2ce2f7911de8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-035', 'math', 4, 1, 'choice', '{"stem":"环保调查：原有150盒彩笔，发出36盒，又运来51盒，现在有多少盒？","options":["114盒","201盒","165盒","204盒"],"answer":2,"explanation":"先减发出的，再加运来的：150-36+51=165盒。"}'::jsonb, 'builtin', '多步问题', 'understand', array['全国通用', '基础巩固']::text[], '8800a872e9f6db88c2170162e3f8ce0b2222bfb669cd2023b5d0abde2b35681b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-036', 'math', 4, 1, 'choice', '{"stem":"环保调查：每本练习册14元，买4本需要多少元？","options":["18元","42元","60元","56元"],"answer":3,"explanation":"总价=单价×数量，14×4=56元。"}'::jsonb, 'builtin', '数量关系', 'understand', array['全国通用', '基础巩固']::text[], '5dee025ed7f8d951a8a588e88d1d8b1d9aa9a6ef3a4baf9baf2f9b6b2d3a1a74', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-037', 'math', 4, 1, 'choice', '{"stem":"班级义卖：计算总数：2669+693=？","options":["3362","3262","3372","3363"],"answer":0,"explanation":"列竖式计算得到3362。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], '37aca616601b7ed05bd4c3293e1c41e87b4f00394856250d39cb7f80512a8523', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-038', 'math', 4, 1, 'choice', '{"stem":"班级义卖：怎样简便计算25×19×4？结果是多少？","options":["575","1900","1800","1904"],"answer":1,"explanation":"先交换并结合25和4，25×4×19=100×19=1900。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], '131a4677e26f6d075ac11b6772f85cf8617d59aef2dd4cc88b370cc8408670a0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-039', 'math', 4, 1, 'choice', '{"stem":"班级义卖：两段彩带长3.7米和2.9米，一共多长？","options":["0.8米","7.6米","6.6米","7米"],"answer":2,"explanation":"小数点对齐相加，3.7+2.9=6.6米。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], '29ffa7c23a235ba1fb02d0945587f3cded841f2f0562e5216b88cd51d0a9cda8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-040', 'math', 4, 1, 'choice', '{"stem":"班级义卖：一个角是50°，它是什么角？","options":["平角","钝角","周角","锐角"],"answer":3,"explanation":"50°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], '02763a40e87990d76676dd445562c7791ebb538e6ae74f43fb44d3b67e6d0c26', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-041', 'math', 4, 1, 'choice', '{"stem":"班级义卖：长方形相邻两条边的位置关系是什么？","options":["互相垂直","互相平行","完全重合","没有关系"],"answer":0,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], 'e34848240ab31a83b81733e49aabec4abe8557cac0cf411772adb6c794e5249e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-042', 'math', 4, 1, 'choice', '{"stem":"班级义卖：三次测量结果是74、80、77厘米，平均是多少厘米？","options":["80厘米","77厘米","231厘米","83厘米"],"answer":1,"explanation":"总数除以3：（74+80+77）÷3=77厘米。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], 'd73c5802fff71a7e52dfa032dbc72090d025caeeb2e6d666dc69aa2f9f20ecdc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-043', 'math', 4, 1, 'choice', '{"stem":"班级义卖：统计表记录甲19票、乙24票、丙16票，谁最多？","options":["甲","丙","乙","一样多"],"answer":2,"explanation":"24最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], 'cf634ea18c50d91826cc736f8bc7dae3e8ae107a41b5709788f239f49120818d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-044', 'math', 4, 1, 'choice', '{"stem":"班级义卖：原有155盒彩笔，发出37盒，又运来52盒，现在有多少盒？","options":["118盒","207盒","210盒","170盒"],"answer":3,"explanation":"先减发出的，再加运来的：155-37+52=170盒。"}'::jsonb, 'builtin', '多步问题', 'understand', array['全国通用', '基础巩固']::text[], '113ffc9f4c20d71cd940f7d103fccb8198fbc5e8fe96b4a2ce0e853d552f2b7d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-045', 'math', 4, 1, 'choice', '{"stem":"班级义卖：每本练习册15元，买5本需要多少元？","options":["75元","20元","60元","80元"],"answer":0,"explanation":"总价=单价×数量，15×5=75元。"}'::jsonb, 'builtin', '数量关系', 'understand', array['全国通用', '基础巩固']::text[], 'd62234abbbe41ffdbbb955a91d3241510c7c842b1bb11990e0a81bd8f3450ed3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-046', 'math', 4, 1, 'choice', '{"stem":"农场实践：计算总数：2716+712=？","options":["3328","3428","3438","3429"],"answer":1,"explanation":"列竖式计算得到3428。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], '614eef508896324a55ccf01d2aa3344fd8c822b65eb2e7fa7d7bd471578d18b8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-047', 'math', 4, 1, 'choice', '{"stem":"农场实践：怎样简便计算25×20×4？结果是多少？","options":["600","1900","2000","2004"],"answer":2,"explanation":"先交换并结合25和4，25×4×20=100×20=2000。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], '0855c3749ccba12e02771407bb2d8f8741404ea5d604bb00b827bebce789b121', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-048', 'math', 4, 1, 'choice', '{"stem":"农场实践：两段彩带长3.8米和3.0米，一共多长？","options":["0.8米","7.8米","7米","6.8米"],"answer":3,"explanation":"小数点对齐相加，3.8+3.0=6.8米。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], '83841f37ff7b4f0e1dbbd011774202df9476917d6280869a1ef5028e500a50c5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-049', 'math', 4, 1, 'choice', '{"stem":"农场实践：一个角是55°，它是什么角？","options":["锐角","平角","钝角","周角"],"answer":0,"explanation":"55°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], '7c1cc543377718777da80767c150303abdcc286e0cfa37e84cca9cea3737fe88', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-050', 'math', 4, 1, 'choice', '{"stem":"农场实践：长方形相邻两条边的位置关系是什么？","options":["互相平行","互相垂直","完全重合","没有关系"],"answer":1,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], '5bba5682353e6f7c8546c1c50c53f73bb95e3f3cd35de9153465495afe94d101', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-051', 'math', 4, 1, 'choice', '{"stem":"农场实践：三次测量结果是76、82、79厘米，平均是多少厘米？","options":["82厘米","237厘米","79厘米","85厘米"],"answer":2,"explanation":"总数除以3：（76+82+79）÷3=79厘米。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], '39ab28ee3cb7f7c28237cd06ce018b14d34b18b38323e89e7360d74e6f6dcc17', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-052', 'math', 4, 1, 'choice', '{"stem":"农场实践：统计表记录甲20票、乙25票、丙17票，谁最多？","options":["甲","丙","一样多","乙"],"answer":3,"explanation":"25最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], '2d264475113ea3bd3dbdcfacfb0b7356197ff174f4bf7420aa4d57b21d1fc2bf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-053', 'math', 4, 2, 'choice', '{"stem":"农场实践：原有160盒彩笔，发出38盒，又运来53盒，现在有多少盒？","options":["175盒","122盒","213盒","216盒"],"answer":0,"explanation":"先减发出的，再加运来的：160-38+53=175盒。"}'::jsonb, 'builtin', '多步问题', 'apply', array['全国通用', '综合应用']::text[], 'e8c63f7bfd0951ee2570381b922c0fa6299ca1e0d2324343445c1ce011082e9c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-054', 'math', 4, 2, 'choice', '{"stem":"农场实践：每本练习册16元，买6本需要多少元？","options":["22元","96元","80元","102元"],"answer":1,"explanation":"总价=单价×数量，16×6=96元。"}'::jsonb, 'builtin', '数量关系', 'apply', array['全国通用', '综合应用']::text[], '176fc35916270a2134b9276c4e5e7757733342c53b5164563cb7e9c3cc3a0fb6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-055', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：比较差值：2763-731=？","options":["1932","2042","2032","3495"],"answer":2,"explanation":"列竖式计算得到2032。"}'::jsonb, 'builtin', '多位数运算', 'apply', array['全国通用', '综合应用']::text[], 'c7c272b96745dc97b385c5e545b843918474420cbfaaaea375d5dc30fdb2ea42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-056', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：怎样简便计算25×21×4？结果是多少？","options":["625","2000","2104","2100"],"answer":3,"explanation":"先交换并结合25和4，25×4×21=100×21=2100。"}'::jsonb, 'builtin', '运算律', 'apply', array['全国通用', '综合应用']::text[], 'f0e04330cc88d5b6280968af51885750f1872fdd72eb20a7596ff0fcfc4c2c82', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-057', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：两段彩带长3.9米和3.1米，一共多长？","options":["7.0米","0.8米","8.0米","7米"],"answer":0,"explanation":"小数点对齐相加，3.9+3.1=7.0米。"}'::jsonb, 'builtin', '小数初步', 'apply', array['全国通用', '综合应用']::text[], '2d64ededad4b3110ce87b3cb49ab0cb6140d76c2ecc0e75e71cf13dd34f1a6b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-058', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：一个角是60°，它是什么角？","options":["平角","锐角","钝角","周角"],"answer":1,"explanation":"60°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'apply', array['全国通用', '综合应用']::text[], 'ba1948918ab3fcd645797f371cf0f359623dbea2af0f03ae9b4cf9865c5b4cae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-059', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：长方形相邻两条边的位置关系是什么？","options":["互相平行","完全重合","互相垂直","没有关系"],"answer":2,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'apply', array['全国通用', '综合应用']::text[], '5146751585728a5a378c5c16affa457435957aa3dfabb06af9ea62940043e899', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-060', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：三次测量结果是78、84、81厘米，平均是多少厘米？","options":["84厘米","243厘米","87厘米","81厘米"],"answer":3,"explanation":"总数除以3：（78+84+81）÷3=81厘米。"}'::jsonb, 'builtin', '平均数', 'apply', array['全国通用', '综合应用']::text[], '6cb7fb390318c5882e8ca07e9b3c2ff5f4a3bc80b0ed6f71b5c125eb31d5b786', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-061', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：统计表记录甲21票、乙26票、丙18票，谁最多？","options":["乙","甲","丙","一样多"],"answer":0,"explanation":"26最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'apply', array['全国通用', '综合应用']::text[], '93dfbba63394487a31410369b3c8539e72a7a122d071bf43692dbe144af97fff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-062', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：原有165盒彩笔，发出39盒，又运来54盒，现在有多少盒？","options":["126盒","180盒","219盒","222盒"],"answer":1,"explanation":"先减发出的，再加运来的：165-39+54=180盒。"}'::jsonb, 'builtin', '多步问题', 'apply', array['全国通用', '综合应用']::text[], 'c920e277db2a7f9c708aa1cd9d9f170a143e214365c857cf0ad85dcb12d61cae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-063', 'math', 4, 2, 'choice', '{"stem":"博物馆研学：每本练习册17元，买4本需要多少元？","options":["21元","51元","68元","72元"],"answer":2,"explanation":"总价=单价×数量，17×4=68元。"}'::jsonb, 'builtin', '数量关系', 'apply', array['全国通用', '综合应用']::text[], '20c9c22c461b625d3a80e553261da4ccfc739e34b3b487468ef49bb95d125e1c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-064', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：比较差值：2810-750=？","options":["1960","2070","3561","2060"],"answer":3,"explanation":"列竖式计算得到2060。"}'::jsonb, 'builtin', '多位数运算', 'apply', array['全国通用', '综合应用']::text[], 'da1ff11640cb70a1b2882e32bd22dfbfa86b18c8a93829ff20dc55a8be86f9ba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-065', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：怎样简便计算25×22×4？结果是多少？","options":["2200","650","2100","2204"],"answer":0,"explanation":"先交换并结合25和4，25×4×22=100×22=2200。"}'::jsonb, 'builtin', '运算律', 'apply', array['全国通用', '综合应用']::text[], 'a4b1ee864919f232d6804544821746cfa106fa0831f24aaed6a65bc6f6ab8bef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-066', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：两段彩带长4.0米和3.2米，一共多长？","options":["0.8米","7.2米","8.2米","7米"],"answer":1,"explanation":"小数点对齐相加，4.0+3.2=7.2米。"}'::jsonb, 'builtin', '小数初步', 'apply', array['全国通用', '综合应用']::text[], '9f2e6fa5157627f0326271bf0930f5ef6db67e7075487749ac5996eefc06ef47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-067', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：一个角是65°，它是什么角？","options":["平角","钝角","锐角","周角"],"answer":2,"explanation":"65°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'apply', array['全国通用', '综合应用']::text[], 'f7d7b16efab8bc1d32a0cdc45a896301498648e28f3810614c9028e2f0aa5fa3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-068', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：长方形相邻两条边的位置关系是什么？","options":["互相平行","完全重合","没有关系","互相垂直"],"answer":3,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'apply', array['全国通用', '综合应用']::text[], 'b0c60ea5976fd9947604fddbf8d9822ccf7ce49e8f729bdc11a8b0df9abafa2e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-069', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：三次测量结果是80、86、83厘米，平均是多少厘米？","options":["83厘米","86厘米","249厘米","89厘米"],"answer":0,"explanation":"总数除以3：（80+86+83）÷3=83厘米。"}'::jsonb, 'builtin', '平均数', 'apply', array['全国通用', '综合应用']::text[], '0be3ce260361dadbbc9f5b6996a35b71cf62fa7a333b4c9e9a0bfe6669206c09', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-070', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：统计表记录甲22票、乙27票、丙19票，谁最多？","options":["甲","乙","丙","一样多"],"answer":1,"explanation":"27最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'apply', array['全国通用', '综合应用']::text[], 'f3fe9e13d9f4be1606358098df134d2a77b5a7d96696ad7325a42972a8ba43ae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-071', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：原有170盒彩笔，发出40盒，又运来55盒，现在有多少盒？","options":["130盒","225盒","185盒","228盒"],"answer":2,"explanation":"先减发出的，再加运来的：170-40+55=185盒。"}'::jsonb, 'builtin', '多步问题', 'apply', array['全国通用', '综合应用']::text[], '5592a1765ebfbe8f3bff7f3697b1338c4eab17a5aa56747ee268faa1a71cea29', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-072', 'math', 4, 2, 'choice', '{"stem":"图书馆服务：每本练习册18元，买5本需要多少元？","options":["23元","72元","95元","90元"],"answer":3,"explanation":"总价=单价×数量，18×5=90元。"}'::jsonb, 'builtin', '数量关系', 'apply', array['全国通用', '综合应用']::text[], 'ea3c2a8c1cc2be7e6d8211d343eacda59d9e4b8549a4e7b62f1d597019759a44', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-073', 'math', 4, 2, 'choice', '{"stem":"城市交通：比较差值：2857-769=？","options":["2088","1988","2098","3627"],"answer":0,"explanation":"列竖式计算得到2088。"}'::jsonb, 'builtin', '多位数运算', 'apply', array['全国通用', '综合应用']::text[], '8f38365da2ed4f58f1b774f32e0e1954726f162a20fddccde31f510228d4df8b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-074', 'math', 4, 2, 'choice', '{"stem":"城市交通：怎样简便计算25×23×4？结果是多少？","options":["675","2300","2200","2304"],"answer":1,"explanation":"先交换并结合25和4，25×4×23=100×23=2300。"}'::jsonb, 'builtin', '运算律', 'apply', array['全国通用', '综合应用']::text[], 'feaa7c87031b5df4c3091d840e8aec60b9d6b0886b7a52139b25f54c184c6b44', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-075', 'math', 4, 2, 'choice', '{"stem":"城市交通：两段彩带长4.1米和3.3米，一共多长？","options":["0.8米","8.4米","7.4米","7米"],"answer":2,"explanation":"小数点对齐相加，4.1+3.3=7.4米。"}'::jsonb, 'builtin', '小数初步', 'apply', array['全国通用', '综合应用']::text[], 'e801eee4149d1e22979327c529476facb6ad23b0acc802f9ee0ed5255c4cc28f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-076', 'math', 4, 2, 'choice', '{"stem":"城市交通：一个角是70°，它是什么角？","options":["平角","钝角","周角","锐角"],"answer":3,"explanation":"70°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'apply', array['全国通用', '综合应用']::text[], 'd3adf2d915b8b2b7df061e5fc7f9ae6aa5d876c2c7d50a3cef84db31a0728e6a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-077', 'math', 4, 2, 'choice', '{"stem":"城市交通：长方形相邻两条边的位置关系是什么？","options":["互相垂直","互相平行","完全重合","没有关系"],"answer":0,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'apply', array['全国通用', '综合应用']::text[], '5cd6bae828d09cdb7cff9e592b2acb5f397098adc5ac7e9fc9391761c9a4e256', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-078', 'math', 4, 2, 'choice', '{"stem":"城市交通：三次测量结果是82、88、85厘米，平均是多少厘米？","options":["88厘米","85厘米","255厘米","91厘米"],"answer":1,"explanation":"总数除以3：（82+88+85）÷3=85厘米。"}'::jsonb, 'builtin', '平均数', 'apply', array['全国通用', '综合应用']::text[], 'a63b882e1d5665b912a74816dd63801b436b9da2e34add15db42f65531d7638d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-079', 'math', 4, 2, 'choice', '{"stem":"城市交通：统计表记录甲23票、乙28票、丙20票，谁最多？","options":["甲","丙","乙","一样多"],"answer":2,"explanation":"28最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'apply', array['全国通用', '综合应用']::text[], '3b856827b1de7d157a1236c7c44d2179ff0ac1d4c38cd9513358efd3efcb0001', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-080', 'math', 4, 2, 'choice', '{"stem":"城市交通：原有175盒彩笔，发出41盒，又运来56盒，现在有多少盒？","options":["134盒","231盒","234盒","190盒"],"answer":3,"explanation":"先减发出的，再加运来的：175-41+56=190盒。"}'::jsonb, 'builtin', '多步问题', 'apply', array['全国通用', '综合应用']::text[], '5d4ee9179462b08b8fbcd4ef16bb4a45d71ade70afc2a61526e53f077cd1999b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-081', 'math', 4, 2, 'choice', '{"stem":"城市交通：每本练习册19元，买6本需要多少元？","options":["114元","25元","95元","120元"],"answer":0,"explanation":"总价=单价×数量，19×6=114元。"}'::jsonb, 'builtin', '数量关系', 'apply', array['全国通用', '综合应用']::text[], 'b550909c01ab97d4f8c7f7e0711d987ea64bdb3848321be6882912bd1851e1c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-082', 'math', 4, 2, 'choice', '{"stem":"健康监测：比较差值：2904-788=？","options":["2016","2116","2126","3693"],"answer":1,"explanation":"列竖式计算得到2116。"}'::jsonb, 'builtin', '多位数运算', 'apply', array['全国通用', '综合应用']::text[], 'a346282845b5dd4c28165231ab2e40c37f9c99b1533e3170a92568cfe80147bd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-083', 'math', 4, 2, 'choice', '{"stem":"健康监测：怎样简便计算25×24×4？结果是多少？","options":["700","2300","2400","2404"],"answer":2,"explanation":"先交换并结合25和4，25×4×24=100×24=2400。"}'::jsonb, 'builtin', '运算律', 'apply', array['全国通用', '综合应用']::text[], '35eac32a502de88b2629d13e227af9e65a451130de037ebb7e508a78153991e4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-084', 'math', 4, 2, 'choice', '{"stem":"健康监测：两段彩带长4.2米和3.4米，一共多长？","options":["0.8米","8.6米","8米","7.6米"],"answer":3,"explanation":"小数点对齐相加，4.2+3.4=7.6米。"}'::jsonb, 'builtin', '小数初步', 'apply', array['全国通用', '综合应用']::text[], '6e6d83ccfce32f2fc7437067c39910a048cdf7754e27b5764ae8fe94cb2635b0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-085', 'math', 4, 2, 'choice', '{"stem":"健康监测：一个角是75°，它是什么角？","options":["锐角","平角","钝角","周角"],"answer":0,"explanation":"75°小于90°，所以是锐角。"}'::jsonb, 'builtin', '角', 'apply', array['全国通用', '综合应用']::text[], '79548ee8436dad09d992429908863164200c0f79c8e30fbbf5d98f49d413353a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-086', 'math', 4, 2, 'choice', '{"stem":"健康监测：长方形相邻两条边的位置关系是什么？","options":["互相平行","互相垂直","完全重合","没有关系"],"answer":1,"explanation":"长方形相邻两边相交成直角，所以互相垂直。"}'::jsonb, 'builtin', '几何关系', 'apply', array['全国通用', '综合应用']::text[], 'fb5411e08286e20e2d20387a0dc656f39a9628e649335a38cd3e7e19390dc498', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-087', 'math', 4, 2, 'choice', '{"stem":"健康监测：三次测量结果是84、90、87厘米，平均是多少厘米？","options":["90厘米","261厘米","87厘米","93厘米"],"answer":2,"explanation":"总数除以3：（84+90+87）÷3=87厘米。"}'::jsonb, 'builtin', '平均数', 'apply', array['全国通用', '综合应用']::text[], '37cd7402c019cf0ad654a6adc7757d501fcf86ed09fc9bc62b528dcc26a13ed4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-088', 'math', 4, 2, 'choice', '{"stem":"健康监测：统计表记录甲24票、乙29票、丙21票，谁最多？","options":["甲","丙","一样多","乙"],"answer":3,"explanation":"29最大，所以乙最多。"}'::jsonb, 'builtin', '数据分析', 'apply', array['全国通用', '综合应用']::text[], 'bc02c6cde8cc8c87b8e4b18548eeed899605b5a723e48addde6ac9a4f9b41717', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-089', 'math', 4, 2, 'choice', '{"stem":"健康监测：原有180盒彩笔，发出42盒，又运来57盒，现在有多少盒？","options":["195盒","138盒","237盒","240盒"],"answer":0,"explanation":"先减发出的，再加运来的：180-42+57=195盒。"}'::jsonb, 'builtin', '多步问题', 'apply', array['全国通用', '综合应用']::text[], '9170be0db8850bd8bc665eba8b57971d65562a13e2f5ae57277b1d9d2ab515ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-090', 'math', 4, 3, 'choice', '{"stem":"健康监测：汽车前3小时每小时行67千米，之后又行52千米，全程多少千米？","options":["122千米","253千米","201千米","250千米"],"answer":1,"explanation":"前3小时行67×3=201千米，再加52千米，共253千米。"}'::jsonb, 'builtin', '数量关系', 'reason', array['全国通用', '综合应用']::text[], 'c1b05fc5eb33a7becac95ef9730e4b6a5d73d05a28972814e387ebe902f05fa1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-091', 'math', 4, 3, 'choice', '{"stem":"手工设计：仓库原有1718本练习册，新到636本，发出429本后还剩多少本？","options":["2354本","2356本","1925本","1289本"],"answer":2,"explanation":"先加新到的，再减发出的：1718+636-429=1925本。"}'::jsonb, 'builtin', '多位数运算', 'reason', array['全国通用', '综合应用']::text[], 'ec4be0605c49868739898cf877669998e78f0d055b77df0cc2cb9729ee816ee0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-092', 'math', 4, 3, 'choice', '{"stem":"手工设计：计算25×29×4，选择最简便的结果。","options":["2800","2925","841","2900"],"answer":3,"explanation":"利用乘法交换律和结合律，先算25×4=100，再算100×29=2900。"}'::jsonb, 'builtin', '运算律', 'reason', array['全国通用', '综合应用']::text[], '14ee82ae7698aa8f12e24638311d24fb987ffeb5706112503ace9a9fdbefdbde', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-093', 'math', 4, 3, 'choice', '{"stem":"手工设计：买文具分别花25.5元和9.9元，付43元，应找回多少元？","options":["7.6元","17.5元","35.4元","8.6元"],"answer":0,"explanation":"先求总价25.5+9.9=35.4元，再用43减总价，找回7.6元。"}'::jsonb, 'builtin', '小数初步', 'reason', array['全国通用', '综合应用']::text[], 'e3c5bb20b6e595c0ea6877fc70982297748dd017484854a6c8d6a082f6e58e59', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-094', 'math', 4, 3, 'choice', '{"stem":"手工设计：两个相邻角分别是48°和42°，合成的角是多少度，属于哪类角？","options":["90°，锐角","90°，直角","6°，锐角","180°，平角"],"answer":1,"explanation":"两个角相加是48+42=90°，90°的角是直角。"}'::jsonb, 'builtin', '角', 'reason', array['全国通用', '综合应用']::text[], '91874e3eaf3135681f89ac1974252f07993c6c268061f0d9ed1ef74e220b6305', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-095', 'math', 4, 3, 'choice', '{"stem":"手工设计：长方形纸上画出两条对边并向两端延长，这两条直线的位置关系是什么？","options":["互相垂直","相交成锐角","互相平行","完全重合"],"answer":2,"explanation":"长方形的两条对边互相平行，延长后也不会相交。"}'::jsonb, 'builtin', '几何关系', 'reason', array['全国通用', '综合应用']::text[], '2c31047bb9b8f6a84e01090c012cd28e937e90b6710680593511318a37a1d41a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-096', 'math', 4, 3, 'choice', '{"stem":"手工设计：四次跳绳成绩是85、89、93、97下，平均每次多少下？","options":["89下","364下","95下","91下"],"answer":3,"explanation":"总数364除以4，平均数是91下。"}'::jsonb, 'builtin', '平均数', 'reason', array['全国通用', '综合应用']::text[], '2c4d1099985839223ec7b4e12b43dffdb576285df0a9450f236116440fd331fb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-097', 'math', 4, 3, 'choice', '{"stem":"手工设计：四周回收量为31、37、34、40千克。偶数周合计比奇数周合计多多少千克？","options":["12千克","9千克","77千克","65千克"],"answer":0,"explanation":"偶数周是37+40，奇数周是31+34，相差12千克。"}'::jsonb, 'builtin', '数据分析', 'reason', array['全国通用', '综合应用']::text[], '356d433c35a0647093aa15647100e865b03370ee8634dca320c39336d6cdc024', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-098', 'math', 4, 3, 'choice', '{"stem":"手工设计：礼堂有7排座位，每排37个，其中21个维修中。可用座位有多少个？","options":["259个","238个","245个","16个"],"answer":1,"explanation":"总座位7×37=259个，减去维修的21个，得238个。"}'::jsonb, 'builtin', '多步问题', 'reason', array['全国通用', '综合应用']::text[], '6879f34d466ba500430ca19227d34a591ef43d8d9937063d9d41c090d50f5fab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-099', 'math', 4, 3, 'choice', '{"stem":"手工设计：汽车前3小时每小时行68千米，之后又行53千米，全程多少千米？","options":["124千米","204千米","257千米","254千米"],"answer":2,"explanation":"前3小时行68×3=204千米，再加53千米，共257千米。"}'::jsonb, 'builtin', '数量关系', 'reason', array['全国通用', '综合应用']::text[], 'b9a3e52a69314db8d1fc4a12bf64bb05a7c0177b1493bde5f9f9f97b03f2564d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-100', 'math', 4, 3, 'choice', '{"stem":"气象观察：仓库原有1754本练习册，新到648本，发出437本后还剩多少本？","options":["2402本","2404本","1317本","1965本"],"answer":3,"explanation":"先加新到的，再减发出的：1754+648-437=1965本。"}'::jsonb, 'builtin', '多位数运算', 'reason', array['全国通用', '综合应用']::text[], '175ef1dc649a31e82322587db7c6f67ed1419e692891771d69130fcc5bd06485', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-101', 'math', 4, 3, 'choice', '{"stem":"气象观察：计算25×30×4，选择最简便的结果。","options":["3000","2900","3025","870"],"answer":0,"explanation":"利用乘法交换律和结合律，先算25×4=100，再算100×30=3000。"}'::jsonb, 'builtin', '运算律', 'reason', array['全国通用', '综合应用']::text[], '09b6a86e6b9a5dbb8acc2b5ee9692913369c8449c3153354bc945a666a23462b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-102', 'math', 4, 3, 'choice', '{"stem":"气象观察：买文具分别花26.5元和10.0元，付44元，应找回多少元？","options":["17.5元","7.5元","36.5元","8.5元"],"answer":1,"explanation":"先求总价26.5+10.0=36.5元，再用44减总价，找回7.5元。"}'::jsonb, 'builtin', '小数初步', 'reason', array['全国通用', '综合应用']::text[], '1b06060ce6d40eed363ce1168e6dceb9943cc04cf14bec710c24ea9883e48553', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-103', 'math', 4, 3, 'choice', '{"stem":"气象观察：两个相邻角分别是49°和41°，合成的角是多少度，属于哪类角？","options":["90°，锐角","8°，锐角","90°，直角","180°，平角"],"answer":2,"explanation":"两个角相加是49+41=90°，90°的角是直角。"}'::jsonb, 'builtin', '角', 'reason', array['全国通用', '综合应用']::text[], 'c02d1daeb047733cd14c3116e504af38baac6b696aca17e533f297c918d1d263', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-104', 'math', 4, 3, 'choice', '{"stem":"气象观察：方格纸上两条道路分别沿横线和竖线修建，它们相交形成的四个角是什么角？","options":["都是锐角","都是钝角","两个锐角两个钝角","都是直角"],"answer":3,"explanation":"横线和竖线互相垂直，相交形成四个直角。"}'::jsonb, 'builtin', '几何关系', 'reason', array['全国通用', '综合应用']::text[], '894c954d0eaef4e52064b486507f16adbb11e37d970b7f52d0bc79e627751965', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-105', 'math', 4, 3, 'choice', '{"stem":"气象观察：四次跳绳成绩是86、90、94、98下，平均每次多少下？","options":["92下","90下","368下","96下"],"answer":0,"explanation":"总数368除以4，平均数是92下。"}'::jsonb, 'builtin', '平均数', 'reason', array['全国通用', '综合应用']::text[], 'dd817297ea484f367c11bfbace150e2ecc17fe05cb32f5d456eab0271c4e79ec', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-106', 'math', 4, 1, 'fill', '{"stem":"气象观察：四天读书页数为109、111、113、115页，共读___页。","answer":"448","explanation":"把四天的数据相加。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], '681888dd8ae597cf00b7f9d8c9ed0df1334ad845818f27f14006fa521f7d589f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-107', 'math', 4, 1, 'fill', '{"stem":"气象观察：每箱16瓶，4箱喝掉7瓶，还剩___瓶。","answer":"57","explanation":"先算总瓶数，再减喝掉的。"}'::jsonb, 'builtin', '多步问题', 'understand', array['全国通用', '基础巩固']::text[], '3acb3775f43ec7ac7e32251f7e3622cf68a76000996ceae6b51a1e2bfec316db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-108', 'math', 4, 1, 'fill', '{"stem":"气象观察：一辆车每小时行61千米，3小时行___千米。","answer":"183","explanation":"路程=速度×时间。"}'::jsonb, 'builtin', '数量关系', 'understand', array['全国通用', '基础巩固']::text[], '46dead137403b8158761ba4c2e14060db86d363d7937e66b26f5cfac0ec4c15a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-109', 'math', 4, 1, 'fill', '{"stem":"节能行动：4520+712=___","answer":"5232","explanation":"按相同数位相加。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], '3f2e2f1a684b4eaf6eeb0753e84ee1364fda743806a65b7cda83732e9e39870e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-110', 'math', 4, 1, 'fill', '{"stem":"节能行动：125×8×5=___","answer":"5000","explanation":"先算125×8=1000，再乘另一个因数。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], '5d65d2ff0150ba7886556eba4bb6bc1d57861ec9b7d35b744e7c941cfaea6a17', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-111', 'math', 4, 1, 'fill', '{"stem":"节能行动：16.4+1.2=___","answer":"17.6","explanation":"小数点对齐后相加。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], '52d1daebd2e3b62add999f95a90e60cfa8a11c309d23a36722f46ce9aaaa2c27', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-112', 'math', 4, 1, 'fill', '{"stem":"节能行动：一个平角是___度。","answer":"180","explanation":"平角的两条边在一条直线上，是180°。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], 'aeb0b7cf007b58197d317d7ffbbaf6e716b1c154ad4077042bfb0084ad45e72c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-113', 'math', 4, 1, 'fill', '{"stem":"节能行动：同一平面内永不相交的两条直线互相___。","answer":"平行","explanation":"同一平面内不相交的两条直线互相平行。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], '05da11a5fc083965c31b85bc96bc6ec1820513a36a459809c03abdf6a3296285', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-114', 'math', 4, 1, 'fill', '{"stem":"节能行动：三个数117、120、123的平均数是___。","answer":"120","explanation":"三个等距数的平均数是中间数。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], 'cb09480931c2efb334b8a0624246974b7fd267dc017ca9ab4be6f3e94399dd7e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-115', 'math', 4, 1, 'fill', '{"stem":"节能行动：四天读书页数为118、120、122、124页，共读___页。","answer":"484","explanation":"把四天的数据相加。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], '6a251a74f4768aa12a5ce0e1a2844b6f24ce4873586895e762f0d87e2b518e71', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-116', 'math', 4, 1, 'fill', '{"stem":"节能行动：每箱17瓶，4箱喝掉8瓶，还剩___瓶。","answer":"60","explanation":"先算总瓶数，再减喝掉的。"}'::jsonb, 'builtin', '多步问题', 'understand', array['全国通用', '基础巩固']::text[], 'd3760d18305cad7800ea24631336d4aa35eb3fb6478d1255ee72a0b27d556883', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-117', 'math', 4, 2, 'fill', '{"stem":"节能行动：一辆车每小时行50千米，3小时行___千米。","answer":"150","explanation":"路程=速度×时间。"}'::jsonb, 'builtin', '数量关系', 'apply', array['全国通用', '综合应用']::text[], 'eb89cff3620b3f9d32fcd3834c4fdeace056dc1f9e66621838e594e3166a0eb5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-118', 'math', 4, 2, 'fill', '{"stem":"社团成果展：4610+721=___","answer":"5331","explanation":"按相同数位相加。"}'::jsonb, 'builtin', '多位数运算', 'apply', array['全国通用', '综合应用']::text[], '84a4af10d9e72f80d087a48f8741d030ac9bb1ce84d96d123cf1c0736fa66eea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-119', 'math', 4, 2, 'fill', '{"stem":"社团成果展：125×8×4=___","answer":"4000","explanation":"先算125×8=1000，再乘另一个因数。"}'::jsonb, 'builtin', '运算律', 'apply', array['全国通用', '综合应用']::text[], 'ba869d06f383c9a3870357348bef60652508afc39b9db5be0cbd658e316ed4d5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-120', 'math', 4, 2, 'fill', '{"stem":"社团成果展：17.3+1.2=___","answer":"18.5","explanation":"小数点对齐后相加。"}'::jsonb, 'builtin', '小数初步', 'apply', array['全国通用', '综合应用']::text[], 'e0798ab306cae04c8a8e665778d3d208e9f135abb8084858988e55b5dba2f7ed', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-121', 'math', 4, 2, 'fill', '{"stem":"社团成果展：一个平角是___度。","answer":"180","explanation":"平角的两条边在一条直线上，是180°。"}'::jsonb, 'builtin', '角', 'apply', array['全国通用', '综合应用']::text[], '48b0265ad2bfaf8fa3653d138acb0e4bd691711f8d4859690909579350230cb6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-122', 'math', 4, 2, 'fill', '{"stem":"社团成果展：同一平面内永不相交的两条直线互相___。","answer":"平行","explanation":"同一平面内不相交的两条直线互相平行。"}'::jsonb, 'builtin', '几何关系', 'apply', array['全国通用', '综合应用']::text[], '6ef6bc262a089535f8d95be2eee4014ac93d909a74f665ad885021b4cedca8f2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-123', 'math', 4, 2, 'fill', '{"stem":"社团成果展：三个数126、129、132的平均数是___。","answer":"129","explanation":"三个等距数的平均数是中间数。"}'::jsonb, 'builtin', '平均数', 'apply', array['全国通用', '综合应用']::text[], '44120de5fb99ab3a8ae2265a0cc1630e645d0269b6ff646b00698cd42e7bc439', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-124', 'math', 4, 3, 'fill', '{"stem":"社团成果展：四天读书页数为127、129、131、133页，共读___页。","answer":"520","explanation":"把四天的数据相加。"}'::jsonb, 'builtin', '数据分析', 'reason', array['全国通用', '综合应用']::text[], 'fb8d2d02cc8233e5731c24367a0b285746b2f8cf59cb5a7de3bc569f352f77e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-125', 'math', 4, 3, 'fill', '{"stem":"社团成果展：每箱10瓶，4箱喝掉5瓶，还剩___瓶。","answer":"35","explanation":"先算总瓶数，再减喝掉的。"}'::jsonb, 'builtin', '多步问题', 'reason', array['全国通用', '综合应用']::text[], '6b83008ef29aef2e0f368ac8f268e5b0ecdc486a0a189a9e7994c6b5328b3ea8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-126', 'math', 4, 3, 'fill', '{"stem":"社团成果展：一辆车每小时行59千米，3小时行___千米。","answer":"177","explanation":"路程=速度×时间。"}'::jsonb, 'builtin', '数量关系', 'reason', array['全国通用', '综合应用']::text[], 'd22ab2ad6f9a706b075611e4d433efd7b36f1a6d63794f6087a52f98fbd8b041', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-127', 'math', 4, 1, 'match', '{"stem":"家庭预算：把多位数运算内容与正确结果或含义连起来","left":["2300+700","5600-600","125×8","3600÷9"],"right":["1000","3000","400","5000"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据多位数运算的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '多位数运算', 'understand', array['全国通用', '基础巩固']::text[], 'a9a1b78e64c2571e0e7fd46360326bea26328ac84d11ce35cd658fc40d37469c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-128', 'math', 4, 1, 'match', '{"stem":"家庭预算：把运算律内容与正确结果或含义连起来","left":["a+b=b+a","a×b=b×a","(a+b)+c=a+(b+c)","a×(b+c)=a×b+a×c"],"right":["加法结合","加法交换","乘法分配","乘法交换"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据运算律的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '运算律', 'understand', array['全国通用', '基础巩固']::text[], '23e1f3aa40707a41117abf8da313d362614895bc35d0d5c3982ef4f9a1f53314', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-129', 'math', 4, 1, 'match', '{"stem":"家庭预算：把小数初步内容与正确结果或含义连起来","left":["0.5","1.2","2.05","3.8"],"right":["二点零五","五个十分之一","三点八","一点二"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据小数初步的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '小数初步', 'understand', array['全国通用', '基础巩固']::text[], '985439d03e96f5e6da9635ca9cb798a2dbd71f5369fe0441bfa2916173f7c7bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-130', 'math', 4, 1, 'match', '{"stem":"家庭预算：把角内容与正确结果或含义连起来","left":["45°","90°","120°","180°"],"right":["钝角","锐角","平角","直角"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据角的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '角', 'understand', array['全国通用', '基础巩固']::text[], 'dfd551733b82760fee2f952a0b4b6315d69f0eadf2c00a7f1c23f4f211f0c7b0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-131', 'math', 4, 1, 'match', '{"stem":"家庭预算：把几何关系内容与正确结果或含义连起来","left":["长方形对边","长方形邻边","两条平行线","两条垂线"],"right":["永不相交","互相平行","相交成直角","互相垂直"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据几何关系的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '几何关系', 'understand', array['全国通用', '基础巩固']::text[], 'aa08ac19d6a247584043588082853a855d7b5541f5966c6135b7b08077c89e87', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-132', 'math', 4, 1, 'match', '{"stem":"家庭预算：把平均数内容与正确结果或含义连起来","left":["2,4,6","5,5,5","10,20,30","3,6,9"],"right":["平均20","平均4","平均6","平均5"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据平均数的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '平均数', 'understand', array['全国通用', '基础巩固']::text[], '482be627d7c48a876979be133722c68b7450b00a98a6a81db709dd7a95368c8c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-133', 'math', 4, 1, 'match', '{"stem":"家庭预算：把数据分析内容与正确结果或含义连起来","left":["最大值","最小值","总数","平均数"],"right":["全部相加","找最大数据","总数除以份数","找最小数据"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据数据分析的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '数据分析', 'understand', array['全国通用', '基础巩固']::text[], '35d5f31b8354ee7bfb9a3b99bf6f607abe0c967c47635e3a1df289f8b295e2ef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-134', 'math', 4, 2, 'match', '{"stem":"家庭预算：把多步问题内容与正确结果或含义连起来","left":["先加后减","先乘后加","先除后减","先乘后除"],"right":["平均分后用去","库存变化","总量再平均","总量再增加"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据多步问题的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '多步问题', 'apply', array['全国通用', '综合应用']::text[], 'fa00d12c3b906414e6c49172e91a1d39459b1fd03ff9185a0d5ede7cd00e0898', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-135', 'math', 4, 2, 'match', '{"stem":"家庭预算：把数量关系内容与正确结果或含义连起来","left":["单价×数量","路程÷时间","路程÷速度","工作总量÷时间"],"right":["时间","总价","工作效率","速度"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据数量关系的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '数量关系', 'apply', array['全国通用', '综合应用']::text[], '149b9fe7a262f35103b1ea2d14d33b028174e253337cf801770e6d6aa419e0dc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-136', 'math', 4, 2, 'match', '{"stem":"公园测绘：把多位数运算内容与正确结果或含义连起来","left":["2300+700","5600-600","125×8","3600÷9"],"right":["1000","3000","400","5000"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据多位数运算的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '多位数运算', 'apply', array['全国通用', '综合应用']::text[], '15e4d04942155c7405a53f12ac5991dcf748531068816b0f1da0c88dd1e219b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-137', 'math', 4, 2, 'match', '{"stem":"公园测绘：把运算律内容与正确结果或含义连起来","left":["a+b=b+a","a×b=b×a","(a+b)+c=a+(b+c)","a×(b+c)=a×b+a×c"],"right":["加法结合","加法交换","乘法分配","乘法交换"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据运算律的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '运算律', 'apply', array['全国通用', '综合应用']::text[], 'b4a875be7aec2090070a029a178179f17633123c6c8c5fb628a6855a01531c12', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-138', 'math', 4, 2, 'match', '{"stem":"公园测绘：把小数初步内容与正确结果或含义连起来","left":["0.5","1.2","2.05","3.8"],"right":["二点零五","五个十分之一","三点八","一点二"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据小数初步的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '小数初步', 'apply', array['全国通用', '综合应用']::text[], 'f85d9efcecd2525f4d84aeef19305f053e17dd8e9a52041fbb78c76fd842da66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-139', 'math', 4, 3, 'match', '{"stem":"公园测绘：把角内容与正确结果或含义连起来","left":["45°","90°","120°","180°"],"right":["钝角","锐角","平角","直角"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据角的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '角', 'reason', array['全国通用', '综合应用']::text[], 'c670d13f3a94a8d6faf4b94c3f87f62b4b7378dcec2df4fcf136f5cfab0b2961', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g4-math-authored-140', 'math', 4, 3, 'match', '{"stem":"公园测绘：把几何关系内容与正确结果或含义连起来","left":["长方形对边","长方形邻边","两条平行线","两条垂线"],"right":["永不相交","互相平行","相交成直角","互相垂直"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据几何关系的定义、运算或数量关系逐项配对。"}'::jsonb, 'builtin', '几何关系', 'reason', array['全国通用', '综合应用']::text[], '7587ccce8e1fd54f4db76c7f0507bfd7373d4059f584ae9b77190b2b62521964', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;

commit;
