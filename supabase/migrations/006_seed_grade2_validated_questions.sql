-- Auto-generated from validated canonical question JSON.
-- Safe to run repeatedly: rows are upserted by external_id.
begin;

insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-00cfb845de4d', 'chinese', 2, 1, 'fill', '{"stem":"___天到了，湖面结冰了。","answer":"冬","explanation":"冬天气温低，湖面可能结冰，所以填“冬”。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '23c8352b373e2e53d29d1ebd9ee572aaf36592a3a8c7873a9d1d77eff1c92962', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-01353e79103c', 'chinese', 2, 2, 'choice', '{"stem":"“红彤彤的苹果”中“红彤彤”是形容什么？","answer":0,"options":["颜色","形状","味道","大小"],"explanation":"红彤彤形容红得很鲜艳。"}'::jsonb, 'builtin', '量词与搭配', 'apply', array['词语运用']::text[], 'c6bf29b111c9d6e9e26a02abc88f25590ffcd6739c7645b8488ae163075c02d5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-0185e87521fe', 'chinese', 2, 1, 'choice', '{"stem":"“上”字的笔顺是？","answer":0,"options":["竖、横、横","横、竖、横","横、横、竖","竖、横折、横"],"explanation":"上：竖、横、横，共3画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'f248fe98073fa3b2dba0a91f310ee84ab7585fbfc4d8dc567df4e426bd9194a4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-01f21617cb30', 'chinese', 2, 2, 'match', '{"left":["小猫","小兔","小狗","小鸡"],"stem":"把动物和它们喜欢吃的食物连起来","right":["鱼","萝卜","狗粮","米粒"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"根据这些动物常吃的食物配对：小猫—鱼、小兔—萝卜、小狗—狗粮、小鸡—米粒。"}'::jsonb, 'builtin', '生活语言', 'apply', array['情境表达']::text[], '6ca7371c451e1624ae381b71431310d0877c8a9966202d812e846e6be274a03b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-02dde03ce6c3', 'chinese', 2, 1, 'choice', '{"stem":"“尾巴”的“巴”读几声？","answer":0,"options":["轻声","一声","二声","三声"],"explanation":"尾巴的巴读轻声。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '4e555264caa964135635545f0628800428c805bfae125522ab23b47e900d473b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-038350c03859', 'chinese', 2, 1, 'fill', '{"stem":"___开了，春天来了。","answer":"花儿","explanation":"花儿开了。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '0e188e9e8f0505c0b21744c52fdcaeca59a77c4ce81942f3253f1247348307db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-03c949dd55f7', 'chinese', 2, 3, 'choice', '{"stem":"“遥知不是雪，为有暗香来”描写的是？","answer":0,"options":["梅花","桃花","雪花","梨花"],"explanation":"《梅花》诗句，描写梅花。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '2ce32e2043b71a42b582932840b4f5cded21381d148049f3a2e7e0dca3474eed', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-03e25553ca5c', 'chinese', 2, 1, 'match', '{"left":["b","p","m","f"],"stem":"把声母和对应的字连起来","right":["马","发","爸","怕"],"matches":[[0,2],[1,3],[2,0],[3,1]],"explanation":"b爸，p怕，m马，f发。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'a6313b4838040cdd5f938a9c3c678bc6824f5ce48b6b8956d708752586cbf792', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-040118f3b436', 'chinese', 2, 2, 'choice', '{"stem":"“太阳像火球”把什么比作火球？","answer":0,"options":["太阳","火","球","光"],"explanation":"把太阳比作火球。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'be1bcc7f4169f3b4b450c3d3b4e0723fb03481efe8ed33a12b14f32e51f05251', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-044b9d43b4a3', 'chinese', 2, 2, 'choice', '{"stem":"选择合适的词语：小鸟在枝头（ ）歌。","answer":0,"options":["唱","跳","写","画"],"explanation":"小鸟唱歌合适。"}'::jsonb, 'builtin', '量词与搭配', 'apply', array['词语运用']::text[], 'a174250b1cabc32a85321a1455be3a6ad5b0f592625f1ab6bfc269dfb3cfd985', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-04cb5229f973', 'chinese', 2, 2, 'choice', '{"stem":"“哭”的反义词是？","answer":0,"options":["笑","说","喊","叫"],"explanation":"哭和笑是反义词。"}'::jsonb, 'builtin', '近义词与反义词', 'apply', array['词义辨析']::text[], '8a2939900ad0a0cf1f4b97e82f778f9a2b7f3a61f456012bb844d716be23c4eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-0cdbd8439209', 'chinese', 2, 2, 'choice', '{"stem":"“一片片雪花从天上（ ）下来。”选哪个词？","answer":0,"options":["飘","跑","跳","飞"],"explanation":"雪花飘落。"}'::jsonb, 'builtin', '量词与搭配', 'apply', array['词语运用']::text[], '239b5dec2a828f69a54de20cbaa09c899d4f390284b9f6421f80d509ec461787', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-0e160c5de03c', 'chinese', 2, 3, 'choice', '{"stem":"下面哪句诗不是李白的？","answer":0,"options":["春眠不觉晓","床前明月光","飞流直下三千尺","桃花潭水深千尺"],"explanation":"春眠不觉晓是孟浩然的诗。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'c50c02a16de54562e11f2bb853226dfef8904dd75f523a6e256b50ea45df61fe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-0f2c5d0a91ab', 'chinese', 2, 1, 'choice', '{"stem":"“语文”的“语”读第几声？","answer":0,"options":["第三声","第一声","第二声","第四声"],"explanation":"语读yǔ，第三声。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '66e61b56d067e526f30010569790dc99c86209819c90af00e3442cb6af58d414', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-0f5bd3b4913f', 'chinese', 2, 1, 'choice', '{"stem":"“风”字是什么结构？","answer":0,"options":["半包围","独体字","左右","上下"],"explanation":"风是半包围结构。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '86f4c4229325158fe433a44b60d53436edac73e15a8fbda24811bc2f7d62a3c4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-0f98fd8069d6', 'chinese', 2, 1, 'choice', '{"stem":"下面哪个字是整体认读音节？","answer":0,"options":["只","云","月","雨"],"explanation":"“只”的拼音zhi是整体认读音节。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '049aaa6b4502476c39ed042310f7ae4c7ed2cc15af2721673b4f284bdfe214a1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-101f88769433', 'chinese', 2, 1, 'choice', '{"stem":"“月亮”的“月”字共有几画？","answer":0,"options":["4画","3画","5画","6画"],"explanation":"月字笔顺：撇、横折钩、横、横，共4画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '452ab22a22bbd2b14e0c82cbe9eeb2c89832dec88533b6e97e01047ef4a69545', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-10539ab798d1', 'chinese', 2, 2, 'choice', '{"stem":"找出不同类的一项：","answer":0,"options":["电话","铅笔","橡皮","尺子"],"explanation":"电话是通讯工具，其他是文具。"}'::jsonb, 'builtin', '量词与搭配', 'apply', array['词语运用']::text[], 'c917c5d17bb5244491d3be479406db3bc4bb0e48b15449702783ee5f77a4c7da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-1061a425aae1', 'chinese', 2, 2, 'choice', '{"stem":"找出不同类的一项：","answer":0,"options":["难过","高兴","快乐","兴奋"],"explanation":"难过是负面情绪，其他是正面。"}'::jsonb, 'builtin', '量词与搭配', 'apply', array['词语运用']::text[], '2b5f2fa20eef5f5de5f9f71fe1fbfb195ba92d89708ba74412981218a704372e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-10a131dc5e3f', 'chinese', 2, 2, 'choice', '{"stem":"选出正确的句子：","answer":0,"options":["我爱吃西瓜。","我爱吃西瓜","我吃爱西瓜。","西瓜爱我吃。"],"explanation":"第一句表达正确且有句号。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'a58002ab8c0b7af428aa12f68c16b7432af35c3ad121d35ef56dce9b4d3faf64', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-114e00295d2d', 'chinese', 2, 2, 'choice', '{"stem":"下面哪句话用上了问号？","answer":0,"options":["你吃饭了吗？","今天真开心。","我要看书。","他走了。"],"explanation":"问句用问号。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'a69ee0f470ee0286b66e79c25667a6b772394950c1231aee36d64c469275e603', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-1260b09bef0f', 'chinese', 2, 2, 'choice', '{"stem":"“一只美丽的小鸟在树上唱歌。”哪个词是形容小鸟的？","answer":0,"options":["美丽","一只","唱歌","树上"],"explanation":"美丽是形容词，形容小鸟漂亮。"}'::jsonb, 'builtin', '量词与搭配', 'apply', array['词语运用']::text[], '3c8e31d691ac75989ded742f37f3141bb1fab313568a91ede612230d8440075a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-12b83e32e982', 'chinese', 2, 3, 'choice', '{"stem":"《咏柳》中“碧玉妆成一树高”的“妆”是什么意思？","answer":0,"options":["装饰","化妆","打扮","梳头"],"explanation":"妆这里指装饰、打扮。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'a7e962b8e8e5eed504b48f37d29a877a18a63531e8854895e9094263729472bd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-14dc69e31e26', 'chinese', 2, 1, 'match', '{"left":["小鸟","小鱼","小马","小狗"],"stem":"把动物和它们的家连起来","right":["水里","鸟巢","狗窝","马厩"],"matches":[[0,1],[1,0],[2,3],[3,2]],"explanation":"小鸟住鸟巢，小鱼在水里，小马住马厩，小狗住狗窝。"}'::jsonb, 'builtin', '生活语言', 'understand', array['情境表达']::text[], '87f6b45317e209f345cee25a4e7d280a8ebabbf7ced98cb1a4cec5a6106ba50f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-17105340e099', 'chinese', 2, 2, 'choice', '{"stem":"“白茫茫的雪地”中“白茫茫”是形容？","answer":0,"options":["颜色很白一片","很冷","很软","很厚"],"explanation":"白茫茫形容一望无际的白。"}'::jsonb, 'builtin', '量词与搭配', 'apply', array['词语运用']::text[], '3e52de2e7aa4c15a2b208c2c17d2b68a68b942a03a77593e53e1ea6217ffc495', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-176840dc9b16', 'chinese', 2, 1, 'choice', '{"stem":"“左”和“右”这两个字有什么共同点？","answer":0,"options":["都有横和撇","都是半包围","都有工","笔画数相同"],"explanation":"左和右都有横和撇。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'd26d4e228a593b8edcd861e9869c990b3387d4f0b7df35ed7ca7f36c1b9214f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-17c3ad4bc8c1', 'chinese', 2, 3, 'choice', '{"stem":"《回乡偶书》的作者是谁？","answer":0,"options":["贺知章","李白","杜甫","王维"],"explanation":"“少小离家老大回”是贺知章的诗。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'bbba37ec31e21a42a00870799c276201c66eabf1e209254ec8f12e662b19ac50', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-198318f3da4d', 'chinese', 2, 1, 'choice', '{"stem":"下面哪个是后鼻音音节？","answer":0,"options":["星","心","金","林"],"explanation":"星xīng，后鼻音。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '2864eada59ecdbc7a41748133e4f0df0b5fe20090b2462ef79970589676b7d1c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-19bcef22f6d5', 'chinese', 2, 2, 'choice', '{"stem":"下面哪句话说得更好听？","answer":0,"options":["请帮我拿本书好吗？","你给我拿书！","拿书来！","快拿书！"],"explanation":"加“请”和“好吗”更有礼貌。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '164b0e984f56420f4afbeaa85849e5bb032a0904c3fb06147b3e3bea5d6c6f2b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-19dfbfa797c9', 'chinese', 2, 1, 'match', '{"left":["儿童节","国庆节","教师节","元旦"],"stem":"把节日和日期连起来","right":["1月1日","6月1日","9月10日","10月1日"],"matches":[[0,1],[1,3],[2,2],[3,0]],"explanation":"儿童节6.1，国庆节10.1，教师节9.10，元旦1.1。"}'::jsonb, 'builtin', '生活语言', 'understand', array['情境表达']::text[], 'b823fa142a065dc6792507bea8f1e4c03ac7a5e8cf9ae01ff4b770b2fdd90f12', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-1b28a6bcad8a', 'chinese', 2, 2, 'choice', '{"stem":"选词填空：老师（ ）地给我们讲故事。","answer":0,"options":["温柔","大力","飞快","用力"],"explanation":"温柔地讲故事。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'fc5ce8e9a61ea0716b5615a918f5110123006f21a947ab70e5fa59612012692b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-1baed7d74a8d', 'chinese', 2, 1, 'choice', '{"stem":"“大”字的反义词是？","answer":0,"options":["小","多","高","长"],"explanation":"大和小反义。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], 'caddd722ed1a29841205235d7f99e67188287a305a4ef8758a18965dc215436e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-1bb67aa456ec', 'chinese', 2, 1, 'choice', '{"stem":"“水”的拼音是什么？","answer":0,"options":["shuǐ","suǐ","shuì","suì"],"explanation":"水读shuǐ，翘舌音，第三声。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'dc91ffd9a3724e00069f2d4a9e8700e59f755af354a027df6a2309d85076b18b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-1ccbadc48f41', 'chinese', 2, 2, 'choice', '{"stem":"“美丽的（ ）”括号里填什么合适？","answer":1,"options":["跑步","风景","思考","写字"],"explanation":"美丽的风景是常见搭配。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'e65f88b1a1b94f4a28a700c0dac5973d01d18fee68e852a76a642809cacdef89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-2798e7273058', 'chinese', 2, 1, 'choice', '{"stem":"“大”字加一笔是什么字？","answer":1,"options":["天","以上都可以","太","犬"],"explanation":"大加点太，加横天，加横犬。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '5813a848e6c4a28a45f5624632f93acb992ce069e8f5b5a23859161e1e072bc0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-27b4aaf7bd78', 'chinese', 2, 1, 'choice', '{"stem":"“叶子”的“叶”字读音是？","answer":1,"options":["yé","yè","yě","yē"],"explanation":"叶读yè，第四声。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'f475c38e2abd699aed74398026bf8e1204d483eeb500f0d1fe8bd79c04bf6e3e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-28596b3c918d', 'chinese', 2, 2, 'choice', '{"stem":"选词填空：小河里的水（ ）地流着。","answer":1,"options":["悄悄","哗哗","轻轻","慢慢"],"explanation":"哗哗形容流水声。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '3cb90618b0fcb177449839a164ce468b8b5c2bc9839cc2774aa63a06f597888a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-2918b0d85046', 'chinese', 2, 3, 'choice', '{"stem":"《静夜思》表达了诗人怎样的感情？","answer":1,"options":["喜悦","思乡","愤怒","悲伤"],"explanation":"静夜思表达了对故乡的思念。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'ef3a0b47744d78e6740007766b30fb3c57757782bf0979cd661d059a034440b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-29d524cbe300', 'chinese', 2, 2, 'choice', '{"stem":"“金黄金黄的（ ）”括号里填什么？","answer":1,"options":["天空","稻子","大海","草地"],"explanation":"稻子成熟是金黄色的。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'f184e1cc33207f9d4ab81207f773ebf1a9b16cb844e91b46c041f16e1d5109db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-2d7e23387293', 'chinese', 2, 1, 'choice', '{"stem":"“读”字是什么结构？","answer":1,"options":["上下","左右","半包围","独体"],"explanation":"读是言字旁加卖，左右结构。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'f3b3f2f8b0ead922ab010444f1bd5caf200ec7338a167cd86451db0be7dfb530', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-2e3d44bf4d22', 'chinese', 2, 3, 'choice', '{"stem":"《悯农》中“四海无闲田”的下一句是？","answer":1,"options":["粒粒皆辛苦","农夫犹饿死","春种一粒粟","秋收万颗子"],"explanation":"四海无闲田，农夫犹饿死。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'a4c73625018c242a6322f9280abad902f8d9a7ed9d07086e03fb6200e95ad7cb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-2ec11a7d83c9', 'chinese', 2, 3, 'choice', '{"stem":"《村居》中“拂堤杨柳醉春烟”的“春烟”指什么？","answer":1,"options":["春天的烟雾","水汽","炊烟","雾霾"],"explanation":"春烟指春天水泽草木蒸发的水汽。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'cd79f18a0fef66c81a57f241396d08afa224cb3a1ea291cd04ef0e699b92da3d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-2f421d5891a4', 'chinese', 2, 3, 'choice', '{"stem":"《悯农》的作者是谁？","answer":1,"options":["李白","李绅","杜甫","王维"],"explanation":"《悯农》作者李绅。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '583bf1262cdb62d5e49be0f1cc8abfb6d7af66a2def160d6986b43520f689340', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-30c1c4026f48', 'chinese', 2, 3, 'choice', '{"stem":"“司马光砸缸”的故事中，司马光用什么办法救了小朋友？","answer":1,"options":["喊大人","用石头砸破缸","爬进缸里","倒水"],"explanation":"他急中生智砸破水缸放水救人。"}'::jsonb, 'builtin', '段落信息', 'reason', array['阅读理解']::text[], '1c46add0e6e37ba0b4b4a6f6558297602c2918beaa1c1d0858a35b4101d745a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-35e685609fde', 'chinese', 2, 3, 'choice', '{"stem":"下面哪个是寓言故事？","answer":1,"options":["《静夜思》","《狐假虎威》","《村居》","《春晓》"],"explanation":"狐假虎威是寓言故事，其他是古诗。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '3d70c9fa0db32c98a37bddba7626773504d31bd960b724997da51cabf612b9f7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-3cf808ed2e39', 'chinese', 2, 1, 'fill', '{"stem":"红红的太阳像___。","answer":"火球","explanation":"常见比喻，太阳像火球。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '01790b3cd14964635c40f54600c1a1884cb49ee187ed59de9941bca6a60d64be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4082c50dc3c7', 'chinese', 2, 1, 'choice', '{"stem":"“书”字在“书包”中读什么？","answer":1,"options":["sū","shū","shù","sù"],"explanation":"书读shū，第一声。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'd7879223856a10ecef1d526e89117c8b603d2b4b374fc9b22f604050a2ea4d31', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-410be31e0b55', 'chinese', 2, 1, 'choice', '{"stem":"“牛”字共有几画？","answer":1,"options":["3画","4画","5画","6画"],"explanation":"牛笔顺：撇、横、横、竖，4画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'b810a7fcff4283a78deeef6016fa5c21fde9cf829c8c51fe5ebed792ba51a890', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-41b108453d27', 'chinese', 2, 3, 'choice', '{"stem":"《咏鹅》的作者骆宾王是哪个朝代的？","answer":1,"options":["宋朝","唐朝","明朝","清朝"],"explanation":"骆宾王是唐代诗人，七岁作《咏鹅》。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '940a19644128bf4ce5e74ff17d71b4c2809a38cea0418df896c7364e48f82685', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-43031586ff5c', 'chinese', 2, 1, 'choice', '{"stem":"“儿”字加一笔变成什么字？","answer":1,"options":["九","几","丸","凡"],"explanation":"儿加一笔横变成几。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '541a464967635b2eab8d7588cb234ebd519de4d70be0aee530d4c3b68d05cab1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-472cd6b281dc', 'chinese', 2, 1, 'choice', '{"stem":"下面哪个字读“huā”？","answer":1,"options":["草","花","树","叶"],"explanation":"“花”的拼音是huā。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '5f2d8fc986f254ad4db04ab85c97b4d86ceed06cf1b0b489abca39c36bae6716', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4734cee4334a', 'chinese', 2, 2, 'choice', '{"stem":"“火红火红的枫叶像一团团火。”这句话把枫叶比作什么？","answer":1,"options":["太阳","火","花","红旗"],"explanation":"比作一团团火。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'b108031849ac8d824bcf645b7a6c6c722340c0283b348d9103c7ec833b0c042e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-487938e8aedc', 'chinese', 2, 1, 'choice', '{"stem":"“田”字有几画？","answer":1,"options":["4画","5画","6画","3画"],"explanation":"田笔顺：竖、横折、横、竖、横，5画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '7e8a8c7df8022159dd8a534a241de4bcf2538ad5195f0a2e89685d726ef9f5fb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-49a9c0f140d2', 'chinese', 2, 1, 'choice', '{"stem":"“书”的第四笔是？","answer":1,"options":["横","点","横折","竖"],"explanation":"书笔顺：横折、横折钩、竖、点，第四笔是点。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'ae1c81697ffdaa8d391fb2cf3a93a8d97e5c8d9ad755155d44764cf8a1a1a94a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-49cef00a3370', 'chinese', 2, 2, 'choice', '{"stem":"下面哪句话是完整的？","answer":1,"options":["小鸟在天上。","小鸟在天上飞。","在天上飞。","飞在天上小鸟。"],"explanation":"“小鸟在天上飞”主谓宾完整。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'bc94f27977c06300c469eb9a518c604e007f21fdf230a3951ffca0108cc33388', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4c05c0a8659b', 'chinese', 2, 3, 'choice', '{"stem":"下面哪位不是唐代诗人？","answer":1,"options":["李白","苏轼","杜甫","王维"],"explanation":"苏轼是宋代诗人。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '5d10528e2c1188078d419844016bc63baa47681dbcd53a85c315b9616b7e8b92', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4c7b2d57c407', 'chinese', 2, 1, 'choice', '{"stem":"与“东”意思相反的词是？","answer":1,"options":["南","西","北","中"],"explanation":"东和西反义。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], '649df247f8d18c5812735568e51a746d2b2fed6ed499105e0265849aa1979296', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4ca1b0e75ea8', 'chinese', 2, 3, 'choice', '{"stem":"“一年之计在于春”的下一句是？","answer":1,"options":["一生之计在于勤","一日之计在于晨","一寸光阴一寸金","寸金难买寸光阴"],"explanation":"完整句子：一年之计在于春，一日之计在于晨。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '3dbabcb546ce37a20c0cff7474945452821360d951ca2892a679d2a97f89e4f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4cc08b768fb3', 'chinese', 2, 1, 'choice', '{"stem":"“不”字共有几画？","answer":1,"options":["3画","4画","5画","2画"],"explanation":"不笔顺：横、撇、竖、点，4画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'ba31a8ca2a5e043a3fac078611b51f82bd7871b92dfd67cf2fa570b5218e66d1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4d39a6e1154d', 'chinese', 2, 1, 'choice', '{"stem":"“妹妹在院子里（ ）花。”选哪个动词？","answer":1,"options":["听","看","吃","写"],"explanation":"看花最合适。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'c041dfa6dc7a35612d9467415a699225d0c895559643c0c8e94c7bcc082de65d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4f20e8e5e6ef', 'chinese', 2, 1, 'choice', '{"stem":"“林”字是什么结构？","answer":2,"options":["上下结构","半包围","左右结构","独体字"],"explanation":"林由两个木左右组成。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '71893811f4a0f18714d0893dec04bbb172111d8cb1093c927cdfa755765158cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-4f53bba5d3a9', 'chinese', 2, 1, 'choice', '{"stem":"“我们”的“们”读什么？","answer":2,"options":["mén","ménɡ","men","mèn"],"explanation":"“们”读轻声men。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '6347b12a153b51021791950d996f4bd9db2e2aa8bee5043042e21109861d0dd3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-5239a3973aa2', 'chinese', 2, 3, 'choice', '{"stem":"《敕勒歌》中“天苍苍，野茫茫”的下一句是？","answer":2,"options":["更上一层楼","处处闻啼鸟","风吹草低见牛羊","床前明月光"],"explanation":"天苍苍，野茫茫，风吹草低见牛羊。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'ef087c6ceaf663c4959741d8ac3019740e704038632f16cc734f7b5a90d15083', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-53c87f66fb7b', 'chinese', 2, 2, 'choice', '{"stem":"“红的像火，粉的像霞，白的像雪”用了什么修辞？","answer":2,"options":["拟人","夸张","比喻","设问"],"explanation":"把颜色比作火、霞、雪，是比喻。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '2475e5650f1d5cbb6ebcd2d00f8e5f4d5bc9beef3ef648d15fe13fa71461a7d7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-548517103873', 'chinese', 2, 1, 'choice', '{"stem":"“金鱼”的“金”读什么？","answer":2,"options":["jīng","jīnɡ","jīn","jǐn"],"explanation":"金读jīn，前鼻音。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '60c956afd8a853911ec2041826fcfc016fa313f230f74e344b4ae0f3cd91ebe2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-54b1b8838576', 'chinese', 2, 1, 'match', '{"left":["1","2","3","4"],"stem":"把数字和汉字连起来","right":["四","三","一","二"],"matches":[[0,2],[1,3],[2,1],[3,0]],"explanation":"1一，2二，3三，4四。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'bad7974b8e22fd3790ad44ab699ace4be89aed581ee63bae730011735a9235b0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-59519c6c8ef4', 'chinese', 2, 3, 'choice', '{"stem":"《登鹳雀楼》告诉我们什么道理？","answer":2,"options":["要多吃饭","楼很高","站得高看得远","黄河很长"],"explanation":"欲穷千里目更上一层楼，指站得高看得远。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], 'a5bfb03949b7cf8a1e40b154ad3571dc83adce991e974b1f6dea9eb46cb4da06', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-59f765e23feb', 'chinese', 2, 1, 'choice', '{"stem":"“快乐”的“乐”另一个读音是？","answer":2,"options":["lè","yào","yuè","luò"],"explanation":"乐读lè（快乐），也读yuè（音乐）。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '8a34a791392efef5ff538afe5778bd6dddfa1ca137bbb50484f116d5c3a9e618', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-5bcbfd1733c2', 'chinese', 2, 1, 'match', '{"left":["一","七","九","十"],"stem":"把数字和成语连起来","right":["牛一毛","上八下","全十美","死一生"],"matches":[[0,0],[1,1],[2,3],[3,2]],"explanation":"九牛一毛，七上八下，十全十美，九死一生，注意连线九死一生应该对一，但一牛一毛。重新匹配：一 -> 一毛，七->八下，九->一毛? 不对，重新设计：左:一,七,九,十；右:一毛,八下,一毛,十美。为避免重复，换词：左:一,七,八,十；右:心一意,嘴八舌,面玲珑,全十美。这样：一->一心一意，七->七嘴八舌，八->八面玲珑，十->十全十美。修改。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'e1862d2d28268b9debe3debb9b0f4af620681d9fbad9cafe1f6789cc4b18f4c3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-5c8f6da3fd22', 'chinese', 2, 2, 'choice', '{"stem":"哪句话说得对？","answer":2,"options":["我把作业写完不。","作业把我写完了。","我把作业写完了。","我完写了作业。"],"explanation":"第一句语序通顺。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '744eb84e99cb9fa08a908ef2313a5d600db34b9227bb6491edb732e120ab02be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-5e5f63970edc', 'chinese', 2, 1, 'choice', '{"stem":"“长”在“长江”中读什么？","answer":2,"options":["zhǎng","chánɡ","cháng","zhànɡ"],"explanation":"长江的“长”读cháng。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '666a8156debbd1dbfc08a973be5bd7da59ff6bec34b5aa8a076248fd9c990748', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-5ee1af969a71', 'chinese', 2, 1, 'choice', '{"stem":"和“大”意思相反的词是？","answer":2,"options":["多","高","小","长"],"explanation":"“大”的反义词是“小”。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], 'fd0fab83fafbba415eca26b080484098f16453f6eb79ef016fad84ebe370c741', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-5fd3ecd81a67', 'chinese', 2, 2, 'choice', '{"stem":"“弯弯的月亮像小船”这句话中，把什么比作小船？","answer":2,"options":["星星","天空","月亮","河水"],"explanation":"把弯弯的月亮比作小船。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '7ec3c13a7142ebc9e32055dc2dcbd4d9e8fa03432fbe556da3f89d234e4415b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-60a4d7dcaadf', 'chinese', 2, 1, 'choice', '{"stem":"“西瓜”的“瓜”字部首是？","answer":2,"options":["丿","丶","瓜","厶"],"explanation":"瓜字本身就是一个部首。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'c6c9c78714f8bb98af8df3994c73cffe6838624f9f17d9763cdfb7783125be03', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-6266d8bcbe79', 'chinese', 2, 1, 'fill', '{"stem":"天上的___一闪一闪的。","answer":"星星","explanation":"星星在天空闪烁。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'c91fde1b61ca2647fd15310e7cf57ea0f8f46ab41e0340b7dc2e76b94b790f89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-62b9e1bbb84c', 'chinese', 2, 1, 'choice', '{"stem":"与“高”意思相反的词是？","answer":2,"options":["胖","长","低","粗"],"explanation":"高的反义词是低或矮。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], 'b87ecf2eb0e7d300cf54afed82c3b9dc74337b1fecc2b362c9b3d8b1e06f1a1d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-62bc8428d12c', 'chinese', 2, 2, 'choice', '{"stem":"“弯弯的月亮像小船”把什么比作小船？","answer":2,"options":["天空","星星","月亮","云朵"],"explanation":"把月亮比作小船。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '0de7dcddf6df414753db2f408a75d13495ea8baa108202f38b3307db2ad77305', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-634bd8f78618', 'chinese', 2, 1, 'choice', '{"stem":"“来”字共有几画？","answer":2,"options":["6画","8画","7画","5画"],"explanation":"来笔顺：横、点、撇、横、竖、撇、捺，7画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '3175f00ae3fc7b144b6108b5d3f029ba0feff04b7b82ed0eb5559a74d945fb76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-63696a21be1c', 'chinese', 2, 1, 'choice', '{"stem":"“开心”的近义词是？","answer":2,"options":["难过","生气","快乐","伤心"],"explanation":"开心和快乐意思相近。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], '7537620fdb660c0497283c58e0898d8c80cb883bf27f6f77895097b7d951f127', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-64edf14c113f', 'chinese', 2, 3, 'choice', '{"stem":"《赠汪伦》中，“李白乘舟将欲行”的下一句是？","answer":2,"options":["桃花潭水深千尺","不及汪伦送我情","忽闻岸上踏歌声","飞流直下三千尺"],"explanation":"李白乘舟将欲行，忽闻岸上踏歌声。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '8c03c691c1640d5d437a930a0f4aad5f5a036a7be3a12d85a2e2d80d09ce5ecc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-64f2638b6cb2', 'chinese', 2, 2, 'fill', '{"stem":"爸爸___我讲故事。","answer":"给","explanation":"爸爸给我讲故事。"}'::jsonb, 'builtin', '段落信息', 'apply', array['阅读理解']::text[], 'dcc801c980503ec938261f1cfdc9359405b09335c4bcf642837ff21a06b0eb46', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-6a4072b5d7ce', 'chinese', 2, 2, 'choice', '{"stem":"“蓝蓝的天空像（ ）”填什么？","answer":2,"options":["草地","火","大海","苹果"],"explanation":"天空像大海一样蓝。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '3cd441f24d881b51973772352a990e993fbf978dc3dc0b3062fbc1df0d57ffa2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-6a658f1e8071', 'chinese', 2, 1, 'choice', '{"stem":"“山”字共有几画？","answer":2,"options":["2画","4画","3画","5画"],"explanation":"山笔顺：竖、竖折、竖，3画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '745d708d2546dd5f339dfe5c39f878a4ac86a68f15fa47f95a3839103f0f7440', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-6bb2421fdc21', 'chinese', 2, 2, 'choice', '{"stem":"下列哪一组是近义词？","answer":2,"options":["开心—难过","高大—矮小","快乐—高兴","冷—热"],"explanation":"“快乐”和“高兴”意思相近，是一对近义词。"}'::jsonb, 'builtin', '近义词与反义词', 'apply', array['词义辨析']::text[], 'aa5994d7f88a7e5ccaeaeb5e45e1f2b786639f547805cc690fd3d389a9726109', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-6be57901da7c', 'chinese', 2, 1, 'choice', '{"stem":"“蝴蝶”的正确读音是？","answer":2,"options":["hú tié","hǔ dié","hú dié","hù dié"],"explanation":"蝴蝶读hú dié。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '61d7f26ce0e7d8ade1bd764dea1c836818f8aa50e50502a1779a056bd8d5295f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-6c4a926a72b2', 'chinese', 2, 2, 'fill', '{"stem":"夜来风雨声，花落知___少。","answer":"多","explanation":"《春晓》：夜来风雨声，花落知多少。"}'::jsonb, 'builtin', '古诗名句', 'apply', array['传统文化']::text[], 'f4c6e7453ca59c59b11d86ca2ec6f4a46641703518cdedb24f0765511b8b16c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-6c99073b072f', 'chinese', 2, 1, 'choice', '{"stem":"“女”字一共有几画？","answer":2,"options":["2画","4画","3画","5画"],"explanation":"女笔顺：撇点、撇、横，3画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], 'b7db9b7cf57022fab4516ef1086b425627ec9a07524f90e18c220b7d6f268292', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-70e542d3f666', 'chinese', 2, 1, 'choice', '{"stem":"“花儿”的“花”字读第几声？","answer":2,"options":["第二声","第三声","第一声","第四声"],"explanation":"花读huā，第一声。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '9ca6f97f3ab48c1dd0463ade594f92a19d962a6b852a50620818e65b34127d42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-70f27e31414c', 'chinese', 2, 1, 'choice', '{"stem":"“春”字一共有几画？","answer":2,"options":["8画","10画","9画","7画"],"explanation":"春：横、横、横、撇、捺、竖、横折、横、横，9画。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '1a37f2853483e931fff6ef7facd6b152a956d171bf3274535e3bde3d9315bd2b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-747928d7e99d', 'chinese', 2, 3, 'choice', '{"stem":"下面哪首诗描写了儿童生活？","answer":2,"options":["《静夜思》","《登鹳雀楼》","《村居》","《望庐山瀑布》"],"explanation":"《村居》中有儿童散学放纸鸢。"}'::jsonb, 'builtin', '古诗名句', 'reason', array['传统文化']::text[], '0c330294dc02fb907705de06552f0fd4bc9d2272908eb15821a1c4ec8dbe9118', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-74d324056761', 'chinese', 2, 1, 'choice', '{"stem":"“森林”的“森”有几个“木”？","answer":2,"options":["一个","两个","三个","四个"],"explanation":"“森”字由三个“木”组成。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '0671d41219c1e7b0ae60bbd6373e35092d88bb451983918328a0b84f603da106', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-755f62ae3ce7', 'chinese', 2, 1, 'fill', '{"stem":"小___真可爱。（填一种动物）","answer":"狗","explanation":"常见宠物，填写狗、猫等都可以，答案用狗。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'edbb0940152a02d6c52ef33bfa75d1b0c6d06e2b60e179d571219d2e25a442d4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-7b6d378c5161', 'chinese', 2, 3, 'choice', '{"stem":"“揠苗助长”故事中的农夫犯了什么错误？","answer":3,"options":["种得太早","没有浇水","没有施肥","拔高禾苗急于求成"],"explanation":"他为了禾苗快长，把苗拔高，结果禾苗枯死了。"}'::jsonb, 'builtin', '段落信息', 'reason', array['阅读理解']::text[], '267024d917b743a0c8a557aa1cd4453edd24050fa8a7f9f5a3d05f08278c255e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-7e42654481d9', 'chinese', 2, 2, 'choice', '{"stem":"“弯弯的小路像彩带”把什么比作彩带？","answer":3,"options":["山","河流","树木","小路"],"explanation":"把小路的形状比作彩带。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '195ac12ac33a59ed72e543cfc1520d8656164a1484b5d744ae75bb9e12c42c0d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-7f40b78dfb5e', 'chinese', 2, 1, 'choice', '{"stem":"与“里”意思相反的词是？","answer":3,"options":["内","上","下","外"],"explanation":"里的反义词是外。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], 'cc51ad1a88df2d8398d9d2788248c07f6bbcdef41bebfdaa840ac49e3a1a8b5c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-7f82e088279f', 'chinese', 2, 1, 'fill', '{"stem":"小___在河里游来游去。","answer":"鱼","explanation":"小鱼在河里游。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '6766b76ff6ef3d75bfbcf0352e90b4457801aa49e2f50c57c1b317e2b3109592', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8011fb622b64', 'chinese', 2, 1, 'choice', '{"stem":"“来”的反义词是？","answer":3,"options":["走","跑","回","去"],"explanation":"来和去是反义词。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], '0bde0c2f778d7a29fc8a7fbbc5ff5c23c41f78add59ddce5f2b8fc2ce7d04882', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8626ed25ad91', 'chinese', 2, 1, 'fill', '{"stem":"“中”字加偏旁可以变成“___”。","answer":"钟","explanation":"中加金字旁是钟。"}'::jsonb, 'builtin', '字音字形', 'understand', array['字词基础']::text[], '791d27db0368d00002faf41db6137c5c2b28111dbba7abc6384662cea4b00bcf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-883f850a4d0d', 'chinese', 2, 1, 'match', '{"left":["眼睛","鼻子","嘴巴","耳朵"],"stem":"把身体部位和名称连起来","right":["听声音","看东西","闻气味","吃东西"],"matches":[[0,1],[1,2],[2,3],[3,0]],"explanation":"眼睛看，鼻子闻，嘴巴吃，耳朵听。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '6591092fbc8753acb5b4d76f02ef3b46572cb3c836bf96ee8f8a898cd2d33fb9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-89a48d3952da', 'chinese', 2, 1, 'choice', '{"stem":"“同学们在操场上（ ）”选哪个？","answer":3,"options":["睡觉","写字","看书","跑步"],"explanation":"操场上通常进行体育活动，跑步合适。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'f633164a66519105fc1767e06127cdb322d76f823ee438f7cb5c3055bfd8f276', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8a13aa9a7486', 'chinese', 2, 2, 'choice', '{"stem":"下列句子中，哪个标点符号用错了？","answer":3,"options":["你吃饭了吗？","今天真开心！","小明说：“我来了。”","这是谁的书！"],"explanation":"“这是谁的书”是问句，应该用问号，不是叹号。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '47915a106c9f9673f9e13be5c73a9dcfff29cd8112cc97d55f87bcbb64fc0095', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8aefe2932b46', 'chinese', 2, 2, 'fill', '{"stem":"床前明月光，疑是地上___。","answer":"霜","explanation":"《静夜思》：疑是地上霜。"}'::jsonb, 'builtin', '古诗名句', 'apply', array['传统文化']::text[], 'd796115a2fa5009b80767abfb889b49eb2d75efe87805c24794a77c723c7decd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8bb9c33fefbd', 'chinese', 2, 1, 'choice', '{"stem":"哪个词表示“非常生气”？","answer":3,"options":["开心","难过","害怕","愤怒"],"explanation":"愤怒就是非常生气的意思。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], '08e80e9d6429612d1ea3f015e93e4d6a4f70d64fbc3ea4a776a8972d57ea78f7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8c524a0c0b4a', 'chinese', 2, 2, 'fill', '{"stem":"春眠不觉晓，处处闻啼___。","answer":"鸟","explanation":"孟浩然《春晓》：春眠不觉晓，处处闻啼鸟。"}'::jsonb, 'builtin', '古诗名句', 'apply', array['传统文化']::text[], '075cc6ce632077caffa13431cf55fd0d72cce5803d9daca71784781d9f511118', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8c5420801048', 'chinese', 2, 1, 'fill', '{"stem":"___的苹果真好吃。","answer":"红红","explanation":"形容词填空，红红的苹果。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'e7d7b8b5f767ae379125e3aab193ea5a190149a15587f7fd7da0bfb6754dd2df', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8c86f3f9248f', 'chinese', 2, 2, 'match', '{"left":["《静夜思》","《春晓》","《村居》","《咏柳》"],"stem":"把古诗和作者连起来","right":["李白","孟浩然","高鼎","贺知章"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"一一对应作者。"}'::jsonb, 'builtin', '古诗名句', 'apply', array['传统文化']::text[], '2af8e4efee2d105f11fa4f5cd6b207f7c59a0dc3704a388694a880e6a7f85115', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-8f7c5b7deea6', 'chinese', 2, 1, 'choice', '{"stem":"“可爱”的近义词是？","answer":3,"options":["可怕","可恨","讨厌","喜欢"],"explanation":"可爱和喜欢意思相近。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], '48d85d65c509b93ab1340f48042083716184c546cb7699ad4def2fab28db6389', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-98888aa90471', 'chinese', 2, 2, 'choice', '{"stem":"选词：春天来了，小草（ ）地从土里钻出来。","answer":3,"options":["静静","慢慢","快快","悄悄"],"explanation":"悄悄地钻出来，体现不知不觉。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'b4ad9a4c39923ca64b4e648c737b39398a93b941d31131f0baf4505a5d66a695', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-996a31581ca0', 'chinese', 2, 2, 'fill', '{"stem":"举头望明月，___头思故乡。","answer":"低","explanation":"《静夜思》：举头望明月，低头思故乡。"}'::jsonb, 'builtin', '古诗名句', 'apply', array['传统文化']::text[], '23e1ed53f7414d1c5483d8bd8d55862c806257c91d791e5aa8487a582a1369c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-9f231613618c', 'chinese', 2, 1, 'match', '{"left":["公鸡","鸭子","小猫","小狗"],"stem":"把动物和它们的叫声连起来","right":["喵喵","汪汪","喔喔","嘎嘎"],"matches":[[0,2],[1,3],[2,0],[3,1]],"explanation":"公鸡喔喔，鸭子嘎嘎，小猫喵喵，小狗汪汪。"}'::jsonb, 'builtin', '生活语言', 'understand', array['情境表达']::text[], '6bed8daae5fcb6404cc688b3c363afefc430c6062a2b2161d1c3704fd781b6a4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-9f891220523c', 'chinese', 2, 2, 'fill', '{"stem":"远上寒山石径斜，白云生处有___家。","answer":"人","explanation":"《山行》：白云生处有人家。"}'::jsonb, 'builtin', '古诗名句', 'apply', array['传统文化']::text[], 'd4259898cf7c58248358428ed4749210e97f18bedbeafa267df8bbba0e6a76e8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-a070ea325da7', 'chinese', 2, 1, 'fill', '{"stem":"___风把树叶吹落了。","answer":"秋","explanation":"秋风落叶。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'b910cc9ae7a794c85c30f9fa60346a7a65334cf46e69e950dc55cbe6b3ea995a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-a71c91913065', 'chinese', 2, 3, 'choice', '{"stem":"“他跑得像风一样快”用了什么修辞？","answer":3,"options":["拟人","夸张","排比","比喻"],"explanation":"把跑步速度比作风，是比喻句。"}'::jsonb, 'builtin', '句式运用', 'reason', array['句子运用']::text[], '93548e61223b212e6702082381a37188f4d979f970358d896b56f2768259911c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-a954c498fc87', 'chinese', 2, 2, 'choice', '{"stem":"“一条条街道像什么？”可以想象成？","answer":3,"options":["高高的山","圆圆的月亮","红红的太阳","长长的带子"],"explanation":"街道长而弯曲，像带子。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '244877c1fb371e7cabcb3d650ab324c4a7dd254eea1d2dec03fb716f033bf1d1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-adca27d7d376', 'chinese', 2, 2, 'match', '{"left":["春眠不觉晓","举头望明月","锄禾日当午","儿童散学归来早"],"stem":"把诗句和诗名连起来","right":["《悯农》","《静夜思》","《村居》","《春晓》"],"matches":[[0,3],[1,1],[2,0],[3,2]],"explanation":"春眠对应春晓，举头对应静夜思，锄禾对应悯农，儿童对应村居。"}'::jsonb, 'builtin', '古诗名句', 'apply', array['传统文化']::text[], 'd82f8c87f3a856db356037dbf9f5c8d587d338486d2f050a42486d1d527632d3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-b4d8345fe9e8', 'chinese', 2, 2, 'choice', '{"stem":"“一（ ）井”填什么量词？","answer":3,"options":["个","只","条","口"],"explanation":"一口井。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '6b6ad87bc577a676fb50d5b4ad68dad4ca3a91c9e2436d9ffa98844d35ef6982', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-bb7c239b1663', 'chinese', 2, 1, 'match', '{"left":["自行车","小汽车","火车","飞机"],"stem":"把交通工具和特点连起来","right":["飞得快","跑得快","会冒烟","要用脚蹬"],"matches":[[0,3],[1,1],[2,2],[3,0]],"explanation":"自行车脚蹬，小汽车跑得快，火车冒烟（传统），飞机飞得快。"}'::jsonb, 'builtin', '生活语言', 'understand', array['情境表达']::text[], 'b8f31aaf26eac3c0bb52dfc8aaccdd08270bae300240a3e9633cb3ef9db3abdf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-bcdd36a8cb1d', 'chinese', 2, 1, 'choice', '{"stem":"“多”的反义词是？","answer":3,"options":["小","长","短","少"],"explanation":"多的反义词是少。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], 'a4739a3de2eee9a539eb5811188080c33baf31a0c4d9604f1ae5fe977be4a6c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-be335de34785', 'chinese', 2, 1, 'fill', '{"stem":"___果熟了，红红的。","answer":"苹","explanation":"苹果熟了。"}'::jsonb, 'builtin', '量词与搭配', 'understand', array['词语运用']::text[], 'ebba82147b581d2c9d5baa663645a32f4295123505b80fed150dfd6bda1698e2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-c70f013618a9', 'chinese', 2, 2, 'choice', '{"stem":"哪句话用上了“好像”？","answer":3,"options":["月亮小船。","月亮弯弯。","月亮美。","月亮好像小船。"],"explanation":"第一句用了好像。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '53d3c3cc33e0c013565d1383f13f6e4a97c06a737945ac2e3457b682aed52054', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-c7304f2fa984', 'chinese', 2, 2, 'choice', '{"stem":"妈妈在厨房（ ）菜。括号里填什么？","answer":3,"options":["坐","作","座","做"],"explanation":"“做菜”表示烹饪，用“做”；“坐”是坐下，“作”用于工作，“座”是座位。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '9892f23badd50980f822ffa9869e165b6fa9d34e9afd4da0c6689bf3540ab7a9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-c735abe8c474', 'chinese', 2, 2, 'choice', '{"stem":"“火红火红的（ ）”括号里填什么？","answer":3,"options":["大海","树叶","草地","太阳"],"explanation":"太阳常用火红火红形容。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '2dde0393468815632e72bea765c5d5c50eb9eedf935eb51c39915022debf3752', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-c86b08623261', 'chinese', 2, 1, 'choice', '{"stem":"与“白”意思相反的词是？","answer":3,"options":["红","绿","黄","黑"],"explanation":"白的反义词是黑。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], '8e9c5f457717b1e42c3f8a9cb0b16860c47f7a402205babba2db6c78b6dab622', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-ce3f5b7070b5', 'chinese', 2, 2, 'choice', '{"stem":"下面哪句话是完整的？","answer":3,"options":["在公园里玩。","小明在公园。","玩在公园小明。","小明在公园里玩。"],"explanation":"第三句有主语、地点和动作，是完整句子。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'dbf8bd6a86cb2ce59e2538c050c0c5e3a17b5a86e70f4d7620ed15a58fb901b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-d03dca11da1d', 'chinese', 2, 1, 'choice', '{"stem":"与“快”意思相反的词是？","answer":3,"options":["走","跑","高","慢"],"explanation":"快的反义词是慢。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], '334b41e7a584220544f5c1080d53dacd24751122945d42324bcebc716b37e5f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-d647184e8666', 'chinese', 2, 3, 'choice', '{"stem":"“狐假虎威”故事中，狐狸依仗谁吓唬小动物？","answer":3,"options":["狮子","大象","熊","老虎"],"explanation":"狐狸借着老虎的威风，所以是狐假虎威。"}'::jsonb, 'builtin', '段落信息', 'reason', array['阅读理解']::text[], '7765547124c9bdcaa28b58514df809560fde62eee808862553eb164f3eb9cf79', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-da2c5bb10d59', 'chinese', 2, 2, 'choice', '{"stem":"下面哪句话使用了“一边…一边…”？","answer":3,"options":["我唱歌跳舞。","我唱歌和跳舞。","我先唱歌后跳舞。","我一边唱歌一边跳舞。"],"explanation":"一边唱歌一边跳舞使用了一边…一边…。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], 'c9b14b4d28d9a95b2ee50c8d2ed44a3fd782d316c46cb96b0b04a9a1e4da2a7a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-dc8f564c4efa', 'chinese', 2, 2, 'choice', '{"stem":"“弯弯的（ ）像小船”填什么？","answer":3,"options":["太阳","星星","云朵","月亮"],"explanation":"弯弯的月亮像小船。"}'::jsonb, 'builtin', '句式运用', 'apply', array['句子运用']::text[], '126a91459e6b1b97a370fc3e189ff223d679c3c1e56dcd9a747497055579e6b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-legacy-fb1ff5f5dc9f', 'chinese', 2, 1, 'choice', '{"stem":"与“慢”意思相反的词是？","answer":3,"options":["停","走","跑","快"],"explanation":"慢的反义词是快。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['词义辨析']::text[], '779f94045c40571cd3135710ccdc51561551eb959da02659e1f62b0e3d55a121', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-life-001', 'chinese', 2, 1, 'fill', '{"stem":"得到同学帮助后，应该说“___”。","answer":"谢谢","explanation":"接受别人的帮助后说“谢谢”，是有礼貌的表达。"}'::jsonb, 'builtin', '生活语言', 'apply', array['礼貌用语']::text[], '06243496a8a9a950c034566685fd52548e418eafdfe424d40ed268620686d8ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-paragraph-002', 'chinese', 2, 3, 'choice', '{"stem":"读句子：“窗外下着雨，明明出门前穿上雨衣，又拿了一把伞。”可以知道天气怎样？","options":["很晴朗","刮着大风","正在下雪","正在下雨"],"answer":3,"explanation":"句子直接写了“窗外下着雨”，雨衣和伞也能帮助确认正在下雨。"}'::jsonb, 'builtin', '段落信息', 'reason', array['阅读推断']::text[], '024e1996c7f472205066a79d6b8b4ec33f40f9a518e2059371610cc554908484', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-paragraph-003', 'chinese', 2, 2, 'fill', '{"stem":"读句子：“小猫躲在桌子下面睡觉。”小猫躲在___下面。","answer":"桌子","explanation":"句子中明确写着“小猫躲在桌子下面”。"}'::jsonb, 'builtin', '段落信息', 'apply', array['信息提取']::text[], '96170373791678dbf78387e13280a60b8ec6094f69f1b427c7b671604f258c20', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-paragraph-004', 'chinese', 2, 1, 'fill', '{"stem":"读句子：“清晨，小鸟在枝头唱歌。”小鸟在___唱歌。","answer":"枝头","explanation":"从句子中可以直接找到地点是“枝头”。"}'::jsonb, 'builtin', '段落信息', 'understand', array['信息提取']::text[], 'afc8293299cbe389b970a877830638878f9f16df648d66a975c3825e89acb25c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-sentence-order-001', 'chinese', 2, 2, 'choice', '{"stem":"把“①书包里 ②我把 ③放进 ④语文书”排成通顺的句子，正确顺序是？","options":["②③④①","④②③①","①③②④","②④③①"],"answer":3,"explanation":"先说“我把”，接着说物品“语文书”，再说动作“放进”，最后说地点“书包里”，顺序是②④③①。"}'::jsonb, 'builtin', '句子排序', 'apply', array['语序', '生活情境']::text[], '995892a5ce1d9eac3c6c148264df8459d358a7555f690e6b489e937a8e45a51e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-sentence-order-002', 'chinese', 2, 1, 'choice', '{"stem":"把“①认真地 ②小红 ③写作业”排成通顺的句子，正确顺序是？","options":["①②③","③②①","②③①","②①③"],"answer":3,"explanation":"先说人物“小红”，再说怎样做“认真地”，最后说做什么“写作业”，顺序是②①③。"}'::jsonb, 'builtin', '句子排序', 'understand', array['语序']::text[], '413c688816ca1e4da8472b30060296e0a31b8d117280aeb02df2fb49f80654a9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-sentence-order-004', 'chinese', 2, 2, 'match', '{"stem":"把句子的前半句和合适的后半句连起来。","left":["春天来了，","上课铃响了，","雨停以后，","夜晚到了，"],"right":["同学们走进教室。","小草从土里钻出来。","天空挂起了彩虹。","星星在天空闪烁。"],"matches":[[0,1],[1,0],[2,2],[3,3]],"explanation":"根据事情发生的先后和场景，将每个前半句接成意思完整的句子。"}'::jsonb, 'builtin', '句子排序', 'apply', array['句子衔接']::text[], 'a481dfc419e9f652229043db072e87a394a015078f1189de024f563d634653bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-sentence-order-005', 'chinese', 2, 1, 'match', '{"stem":"把人物和他接下来做的事情连起来，使句意通顺。","left":["口渴的小明","准备睡觉的妹妹","来到图书馆的小华","看见垃圾的小雨"],"right":["把它捡进垃圾桶。","安静地挑选图书。","喝了一杯温水。","关灯躺到床上。"],"matches":[[0,2],[1,3],[2,1],[3,0]],"explanation":"根据每个人所处的情境，判断接下来最合理的行为。"}'::jsonb, 'builtin', '句子排序', 'understand', array['句子衔接']::text[], '0e5e04a1706e0e2ec607508383e509b92ea1f0f78eca710682d862a88cdb542e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-synonym-001', 'chinese', 2, 1, 'fill', '{"stem":"“高”的反义词是___。","answer":"矮","explanation":"“高”和“矮”表示相反的高度。"}'::jsonb, 'builtin', '近义词与反义词', 'understand', array['反义词']::text[], 'fa254c72d2ee91cd996050cd80edadc2b5686143df233f07022ebec57f78d2b3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-synonym-002', 'chinese', 2, 2, 'fill', '{"stem":"“高兴”的近义词是___。","answer":"开心","explanation":"“高兴”和“开心”都表示心情愉快。"}'::jsonb, 'builtin', '近义词与反义词', 'apply', array['近义词']::text[], '56daa35b70b2d4466f0ffd06b01d9c55e32126e3f424f5735199c7597231d852', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-chinese-synonym-003', 'chinese', 2, 2, 'match', '{"stem":"把每个词和它的反义词连起来。","left":["快","冷","早","开"],"right":["关","晚","慢","热"],"matches":[[0,2],[1,3],[2,1],[3,0]],"explanation":"快—慢、冷—热、早—晚、开—关都是意思相反的词。"}'::jsonb, 'builtin', '近义词与反义词', 'apply', array['反义词']::text[], '72ded2fd6d77e36ad5efc0539eeb7038e6cd3d4fed74ff06f860bb8accd7a914', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-0000a2a70b89', 'english', 2, 2, 'match', '{"left":["It''s a sunny day.","It''s rainy.","It''s snowy.","It''s windy."],"stem":"把句子和对应的图片描述连起来","right":["下雨","晴天","下雪","刮风"],"matches":[[0,1],[1,0],[2,2],[3,3]],"explanation":"sunny晴天，rainy下雨，snowy下雪，windy刮风。"}'::jsonb, 'builtin', '短文信息', 'apply', array['阅读理解']::text[], 'dc9a30fe9e3eaf2b668c811c887346d499f6ac745ba70eabcbfe964d4d86a5ba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-003d2499f93c', 'english', 2, 2, 'choice', '{"stem":"选出不同类的一项：","answer":0,"options":["book","head","hand","eye"],"explanation":"book是书，其它是身体部位。"}'::jsonb, 'builtin', '日常名词', 'apply', array['主题词汇']::text[], '6d8d41e3e5335a2f73442e88be04e209d94cab714d5dd7b5fae39f05a7cdec53', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-00796822fd66', 'english', 2, 1, 'match', '{"left":["milk","water","juice","tea"],"stem":"把英文和中文意思连起来","right":["茶","果汁","水","牛奶"],"matches":[[0,3],[1,2],[2,1],[3,0]],"explanation":"milk牛奶，water水，juice果汁，tea茶。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'f0f1d8d05f38e271b613e7dcbda10e964b9e6f15848c94e34f84337113032eec', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-028e9469b453', 'english', 2, 1, 'match', '{"left":["sunny","rainy","windy","cloudy"],"stem":"把英文和中文意思连起来","right":["有风","多云","晴朗","下雨"],"matches":[[0,2],[1,3],[2,0],[3,1]],"explanation":"sunny晴，rainy雨，windy风，cloudy多云。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'dd69f4af086f5f9e2237b4788de64259ebe933f852d170720a52342502f5248f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-02c7b7e71463', 'english', 2, 2, 'choice', '{"stem":"I can ___ a picture.","answer":0,"options":["draw","drink","eat","read"],"explanation":"draw a picture是画一幅画的意思。"}'::jsonb, 'builtin', 'can的表达', 'apply', array['功能表达']::text[], 'b1d875715e2aba05b7998429b975985736e148bbcf2171729823439e20161ac3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-0931ee103496', 'english', 2, 2, 'choice', '{"stem":"___ many books? (多少本书)","answer":0,"options":["How","What","Who","Where"],"explanation":"How many问数量。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '2a6678c44afac47a3c0d8a1144b120b3297ab1fd3f1e13fc1a979e4a09f4b1ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-09ea19192e8e', 'english', 2, 2, 'choice', '{"stem":"What do you like? 回答：","answer":0,"options":["I like milk.","I''m fine.","It''s a dog.","I can run."],"explanation":"问喜欢什么，回答喜欢的东西。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '8a9e2a4119c0a939c3edf1f5feb6f2fff435adaf09c4d4536dc019081b48f64c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-0ab5e838614e', 'english', 2, 1, 'choice', '{"stem":"“它是一只小鸭子”用英语怎么说？","answer":0,"options":["It is a small duck.","It is a duck small.","It small duck.","It is small duck."],"explanation":"形容词在名词前，且要有a。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'a288e658af4d3ace45821c38aff09ae838a82c2a07b78a297d9dfc39c8fb29f3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-0ccf07d0c591', 'english', 2, 2, 'fill', '{"stem":"You ___ my good friend. (是)","answer":"are","explanation":"You are ..."}'::jsonb, 'builtin', '简单问答', 'apply', array['句型运用']::text[], '38620342709ba764b84f6898302e0f65eb2e862dad033b29f3c24a0d1af9eb50', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-0d46131945a9', 'english', 2, 1, 'fill', '{"stem":"The sun is b___. (明亮的)","answer":"right","explanation":"bright明亮的，缺right。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'abed9803cfc67222238d46bc08859bec4b4360dbd557dee1f71ddcc17bb1da53', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-10b6321e79f4', 'english', 2, 2, 'match', '{"left":["Hello","How are you?","Goodbye","Thank you"],"stem":"把问候语和相应的回答连起来","right":["Bye","You''re welcome.","I''m fine.","Hi"],"matches":[[0,3],[1,2],[2,0],[3,1]],"explanation":"Hello/Hi，How are you?/I''m fine.，Goodbye/Bye，Thank you/You''re welcome."}'::jsonb, 'builtin', '简单问答', 'apply', array['情境交际']::text[], '700e14d667420bac1a86f7ebb2a4fbc9c76012f18f24d0747ac6abfaab2adcd5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-10c9b3359f00', 'english', 2, 2, 'match', '{"left":["What color is it?","How are you?","What''s this?","Goodbye"],"stem":"把问句和答句连起来","right":["I''m fine.","It''s a book.","It''s red.","Bye"],"matches":[[0,2],[1,0],[2,1],[3,3]],"explanation":"问颜色答It''s red.，问身体答I''m fine.，问物品答It''s a book.，再见答Bye。"}'::jsonb, 'builtin', '简单问答', 'apply', array['情境交际']::text[], '8e64f8a2fa2679906f112c5b08ab47642d8937c2b79b0fd68d0e0c59aef74802', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-117d2eb4284b', 'english', 2, 2, 'fill', '{"stem":"They ___ my friends. (是)","answer":"are","explanation":"They are复数。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '903924731cc8f64f82caecb408f5f6c06c36da3cda74ba04885568267344cedd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-136e9cec5028', 'english', 2, 2, 'choice', '{"stem":"I have ___ orange.","answer":0,"options":["an","a","the","/"],"explanation":"orange元音开头，用an。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '02d5be122540bad2321feb572abc5223eb5dc78d9bb8feb90c4a85996fc74107', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-14397c737184', 'english', 2, 1, 'fill', '{"stem":"I see a ___ (鸭子).","answer":"duck","explanation":"鸭子duck。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], 'c2cdf86dccd68649537ffc630d7783a204b46d16b54111fada8f774544168746', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1645890fbe1e', 'english', 2, 2, 'choice', '{"stem":"What ___ you like?","answer":0,"options":["do","are","is","can"],"explanation":"What do you like? 你喜欢什么？"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '69d06450dbae05523c250cc8f5da3cd8f3633f0c528746c8732a397cd2d8f68c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-18958dd32af0', 'english', 2, 2, 'choice', '{"stem":"Can you dance? 回答：","answer":0,"options":["Yes, I can.","Yes, I do.","Yes, I am.","No, I can."],"explanation":"can问can答，肯定Yes, I can."}'::jsonb, 'builtin', 'can的表达', 'apply', array['功能表达']::text[], '5247202d4b1315813770a18639ebfeee5c9c44b2f6aac07e44bb4766cada56a1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1a5a7ddf9b51', 'english', 2, 2, 'choice', '{"stem":"What animal is it? 回答：","answer":0,"options":["It''s a tiger.","It''s red.","I like it.","Yes."],"explanation":"问动物，回答It''s a ..."}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '3d8f82bbc6c631f420c4515764c4b0a30e2e2deebceccc9e5f8080b6744d692d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1af9786660cc', 'english', 2, 1, 'choice', '{"stem":"字母G的小写是？","answer":0,"options":["g","q","p","j"],"explanation":"G的小写是g。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'ec1a3c124b721fde57f2a59158cbec89724fec0c16372daf552aab7622b4cda9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1c1ae6445818', 'english', 2, 1, 'choice', '{"stem":"“紫色”的英文是？","answer":0,"options":["purple","pink","brown","orange"],"explanation":"purple紫色。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'b753546372dae47e712c80643fbfba22d882320e10ea95ade0c6d8d94b68b1d7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1e9c82623bc6', 'english', 2, 2, 'choice', '{"stem":"The teacher says “摸摸你的脸”. Complete the command: Touch your ___.","answer":0,"options":["face","nose","ear","eye"],"explanation":"face脸。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达', '去相似修订']::text[], '62c4cafacb19bf7ca693cb877b978610b4507e9d2e4fda6a91ff514eae6907e7', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1f67d527968f', 'english', 2, 1, 'fill', '{"stem":"I can s___ a bird. (看见)","answer":"ee","explanation":"see看见，缺ee。"}'::jsonb, 'builtin', 'can的表达', 'understand', array['功能表达']::text[], '74b3bbd549864f41b99d80dab7acca09e9671655d791b40a10a2a68189f07b0c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1fc6cbf8729a', 'english', 2, 1, 'fill', '{"stem":"How old are you? I''m ___. (7岁)","answer":"seven","explanation":"七岁用seven，数字7的英文。"}'::jsonb, 'builtin', '简单问答', 'understand', array['情境交际']::text[], '0f6f38ebcc7e7cae299fe36412143f6f7396c8d4c14b06412e787789266f32a1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-1fe8ec282124', 'english', 2, 2, 'choice', '{"stem":"There ___ a pen on the desk.","answer":0,"options":["is","am","are","be"],"explanation":"There is + 单数物品。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '88c2146c16dc340bef78cc38c81cae9eee1d5e4fad4115cbdc870d7401e884b6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-21dcc3599820', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：Have some juice.","answer":0,"options":["Thank you.","No, I''m not.","I''m fine.","It''s juice."],"explanation":"请喝果汁，回答谢谢。"}'::jsonb, 'builtin', 'like与have', 'reason', array['功能表达']::text[], '2396a85bd5c13095875d76a5f60f0b51facbf96cb1c80c12b609a2e50ae4f899', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-223a2cfb0b6f', 'english', 2, 1, 'choice', '{"stem":"“绵羊”用英语怎么说？","answer":0,"options":["sheep","ship","goat","lamb"],"explanation":"sheep绵羊。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '8eb0936d0fe4b69aa1c1764a0b8b9184b36523b19dcb90d8d5c63b2e94de2944', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-2463011bf20d', 'english', 2, 1, 'choice', '{"stem":"“猴子”用英语怎么说？","answer":0,"options":["monkey","donkey","tiger","lion"],"explanation":"monkey猴子。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '571fa8b8e56b4b1e2b9f9496da97db717b4f9f6ba66a07f8374fd7246f884cbe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-260f05e0efe1', 'english', 2, 1, 'match', '{"left":["open","close","sit","stand"],"stem":"把英文和中文意思连起来","right":["关","开","站","坐"],"matches":[[0,1],[1,0],[2,3],[3,2]],"explanation":"open开，close关，sit坐，stand站。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], 'f636830dcd82ed2d6f75dfeacf8581859743ff1a0ef957f30ccbdbe9bc2d1ce6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-2813170675ce', 'english', 2, 1, 'choice', '{"stem":"“她是我的老师”用英语怎么说？","answer":0,"options":["She is my teacher.","He is my teacher.","I am a teacher.","She is a teacher."],"explanation":"她是女性，用She，我的老师my teacher。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '592786bf7ebb541a95a4864fffed344a4bf9884a3720bded49367d63656de624', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-28bcf95d00bb', 'english', 2, 1, 'choice', '{"stem":"“熊猫”用英语怎么说？","answer":0,"options":["panda","tiger","lion","bear"],"explanation":"panda熊猫。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '1949bab6f3a6b8281579553ba4707ee4ad70d7b438f8762a49b20c2f1398c190', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-297df0dee4ee', 'english', 2, 1, 'choice', '{"stem":"“我喜欢蓝色”用英语怎么说？","answer":0,"options":["I like blue.","I like blue color.","I like a blue.","I am like blue."],"explanation":"I like blue."}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], 'f7a2572580a776a4b9174fdcf14248f713c6ae22a9e25df268fa40ba95febab5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-2bd7d610c962', 'english', 2, 2, 'fill', '{"stem":"It ___ a funny monkey. (是)","answer":"is","explanation":"It is ..."}'::jsonb, 'builtin', '简单问答', 'apply', array['句型运用']::text[], 'aa496d50f28da1e0fb110e3e6fd04073ee09b83d607a90e57a3f1f41dbfc08e0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-2c2f7e5242d2', 'english', 2, 1, 'choice', '{"stem":"“粉色”的英文是？","answer":0,"options":["pink","purple","brown","orange"],"explanation":"pink粉色。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '40ba787dbe48b0b0b3aa3515cf97936bff576839a0735ee6b67be56c61d9e951', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-2c63cf5cf55e', 'english', 2, 1, 'choice', '{"stem":"字母N的小写是？","answer":0,"options":["n","m","h","u"],"explanation":"N小写n。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'a8e523e6ab1703f7dc94a8433222a7865789daa702756311c8da5927c653be2a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-2cbbbd36d2ff', 'english', 2, 1, 'choice', '{"stem":"字母Q的小写是？","answer":0,"options":["q","p","g","d"],"explanation":"Q小写q。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'f725d0ff8c77477f985c16c85c78c3c0be353134e06c53b3014b22de544314f0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-2ebaa96adba4', 'english', 2, 2, 'match', '{"left":["Happy birthday!","Happy New Year!","Merry Christmas!","Have some cake."],"stem":"把句子和场景连起来","right":["新年快乐","圣诞快乐","吃些蛋糕吧","生日快乐"],"matches":[[0,3],[1,0],[2,1],[3,2]],"explanation":"Happy birthday生日快乐，New Year新年，Christmas圣诞，Have some cake吃蛋糕。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '46685470cdc5915b90143844a8e469221779845335c404b181c86984878e4797', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-3093e949f831', 'english', 2, 3, 'choice', '{"stem":"选出不同类的单词：","answer":0,"options":["hello","morning","afternoon","evening"],"explanation":"hello是招呼，其它是时间。"}'::jsonb, 'builtin', '生活对话', 'reason', array['日常交际']::text[], '5ac5365ea5281979cb5f90934e70d45cf438af4ab4e9f9e36df61bde9a2b5558', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-31015ee7dc35', 'english', 2, 2, 'fill', '{"stem":"This ___ a big tree. (是)","answer":"is","explanation":"This is ..."}'::jsonb, 'builtin', '简单问答', 'apply', array['句型运用']::text[], '0d3c8dd1f8532edaedfd9c60cff2eef1046a1e90bffae91a1dd973b207ff4836', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-34da37bb8c2b', 'english', 2, 1, 'fill', '{"stem":"C___ the door, please. (关上门)","answer":"lose","explanation":"Close关，缺lose。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], '1950dd1dcce3005fe9520eff902c78bf92a11ab31bbb12a1a814f736294bfbc5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-34eb573cf464', 'english', 2, 2, 'choice', '{"stem":"You want to point to your nose. Complete: Touch your ___.","answer":0,"options":["nose","head","ear","eye"],"explanation":"nose鼻子。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达', '去相似修订']::text[], 'ac8e1fe885514cfabcbd99334f345461303e5a2b63454ea2488524d0b43e239a', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-36454f4d870e', 'english', 2, 1, 'choice', '{"stem":"晚上睡觉前，你应该对妈妈说：","answer":0,"options":["Good night.","Good morning.","Goodbye.","Hello."],"explanation":"Good night.晚安。"}'::jsonb, 'builtin', '生活对话', 'understand', array['日常交际']::text[], '51b6c1e148c9f88821ef1d4558e8ca8df61a44cc47b08b39b7fbc2fd7052892f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-37a214367f8c', 'english', 2, 1, 'choice', '{"stem":"你想知道别人叫什么名字，应该问：","answer":0,"options":["What''s your name?","How are you?","How old are you?","Where are you?"],"explanation":"What''s your name?问名字。"}'::jsonb, 'builtin', '简单问答', 'understand', array['情境交际']::text[], '02704f65aabbbb8f20f3ec795859a2d935cdb00200cb45ddcc20348441f6eac2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-382fb2d5340c', 'english', 2, 2, 'fill', '{"stem":"We ___ happy today. (是)","answer":"are","explanation":"We are复数。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '1f66f06d48e23e602cc599f3478fde590156fb554a04bbc24d8133b2b572ce6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-383f9dfc5ac7', 'english', 2, 1, 'choice', '{"stem":"This ___ my dog.","answer":0,"options":["is","am","are","be"],"explanation":"This is ..."}'::jsonb, 'builtin', '简单问答', 'understand', array['句型运用']::text[], '24500d4b7f7e2c9a70ce1d77aaf37f374c9326430717e5b4dd3abb4d7851d69e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-3aed3ac1c965', 'english', 2, 1, 'choice', '{"stem":"“我会画画”用英语怎么说？","answer":1,"options":["I can paint.","I can draw.","I can sing.","I am draw."],"explanation":"draw画画。"}'::jsonb, 'builtin', 'can的表达', 'understand', array['功能表达']::text[], '2ec6c8b96e63c5086d2e70ad3bae3c72bc77cabeb78d0b30ceafb9461bb278aa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-3ba912170484', 'english', 2, 2, 'choice', '{"stem":"I ___ a new book.","answer":1,"options":["has","have","am","is"],"explanation":"I have 我有。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '8b39c35375caeaaa45d3eb4916c52d835d5e842f8d4fffd2cefc9f3443eb5072', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-3bfa171681bf', 'english', 2, 2, 'choice', '{"stem":"选出不同类的一项：","answer":1,"options":["milk","bread","juice","water"],"explanation":"bread面包，其他是饮品。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达']::text[], 'ecf5439be59609f1f0490d6bb1cdb5bf7d96f4ef1c0695d4e577abdceac7403b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-3cc21c6792b8', 'english', 2, 1, 'choice', '{"stem":"It ___ a big ball.","answer":1,"options":["am","is","are","be"],"explanation":"It is 固定搭配。"}'::jsonb, 'builtin', '简单问答', 'understand', array['句型运用']::text[], '55714a12e48d8b73dc30b237371139ea67f175a586c046f2619e3953aaed9cd5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-3d6208ad4db5', 'english', 2, 3, 'choice', '{"stem":"选出不同类的单词：","answer":1,"options":["mother","teacher","father","sister"],"explanation":"teacher职业，其他是家庭成员。"}'::jsonb, 'builtin', '日常名词', 'reason', array['主题词汇']::text[], 'b3802b969211c54bf698938f0b43226a1ec4fe73a301446c9ecda99738ed3b21', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-3e49a1acb9bb', 'english', 2, 1, 'choice', '{"stem":"Look ___ me.","answer":1,"options":["on","at","in","to"],"explanation":"Look at ... 看……。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], '519b3a8e1070d9c653df8d87227612b1c0ce2501e452fbdfd7c7b6db40dd9e2a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-4060b0174b7d', 'english', 2, 1, 'choice', '{"stem":"“我有一本书”用英语怎么说？","answer":1,"options":["I have a pen.","I have a book.","I see a book.","I like books."],"explanation":"have是有，book是书，I have a book.我有一本书。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], 'e536ddc7b4fb653b75dfb6e28a108af82a037169247c1a3e923d5b84e1b3325f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-41388f6807a9', 'english', 2, 2, 'choice', '{"stem":"I can ___ a song.","answer":1,"options":["drink","sing","eat","run"],"explanation":"sing a song 唱歌。"}'::jsonb, 'builtin', 'can的表达', 'apply', array['功能表达']::text[], 'b6e03572bc9a6b1c35e740d958b26b919a533aef580a1601d7eac139541784f8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-43fb6107bf09', 'english', 2, 2, 'fill', '{"stem":"We ___ good friends. (是)","answer":"are","explanation":"We are复数。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], 'fa506e2277d8d2798da9db36a62e62e76f1801a9c210e173b2b2edee021e36ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-442d24dd3b88', 'english', 2, 1, 'choice', '{"stem":"“它在桌子上”用英语怎么说？","answer":1,"options":["It is under the table.","It is on the table.","It is in the table.","It is a table."],"explanation":"on在...上面。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'e05b4a85e9e89cc1becb607e16edb284539ad0a4c5e22426b039ea0c6fac7f97', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-455c55cba7ce', 'english', 2, 1, 'choice', '{"stem":"“鱼”用英语怎么说？","answer":1,"options":["bird","fish","cat","dog"],"explanation":"fish是鱼。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'a386e5483a5654f3d4f37af15c59efd5ffc513d3e07dfdf3fbc676c1ed1b629f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-479816af1a96', 'english', 2, 1, 'fill', '{"stem":"A bird is in the tree. Complete: I see a ___.","answer":"bird","explanation":"鸟bird。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达', '去相似修订']::text[], 'af40e58b304650a2afa18917f6778cbe2d8bee5606acc6435d925b600a966ffb', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-48560eb72032', 'english', 2, 2, 'choice', '{"stem":"Wave your ___. （挥挥手臂）","answer":1,"options":["legs","arms","feet","head"],"explanation":"arms手臂。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达']::text[], '01cb942851d79408b153dd4aa22e28ac1593b1ed763786fb5047ff1df135a9f1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-48a6a9862859', 'english', 2, 1, 'choice', '{"stem":"I ___ a student.","answer":1,"options":["is","am","are","be"],"explanation":"I am 我是。"}'::jsonb, 'builtin', '简单问答', 'understand', array['句型运用']::text[], 'ed3ca3cf2bb21bc2e3a1203e06a32caadc201f0512cbcc8b2a0d12ebf10c8f41', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-4b2d39ee86e3', 'english', 2, 2, 'choice', '{"stem":"Please stop talking. Complete the instruction: Close your ___.","answer":1,"options":["nose","mouth","eyes","ears"],"explanation":"mouth嘴。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达', '去相似修订']::text[], '7ee5e8d5f0180cde9e28f3d980c32b5c4063c586272f0c82266ec173cd06256b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-4d05101ee0ca', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：Nice to meet you.","answer":1,"options":["How are you?","Nice to meet you, too.","Goodbye.","Thank you."],"explanation":"Nice to meet you.回答Nice to meet you, too."}'::jsonb, 'builtin', '简单问答', 'reason', array['情境交际']::text[], '1abf4df7b0730d0651d10f8862d5097c92d4e1ea259adf1852ee762b3ab51b3b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-4f92842d8e4d', 'english', 2, 1, 'choice', '{"stem":"“粉色”的英文是？","answer":1,"options":["purple","pink","brown","yellow"],"explanation":"pink粉色。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '1afb15e6703f01f56bf7964e8d9c66df68300c595db130e5eb8781b3588a3370', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-505203a2d386', 'english', 2, 1, 'match', '{"left":["mother","father","sister","brother"],"stem":"把英文和中文意思连起来","right":["父亲","兄弟","母亲","姐妹"],"matches":[[0,2],[1,0],[2,3],[3,1]],"explanation":"mother母亲，father父亲，sister姐妹，brother兄弟。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '5b09962cc3ad79b04f95d4d22935b75162694fc6b05c289abd9e653ebe628fa5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-50f7588da844', 'english', 2, 1, 'choice', '{"stem":"“黑色”的英文是？","answer":1,"options":["white","black","red","pink"],"explanation":"black是黑色。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'e4d274b70fdfae4b65e11a5d5d40f7f4e2fad661c22682bb0736913825e7854c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-527b5de03156', 'english', 2, 1, 'choice', '{"stem":"“蓝色”的英文是？","answer":1,"options":["red","blue","yellow","green"],"explanation":"blue是蓝色。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'bb265b1f91ee8c3a94e8489501dcd7a4a5235f73d17e4cc5c2425a1342e07656', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-55ca8aff3a82', 'english', 2, 1, 'choice', '{"stem":"“猫”用英语怎么说？","answer":1,"options":["dog","cat","bird","fish"],"explanation":"cat是猫，dog是狗，bird是鸟，fish是鱼。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '98ced09b2dde4f98ea775a2a0ebca53eaadc80efa198b3a6ea7f8318dc97e8df', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-561739779961', 'english', 2, 1, 'match', '{"left":["morning","afternoon","evening","night"],"stem":"把英文和中文意思连起来","right":["晚上","下午","早上","夜晚"],"matches":[[0,2],[1,1],[2,3],[3,0]],"explanation":"morning早上，afternoon下午，evening傍晚，night夜晚。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '5434447b439f9b82a73433f61b6f521c7471fb6ab4cb5041ac89d2e24990deb5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-56325eb71f1b', 'english', 2, 1, 'choice', '{"stem":"“兔子”用英语怎么说？","answer":1,"options":["cat","rabbit","dog","fish"],"explanation":"rabbit兔子。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'f6722a29c02cd82ab263ad6c244fa9307d3e5237cbb7822dd0f7f247d99dd97e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-5b2e71cd89ee', 'english', 2, 1, 'choice', '{"stem":"“棕色”的英文是？","answer":1,"options":["black","brown","blue","green"],"explanation":"brown棕色。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], 'cfef8f0cfda4fff302174553263300ba8d05fa0288261c2573601fc91c981c9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-5b6181ca56ea', 'english', 2, 1, 'choice', '{"stem":"字母R的小写是？","answer":1,"options":["v","r","n","m"],"explanation":"R小写r。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '267ab03671cd6a6ced6394e40c1fef7dd41af88ec132cbd7e4c300706bf905d0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-5dd8c6c8f2bd', 'english', 2, 1, 'match', '{"left":["apple","banana","orange","pear"],"stem":"把英文和中文意思连起来","right":["香蕉","梨","苹果","橙子"],"matches":[[0,2],[1,0],[2,3],[3,1]],"explanation":"apple苹果，banana香蕉，orange橙子，pear梨。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '55210b23e75e64ebd98482f6da4d29bda1e9584ed2c557446f7a3df8c074c1db', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-6059978c9859', 'english', 2, 2, 'choice', '{"stem":"What color is the snow? 回答：","answer":1,"options":["It''s cold.","It''s white.","It''s a snow.","I like snow."],"explanation":"雪是白色的。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], 'af5ebf4275dd329955f0b38efb1afa8b354f800d3a1b92ba8901b5d006d6a21e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-6241fce9aaf1', 'english', 2, 1, 'choice', '{"stem":"如果你想说“你好”，应该说：","answer":1,"options":["Goodbye","Hello","Sorry","Thank you"],"explanation":"Hello是你好，Goodbye是再见。"}'::jsonb, 'builtin', '生活对话', 'understand', array['日常交际']::text[], '12401f8966f940c2750f682efb5030c7abd65d31a72448993d23a43a7b24a605', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-627f38b80061', 'english', 2, 1, 'choice', '{"stem":"字母T的小写是？","answer":1,"options":["l","t","i","f"],"explanation":"T小写t。"}'::jsonb, 'builtin', '日常名词', 'understand', array['主题词汇']::text[], '149959fd53fd078681044a5414a78d5c67907c53cd0380774cfd30bc14eeb5e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-67520a592550', 'english', 2, 2, 'choice', '{"stem":"There ___ three books on the desk.","answer":1,"options":["is","are","am","be"],"explanation":"复数books用are。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '9d1c55db32fef63420dec13cc06d5a79aa1fe8e10495b8af3d69bd74aa552ae6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-6c9626874d27', 'english', 2, 1, 'choice', '{"stem":"当你想说“再见”时，可以说：","answer":1,"options":["Hello","Bye","Hi","Sorry"],"explanation":"Bye或Goodbye是再见。"}'::jsonb, 'builtin', '生活对话', 'understand', array['日常交际']::text[], '599ca30fe5d8614b3a311f485c1eb8c5dc22bb617f125636ce689f1a5ab79be1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-6e48571880eb', 'english', 2, 2, 'match', '{"left":["Stand up.","Sit down.","Open the door.","Close the window."],"stem":"把指令和图片连起来（用中文描述）","right":["站起来","坐下","开门","关窗"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"一一对应。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达']::text[], '576bff4e5cbd021a221b5a2afb7a43999c3e938d313f2a8482e90c669bf3ee68', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-6efa755139d2', 'english', 2, 1, 'choice', '{"stem":"你邀请朋友一起玩，可以说：","answer":2,"options":["Goodbye.","Thank you.","Let''s play!","Sorry."],"explanation":"Let''s play! 让我们一起玩！"}'::jsonb, 'builtin', '生活对话', 'understand', array['日常交际']::text[], 'e71bfe16af5452e20af1922d8e2138f23a99c458c1b0197c57f10a7a61282878', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-76d1d034731b', 'english', 2, 1, 'fill', '{"stem":"My pet says “meow”. Complete: I have a ___.","answer":"cat","explanation":"猫cat。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达', '去相似修订']::text[], '5ba0c46d166fd41c5927892c6028c31338e500bd2abf0dabf1195109c87bd082', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-780ce1d770a3', 'english', 2, 2, 'choice', '{"stem":"Touch your ___. （指指你的嘴）","answer":2,"options":["ear","eye","mouth","nose"],"explanation":"mouth嘴。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达']::text[], '222cd7d401f436ec22060506f90c7a3ebfe05d43d43cf6c3509f26f690ec48f8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-7c3ab81ed02e', 'english', 2, 1, 'choice', '{"stem":"别人帮助了你，你应该说：","answer":2,"options":["Sorry.","Hello.","Thank you.","Goodbye."],"explanation":"Thank you.谢谢。"}'::jsonb, 'builtin', '生活对话', 'understand', array['日常交际']::text[], '43d45c81dc8f8c5b87ebe8eb864da2ad32b78b64f0d4e4d588d10068f9621b6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-827deafe11ec', 'english', 2, 1, 'choice', '{"stem":"___ you happy? Yes, I am.","answer":2,"options":["Is","Am","Are","Do"],"explanation":"Are you ...? 回答Yes, I am."}'::jsonb, 'builtin', '简单问答', 'understand', array['情境交际']::text[], '449c3cb80cafe752f069a814fbbd122635ce7f575676b457987b7b44863637e4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-888543daee57', 'english', 2, 1, 'choice', '{"stem":"Look ___ the cat.","answer":2,"options":["in","on","at","to"],"explanation":"look at看。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], 'b2bc283fd47619515c6a49016869f99c67a093138abed8bd73681a6b3689ae86', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-8e889b567e42', 'english', 2, 2, 'fill', '{"stem":"These ___ my books. (是)","answer":"are","explanation":"These are复数。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '3eff5781bb0f9cbbccf179a62da5f68fdd80de89cc7cb0dcd1e875e7f75b14f9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-91cfce815e80', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：Good morning.","answer":2,"options":["Good afternoon.","Good evening.","Good morning.","Goodbye."],"explanation":"早上好回答早上好。"}'::jsonb, 'builtin', '简单问答', 'reason', array['情境交际']::text[], '8cb104083ebc415271b6a9a88b1551550bdf5b86f4fe5ad27f2b0c36feb05bed', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-9206c3150ceb', 'english', 2, 1, 'choice', '{"stem":"“我会跳舞”用英语怎么说？","answer":2,"options":["I can sing.","I am dance.","I can dance.","I like dance."],"explanation":"can+动词原形。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], 'ea36c5b58f02accb37e8f384940055a10c823156f43e0d1a1673d8c263412ec9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-931472c9dc17', 'english', 2, 3, 'choice', '{"stem":"选出不同类的单词：","answer":2,"options":["run","jump","red","swim"],"explanation":"run跑、jump跳、swim游泳都是动作，red红色是颜色。"}'::jsonb, 'builtin', '常用动作', 'reason', array['动作表达']::text[], '3969b42c638ce64dcd6ad57de38cad62b1fadf8b1f04c93d398775776daaf93b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-93dede6c6727', 'english', 2, 1, 'fill', '{"stem":"I like ___ (苹果).","answer":"apples","explanation":"苹果apples，喜欢复数。"}'::jsonb, 'builtin', '单数与复数', 'understand', array['词形运用']::text[], '728b3da36c256bd3a6427e7719b337aeb5ebf60066d48cd5ebd4f08c034e2d0b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-9a3c011b7ff8', 'english', 2, 1, 'fill', '{"stem":"My pet says “woof”. Complete: I have a ___.","answer":"dog","explanation":"狗dog。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达', '去相似修订']::text[], 'cdc07c754220cc1259c92a1153cae600b563eb81cfc55620fb972937bebe3af3', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-9b33f8bbdee7', 'english', 2, 1, 'fill', '{"stem":"I like to e___ apples. (吃)","answer":"at","explanation":"eat吃，缺at。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], 'a9cbda0270ee44cabef0dadb198fdd4938e802714017fbc8c3baa3c9159a11e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-9d193140f328', 'english', 2, 1, 'choice', '{"stem":"当你想请别人坐下，可以说：","answer":2,"options":["Stand up.","Open the door.","Sit down.","Come in."],"explanation":"Sit down.坐下。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], '926bd81583747d0448cac4ebf9536b46ab3ca8dad72a0d8ad0956d492e6b91d1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-9fe8ec6e25c6', 'english', 2, 3, 'choice', '{"stem":"请选择正确的句子：","answer":2,"options":["He like apples.","He liking apples.","He likes apples.","He is like apples."],"explanation":"第三人称单数用likes。"}'::jsonb, 'builtin', '单数与复数', 'reason', array['词形运用']::text[], '8eaf50f6d2a9edc9be8c8ae63d1819ef8d5d026e07419e82f1b493da77cfccba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-a682bb7f0a1a', 'english', 2, 1, 'match', '{"left":["read","write","draw","sing"],"stem":"把英文和中文意思连起来","right":["写","唱","画","读"],"matches":[[0,3],[1,0],[2,2],[3,1]],"explanation":"read读，write写，draw画，sing唱。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], '7f7dbdf5dd87ad6dc2caf281796e6ccfb6bcce828389b725864bffc3a508ce3b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-a6beb7612039', 'english', 2, 1, 'match', '{"left":["rice","noodles","bread","cake"],"stem":"把英文和中文意思连起来","right":["米饭","蛋糕","面条","面包"],"matches":[[0,0],[1,2],[2,3],[3,1]],"explanation":"rice米饭，noodles面条，bread面包，cake蛋糕。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], '6f022164b32ae7322a0e082d2846ae4c9891634a1a368056a5812c29c41b6268', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-a800edc385b8', 'english', 2, 2, 'choice', '{"stem":"Where is my bag? 回答：","answer":2,"options":["It''s a bag.","I have a bag.","It''s on the bed.","It''s big."],"explanation":"问位置，答方位。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], 'd8215b3d3d731965373f72c83b3cad73e582b6ce3ba04ff023ce2984aa3e0680', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-ae089ba23b61', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：Let''s go to the zoo.","answer":2,"options":["Thank you.","I''m fine.","Great!","Goodbye."],"explanation":"建议，回答Great/OK。"}'::jsonb, 'builtin', '简单问答', 'reason', array['情境交际']::text[], '8a5910963bd37b667e4c6ff5d7393328e4454a57d2d9b95312a36f85696c333c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-ae13273176f2', 'english', 2, 1, 'fill', '{"stem":"There is a pig on the farm. Complete: I see a ___.","answer":"pig","explanation":"猪pig。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达', '去相似修订']::text[], 'bede9b8e5d3fb480e08edf5f16d73264d64a532236cfbb4a593aebb2dba127f2', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-b16fe68eda95', 'english', 2, 1, 'fill', '{"stem":"I can j___ high. (跳得高)","answer":"ump","explanation":"jump跳，缺ump。"}'::jsonb, 'builtin', 'can的表达', 'understand', array['功能表达']::text[], '24ddaedf541b085208fabc71540e2eaf65f12c729890bc6245dd395ffd3954ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-b20a722eca64', 'english', 2, 3, 'choice', '{"stem":"选出不同类的单词：","answer":2,"options":["happy","sad","run","big"],"explanation":"run跑是动作，其它是形容词。"}'::jsonb, 'builtin', '常用动作', 'reason', array['动作表达']::text[], '4eeb6888f6ae1979f997505e78906376305abbe5926ca30be57623a6ad0f1ef6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-b243de51e6f4', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：How many crayons?","answer":2,"options":["I''m ten.","It''s ten.","Ten.","Yes, ten."],"explanation":"问数量直接数字回答。"}'::jsonb, 'builtin', '单数与复数', 'reason', array['词形运用']::text[], 'f70050dc91abeb08dc5903c51910162561bdf75e72afd96bc9f5ceae09f94c66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-b67482ede1fc', 'english', 2, 2, 'choice', '{"stem":"What''s this? 回答：","answer":2,"options":["I''m fine.","My name is Amy.","It''s a ruler.","I like it."],"explanation":"问这是什么，回答It''s a ..."}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '870e4445c2d5356e7410c7c2cce0bdd6d7c0305599e47da7660ac88f41c99337', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-b6777db856b5', 'english', 2, 2, 'choice', '{"stem":"Do you like cats? 肯定回答：","answer":2,"options":["No, I don''t.","Yes, I am.","Yes, I do.","No, I can''t."],"explanation":"Do问do答，肯定Yes, I do."}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], 'cb878cbddf30f64ef897b98b678451e9694d9de2fb88e4b9094f64fe5854e448', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-b8bf6387004f', 'english', 2, 3, 'choice', '{"stem":"选出不同类的单词：","answer":2,"options":["car","bus","run","bike"],"explanation":"run跑是动作，其他是交通工具。"}'::jsonb, 'builtin', '常用动作', 'reason', array['动作表达']::text[], 'a476574286d56c9f402836933ac30d64d40b49d4b27fd67a82851dc91b6c4e9a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-bb0067e9e488', 'english', 2, 1, 'match', '{"left":["walk","run","jump","swim"],"stem":"把英文和中文意思连起来","right":["跑","游泳","走","跳"],"matches":[[0,2],[1,0],[2,3],[3,1]],"explanation":"walk走，run跑，jump跳，swim游泳。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], '049a5322e0d3befca2bb0375dab78195add0c81eaafca1574da62d076f81d49c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-bb3bc099b0cd', 'english', 2, 2, 'choice', '{"stem":"Can you swim? 否定回答：","answer":2,"options":["No, I don''t.","No, I am not.","No, I can''t.","Yes, I can."],"explanation":"can问can答，否定No, I can''t."}'::jsonb, 'builtin', 'can的表达', 'apply', array['功能表达']::text[], '5e3541bd43274a25958c6b9619b2c6c1bb16bf04099721f22b9cf64b24ad4468', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-bd3b77505db3', 'english', 2, 1, 'choice', '{"stem":"They ___ my sisters.","answer":2,"options":["am","is","are","be"],"explanation":"复数用are。"}'::jsonb, 'builtin', '单数与复数', 'understand', array['词形运用']::text[], '6f2edfeb53a4145463e24906050432dfde4a116d1b26794753620aa5566441f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-bd8c9e491631', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：Let''s go to school.","answer":2,"options":["Thank you.","Goodbye.","OK!","Sorry."],"explanation":"Let''s ... 建议，一般回答OK/Great。"}'::jsonb, 'builtin', '简单问答', 'reason', array['情境交际']::text[], 'db9c8276ee1855fe4bf3e14622a818a709b916dd4a7cc26a724210edc87d51df', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-bdded1c24811', 'english', 2, 2, 'choice', '{"stem":"I can see two ___.","answer":2,"options":["bird","birdes","birds","a bird"],"explanation":"two后面用复数birds。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '52c12981fc46d5250321b50afc9baa6259050da3b974331773af062ac4c63171', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-bfc73989e474', 'english', 2, 1, 'choice', '{"stem":"“我有两只猫”用英语怎么说？","answer":2,"options":["I have two cat.","I am two cats.","I have two cats.","I like cats."],"explanation":"两只猫要用复数cats。"}'::jsonb, 'builtin', '单数与复数', 'understand', array['词形运用']::text[], 'fe21bd7a3b79dc4899d2d10f532afeb44401e13fe8d7f64108e38106e621b94c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-c368717a699f', 'english', 2, 2, 'choice', '{"stem":"The ducks ___ swimming.","answer":2,"options":["is","am","are","be"],"explanation":"ducks复数用are。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], 'd878e3d02b0c2767a4a8fdd71060d527f37e21b8d08276bf95b58917e7316ac9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-c425d7b3c6d2', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：Here you are.","answer":2,"options":["Yes.","I''m fine.","Thank you.","Goodbye."],"explanation":"Here you are.给你，回答谢谢。"}'::jsonb, 'builtin', '简单问答', 'reason', array['情境交际']::text[], '4120cd09f7c510c3d9f35ae8c2cb3426197117db055c4a34a1b8ba38d0e7c9eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-c87f68e9e0c4', 'english', 2, 2, 'choice', '{"stem":"It is time to sleep. Complete the instruction: Close your ___.","answer":2,"options":["ears","mouth","eyes","nose"],"explanation":"eyes眼睛。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达', '去相似修订']::text[], 'd8748764a03e9f78557a975401fcc4853248a840f58aa37b0c1d79729c3fabb7', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-c9410aeed39d', 'english', 2, 2, 'fill', '{"stem":"They ___ ducks. (是)","answer":"are","explanation":"They are复数。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], 'd85f7c064310680285780bcde4ad526f7d1f976b300265e8cd5bb1faef9a2424', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-cb457e4b3d5a', 'english', 2, 2, 'choice', '{"stem":"Do you like milk? 否定回答：","answer":2,"options":["No, I do.","Yes, I don''t.","No, I don''t.","No, I am not."],"explanation":"Do问do答，否定No, I don''t."}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '0b5525b6d91ccf2298c6b1351658f0ca905779555cb0987fe03316f9133672b0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-d0238047c907', 'english', 2, 2, 'choice', '{"stem":"Stamp your ___. （跺跺脚）","answer":3,"options":["hands","head","legs","feet"],"explanation":"feet脚。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达']::text[], '7bf833d5b86860577432beedd8a99ede972fee3d54fb77b5e1274a37ecea0c0a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-d19d4efccc22', 'english', 2, 2, 'choice', '{"stem":"Clap your ___. （拍拍手）","answer":3,"options":["head","feet","legs","hands"],"explanation":"hands手。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达']::text[], '68e389543d37d95074f42784bcbca417a2d64549b3b0502ac97903fc4158ab77', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-d435556dce15', 'english', 2, 2, 'choice', '{"stem":"选出不同类的一项：","answer":3,"options":["run","swim","fly","apple"],"explanation":"apple是苹果，其它是动作。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达']::text[], 'bd572d42e40e116cf8edc1aec25c9d10c7a1f5b629d82728853457837734237f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-d4f02adf8c1d', 'english', 2, 1, 'fill', '{"stem":"I like to dr___ water. (喝水)","answer":"ink","explanation":"drink喝，缺ink。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], '03471eda67c003f0ab2210d2f8b8d1e9dd8c4fa55432e83d4abf9ed8efa54e18', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-d93fc23dcd42', 'english', 2, 2, 'choice', '{"stem":"___ is a red apple. (这是一个红苹果)","answer":3,"options":["That","These","Those","This"],"explanation":"This is 用于介绍近处的东西。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], '47c6e74823d72eb2dc14d1b8540f59f5034e4dfa0de5b3b146b2673795595e81', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-dc653b2f220a', 'english', 2, 1, 'choice', '{"stem":"Look ___ the blackboard.","answer":3,"options":["on","in","to","at"],"explanation":"look at看。"}'::jsonb, 'builtin', '常用动作', 'understand', array['动作表达']::text[], 'eca01867f9f3cbe39a13dee6632bf8a4bd9004ece1dcd13c0b3b109659047d48', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-deb44a878945', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：May I have a look?","answer":3,"options":["Thank you.","I''m fine.","Goodbye.","Sure. Here you are."],"explanation":"请求看东西，同意说Sure。"}'::jsonb, 'builtin', 'like与have', 'reason', array['功能表达']::text[], 'bbff263852813d270bdd81fcf6a459ea705b6c52a95e7e407696e407f174c876', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-df689ccf11b8', 'english', 2, 1, 'choice', '{"stem":"“那是一本书”用英语怎么说？","answer":3,"options":["This is a book.","It is a book.","I have a book.","That is a book."],"explanation":"That表示远指。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], 'd58bd24aed0d0987da12954e25be60bfd7013e321914498f55305a338b3cceab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-e3b4426c0095', 'english', 2, 1, 'choice', '{"stem":"“我喜欢小狗”用英语怎么说？","answer":3,"options":["I like dog.","I am like dogs.","I can dogs.","I like dogs."],"explanation":"喜欢狗用复数dogs。"}'::jsonb, 'builtin', '单数与复数', 'understand', array['词形运用']::text[], '9375b4ec6cbe3222507487990f5c896a7fc14d7d41fa5c87d0b6e045ae65b61a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-e3cd9cc150aa', 'english', 2, 1, 'choice', '{"stem":"___ you a boy? Yes, I am.","answer":3,"options":["Is","Am","Do","Are"],"explanation":"Are you...?"}'::jsonb, 'builtin', '简单问答', 'understand', array['情境交际']::text[], '906efdd492a394c4b6e9f85737a514ed70f689e4fcda799e6c793a336f5cfb75', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-e4e3ae301fad', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：How are you?","answer":3,"options":["How are you?","Goodbye.","Hello.","I''m fine, thank you."],"explanation":"别人问How are you?，通常回答I''m fine, thank you."}'::jsonb, 'builtin', '简单问答', 'reason', array['情境交际']::text[], 'fec750e3f0c6dbf32aaef61c02506db779b13feff9d60f5e57044808af36aaa9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-e526f96356c6', 'english', 2, 1, 'choice', '{"stem":"“我有一支铅笔”用英语怎么说？","answer":3,"options":["I have a pen.","I see a pencil.","I like pencils.","I have a pencil."],"explanation":"pencil铅笔，have有。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], '38254e8e250854a908c367b775d03fca71e67e78b3f57613b7eb8bc0fdaffe28', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-e5bc55ff0cb9', 'english', 2, 1, 'choice', '{"stem":"“她能唱歌”用英语怎么说？","answer":3,"options":["She can sings.","She is sing.","She likes sing.","She can sing."],"explanation":"can后面动词原形。"}'::jsonb, 'builtin', 'can的表达', 'understand', array['功能表达']::text[], '1f1a49f0c36afe5fb7824ae150ae4f155ec109384637b53192903be55f8d24e5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-e9fd8b8f26f6', 'english', 2, 2, 'choice', '{"stem":"___ you like pears? Yes, I do.","answer":3,"options":["Are","Is","Can","Do"],"explanation":"Do you like... 问喜欢。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '6000747fc6f22452479b0e4e83ed56557a4ba25de2278342098584e7a4c75c47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-ea2dbf746775', 'english', 2, 1, 'choice', '{"stem":"“我有一个苹果”用英语怎么说？","answer":3,"options":["I have a apple.","I have apple.","I like apple.","I have an apple."],"explanation":"apple元音开头用an。"}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], '95b3d30fb599b19ea78e4583de0f13ae4b59acdc0a1e906a3e82d4c9db0e4ca3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-eb887fe92858', 'english', 2, 1, 'choice', '{"stem":"“我八岁了”用英语怎么说？","answer":3,"options":["I am eight years.","I eight.","I have eight.","I am eight."],"explanation":"表达年龄：I am eight."}'::jsonb, 'builtin', 'like与have', 'understand', array['功能表达']::text[], 'ae78252bc071830083797ecbaf5230c6e0ed65a6e0e514af18048b0ecabeca45', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-ebff655f2e6e', 'english', 2, 2, 'choice', '{"stem":"Follow this classroom action: Touch your ___ (头).","answer":3,"options":["foot","hand","nose","head"],"explanation":"head是头，foot是脚，hand是手，nose是鼻子。"}'::jsonb, 'builtin', '常用动作', 'apply', array['动作表达', '去相似修订']::text[], 'f1f7bb1e722ddc11ce554396056bda192ad130fdff6c2e56a29f1b791056691b', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-ef50e5207ec7', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：Let''s paint.","answer":3,"options":["Goodbye.","I''m fine.","Thank you.","Great!"],"explanation":"Let''s建议，应答Great/OK。"}'::jsonb, 'builtin', '生活对话', 'reason', array['日常交际']::text[], '317e59990d4901cbe75e801fca99fb306d5a80ee862059ee65fc1d372ecdb914', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-efe70d2227d7', 'english', 2, 3, 'choice', '{"stem":"请选择正确的单词填空：I have two ___.","answer":3,"options":["foot","foots","feets","feet"],"explanation":"foot的复数是feet。"}'::jsonb, 'builtin', '单数与复数', 'reason', array['词形运用']::text[], '720f9e84e03b90d82d21fb9dcaf7ebd5b4eac52da304ae2a81ca8d2591fe57cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-f04d14e8d18b', 'english', 2, 3, 'choice', '{"stem":"选出不同类的单词：","answer":3,"options":["cake","bread","hot dog","milk"],"explanation":"milk饮品，其他是食物。"}'::jsonb, 'builtin', '常用动作', 'reason', array['动作表达']::text[], 'c5efc33a20623312cfc64ca57c6f08239fe2e49e73b4fa73b4ffe5d38d73ae85', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-f17ac79ff916', 'english', 2, 2, 'choice', '{"stem":"I have ___ eraser.","answer":3,"options":["a","the","/","an"],"explanation":"eraser元音开头，用an。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '144a77f0cff1cddc4e9c5a34510b019d3f2d5d429a999e6c9a0110946288a388', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-f3742975ae06', 'english', 2, 3, 'choice', '{"stem":"请选择正确的句子：","answer":3,"options":["She have a doll.","She haves a doll.","She is have a doll.","She has a doll."],"explanation":"第三人称单数用has。"}'::jsonb, 'builtin', '单数与复数', 'reason', array['词形运用']::text[], '30bbd4af8be43250daa58a2711f5afbe1e0bb63c10de99a0e951a9b25b98d859', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-f3febe6a30b2', 'english', 2, 1, 'choice', '{"stem":"This ___ my friend.","answer":3,"options":["am","are","be","is"],"explanation":"This is ... 这是固定句型，表示“这是……”。"}'::jsonb, 'builtin', '简单问答', 'understand', array['句型运用']::text[], '36101340b5b8b01b699d6749d1778d8fe66293e21bd4e04a0c4f198ec1a6c72c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-f68d4c80d969', 'english', 2, 2, 'choice', '{"stem":"There ___ a banana on the plate.","answer":3,"options":["am","are","be","is"],"explanation":"单数用is。"}'::jsonb, 'builtin', '单数与复数', 'apply', array['词形运用']::text[], 'c54813f36147cfdd82747735d40002a9567b16479be4e983fbb0f0cd99f1d613', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-f839c5ba108b', 'english', 2, 2, 'choice', '{"stem":"I like ___ apple.","answer":3,"options":["a","the","/","an"],"explanation":"apple是以元音音素开头的单词，用an。"}'::jsonb, 'builtin', 'like与have', 'apply', array['功能表达']::text[], '07d8b60022de18d2b3e4c50020dc3c13533dde52ded4594af99ea9473ef30e73', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-legacy-fb101e491a09', 'english', 2, 3, 'choice', '{"stem":"请选择正确的应答：How old are you?","answer":3,"options":["I''m fine.","It''s eight.","Eight.","I''m eight."],"explanation":"完整回答I''m eight."}'::jsonb, 'builtin', '简单问答', 'reason', array['情境交际']::text[], '8fe9efe1b6d2a6add146c458dbfedd7df22b2a8196605b8b27c988c39e94e10b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-english-short-text-001', 'english', 2, 3, 'choice', '{"stem":"Read: Amy has a red bag and a blue pencil. What is blue?","options":["The bag.","Amy.","The book.","The pencil."],"answer":3,"explanation":"The text says “a blue pencil”, so the pencil is blue."}'::jsonb, 'builtin', '短文信息', 'reason', array['阅读理解', '信息提取']::text[], '367046801f5fc4df41ee9ceb26063048abd2db94963a220a918450fd5fed2431', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-data-001', 'math', 2, 2, 'choice', '{"stem":"二（1）班喜欢的运动人数是：跳绳8人、踢球12人、跑步6人。喜欢哪项运动的人最多？","options":["踢球","跳绳","跑步","一样多"],"answer":0,"explanation":"比较8、12和6，12最大，所以喜欢踢球的人最多。"}'::jsonb, 'builtin', '数据分类', 'apply', array['数据分析', '生活情境']::text[], '8ba3cc7c266e8d5c020c17077c4548b13deac235eaef0625a55ec7122a40dc89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0144c9bdda2e', 'math', 2, 1, 'fill', '{"stem":"7 × 9 = ___","answer":"63","explanation":"七九六十三。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '672c96390d67aff8b2e7c6fc062f37355778f04ec4f54965079b0b16db129590', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-01c824c2640f', 'math', 2, 1, 'match', '{"left":["5×7","6×8","4×9","7×7"],"stem":"把算式和积连起来","right":["35","49","48","36"],"matches":[[0,0],[1,2],[2,3],[3,1]],"explanation":"5×7=35，6×8=48，4×9=36，7×7=49。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '3bb5f6f3115a3be29323e701a920740c5254f03f1a558b7840e8baf0f465ad97', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-03ca3b05ef78', 'math', 2, 1, 'choice', '{"stem":"9时整，钟面上时针和分针成什么角？","answer":0,"options":["直角","锐角","钝角","不是角"],"explanation":"9时整时针指9，分针指12，成直角。"}'::jsonb, 'builtin', '时间与人民币', 'understand', array['生活计量']::text[], 'bca764404a18eef1eb0197f43a1df273d9d5817c8ea46ae279ca000b3a2dde23', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-03f5c98c839f', 'math', 2, 2, 'match', '{"left":["早上7:00","中午12:00","下午4:30","晚上9:00"],"stem":"把钟表上的时间和生活作息连起来","right":["吃午饭","睡觉","放学","起床"],"matches":[[0,3],[1,0],[2,2],[3,1]],"explanation":"起床7点，午饭12点，放学4:30，睡觉9点。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], 'd6d383c583bf6775d4f2b2906c13b17856946691fa2dd0624ed70d662f844a69', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-04e5a81a6346', 'math', 2, 1, 'choice', '{"stem":"56 + 8 = ？","answer":0,"options":["64","62","66","54"],"explanation":"56+4=60，60+4=64，所以56+8=64。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], '37f8c635d8dc0ae631cc59d97bbbfcd40b59ac3e4452ddef137cc9edbdd67d42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0524a01928eb', 'math', 2, 2, 'choice', '{"stem":"一把雨伞长约60什么？","answer":0,"options":["厘米","米","毫米","千米"],"explanation":"雨伞长约60厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '340ea2fc68fd309f7f60a05d9605652c0af70781c8f924012289c616cc5eec47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0a9fe68fa80e', 'math', 2, 1, 'choice', '{"stem":"一个角的大小与什么有关？","answer":0,"options":["开口大小","边的长短","顶点位置","画的大小"],"explanation":"角的大小与两条边张开的大小有关。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], 'c6f6334227cf3811c09a6910058c43f2710c088894dfd72282df92495ab0ca71', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0af7f105372f', 'math', 2, 3, 'choice', '{"stem":"☆+☆+☆=18，□+☆=15，□是多少？","answer":0,"options":["9","6","8","7"],"explanation":"☆=6，□=15-6=9。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], '04eb0a9ceeb632c61450381636e778ad0499dd2cc3f0d3442071f41f5186dd58', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0bc245e9899d', 'math', 2, 3, 'choice', '{"stem":"有两条绳子，第一条长18米，第二条对折后和第一条一样长，第二条原来长多少？","answer":0,"options":["36米","9米","18米","27米"],"explanation":"对折后18米，原来18×2=36米。"}'::jsonb, 'builtin', '表内乘法', 'reason', array['数量关系']::text[], '37f1035d333dfad31d826c41e7e89a57ee93a056e22de97f4abca834e7524dfe', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0c0045a1a7c5', 'math', 2, 2, 'fill', '{"stem":"量比较短的物体，常用___作单位。","answer":"厘米","explanation":"短物体用厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], 'bdff21d1cbe8de68e0449ea2fee03fe6c5d67e8e20fd0fe0e6746e7fac3b7c4b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0f00d5b46662', 'math', 2, 2, 'fill', '{"stem":"一把学生尺长约20___。","answer":"厘米","explanation":"学生尺长20厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '7f12fb5a71847267cc8a8025cdd4eda90522f140e9568cf7dd996f90b81733cb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-0ffe0e241132', 'math', 2, 2, 'fill', '{"stem":"一座桥长约50___。（填米或厘米）","answer":"米","explanation":"桥的长度用米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '21efb2461a47a47e33e55cc22cc06c0204640ed314bd26f3a731d87da631276d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-125bd001cff1', 'math', 2, 2, 'choice', '{"stem":"时针走一大格是几小时？","answer":0,"options":["1小时","1分钟","5分钟","12小时"],"explanation":"时针走一大格是1小时。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], '5d0210cb2b178830f313fde7cb6ad23631fcf8b1e65259dac19bc33eb42de235', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-13186621ae38', 'math', 2, 3, 'choice', '{"stem":"小明有20张卡片，比小红多5张，小红有几张？","answer":0,"options":["15张","25张","10张","20张"],"explanation":"小明比小红多5张，小红就比小明少5张，20-5=15张。"}'::jsonb, 'builtin', '加法与减法', 'reason', array['计算与应用']::text[], 'a85c4b6131f480b18af2f35bf8bf8a872778ca42bf3b6dfe2e1e063f22cde5fc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-15f8bc684a56', 'math', 2, 1, 'choice', '{"stem":"28 ÷ 7 = ？","answer":0,"options":["4","3","5","6"],"explanation":"四七二十八。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '260577493410813aa5704e1b1109c87fd810fe09fba1c1426e32bb0a232a3fb1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-1ab8d3f4b32d', 'math', 2, 3, 'choice', '{"stem":"有两排树，第一排5棵，第二排是第一排的3倍，两排一共多少棵？","answer":0,"options":["20棵","15棵","25棵","10棵"],"explanation":"第二排5×3=15棵，一共5+15=20棵。"}'::jsonb, 'builtin', '表内乘法', 'reason', array['数量关系']::text[], 'e5e6703ee5543c56f0379909461b98dc40e8f83461b0025b711ff8b3147934f3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-1e1881ec44bd', 'math', 2, 1, 'choice', '{"stem":"7×7=？","answer":0,"options":["49","48","56","42"],"explanation":"七七四十九。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '5d8c1d77d6b747a99e40c4161621d3ef0ccfe5b593a5a8052ada72bdeca61527', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-1e1b744e5238', 'math', 2, 3, 'choice', '{"stem":"两个完全相同的正方形拼成一个长方形，拼成的长方形有几个直角？","answer":0,"options":["4个","3个","5个","6个"],"explanation":"两个正方形拼成长方形，长方形仍有4个直角。"}'::jsonb, 'builtin', '方向与图形', 'reason', array['空间观念']::text[], 'a7b05903aa4ff99fd066462e77216da2d6651b22388eec4da2fc55e5cfd20883', 'approved', 2)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-1ff298333086', 'math', 2, 2, 'fill', '{"stem":"从8:30到9:00，经过了___分钟。","answer":"30","explanation":"8:30到9:00是半小时，即30分钟。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], '03f12e16fa65d2f1a6d42666621fd7095757fb94334bbb57b331a1d9a57cd74e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-20555995a86a', 'math', 2, 1, 'match', '{"left":["五六三十","四八三十二","三九二十七","五七三十五"],"stem":"把口诀和对应的算式连起来","right":["5×7=35","3×9=27","5×6=30","4×8=32"],"matches":[[0,2],[1,3],[2,1],[3,0]],"explanation":"一一对应。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '8623c86ecdf60031e2f5965549ed863edbd28ef83a89e1b238c309c522066f73', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-20d5ffca3d18', 'math', 2, 2, 'fill', '{"stem":"操场跑道一圈约200___。（填米或厘米）","answer":"米","explanation":"跑道长度用米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '92647c678cfdb64b93b233c720f4d54e2b2125259732a2169590a9352d947654', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-21a129f3267d', 'math', 2, 1, 'choice', '{"stem":"下面哪个不是角？","answer":0,"options":["圆角","锐角","钝角","直角"],"explanation":"没有圆角这种说法，圆形没有角。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '33550f70639128e04d7e45525c20439c548b4cff3a3266d2cb67cc9dfec196e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-21cbe91dd222', 'math', 2, 2, 'fill', '{"stem":"从12:00到1:30，经过了___小时___分钟。","answer":"1 30","explanation":"12:00到1:30是1小时30分。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], 'b353c2ad3e2252fb061a5df4eb55e6238d27548123239ebdb0d641f2b73b5d99', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-236efdbf08f2', 'math', 2, 2, 'choice', '{"stem":"一根绳子长25米，剪下5段同样长的短绳，每段长多少米？","answer":0,"options":["5米","4米","6米","7米"],"explanation":"25÷5=5米。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], 'c548b553888b543e58153c459bdf5555ae93e33415f3cba158c2451600062edf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-240712f83e63', 'math', 2, 2, 'match', '{"left":["上午7:30","中午12:00","下午4:00","晚上8:30"],"stem":"把时间与相应的活动连起来","right":["吃午饭","看电视","上学","放学"],"matches":[[0,2],[1,0],[2,3],[3,1]],"explanation":"上午上学，中午吃饭，下午放学，晚上看电视。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], 'ac5210505dd95509b3512a77059fded556288e769f7bbe979129095d07001cc8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-2520c5e3433e', 'math', 2, 1, 'choice', '{"stem":"下面哪个是时间单位？","answer":0,"options":["时","米","千克","厘米"],"explanation":"时是时间单位。"}'::jsonb, 'builtin', '时间与人民币', 'understand', array['生活计量']::text[], '2336b1d89f2c1872587151802e04e9bf95aebcbaa7683818a4d0e13bfef9dc4e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-25df6e3f2184', 'math', 2, 2, 'fill', '{"stem":"从3:45开始，经过15分钟是___:___。","answer":"4 00","explanation":"3:45+15分=4:00。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], '65b475316bb43fe7dffdc212a6a24910e33b9426844b8d81776eadb255303a32', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-25e262b051b0', 'math', 2, 1, 'choice', '{"stem":"“三四十二”这句口诀可算几道算式？","answer":0,"options":["4道","1道","2道","3道"],"explanation":"3×4、4×3、12÷3、12÷4，共4道。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '15fe2f981e705bcec0a55951ca00bca016f8ea5dc54923b0d7115d9a00384223', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-260ddb505940', 'math', 2, 2, 'choice', '{"stem":"一根彩带长60厘米，做花用去35厘米，还剩多长？","answer":0,"options":["25厘米","35厘米","95厘米","15厘米"],"explanation":"60-35=25厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '3f283c0583cdf25c677ac59fbb816de7e72a982fc014dd639a24fc8881602cd1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-272197644b01', 'math', 2, 1, 'match', '{"left":["4×7","6×8","5×9","3×6"],"stem":"把乘法算式和对应的口诀连起来","right":["四七二十八","六八四十八","五九四十五","三六十八"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"直接根据口诀连线。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'a81ba1a490876eff8133dfc994ec7f1cd266255689519634b9f1f985c9c7d217', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-28a4e95d1c84', 'math', 2, 3, 'choice', '{"stem":"一束花8元，妈妈买了3束，付了30元，找回多少钱？","answer":0,"options":["6元","2元","4元","8元"],"explanation":"8×3=24元，30-24=6元。"}'::jsonb, 'builtin', '表内乘法', 'reason', array['数量关系']::text[], 'd0e92a431686ec19c727e9e7df2fd0ee7aa142b6b9ce30561560ecd65aebefa6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-28e6e623ee65', 'math', 2, 1, 'match', '{"left":["28÷4","42÷6","72÷9","32÷8"],"stem":"把除法算式和对应的口诀连起来","right":["六七四十二","四七二十八","四八三十二","八九七十二"],"matches":[[0,1],[1,0],[2,3],[3,2]],"explanation":"28÷4用四七二十八，42÷6用六七四十二，72÷9用八九七十二，32÷8用四八三十二。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '48da19166b473836b482a19d00eb1866fe8a4651886016fceb8b208f5095eca4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-29ea0ab80fc9', 'math', 2, 3, 'choice', '{"stem":"小花有12张贴纸，比小丽少3张，两人一共有多少张？","answer":0,"options":["27张","21张","15张","24张"],"explanation":"小丽12+3=15张，一共12+15=27张。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], '6e0dc70e825ff9e169555a39cf6e7d55a6fb71b22f017e423ccf74110056c695', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-2a0cafa42c43', 'math', 2, 2, 'choice', '{"stem":"课桌大约有多高？","answer":0,"options":["70厘米","7厘米","7米","70米"],"explanation":"课桌高度大约70厘米，也就是7分米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], 'bdd13ea204aa46d34083d4eb9f7c743a58a327e5e8eb0f31e57946de1d9f5e63', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-2a88d035f2f1', 'math', 2, 1, 'choice', '{"stem":"63 - 29 = ？","answer":0,"options":["34","44","24","33"],"explanation":"63-20=43，43-9=34。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], '1d5153d1d4471daee8b55db75c5b6253b57664d69c17f66b69adec1b5ef97ed8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-2d49d7346a99', 'math', 2, 1, 'choice', '{"stem":"7 × 8 = ？","answer":0,"options":["56","54","58","49"],"explanation":"七八五十六。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'e6c90d27cb9c665a872a4d2ae3499142e281edd41450e5a8a31051285009fc52', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-2db201630ccb', 'math', 2, 3, 'choice', '{"stem":"有25个气球，平均分给6个小朋友，每人几个，还剩几个？","answer":0,"options":["4个剩1个","3个剩5个","4个剩5个","5个剩0个"],"explanation":"25÷6=4……1。"}'::jsonb, 'builtin', '除法初步', 'reason', array['数量关系']::text[], 'c14b81985cab7ff76878beae8de9c75bf2c4f5541d86a49a8efb11eb87229ef6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-31d464ac7366', 'math', 2, 1, 'fill', '{"stem":"8 × 3 = ___","answer":"24","explanation":"三八二十四。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '823bcd9fb9de9aefdb2c99e80c5487ecd8ae4c6a0b26ed3db94f03a177173217', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-338272a69d55', 'math', 2, 1, 'choice', '{"stem":"下面图形中，有4个直角的是？","answer":0,"options":["长方形","三角形","圆形","半圆"],"explanation":"长方形有4个直角。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '898f623c63549ebe31e6a303c1c5c1bc1a8bda43ae2676506c349b3a6dd5ff72', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-34587426fe27', 'math', 2, 2, 'choice', '{"stem":"妈妈买了一些苹果，吃了9个，还剩15个，妈妈买了多少个？","answer":0,"options":["24个","6个","25个","22个"],"explanation":"15+9=24个。"}'::jsonb, 'builtin', '加法与减法', 'apply', array['计算与应用']::text[], '4098e668c2907c6bbad37c4dc15880274c0fc5b45a9dd93f87f143f78c4ee43b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3482dc3e3105', 'math', 2, 3, 'choice', '{"stem":"□×6=30，□里填几？","answer":0,"options":["5","4","6","7"],"explanation":"五六三十，所以是5。"}'::jsonb, 'builtin', '表内乘法', 'reason', array['数量关系']::text[], 'e00d5f34928ffc74140d37b9b6c058832cb013e80e15ea4b952cf61fb1fc186d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-34ffc302ab77', 'math', 2, 2, 'match', '{"left":["3:00","6:30","12:00","8:15"],"stem":"把钟面时间与说法连起来","right":["3时整","6时半","12时整","8时15分"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"一一对应。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], '062ddabfd45772225dff0b8de3e46a6d77eb6e35b26c073db9ed626b0435165f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-37b12b6b0d7d', 'math', 2, 1, 'choice', '{"stem":"一条红领巾上有几个角？","answer":1,"options":["1个","3个","2个","4个"],"explanation":"红领巾是三角形，有3个角。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '288fbfa7952658cc2312c7410c2a8e82b795093ff44fc36798e1109caca13a38', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3a2c11e78f8f', 'math', 2, 1, 'choice', '{"stem":"56 + 29 = ？","answer":1,"options":["75","85","95","79"],"explanation":"56+20=76，76+9=85。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], 'e89d5acd4cba204870808325d1ef94ad86bfced47556106618bd4bcabe7dc4b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3aab867e895e', 'math', 2, 2, 'fill', '{"stem":"10厘米+90厘米=___米。","answer":"1","explanation":"10+90=100厘米=1米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '8eb235e5d2a61bc5aeb40cd03115d5367acd47407414759763910d698628b0e1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3aad204ecf3a', 'math', 2, 3, 'choice', '{"stem":"一张正方形纸对折两次后，每份是原来的几分之几？","answer":1,"options":["一半","四分之一","三分之一","两份"],"explanation":"对折两次分成4份，每份是四分之一。"}'::jsonb, 'builtin', '除法初步', 'reason', array['数量关系']::text[], 'fb8380a9e6e9e7459533adb3e32fbf8d479166bc3ec76fc8f5fd7e2878c052ef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3cda84cc5c5a', 'math', 2, 2, 'choice', '{"stem":"一辆小汽车长约4什么？","answer":1,"options":["厘米","米","毫米","千米"],"explanation":"汽车长约4米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '9ce847023063aaadbbe49d638156b9d4d774c27973c7a13d7da741b100fa5801', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3e6babe03677', 'math', 2, 1, 'choice', '{"stem":"47 + 35 = ？","answer":1,"options":["72","82","78","92"],"explanation":"47+30=77，77+5=82。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], '42e31a8638596791c7be39133a9f14146afdd7264cb87cfb76c8785da17443e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3e96f716ac52', 'math', 2, 3, 'choice', '{"stem":"△+△+△=15，那么△=？","answer":1,"options":["3","5","4","6"],"explanation":"3个相同的数相加得15，三五十五，△=5。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], 'eb29c691672e8c123a66a47d20aa8f9fe3fe7de62e2bd4e0905e346ec9bc7d7e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-3f6634e7c464', 'math', 2, 1, 'choice', '{"stem":"比直角小的角叫什么角？","answer":1,"options":["钝角","锐角","直角","平角"],"explanation":"锐角比直角小。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], 'a18714c723439eec2fa693d2ad69428aed81d62486d5767f61f6ca022c87bfc0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-425ce09af36c', 'math', 2, 1, 'choice', '{"stem":"54 ÷ 6 = ？","answer":1,"options":["7","9","8","6"],"explanation":"六九五十四。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '0182796c26590bcec532ad84612cf02aa21d5976a828a1118d565fd2f35eca40', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-4566f80eb0b6', 'math', 2, 1, 'fill', '{"stem":"3 × 8 = ___","answer":"24","explanation":"三八二十四。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'f2c2395b194f05e6f2c7897696c5e65f1fd1368d9ad9a8943ee2debe5741c212', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-49562affa0ed', 'math', 2, 3, 'choice', '{"stem":"一根绳子对折一次后长4米，原来长多少米？","answer":1,"options":["2米","8米","4米","16米"],"explanation":"对折一次变成两段，原来长4×2=8米。"}'::jsonb, 'builtin', '表内乘法', 'reason', array['数量关系']::text[], '65a474299c74955816825df10b85d492273fcfec52783257d1add4fc9604868b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-4abeeca3486a', 'math', 2, 3, 'choice', '{"stem":"一班有28人，二班比一班多4人，两班一共多少人？","answer":1,"options":["32人","60人","56人","52人"],"explanation":"二班28+4=32人，28+32=60人。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], '55cb7c9806adc65618c52e4a232a22e171f9510944f9ccf22ee30dd749ea1374', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-514c08939fc5', 'math', 2, 2, 'choice', '{"stem":"一枚硬币厚约2什么？","answer":1,"options":["米","毫米","厘米","千米"],"explanation":"硬币厚约2毫米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '54a4e1d1b27223000befa0a506fd48b575ca8195406943f31a1e2f73b9e1bba0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-516c0c1baaf3', 'math', 2, 2, 'choice', '{"stem":"你的手掌宽约6什么？","answer":1,"options":["米","厘米","毫米","千米"],"explanation":"手掌宽约6厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '883165a093a485e54579f3f7d001baf05b13be9956d66466f930e8e611e024e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-55bbea2b222a', 'math', 2, 1, 'fill', '{"stem":"7 × 3 = ___","answer":"21","explanation":"三七二十一。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '159f2357a7fe9c8f7111b2d5ef68c8524d0ad790db1f8be7efa8af3e05abe061', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-56b717556961', 'math', 2, 1, 'choice', '{"stem":"64 ÷ 8 = ？","answer":1,"options":["7","8","9","6"],"explanation":"八八六十四。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '4cb9894ef60485f1b21c73f21baa3e98c80c8c6ae0bdbeed4cbee25a1216dc97', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-5e4a94f90a42', 'math', 2, 1, 'choice', '{"stem":"一个正方形剪去一个角，变成什么形？","answer":1,"options":["三角形","三角形或五边形","五边形","梯形"],"explanation":"看剪法，可能变成三角形或五边形。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], 'cfeb829a24987dd3fca7793707d2ca4ee26d12ea3ca1b99f0dbe9f4f2dde2129', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-60e9b6f8de67', 'math', 2, 2, 'choice', '{"stem":"妈妈买了一本故事书，看了28页，还剩15页，这本书共多少页？","answer":1,"options":["33页","43页","13页","53页"],"explanation":"28+15=43页。"}'::jsonb, 'builtin', '加法与减法', 'apply', array['计算与应用']::text[], 'ecb7415f75659f31a752fa02c5471f9afeed1d1e75379c502bc47167bdbeb00c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-63b5c0ff81b8', 'math', 2, 3, 'choice', '{"stem":"同学们排队，从左边数小亮是第7个，从右边数是第8个，这一排有多少人？","answer":1,"options":["13人","14人","15人","16人"],"explanation":"7+8-1=14人。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], '03acd0385549384c80c16e4296339cc799112877da0d8c7b7038a95542362b31', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-68c54842cdf9', 'math', 2, 1, 'fill', '{"stem":"5 × 8 = ___","answer":"40","explanation":"五八四十。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '247d5327e40daeff377a69dd18ae8eff7b431504ca418aceb2ecbd028633fb70', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-6cf48dee9ec1', 'math', 2, 2, 'choice', '{"stem":"有16颗糖，平均分给小明和他的3个同学，每人分几颗？","answer":1,"options":["5颗","4颗","3颗","6颗"],"explanation":"分给4个人，16÷4=4颗。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], '97530caeb8e86bc30cb8e84b7f8fbba7fa12a8ce9a40fb0c1f20dd2a07b73351', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-6db5fd15a6f7', 'math', 2, 1, 'choice', '{"stem":"63 ÷ 7 = ？","answer":1,"options":["7","9","8","10"],"explanation":"七九六十三。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'f6db270d292f9abad67ab76a6169abcfca97016d3ae4ab948786d337dadea5ce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-7398cb71ad1e', 'math', 2, 1, 'choice', '{"stem":"47 + 26 = ？","answer":1,"options":["63","73","83","53"],"explanation":"47+20=67，67+6=73。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], '9a3546e32b46603df16096b7096fd3132a6c720a682548bd92c703c94ade9f66', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-753bc2033429', 'math', 2, 2, 'choice', '{"stem":"一根黄瓜长约20什么？","answer":1,"options":["米","厘米","毫米","千米"],"explanation":"黄瓜长约20厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], 'd665dd9f5ef75bcb01435ff36387c3dd333b0ff7d31fbe3c3fbf834ae83524cf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-77691382b54a', 'math', 2, 1, 'fill', '{"stem":"9 × 5 = ___","answer":"45","explanation":"五九四十五。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '36c0791ad7e4cb9bd41a5399cf452c07b291ba7f11c35de5718589ca4a0995e8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-783be3b8b2f5', 'math', 2, 2, 'choice', '{"stem":"一根跳绳长约2什么？","answer":1,"options":["厘米","米","毫米","千米"],"explanation":"跳绳长2米左右。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '73e04a4ab70dbd4fceb0c579ecd4932ac41dca847f2c487e6ad3f619de92a516', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-79fb4c5f9f9d', 'math', 2, 2, 'choice', '{"stem":"爷爷买了18个橘子，每3个装一袋，可以装几袋？","answer":1,"options":["4袋","6袋","5袋","7袋"],"explanation":"18÷3=6袋。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], '16e03acf42d26a43f3008110dab681cad578d2d5cef3c2ae83b6d14925720d76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-7b024d9076f4', 'math', 2, 1, 'choice', '{"stem":"用口诀“五七三十五”不可以计算哪道题？","answer":1,"options":["5×7","35÷6","7×5","35÷5"],"explanation":"“五七三十五”只能算5×7、7×5、35÷5、35÷7。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'd339b6052bf0fe72ae66cfa201903c97f7a42510ff4cde26caf4543db7bb7250', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-7c2a702db6f4', 'math', 2, 1, 'choice', '{"stem":"18 ÷ 3 = ？","answer":1,"options":["4","6","5","7"],"explanation":"三六十八，18除以3等于6。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'd9ce52302785e917400d027582f8c3b381c1ddb3bde86f996f56636047dc9b4a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-81e35c46fe29', 'math', 2, 2, 'choice', '{"stem":"妈妈身高163什么？","answer":1,"options":["米","厘米","毫米","千米"],"explanation":"身高用厘米，163厘米即1.63米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '3da7364d70111053a1483205b60fc3e9e5c0fe6d8e67797d9353499e98790464', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-86c8c553ad48', 'math', 2, 1, 'choice', '{"stem":"45 + 37 = ？","answer":1,"options":["72","82","78","92"],"explanation":"45+30=75，75+7=82。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], '06974f43849027735c19dbcaab5ed7f5909f7605202a97a44417be80393d9171', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-8754a3d15485', 'math', 2, 3, 'choice', '{"stem":"△+△=12，☆+△=20，☆=？","answer":2,"options":["8","16","14","6"],"explanation":"△=6，☆=20-6=14。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], '899996d790481137ece511fb719f1f06d501b99a82d5354e4c5ae8e658f275bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-87d1e85e83be', 'math', 2, 2, 'choice', '{"stem":"一条绳子长1米，用去30厘米，还剩多少厘米？","answer":2,"options":["60厘米","50厘米","70厘米","7厘米"],"explanation":"1米=100厘米，100-30=70厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], 'aae281a36325d3ac01f6108b159ab34a4d8cb70cdfe1258b4420d8285fb06d5e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-8a4afafc7815', 'math', 2, 2, 'choice', '{"stem":"小丽有12块饼干，吃了一半，还剩几块？","answer":2,"options":["4块","8块","6块","12块"],"explanation":"一半就是12÷2=6块。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], '52ba2da54d72592c257d67673fbbbba54fc6de93f44ca392f33c0a5a72af748d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-8c953a6a8705', 'math', 2, 1, 'choice', '{"stem":"42 ÷ 6 = ？","answer":2,"options":["6","8","7","5"],"explanation":"六七四十二。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '237d6d8c035eeab10e303848c1234cbf4d75ef7a6ad35b0ae02681ed5d737691', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-8cd7c203588e', 'math', 2, 1, 'fill', '{"stem":"5 × 9 = ___","answer":"45","explanation":"五九四十五。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '79a4c6fbacb9dd16685b6be68a2b4abb80b9c7cd1d851bc0231e29e9e94db1a5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-908439f177db', 'math', 2, 1, 'choice', '{"stem":"24 ÷ 3 = ？","answer":2,"options":["6","7","8","9"],"explanation":"三八二十四。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'f717068da2e3bca52f4d89b085f9e85b5b424f7b03e47cdaa9afac7cff265394', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-90a3f6353d5d', 'math', 2, 1, 'choice', '{"stem":"下面哪个是钝角？","answer":2,"options":["比直角小","和直角一样大","比直角大","没有角"],"explanation":"钝角比直角大。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '7f6c3c578e677df8eb45a3fba7aaae11a7e4a262541ed618619ed99eca7462ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-9132c3bcc74f', 'math', 2, 2, 'choice', '{"stem":"一个作业本大约厚3什么？","answer":2,"options":["米","厘米","毫米","分米"],"explanation":"作业本厚度用毫米，3毫米比较合理。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '3eb6006c1f7a261f74a5a7c9564d5a9590274ff1d3eeacccdd10e34a63a000b8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-9211e7d07b87', 'math', 2, 1, 'choice', '{"stem":"0除以任何不是0的数都得？","answer":2,"options":["那个数","1","0","不确定"],"explanation":"0除以任何非0数都得0。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'f10526e1c71f056bfbdb845b936ef8aa96c249e277f332d274c4c5d1a433607e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-97a188dc9ce6', 'math', 2, 2, 'match', '{"left":["上午7时","中午12时","下午4时","晚上9时"],"stem":"把时间与对应的钟面描述连起来","right":["时针指7，分针指12","时针指12，分针指12","时针指4，分针指12","时针指9，分针指12"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"整时的时候，分针指向12，时针指向几就是几时。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], '7bba7cb53ddba9d3cc39c8e0d5cd74276940aaf7eea81e1d5427d543a304f8ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-994222147028', 'math', 2, 1, 'choice', '{"stem":"49 ÷ 7 = ？","answer":2,"options":["6","8","7","9"],"explanation":"七七四十九。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '05d8ab5a52e8780901fa47594df3aad845efff2d0933e16ca15ac3f161ccfba6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-9b135ef38ae8', 'math', 2, 1, 'choice', '{"stem":"68 + 24 = ？","answer":2,"options":["82","88","92","72"],"explanation":"68+20=88，88+4=92。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], 'bbfacf292669008662588b12d19b93d0139553029b2a1c42d867e2fb4b228e7d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-9c87747d70c4', 'math', 2, 2, 'choice', '{"stem":"测量黑板长度，用什么单位合适？","answer":2,"options":["厘米","毫米","米","千米"],"explanation":"黑板长度约几米，用米做单位。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '75007c8d4d3f92b078204c384035290b7d0c84cdc0c2b21d66a7b45d436ad662', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-9ec1f699a2f4', 'math', 2, 1, 'fill', '{"stem":"6 × 7 = ___","answer":"42","explanation":"六七四十二。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '96b9a0597e5113668b69042149f21752c5d190aee5bd29185bc70049e32a75c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-a05601f63d0a', 'math', 2, 2, 'choice', '{"stem":"教室长约10什么？","answer":2,"options":["厘米","毫米","米","千米"],"explanation":"教室长度用米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '81f51a2e0b156b2ff55f1a9f777bb8bd470557c7b180ebf66c5472f2252fafb7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-a16cd3479164', 'math', 2, 1, 'choice', '{"stem":"73 - 45 = ？","answer":2,"options":["38","18","28","32"],"explanation":"73-40=33，33-5=28。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], '45d8cf276f0c9b112752b2bc5f6a6f9cb3dd5496bec18c7f1dd051ceffa65765', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-a2f7b6e75ece', 'math', 2, 1, 'choice', '{"stem":"用口诀“二五一十”不能计算哪道题？","answer":2,"options":["2×5","5×2","2+5","10÷2"],"explanation":"加法不能用此口诀。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '002ad74174c9f2bcb273ff72feb7804ffcbc40e69df61e6e8a28cf369d1c1a32', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-aca9e924b3e9', 'math', 2, 1, 'choice', '{"stem":"81 - 16 = ？","answer":2,"options":["55","75","65","45"],"explanation":"81-10=71，71-6=65。"}'::jsonb, 'builtin', '两步问题', 'understand', array['生活情境']::text[], '436fbfca481e645f6c696f35bdbd8c693a5d60daffd0dbecf512b09834d8e8ef', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-ad2785439c40', 'math', 2, 1, 'choice', '{"stem":"48 ÷ 6 = ？","answer":2,"options":["6","7","8","9"],"explanation":"六八四十八。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'cbf56198c7b50ad3fa7f92e83bedb66ae424c32ab7c73a071fa3b668301507f4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-afff2de53fef', 'math', 2, 1, 'choice', '{"stem":"下面哪个不是轴对称图形？","answer":2,"options":["正方形","圆形","平行四边形","等腰三角形"],"explanation":"一般的平行四边形不是轴对称。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '5c167dd02bb571ec79ee0cb7b84e92cd6ce3d3eb19996c068d5c75710571699c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-b056d2a0b8db', 'math', 2, 3, 'choice', '{"stem":"有一队小朋友，从前往后数小明排第8，从后往前数排第5，这队有多少人？","answer":2,"options":["13人","11人","12人","14人"],"explanation":"8+5-1=12人。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], '51a65f0a77e6fca324f1a67e20a8dec5b52adcf6e910b5945e02bb94ec3e6ffb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-b16b33d32317', 'math', 2, 2, 'choice', '{"stem":"做一件风衣用2米布，14米布可以做几件？","answer":2,"options":["6件","8件","7件","5件"],"explanation":"14÷2=7件。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], 'e0c0dd9a77c3ab66726865ae9c8355c61cbd3c525e3d512a725c36a560a4c5e9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-b5efc923ba68', 'math', 2, 1, 'choice', '{"stem":"56 ÷ 7 = ？","answer":2,"options":["6","7","8","9"],"explanation":"七八五十六。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'e7204dca13062fe4b9125319d832bea98e33db1a799153a8d2ce54e223a25813', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-bbd3b4ea1c8f', 'math', 2, 1, 'choice', '{"stem":"下列图形中，哪些是对称的？","answer":2,"options":["蝴蝶","房子","以上都是对称的","树木"],"explanation":"蝴蝶、房屋、树木常见图案多是对称图形。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], 'bf488251a3999606214e53dc27aa1f834b6dae1c297d1b5e7a1f80bcf7e8388d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-bf1248d6845d', 'math', 2, 3, 'choice', '{"stem":"时钟显示时针在8和9之间，分针指向6，是什么时间？","answer":2,"options":["9:30","8:06","8:30","6:40"],"explanation":"分针指向6是半时，时针刚过8就是8:30。"}'::jsonb, 'builtin', '时间与人民币', 'reason', array['生活计量']::text[], '952653c4a417dd8d306239cab5356a6e9a60b24bce5ed0dd9cbbfc21d2b5c29f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-c5ef85c9be2c', 'math', 2, 2, 'choice', '{"stem":"爸爸的裤子长约90什么？","answer":2,"options":["米","毫米","厘米","千米"],"explanation":"裤子长90厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '7d585aaf95844c73ffaf4995961a0361a923c4450d75bf74fc87956c878a6720', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-c8bb4a6991a0', 'math', 2, 1, 'match', '{"left":["9×3","6×7","8×5","4×4"],"stem":"把算式和正确答案连起来","right":["27","40","42","16"],"matches":[[0,0],[1,2],[2,1],[3,3]],"explanation":"9×3=27，6×7=42，8×5=40，4×4=16。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'b8f5a197678afdc0680c6a9df8a469829c1fccba56fce3bf47e4cfa318fe54b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-caaa569050c2', 'math', 2, 1, 'fill', '{"stem":"9 × 8 = ___","answer":"72","explanation":"八九七十二。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'ca76d7c10ae67d6d6d9fde4409b9b26a4f5c29e2189e885ce3c8111f7cf09bca', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-caffecd34f05', 'math', 2, 1, 'choice', '{"stem":"一支铅笔5角，一个橡皮3角，买这两样用多少钱？","answer":2,"options":["2角","15角","8角","1元"],"explanation":"5+3=8角。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], 'd7e2f7f2bd878def285c5349726a3573cc54fcfbfc9ac51226e379050ed174d5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-cebc3596fcb9', 'math', 2, 2, 'choice', '{"stem":"一棵大树高约10什么？","answer":2,"options":["厘米","毫米","米","千米"],"explanation":"大树高度通常用米，约10米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '0688512e5fe58dfb3f40e9f0e9a10a290e9c4300f7b85d54e4bf5f0b96adf237', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-cf3318766645', 'math', 2, 2, 'choice', '{"stem":"一扇门高约2什么？","answer":2,"options":["厘米","毫米","米","千米"],"explanation":"门高约2米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '36c99256f0ca88b03d3000f1e5d2ef39457daba81b79a53984ce61484034e754', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-d2759778e0e7', 'math', 2, 2, 'choice', '{"stem":"一个文具盒大约长20什么？","answer":3,"options":["米","毫米","千米","厘米"],"explanation":"文具盒长约20厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '7c72dd406251238b8c7a8be11c2e0400467c81445939648e733c7c696c279a14', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-d33e234fa0fd', 'math', 2, 1, 'choice', '{"stem":"下列图形中，哪个不是四边形？","answer":3,"options":["长方形","正方形","平行四边形","三角形"],"explanation":"三角形有3条边，不是四边形。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '695e638eaa8ad28406e0bacf72fabe79aec28ccafd975f5c2a73de5e0498973f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-d3c8cab84665', 'math', 2, 3, 'choice', '{"stem":"一根木头锯成2段要3分钟，锯成4段要几分钟？","answer":3,"options":["6分钟","12分钟","3分钟","9分钟"],"explanation":"锯成2段锯1次，锯成4段锯3次，3×3=9分钟。"}'::jsonb, 'builtin', '时间与人民币', 'reason', array['生活计量']::text[], '09906f4b95dc6aed768ff3bf64be18894b9df7371bff5a6a6f3e0a0957841184', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-d47687e8417d', 'math', 2, 2, 'choice', '{"stem":"一个水杯高约10什么？","answer":3,"options":["米","毫米","千米","厘米"],"explanation":"水杯高度大约10厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '5cfb5e871bacf3069cf5c5c2fa246109b89e430f40cccbca679eae726e961beb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-d52d7edff129', 'math', 2, 1, 'choice', '{"stem":"36 ÷ 4 = ？","answer":3,"options":["8","7","6","9"],"explanation":"四九三十六。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'ae49906cdf12d10672e7a03b2002583c7d59f2bc6cbfbe8e67c9bcd1e0d3e6fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-d749bbd6e271', 'math', 2, 2, 'choice', '{"stem":"有7个小组，每组4人，一共有多少人？","answer":3,"options":["11人","24人","32人","28人"],"explanation":"7×4=28人。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], '3f195970a46dfe04c1afd0f3b0e63b91c222a6a419d156a7b029eae4a3a197ce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-d8e3285aacf2', 'math', 2, 1, 'fill', '{"stem":"6 × 4 = ___","answer":"24","explanation":"四六二十四。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'a7a41a859f1a85715fd495742cf684def47b313c39aaf7c6d47028c41fc9b2da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-dc2afcba3761', 'math', 2, 2, 'choice', '{"stem":"一块橡皮厚约1什么？","answer":3,"options":["米","毫米","千米","厘米"],"explanation":"橡皮厚约1厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], 'e0a855b7f9107aa7c3e829f52dd23e8a64a89dc5e6235b15826cec8c94beb908', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-dcf37ea592f6', 'math', 2, 2, 'choice', '{"stem":"姐姐今年8岁，妹妹比她小3岁，妹妹几岁？","answer":3,"options":["11岁","3岁","8岁","5岁"],"explanation":"8-3=5，妹妹5岁。"}'::jsonb, 'builtin', '加法与减法', 'apply', array['计算与应用']::text[], 'eb9626badedc8fb2eba7a15ea67973e80da2653522c20a7babe4189df23fd823', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-dd1cc22583bb', 'math', 2, 1, 'choice', '{"stem":"一个长方形有几条边？几个角？","answer":3,"options":["4条边2个角","2条边4个角","3条边3个角","4条边4个角"],"explanation":"长方形有4条边和4个直角。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '91fcf3b53b90507e8c533c7eb29ef1e7b6a904bb9b50f2495f201244d91017a6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-def0fef43989', 'math', 2, 1, 'choice', '{"stem":"一个角有几个顶点？","answer":3,"options":["2个","3个","4个","1个"],"explanation":"一个角有1个顶点和2条边。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '068a5cb6dba38356c5600796c58be516c5ddd2639965b19ada5a42325e8cb22d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e02ee0cab3ae', 'math', 2, 2, 'choice', '{"stem":"奶奶买来18个橘子，吃了6个，剩下的平均分给3个小朋友，每人几个？","answer":3,"options":["6个","3个","5个","4个"],"explanation":"18-6=12，12÷3=4个。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], '621afe542669a16d90adbf1b26f33e2ea31213ed857dba868bbdf0ae0aa334f3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e1b658cffd2c', 'math', 2, 1, 'choice', '{"stem":"45 ÷ 5 = ？","answer":3,"options":["7","8","10","9"],"explanation":"五九四十五。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], 'dc989169753702df9f2fccce03534f764d7edbb390f94c809121f0377472358a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e1cad8ee7780', 'math', 2, 1, 'choice', '{"stem":"35 ÷ 5 = ？","answer":3,"options":["5","6","8","7"],"explanation":"五七三十五。"}'::jsonb, 'builtin', '除法初步', 'understand', array['数量关系']::text[], '966d7a7826f769663eb3f68a22f7f007485b451458cc9e13a302c20aab8b945b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e244da4359e2', 'math', 2, 1, 'match', '{"left":["4+4+4","5+5+5+5","6+6","3+3+3+3+3"],"stem":"把加法算式和乘法算式连起来","right":["4×5","3×5","6×2","4×3"],"matches":[[0,3],[1,0],[2,2],[3,1]],"explanation":"4个3是4×3，4个5是4×5，2个6是6×2，5个3是3×5。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'fab6a31d461ce69d7693302ddacf64551972d610b397cd6290d319b2ea40cc52', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e357d3114558', 'math', 2, 2, 'choice', '{"stem":"一棵小草高约10什么？","answer":3,"options":["米","毫米","千米","厘米"],"explanation":"小草高度约10厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '2dd1c616def7f881aba3a0e9e0557e3faf1bc1c24183d1ce5d72e1b5c3fbd892', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e4d78e25cff7', 'math', 2, 1, 'choice', '{"stem":"下面哪个是锐角？","answer":3,"options":["比直角大","等于直角","不是角","比直角小"],"explanation":"锐角比直角小。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '698dbdebef750333debb200941c2ab585db8d12a0d3b49bafd42a04d9d56db48', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e73d702757ad', 'math', 2, 2, 'choice', '{"stem":"一棵大树大约高8什么？","answer":3,"options":["厘米","毫米","分米","米"],"explanation":"大树的高度用米，8米大约三层楼高。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], 'f2b32b0b888b1daaa79d767bf6ac5207414785e7ceeaa7bbbae5c767990864e2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e7717f99db5e', 'math', 2, 1, 'fill', '{"stem":"8 × 6 = ___","answer":"48","explanation":"六八四十八。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'f77b19f734458af10a8943a86e2e10550465348c6cdf79d6032f42c5b6e3ef15', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-e89ab3097cc9', 'math', 2, 1, 'choice', '{"stem":"黑板的面是什么形状？","answer":3,"options":["圆形","三角形","正方形","长方形"],"explanation":"教室黑板通常是长方形。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '6253ed023e24887f34ac79cfc459b8bb09d1043f8763644f6ab702593a740a20', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-ebce24b9c596', 'math', 2, 3, 'choice', '{"stem":"把一根绳子剪成5段，每剪一次需要2分钟，一共需要几分钟？","answer":3,"options":["10分钟","6分钟","5分钟","8分钟"],"explanation":"剪成5段需剪4次，2×4=8分钟。"}'::jsonb, 'builtin', '时间与人民币', 'reason', array['生活计量']::text[], 'c0661e0f2d1c76744c285d165714b6d703b5b820825f6c111b0b432df18ecd42', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-ef11275fa88b', 'math', 2, 3, 'choice', '{"stem":"二（1）班有男生18人，女生比男生少3人，全班一共多少人？","answer":3,"options":["36人","21人","15人","33人"],"explanation":"女生18-3=15人，全班18+15=33人。"}'::jsonb, 'builtin', '两步问题', 'reason', array['生活情境']::text[], '8543bc2bfc763256065e180793ce5a3d3f475bede14154503f8e5ab43fa341c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f20a1e6f544a', 'math', 2, 2, 'match', '{"left":["2:15","10:30","5:00","9:45"],"stem":"把时间与对应的钟面描述连起来","right":["分针指3，时针刚过2","分针指6，时针在10和11中间","分针指12，时针指5","分针指9，时针快指10"],"matches":[[0,0],[1,1],[2,2],[3,3]],"explanation":"2:15分针指3，10:30分针指6，5:00分针指12，9:45分针指9。"}'::jsonb, 'builtin', '时间与人民币', 'apply', array['生活计量']::text[], 'b5baf4e7ad33167d74ff6efe981dd57da077381fa117c8303765fc91c291ff1a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f2f0c80e52d0', 'math', 2, 1, 'match', '{"left":["6×7","8×3","9×4","5×7"],"stem":"把算式和对应口诀连起来","right":["四九三十六","五七三十五","三八二十四","六七四十二"],"matches":[[0,3],[1,2],[2,0],[3,1]],"explanation":"6×7六七四十二，8×3三八二十四，9×4四九三十六，5×7五七三十五。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'eab5d9732d2f28d9d93dcc819a70ddf057a73f1fa24cff284b8a4fba49f406d4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f39ba6932da2', 'math', 2, 3, 'choice', '{"stem":"姐姐和妹妹都有一些贴纸，姐姐给妹妹3张后，两人一样多，原来姐姐比妹妹多几张？","answer":3,"options":["3张","9张","1张","6张"],"explanation":"姐姐给妹妹3张后相等，原来多3+3=6张。"}'::jsonb, 'builtin', '加法与减法', 'reason', array['计算与应用']::text[], 'f1144e14087d3fc287be39da97ab1e0be01a75db61d2644a86ba724eb36ce6ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f6e1814ee35f', 'math', 2, 1, 'fill', '{"stem":"3 × 7 = ___","answer":"21","explanation":"三七二十一。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'b89bd3b6432bca20df0fbe599bf6f913aeab9c48d424e75c784e81cc69010769', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f7b3e75bfe66', 'math', 2, 1, 'fill', '{"stem":"8 × 7 = ___","answer":"56","explanation":"七八五十六。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'aa144d6a0753997fb6142113ef4190b7c865a9f3e4e0d871f796d5e1061c64e4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f81e8681402e', 'math', 2, 1, 'choice', '{"stem":"钟面上，时针从12走到3，走了几小时？","answer":3,"options":["3分钟","15分钟","1小时","3小时"],"explanation":"时针走一大格是1小时，3大格是3小时。"}'::jsonb, 'builtin', '时间与人民币', 'understand', array['生活计量']::text[], '669022e1ffc8641af87a94eab27249145a06e4353e8b8a760a442635bd7d8818', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f9aef28462b5', 'math', 2, 1, 'match', '{"left":["7×8","9×5","6×6","8×4"],"stem":"把算式和结果连起来","right":["36","56","45","32"],"matches":[[0,1],[1,2],[2,0],[3,3]],"explanation":"7×8=56，9×5=45，6×6=36，8×4=32。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], 'f7dffe5967459277b619b8bd845d0f7fc92f3b112568a21dffb70741f0ccc401', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f9bccf7082bf', 'math', 2, 2, 'choice', '{"stem":"1米等于多少厘米？","answer":3,"options":["10厘米","50厘米","200厘米","100厘米"],"explanation":"1米=100厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], '842ea757f994bfee1332ec04a4632bed5b6120959601e51a21c042fbf6956710', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-f9f7aaf3d85b', 'math', 2, 2, 'choice', '{"stem":"小明的食指宽约1什么？","answer":3,"options":["米","毫米","千米","厘米"],"explanation":"食指宽约1厘米。"}'::jsonb, 'builtin', '长度与测量', 'apply', array['测量']::text[], 'd7538366a849b6a0266e4ffce0cb018e7f5a54cea46b73c575a4143d6f273e17', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-fc05042a9cad', 'math', 2, 2, 'choice', '{"stem":"从45里连续减9，减几次得0？","answer":3,"options":["4次","6次","3次","5次"],"explanation":"45÷9=5，减5次。"}'::jsonb, 'builtin', '除法初步', 'apply', array['数量关系']::text[], '37686a7cfa2a8a35295052e6b468cd8734c55be85aac97a930599049cbba69ed', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-fdb55da2f4b4', 'math', 2, 1, 'choice', '{"stem":"下列哪个是角？","answer":3,"options":["一条线","一个圆","两条不相连的线","一个顶点两条直直的边"],"explanation":"角由一个顶点和两条边组成。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '1a2d6b1a8a3afc3d1483af503cf46cb6ae4303a8d011f298352779167b7428d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-fe6a5e6bbe35', 'math', 2, 1, 'choice', '{"stem":"下列哪个物体的表面有直角？","answer":3,"options":["篮球","水杯","乒乓球","数学书"],"explanation":"数学书的封面有直角。"}'::jsonb, 'builtin', '方向与图形', 'understand', array['空间观念']::text[], '67af1de5603656671fde3c64b990761e753f1a1dc4c35fc09294c9246c452c9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g2-math-legacy-ff9b51cfcf1f', 'math', 2, 1, 'match', '{"left":["四七二十八","六九五十四","五八四十","三七二十一"],"stem":"把乘法口诀和对应的算式连起来","right":["3×7=21","4×7=28","6×9=54","5×8=40"],"matches":[[0,1],[1,2],[2,3],[3,0]],"explanation":"直接对应。"}'::jsonb, 'builtin', '表内乘法', 'understand', array['数量关系']::text[], '10f4d7a1397ea710408dce5a1fe9314155ec0d729a0a697d3f99c0276c8ac48f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;

commit;
