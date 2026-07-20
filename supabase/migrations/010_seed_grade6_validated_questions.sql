-- Auto-generated from validated canonical question JSON.
-- Safe to run repeatedly: rows are upserted by external_id.
begin;

insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-001', 'chinese', 6, 1, 'choice', '{"stem":"围绕“设置休息区要兼顾使用需求、树木保护和无障碍通行”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], '5025c624a8420d839bca009ebdd60101b40c5906794f65f65c0134b0bff51e32', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-002', 'chinese', 6, 1, 'choice', '{"stem":"材料一：“校园准备增加树荫下的座椅。调查显示，午后使用操场的同学中，七成希望休息区离活动场地近一些。”材料二：“园艺老师提醒，座椅不能压住树根，还要留出轮椅通行空间。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","设置休息区要兼顾使用需求、树木保护和无障碍通行","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“设置休息区要兼顾使用需求、树木保护和无障碍通行”。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], '195d05ccf5855ce18c9347ff9f06fd033a930ab4226e67d09fce54e43ac96745', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-003', 'chinese', 6, 1, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“校园准备增加树荫下的座椅。调查显示，午后使用操场的同学中，七成希望休息区离活动场地近一些。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","设置休息区要兼顾使用需求、树木保护和无障碍通行","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“设置休息区要兼顾使用需求、树木保护和无障碍通行”。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], 'cfaa16de2b62afee2183c7a9337f5260c6064f2f1be0319d39f1c88dae1f1496', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-004', 'chinese', 6, 1, 'choice', '{"stem":"观点是“设置休息区要兼顾使用需求、树木保护和无障碍通行”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","七成同学的需求和园艺老师提出的两项限制"],"answer":3,"explanation":"“七成同学的需求和园艺老师提出的两项限制”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], 'cf696c24f6bf08fa5e811c30162e623a1ef9b58179af7ffeaa239f0824003d6d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-005', 'chinese', 6, 1, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["建议有调查依据，但具体位置仍需现场测量","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：建议有调查依据，但具体位置仍需现场测量。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], 'b8eb5cc26c7d9aff0e5be88f65a92fe704df14cc4f394a9e399c234d15bc50de', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-006', 'chinese', 6, 1, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“一枝一叶总关情”可用来强调公共设计要关心真实需要","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], '6bbaa03380165536dc3918a32dd56206d7d554cc2428592198d6138c52da3c6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-007', 'chinese', 6, 1, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","建议书应呈现调查数据、位置方案和安全说明","把不同意见全部删去"],"answer":2,"explanation":"“建议书应呈现调查数据、位置方案和安全说明”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], 'fa308934ce0db98aa8a28efae8d84c0bdd767d1451feea13eb6586d469b04f06', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-008', 'chinese', 6, 1, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","公共事务中兼顾他人和环境"],"answer":3,"explanation":"材料中的选择和权衡体现了“公共事务中兼顾他人和环境”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '综合阅读']::text[], 'e024271d364f556cc3bfbe70e6e0c682b9559c26fc96e5f2a35750d2d816db1f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-009', 'chinese', 6, 1, 'choice', '{"stem":"围绕“古桥利用要在安全、历史真实性和参观需求之间取得平衡”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], 'aafa8e73c1c7cc2fc056631ea60930d2940ae3f6eedaae2db426a969fba6b1ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-010', 'chinese', 6, 1, 'choice', '{"stem":"材料一：“古桥修缮记录写道：石栏松动处采用原尺寸石料补配，仍稳固的旧构件尽量保留。”材料二：“游客问卷显示，多数人希望增加夜间照明，但也担心强光破坏古桥原有氛围。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","古桥利用要在安全、历史真实性和参观需求之间取得平衡","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“古桥利用要在安全、历史真实性和参观需求之间取得平衡”。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], 'af739a476818e4e91958823c366ac16dea055daa50925cce3499decc3a030ef9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-011', 'chinese', 6, 1, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“古桥修缮记录写道：石栏松动处采用原尺寸石料补配，仍稳固的旧构件尽量保留。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","古桥利用要在安全、历史真实性和参观需求之间取得平衡","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“古桥利用要在安全、历史真实性和参观需求之间取得平衡”。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], '17220e5e80427aec861f8679e02984d7135a7b2a587d615f74106edb80d1c5e0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-012', 'chinese', 6, 1, 'choice', '{"stem":"观点是“古桥利用要在安全、历史真实性和参观需求之间取得平衡”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","修缮原则与游客对照明的两方面意见"],"answer":3,"explanation":"“修缮原则与游客对照明的两方面意见”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], '2e2ae7a1ea11099c04cf95ed00df0e38cb58b1f15e6420b958a240b095382df0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-013', 'chinese', 6, 1, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["增加照明有需求基础，亮度和位置仍需论证","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：增加照明有需求基础，亮度和位置仍需论证。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], 'b1efa11c262978074048db9f873bf81910064b27ea1385a3b074489a5e6c5233', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-014', 'chinese', 6, 1, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“修旧如旧”强调修缮后仍保留历史信息","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], '00d9f51d94df72173cea8f8fd2edf5c066db662916467b6fd0e3f3a59b03c07a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-015', 'chinese', 6, 1, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","讲解方案需区分原有构件、修补部分和新增设施","把不同意见全部删去"],"answer":2,"explanation":"“讲解方案需区分原有构件、修补部分和新增设施”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], 'afbba71faba9fbe1a83b054c8be262e43f2abdb121ebd367791ee2ddd3170dbc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-016', 'chinese', 6, 1, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","尊重历史遗存并审慎更新"],"answer":3,"explanation":"材料中的选择和权衡体现了“尊重历史遗存并审慎更新”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '综合阅读']::text[], '59bdd2087a4b25ae21f85ea64398dfdad8a4dfba46ffe9086b98b930673b91af', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-017', 'chinese', 6, 1, 'choice', '{"stem":"围绕“纸桥承重与结构有关，制作一致性也会影响实验结果”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], '26ace7a0bd7627c93cc59affdca658e43e437dcb78285517b6e46f6474bfa957', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-018', 'chinese', 6, 1, 'choice', '{"stem":"材料一：“实验组用同样大小的纸张折三种桥，每次逐枚放入相同硬币，记录桥面塌下前的数量。”材料二：“第一次结果中A桥承重最多，但第二次A桥折痕位置改变，承重明显下降。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","纸桥承重与结构有关，制作一致性也会影响实验结果","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“纸桥承重与结构有关，制作一致性也会影响实验结果”。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], 'ee35bb887c9e39b6a50f3e038ab4735094d0c29ea1f71704be75e303d19d045f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-019', 'chinese', 6, 1, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“实验组用同样大小的纸张折三种桥，每次逐枚放入相同硬币，记录桥面塌下前的数量。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","纸桥承重与结构有关，制作一致性也会影响实验结果","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“纸桥承重与结构有关，制作一致性也会影响实验结果”。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], '0225503b3f0cc522758b9756f6b52197af3eac6b8a34c7adda5b945822eea41e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-020', 'chinese', 6, 1, 'choice', '{"stem":"观点是“纸桥承重与结构有关，制作一致性也会影响实验结果”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","控制纸张和硬币相同以及A桥两次结果差异"],"answer":3,"explanation":"“控制纸张和硬币相同以及A桥两次结果差异”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], '4469b5d1756b62e95ccbf6760bf8428b3e999ce01d6c455e1cb8cdde1298efd2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-021', 'chinese', 6, 1, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["一次最高记录不能单独证明A结构始终最好","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：一次最高记录不能单独证明A结构始终最好。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], '88fc7f82a29ed7ddca1fc3aac994d36099f92a907b2e84c14035656750829b6e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-022', 'chinese', 6, 1, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“纸上得来终觉浅，绝知此事要躬行”强调实践验证","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], '76d899f8737fc6a0d186c820476438fa52a2a67810595b1594710627f266e0e7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-023', 'chinese', 6, 1, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","实验报告要写清变量、重复次数和异常情况","把不同意见全部删去"],"answer":2,"explanation":"“实验报告要写清变量、重复次数和异常情况”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], 'bc1076c3f4a40d53d497b2f3db134e1cdf66452a97ecec40b3e5f6bff304be98', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-024', 'chinese', 6, 1, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","重视实践并尊重证据"],"answer":3,"explanation":"材料中的选择和权衡体现了“重视实践并尊重证据”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '综合阅读']::text[], '2843625c4ad3ce42fbeec72a666f6b05425191f19e67ee4f4004db62a2ab1243', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-025', 'chinese', 6, 1, 'choice', '{"stem":"围绕“图书分类既要提高查找效率，也要符合不同读者的理解能力”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], '1243f060128ba015d5847e0376d147f9bc3fb865017253997a8fa817dfe2acf5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-026', 'chinese', 6, 1, 'choice', '{"stem":"材料一：“社区图书角把借阅量较高的书放在入口附近，并用颜色标签区分主题。”材料二：“志愿者观察到，低年级儿童仍常把书放错，因为他们不一定理解抽象的主题名称。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","图书分类既要提高查找效率，也要符合不同读者的理解能力","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“图书分类既要提高查找效率，也要符合不同读者的理解能力”。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], '34344074e39122a06788a8fe978203418b4504a9f45b9e08018bc8c4daf5dcd8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-027', 'chinese', 6, 1, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“社区图书角把借阅量较高的书放在入口附近，并用颜色标签区分主题。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","图书分类既要提高查找效率，也要符合不同读者的理解能力","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“图书分类既要提高查找效率，也要符合不同读者的理解能力”。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], '70da1e5e2097589d67019104c414189fd4b5d3991ecc2eec2f9fd067149be7cc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-028', 'chinese', 6, 1, 'choice', '{"stem":"观点是“图书分类既要提高查找效率，也要符合不同读者的理解能力”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","借阅布局调整和低年级儿童仍放错书的观察"],"answer":3,"explanation":"“借阅布局调整和低年级儿童仍放错书的观察”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], '54557d1f248f65a0babdabf53d0e792528bf27b57f727eb1c3918762e91121b4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-029', 'chinese', 6, 1, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["颜色标签有效但不足，还可增加图形或示例","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：颜色标签有效但不足，还可增加图形或示例。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], '56459c8affcb270c135d4b945b5f4c41a63587ba3dc66649aa0c005cf4895bac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-030', 'chinese', 6, 1, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“因材施教”提示服务设计要考虑对象差异","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], '1e15854d7d332f3c4c44c10f2696f99f9637b3303dc17b62bda2287f086b34d4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-031', 'chinese', 6, 1, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","分类指南应配合文字、颜色、图形和示例","把不同意见全部删去"],"answer":2,"explanation":"“分类指南应配合文字、颜色、图形和示例”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], 'be1aadc4f44db62a774be4ea887894d2933115b53bcdefadeca2843e2b8abbc8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-032', 'chinese', 6, 1, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","为不同年龄读者提供体贴服务"],"answer":3,"explanation":"材料中的选择和权衡体现了“为不同年龄读者提供体贴服务”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '综合阅读']::text[], '40e3d31e3f0be107f6b7a6790a1b04cc90d6155c1b614235b8d02020500c874c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-033', 'chinese', 6, 1, 'choice', '{"stem":"围绕“观察方法不同会影响数据，比较前要检查条件是否一致”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], 'c595feb9c51bec7c0ebda785dfc9e8f82232aa6d88fd93997790390952f7c718', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-034', 'chinese', 6, 1, 'choice', '{"stem":"材料一：“湿地观察队在固定地点、固定时段记录鸟类数量，并保持安静。”材料二：“另一组边走边记录，路线每天不同，有时还用声音吸引鸟靠近。两组数据差异很大。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","观察方法不同会影响数据，比较前要检查条件是否一致","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“观察方法不同会影响数据，比较前要检查条件是否一致”。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], 'afd5b26e64ba3c8efcbd9fb9f79101d1aa5ce909a525ca0e1bb4e0246f42aee7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-035', 'chinese', 6, 1, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“湿地观察队在固定地点、固定时段记录鸟类数量，并保持安静。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","观察方法不同会影响数据，比较前要检查条件是否一致","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“观察方法不同会影响数据，比较前要检查条件是否一致”。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], 'e92a1c673273a60795c74c58e11a9dbfaf24d7852bc37667febbc958a88087f3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-036', 'chinese', 6, 1, 'choice', '{"stem":"观点是“观察方法不同会影响数据，比较前要检查条件是否一致”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","固定观察与改变路线、主动吸引两种方法的差别"],"answer":3,"explanation":"“固定观察与改变路线、主动吸引两种方法的差别”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], '98edb1c4ce4c8528c15e23f37168a30ddaa25a8c4e2ee0dad271c020ecfe5c35', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-037', 'chinese', 6, 1, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["两组数量不能直接比较，需统一方法后再观察","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：两组数量不能直接比较，需统一方法后再观察。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], '73083c9b5d9f7473092346097fd537ff96505326abed9485e8fd1cf07da7533a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-038', 'chinese', 6, 1, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“不以规矩，不能成方圆”可引申为研究要有统一规则","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], 'ff18d668a489ca414b51e6574cba14f8e53740f888f81b8f564a37c61f9edf37', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-039', 'chinese', 6, 1, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","观察手册应明确地点、时段、距离和记录办法","把不同意见全部删去"],"answer":2,"explanation":"“观察手册应明确地点、时段、距离和记录办法”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], '3570bdcd5967f76d474e6cf4ff77ba569953b7f6668d866f49913b5f57e54644', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-040', 'chinese', 6, 1, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","遵守规则并减少对自然的干扰"],"answer":3,"explanation":"材料中的选择和权衡体现了“遵守规则并减少对自然的干扰”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '综合阅读']::text[], '6646ecc497cff033f0c77052c0fb38f7866769d4aa537ea19816eb5978797d79', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-041', 'chinese', 6, 1, 'choice', '{"stem":"围绕“小份取餐能减少浪费，但还要改善添饭流程”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], 'b00220a9a579095efa5d77e7e76d326c5b5df97f74bea7f7113547c2ced4ea77', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-042', 'chinese', 6, 1, 'choice', '{"stem":"材料一：“食堂连续两周公布各年级人均剩饭量，并提供“小份可添”选择。”材料二：“数据显示剩饭下降，但访谈也发现部分同学因为排队时间长而不愿再次添饭。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","小份取餐能减少浪费，但还要改善添饭流程","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“小份取餐能减少浪费，但还要改善添饭流程”。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], 'bf6188ea1f817a682898299bcd96d2442d78743aa932d706e2a282a388f37f1d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-043', 'chinese', 6, 1, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“食堂连续两周公布各年级人均剩饭量，并提供“小份可添”选择。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","小份取餐能减少浪费，但还要改善添饭流程","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“小份取餐能减少浪费，但还要改善添饭流程”。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], '13626a5aafe3b639cbd5516d088ae68ce406c9ae5f33cf0f0b995e619cced110', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-044', 'chinese', 6, 1, 'choice', '{"stem":"观点是“小份取餐能减少浪费，但还要改善添饭流程”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","剩饭数据下降和同学关于排队时间的访谈"],"answer":3,"explanation":"“剩饭数据下降和同学关于排队时间的访谈”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], 'c143961a0c0ab1ab8c85e5397200a15bd9aa6fe71110d6b19bede0f2ff21bad8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-045', 'chinese', 6, 1, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["措施初见效果，不能忽略便利性对行为的影响","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：措施初见效果，不能忽略便利性对行为的影响。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], '268b5874effa96b802c0927a0578113279bed89969841012e59fd0fb895c5a74', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-046', 'chinese', 6, 1, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“一粥一饭，当思来处不易”提醒人们珍惜粮食","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], 'b0d8bac06a0e437daa6cdf5df0e7359cc9c689dede4810bbd2895b8c64bba0bf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-047', 'chinese', 6, 1, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","改进方案应同时说明节约效果和排队优化办法","把不同意见全部删去"],"answer":2,"explanation":"“改进方案应同时说明节约效果和排队优化办法”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], 'a5007f30341298a8b05e47967e759a398b19e0353e9d8df432584ddf95eb9505', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-048', 'chinese', 6, 1, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","珍惜粮食并用实际制度减少浪费"],"answer":3,"explanation":"材料中的选择和权衡体现了“珍惜粮食并用实际制度减少浪费”。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '综合阅读']::text[], 'ba3d60dac0a81975cab62eae214ebd4d11711b0974eaed019398ed5e09eab0a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-049', 'chinese', 6, 1, 'choice', '{"stem":"围绕“校车方案要权衡覆盖范围、通勤时间和不同群体需求”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], 'a934d0ffcf025c3acfbae6906695a34058f348b62a565c9505624cab4c7d8893', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-050', 'chinese', 6, 1, 'choice', '{"stem":"材料一：“校车甲线停靠站多、覆盖范围广；乙线停靠站少、平均用时短。”材料二：“问卷中，低年级家长更关注步行距离，高年级学生更关注到校时间。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","校车方案要权衡覆盖范围、通勤时间和不同群体需求","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“校车方案要权衡覆盖范围、通勤时间和不同群体需求”。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], 'd12153295f5413a775c75767de0cdbc1ccdd398efe7fad5992e1d812bf8b6c89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-051', 'chinese', 6, 1, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“校车甲线停靠站多、覆盖范围广；乙线停靠站少、平均用时短。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","校车方案要权衡覆盖范围、通勤时间和不同群体需求","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“校车方案要权衡覆盖范围、通勤时间和不同群体需求”。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], 'c441cbb50ab69dc236be5b192a7b5d42754ddae19214544a90c928a8275bb52e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-052', 'chinese', 6, 1, 'choice', '{"stem":"观点是“校车方案要权衡覆盖范围、通勤时间和不同群体需求”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","两条线路的特点以及两个群体的不同关注点"],"answer":3,"explanation":"“两条线路的特点以及两个群体的不同关注点”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], 'dd4c30f9676db3240fd0f3bfcfb12e507ba6850ba367d390c8d646487fece1c5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-053', 'chinese', 6, 2, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["不能只凭平均用时决定线路优劣","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：不能只凭平均用时决定线路优劣。"}'::jsonb, 'builtin', '概括评价', 'apply', array['全国通用', '多文本整合']::text[], '1642e427cd3926f528775a4377a7449808fe595d280a4f331c85e86007a7ae5a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-054', 'chinese', 6, 2, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“兼听则明”提醒决策者听取多方意见","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'apply', array['全国通用', '多文本整合']::text[], 'a10610a5f6c90b52c0f3788fb8742b920974d0c93c014bc6f4e36f29156f5c04', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-055', 'chinese', 6, 2, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","路线比较表应列出站点、用时、服务人数和风险","把不同意见全部删去"],"answer":2,"explanation":"“路线比较表应列出站点、用时、服务人数和风险”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'apply', array['全国通用', '多文本整合']::text[], '4fa7d6903ba1c214ea1343f5e889780499c00de13c52cd3f2e7f253fd929445b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-056', 'chinese', 6, 2, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","公共决策尊重多方需求"],"answer":3,"explanation":"材料中的选择和权衡体现了“公共决策尊重多方需求”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '多文本整合']::text[], '48aedf0502087c98dbff73e0734477342f5e220d5dae47f2534fdb05ba9b8f2e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-057', 'chinese', 6, 2, 'choice', '{"stem":"围绕“传统工艺传播可以降低体验门槛，但不能歪曲关键技艺”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'apply', array['全国通用', '多文本整合']::text[], '734ecb9c6a78a2b1bbabd042ee239148cb36891a669ac44efcc21a899e8e8308', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-058', 'chinese', 6, 2, 'choice', '{"stem":"材料一：“木版年画体验课介绍画稿、刻版、调色、套印四道工序。”材料二：“传承人说，体验活动可以简化工具，却不能把套印说成“随便盖几下”，因为对版准确是技艺核心。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","传统工艺传播可以降低体验门槛，但不能歪曲关键技艺","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“传统工艺传播可以降低体验门槛，但不能歪曲关键技艺”。"}'::jsonb, 'builtin', '多文本阅读', 'apply', array['全国通用', '多文本整合']::text[], '5a4e02fd4573c2a3caf8abf357c07cf832cec819ee34935e10612d43b306abea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-059', 'chinese', 6, 2, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“木版年画体验课介绍画稿、刻版、调色、套印四道工序。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","传统工艺传播可以降低体验门槛，但不能歪曲关键技艺","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“传统工艺传播可以降低体验门槛，但不能歪曲关键技艺”。"}'::jsonb, 'builtin', '信息整合', 'apply', array['全国通用', '多文本整合']::text[], 'b78f20f9e29f5aa121a40e9ed81275a9e7392f83d4dc2c26c5a5d15153f4cf2a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-060', 'chinese', 6, 2, 'choice', '{"stem":"观点是“传统工艺传播可以降低体验门槛，但不能歪曲关键技艺”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","工序介绍和传承人对套印核心要求的说明"],"answer":3,"explanation":"“工序介绍和传承人对套印核心要求的说明”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'apply', array['全国通用', '多文本整合']::text[], 'de82c23686644120b6a781bbd79b063eada905eb0138a8918baef06402dcf03a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-061', 'chinese', 6, 2, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["简化体验具有可行性，讲解必须保留技艺原理","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：简化体验具有可行性，讲解必须保留技艺原理。"}'::jsonb, 'builtin', '概括评价', 'apply', array['全国通用', '多文本整合']::text[], '6368c48c5441187de64c8d2cf93514c04f489c0feebea3331dd9a9c0575986aa', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-062', 'chinese', 6, 2, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“守正创新”强调在尊重根本的基础上发展","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'apply', array['全国通用', '多文本整合']::text[], 'b8c92d4ba78be1abd4d718014d22207b7aedebd2d0647e21a970eb9d53337ab7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-063', 'chinese', 6, 2, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","体验说明要标明简化步骤与正式工艺的区别","把不同意见全部删去"],"answer":2,"explanation":"“体验说明要标明简化步骤与正式工艺的区别”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'apply', array['全国通用', '多文本整合']::text[], 'c62ff74339a9f3f1b143900760570e227acf74ccd2983a820d748361c920d155', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-064', 'chinese', 6, 2, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","尊重技艺核心并探索恰当传播"],"answer":3,"explanation":"材料中的选择和权衡体现了“尊重技艺核心并探索恰当传播”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '多文本整合']::text[], '49f10d080ca9039d3922e3ab1fb31dee442eebd1e50f2f8b5817ba3088eb3c88', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-065', 'chinese', 6, 2, 'choice', '{"stem":"围绕“夜间照明要同时考虑人的安全活动和湿地生物影响”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'apply', array['全国通用', '多文本整合']::text[], '671acdc3f1d21463e63c451ec455c164a4726723e8c197bc11d796b29b49643c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-066', 'chinese', 6, 2, 'choice', '{"stem":"材料一：“公园夜间照明改造后，主路亮度提高，晚间慢跑人数增加。”材料二：“昆虫观察小组发现，靠近湿地区域的强光会吸引大量飞虫，可能干扰其活动。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","夜间照明要同时考虑人的安全活动和湿地生物影响","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“夜间照明要同时考虑人的安全活动和湿地生物影响”。"}'::jsonb, 'builtin', '多文本阅读', 'apply', array['全国通用', '多文本整合']::text[], '2a350cc528ee86047434edbc40fe289749017dbc23619b9114e46bbad1ab98ba', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-067', 'chinese', 6, 2, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“公园夜间照明改造后，主路亮度提高，晚间慢跑人数增加。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","夜间照明要同时考虑人的安全活动和湿地生物影响","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“夜间照明要同时考虑人的安全活动和湿地生物影响”。"}'::jsonb, 'builtin', '信息整合', 'apply', array['全国通用', '多文本整合']::text[], '4513c2e2f77b02ae36003d538b39ccd12d83122854c95117f73b5b63319aac65', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-068', 'chinese', 6, 2, 'choice', '{"stem":"观点是“夜间照明要同时考虑人的安全活动和湿地生物影响”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","慢跑人数变化与强光附近飞虫聚集的观察"],"answer":3,"explanation":"“慢跑人数变化与强光附近飞虫聚集的观察”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'apply', array['全国通用', '多文本整合']::text[], '71e5fa551a8dc57519e5e5cbb34892ddd510437e61495de697b52ccb60ccdd9b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-069', 'chinese', 6, 2, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["主路增亮有积极作用，但湿地区域应采用更谨慎方案","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：主路增亮有积极作用，但湿地区域应采用更谨慎方案。"}'::jsonb, 'builtin', '概括评价', 'apply', array['全国通用', '多文本整合']::text[], '1284236445851d54037205f9df8eab4deda9d603fab696b1b1f542a4b000a197', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-070', 'chinese', 6, 2, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“万物并育而不相害”体现人与自然协调共处","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'apply', array['全国通用', '多文本整合']::text[], '33748cfe5904d1d949a7ed198b4c4c0766820b4ae0cfebe98c1ff9037113b9ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-071', 'chinese', 6, 2, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","改造说明应分区域提出亮度、时间和遮光措施","把不同意见全部删去"],"answer":2,"explanation":"“改造说明应分区域提出亮度、时间和遮光措施”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'apply', array['全国通用', '多文本整合']::text[], '7543a46ba78e313de634065d98f724c8951406f5846affaa7b70e316fd785c87', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-072', 'chinese', 6, 2, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","在改善生活时保护其他生命"],"answer":3,"explanation":"材料中的选择和权衡体现了“在改善生活时保护其他生命”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '多文本整合']::text[], 'a1b3637314bb070ec5a3a1057e0a63028c6334bafc896e42b6e54fc1a99ef871', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-073', 'chinese', 6, 2, 'choice', '{"stem":"围绕“评价义卖项目应综合收入、成本、环保和财务规范”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'apply', array['全国通用', '多文本整合']::text[], 'b3663c167036be9b3679dee8d7ccd42dda0f5e3cef986d3d8aa32863e9c10284', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-074', 'chinese', 6, 2, 'choice', '{"stem":"材料一：“班级义卖最初把“销售额最高”作为唯一评价标准。”材料二：“复盘时，同学发现有的小组成本很高，有的小组虽然收入不多，却把材料循环使用并完整记录账目。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","评价义卖项目应综合收入、成本、环保和财务规范","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“评价义卖项目应综合收入、成本、环保和财务规范”。"}'::jsonb, 'builtin', '多文本阅读', 'apply', array['全国通用', '多文本整合']::text[], '475a8d7e2dfab30c9eb87d3b73ea8d683eb6b0fd5ec57fb05ee42c7d8e416496', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-075', 'chinese', 6, 2, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“班级义卖最初把“销售额最高”作为唯一评价标准。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","评价义卖项目应综合收入、成本、环保和财务规范","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“评价义卖项目应综合收入、成本、环保和财务规范”。"}'::jsonb, 'builtin', '信息整合', 'apply', array['全国通用', '多文本整合']::text[], 'f862b09361468ba61a09349a07cb438fb846e78e680a000b568cc6cc934e50ac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-076', 'chinese', 6, 2, 'choice', '{"stem":"观点是“评价义卖项目应综合收入、成本、环保和财务规范”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","高销售额可能伴随高成本以及低收入组的环保与规范表现"],"answer":3,"explanation":"“高销售额可能伴随高成本以及低收入组的环保与规范表现”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'apply', array['全国通用', '多文本整合']::text[], 'e5d7aa238444d59ea22bb90f06f01998e7da58a957fb8939eee4e52a376a3b47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-077', 'chinese', 6, 2, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["单用销售额排名不能全面反映项目质量","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：单用销售额排名不能全面反映项目质量。"}'::jsonb, 'builtin', '概括评价', 'apply', array['全国通用', '多文本整合']::text[], '6d790ab38d93c0d9d29b5e23ba34f5cafd45179cd0592345a23f5f1c5717d97c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-078', 'chinese', 6, 2, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“取之有度，用之有节”可联系资源节约","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'apply', array['全国通用', '多文本整合']::text[], '94067792af28fe059b842a2967ec6a55e8e076226dacb7aeb78b3b753976a93e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-079', 'chinese', 6, 2, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","成果报告要区分销售额、成本、结余和社会价值","把不同意见全部删去"],"answer":2,"explanation":"“成果报告要区分销售额、成本、结余和社会价值”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'apply', array['全国通用', '多文本整合']::text[], 'c8c8a55add3ed4f90ac44e53c136bb8e222e50db298a0690b391e5123f24f70f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-080', 'chinese', 6, 2, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","诚信记账并节约使用资源"],"answer":3,"explanation":"材料中的选择和权衡体现了“诚信记账并节约使用资源”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '多文本整合']::text[], '1d20677ae5cc496faec92adbc4d552a6802a17e308473d65c46ec9989b52ed20', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-081', 'chinese', 6, 2, 'choice', '{"stem":"围绕“现有数据提示气温差异，但不足以直接判断长期变化”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'apply', array['全国通用', '多文本整合']::text[], '55597f1af7839023fc18451990ec51c876c02ea87a8313a156cccde50f81cf4e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-082', 'chinese', 6, 2, 'choice', '{"stem":"材料一：“气象小组发现本月平均气温高于去年同期。”材料二：“老师指出，两个月各只有部分日期数据，而且测量时间并不完全一致。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","现有数据提示气温差异，但不足以直接判断长期变化","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“现有数据提示气温差异，但不足以直接判断长期变化”。"}'::jsonb, 'builtin', '多文本阅读', 'apply', array['全国通用', '多文本整合']::text[], '50bc0fa9be811957dace443dee4a90e5a0d017d3733ee0199338f4a4d9562d0c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-083', 'chinese', 6, 2, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“气象小组发现本月平均气温高于去年同期。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","现有数据提示气温差异，但不足以直接判断长期变化","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“现有数据提示气温差异，但不足以直接判断长期变化”。"}'::jsonb, 'builtin', '信息整合', 'apply', array['全国通用', '多文本整合']::text[], 'ec077b93e661d5b9ea00da32338f1334264ccf176689b91b4a3eda1e26a95453', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-084', 'chinese', 6, 2, 'choice', '{"stem":"观点是“现有数据提示气温差异，但不足以直接判断长期变化”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","平均气温差异与日期、测量时间不一致的限制"],"answer":3,"explanation":"“平均气温差异与日期、测量时间不一致的限制”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'apply', array['全国通用', '多文本整合']::text[], '6b31d319cfea6b1ab2dbef286fdfa4368546227981c53b18b4ec362ca6070459', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-085', 'chinese', 6, 2, 'choice', '{"stem":"评价现有结论：哪项说法最恰当？","options":["结论需要补齐数据并统一测量条件后再检验","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：结论需要补齐数据并统一测量条件后再检验。"}'::jsonb, 'builtin', '概括评价', 'apply', array['全国通用', '多文本整合']::text[], 'aa602b7710079bafecde03980b8123e69f7b9a9e9891d44d1834c21e17d13ad6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-086', 'chinese', 6, 2, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“知之为知之，不知为不知”强调诚实面对认知边界","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'apply', array['全国通用', '多文本整合']::text[], 'e805b1bb81230a9d3b4909b5a0ae721e2ebedfa0b761d6480a1df802f72c573a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-087', 'chinese', 6, 2, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","数据简报要同时呈现发现、方法和局限","把不同意见全部删去"],"answer":2,"explanation":"“数据简报要同时呈现发现、方法和局限”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'apply', array['全国通用', '多文本整合']::text[], '11051c6f74e958914e25bab30d8374614e1ac09bd428134839ac61c9bd81f571', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-088', 'chinese', 6, 2, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","实事求是，不夸大有限证据"],"answer":3,"explanation":"材料中的选择和权衡体现了“实事求是，不夸大有限证据”。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '多文本整合']::text[], 'e2154161f6cab87561232d804a12adda8eac9f74119a78b1cca6fc1b5f8f4ecf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-089', 'chinese', 6, 2, 'choice', '{"stem":"围绕“数字讲解能扩展信息，但设计要兼顾可访问性并引导观察实物”修改表达。哪句话逻辑严谨、语意完整？","options":["不仅要提出观点，还要说明证据与观点的联系","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"完整论述需要把观点、证据及二者关系说清楚。"}'::jsonb, 'builtin', '语言综合运用', 'apply', array['全国通用', '多文本整合']::text[], '2051a7b2e9a571206f7a7a250b68f15c37be716c5ec9804788710d44bb4c497f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-090', 'chinese', 6, 3, 'choice', '{"stem":"材料一：“博物馆新展签增加了二维码，观众可以听语音讲解和查看修复前照片。”材料二：“老年观众反馈二维码字体太小，部分儿童则只看动画而忽略实物。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","数字讲解能扩展信息，但设计要兼顾可访问性并引导观察实物","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“数字讲解能扩展信息，但设计要兼顾可访问性并引导观察实物”。"}'::jsonb, 'builtin', '多文本阅读', 'reason', array['全国通用', '多文本整合']::text[], '3bc38f537aa08c550b908ae9eb80a07f39675362bca74677e82c101097bf6bb2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-091', 'chinese', 6, 3, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“博物馆新展签增加了二维码，观众可以听语音讲解和查看修复前照片。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","数字讲解能扩展信息，但设计要兼顾可访问性并引导观察实物","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“数字讲解能扩展信息，但设计要兼顾可访问性并引导观察实物”。"}'::jsonb, 'builtin', '信息整合', 'reason', array['全国通用', '多文本整合']::text[], '550a536e122841ebcfdfdb0f05e4133df5183d72ed5573f2442a46282b7730b7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-092', 'chinese', 6, 3, 'choice', '{"stem":"观点是“数字讲解能扩展信息，但设计要兼顾可访问性并引导观察实物”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","数字内容的功能与两类观众遇到的问题"],"answer":3,"explanation":"“数字内容的功能与两类观众遇到的问题”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'reason', array['全国通用', '多文本整合']::text[], '3c83e41b1571358eb228a78e878a9baba94e474309139b4075ea57bc8a338cd0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-093', 'chinese', 6, 3, 'choice', '{"stem":"判断结论的证据边界：哪项说法最恰当？","options":["不能用数字资源完全代替清晰展签和现场观察","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：不能用数字资源完全代替清晰展签和现场观察。"}'::jsonb, 'builtin', '概括评价', 'reason', array['全国通用', '多文本整合']::text[], '5aa6e2ceee54597b4dbade0cf5b22a8f7e91cb2e0ab6aed8c0475285133e2bca', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-094', 'chinese', 6, 3, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“博观而约取”可理解为广泛获取后选择关键信息","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'reason', array['全国通用', '多文本整合']::text[], 'b2326b003636557bd03de400ada07613658541407aea8e5d045e108c99c9c12a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-095', 'chinese', 6, 3, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","展签改版要测试字体、操作步骤和实物观察提示","把不同意见全部删去"],"answer":2,"explanation":"“展签改版要测试字体、操作步骤和实物观察提示”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'reason', array['全国通用', '多文本整合']::text[], '3a2edd34468e73180a2fbd582f51bdf97f40cb4d53b4c796a382336b5929c21d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-096', 'chinese', 6, 3, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","让文化服务对不同群体更友好"],"answer":3,"explanation":"材料中的选择和权衡体现了“让文化服务对不同群体更友好”。"}'::jsonb, 'builtin', '传统文化', 'reason', array['全国通用', '多文本整合']::text[], 'c9f255239f42a91b2261d7aa4ddb7cd763e785b361df05fba37f4caddb2f2932', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-097', 'chinese', 6, 3, 'choice', '{"stem":"围绕“纪念作品既要有表达感染力，也必须尊重事实和版权”修改表达。哪句话逻辑严谨、语意完整？","options":["即使已有初步证据，也应说明适用范围并继续验证","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"严谨表达既说明证据，也承认范围和继续验证的必要。"}'::jsonb, 'builtin', '语言综合运用', 'reason', array['全国通用', '多文本整合']::text[], '0715cbb203537a5623a390066e5887fa9f5470dbd0336867c71046265de08336', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-098', 'chinese', 6, 3, 'choice', '{"stem":"材料一：“毕业纪念册征稿通知要求作品真实、简洁，并说明照片拍摄时间。”材料二：“编辑组收到一篇文字优美的稿件，但其中把同学经历移花接木，还使用了来源不明的网络图片。”两则材料共同关注的核心问题是？","options":["两段文字完全没有共同话题","纪念作品既要有表达感染力，也必须尊重事实和版权","只比较标点数量和句子长短","都在介绍与主题无关的娱乐活动"],"answer":1,"explanation":"两则材料从不同角度共同指向“纪念作品既要有表达感染力，也必须尊重事实和版权”。"}'::jsonb, 'builtin', '多文本阅读', 'reason', array['全国通用', '多文本整合']::text[], '22557feae8363c2bc069d30ee3601552444c6ed7af5d971893fb7874c8b7bf15', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-099', 'chinese', 6, 3, 'choice', '{"stem":"分别提取两则材料的关键信息。哪项整合最完整？材料一：“毕业纪念册征稿通知要求作品真实、简洁，并说明照片拍摄时间。”材料二补充了另一角度。","options":["只保留材料一的一个数字","只抄材料二的最后一个词","纪念作品既要有表达感染力，也必须尊重事实和版权","删除两则材料之间的联系"],"answer":2,"explanation":"整合结果同时保留两则材料的重点，并揭示“纪念作品既要有表达感染力，也必须尊重事实和版权”。"}'::jsonb, 'builtin', '信息整合', 'reason', array['全国通用', '多文本整合']::text[], '3ab2f3a74494ea8110407da6b769483d15cf92e2d33c8dc2a2ba2d73db99946c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-100', 'chinese', 6, 3, 'choice', '{"stem":"观点是“纪念作品既要有表达感染力，也必须尊重事实和版权”。哪组证据最能直接支持它？","options":["文章标题的字数","读者个人没有依据的喜好","与主题无关的一次偶然经历","征稿要求与稿件中经历、图片来源的问题"],"answer":3,"explanation":"“征稿要求与稿件中经历、图片来源的问题”分别来自两则材料，能够共同支持观点。"}'::jsonb, 'builtin', '观点与证据', 'reason', array['全国通用', '多文本整合']::text[], 'c543515250b199ae1dbcb5f145b4569fec50b9185912a977ad1559757a46b17c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-101', 'chinese', 6, 3, 'choice', '{"stem":"判断结论的证据边界：哪项说法最恰当？","options":["文字优美不能弥补事实失真和来源不明","现有材料可以证明所有时间和地点都一样","只要观点动听就不需要证据","发现限制后应把全部材料都丢弃"],"answer":0,"explanation":"评价既承认已有信息，也注意到证据限制：文字优美不能弥补事实失真和来源不明。"}'::jsonb, 'builtin', '概括评价', 'reason', array['全国通用', '多文本整合']::text[], '32388280039f0aff0fd8c444df936fa4a1fb488a097c80c1d54ea343a55f622a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-102', 'chinese', 6, 3, 'choice', '{"stem":"联系材料主题，哪项古诗文或成语理解最恰当？","options":["古诗文只能逐字翻译，不能联系语境","“言必信，行必果”可联系诚实表达与责任","引用名句后就不必说明它与材料的关系","任何名句都能支持任何观点"],"answer":1,"explanation":"这一理解能把名句含义与材料的做法或价值建立合理联系。"}'::jsonb, 'builtin', '古诗文语境', 'reason', array['全国通用', '多文本整合']::text[], 'da00e4455ab765faa5b62b2c2216fbb117caa20a02d1b744ce596c89eb7043b0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-103', 'chinese', 6, 3, 'choice', '{"stem":"要把材料转化为面向真实读者的作品，哪项要求最有效？","options":["只追求装饰，不写事实和步骤","隐藏材料来源和适用对象","编辑规范应包括事实核对、授权确认和修改流程","把不同意见全部删去"],"answer":2,"explanation":"“编辑规范应包括事实核对、授权确认和修改流程”能让读者理解依据并实际使用。"}'::jsonb, 'builtin', '真实任务表达', 'reason', array['全国通用', '多文本整合']::text[], 'e80a07acd6e6736214c4768d009ce4963ebe345620716fc6fb3a8fda78e17d65', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-104', 'chinese', 6, 3, 'choice', '{"stem":"两则材料体现的传统观念或公共价值是？","options":["夸大结论比尊重事实重要","个人方便永远高于公共安全","传统文化与今天的生活毫无关系","珍视共同记忆并坚持诚信表达"],"answer":3,"explanation":"材料中的选择和权衡体现了“珍视共同记忆并坚持诚信表达”。"}'::jsonb, 'builtin', '传统文化', 'reason', array['全国通用', '多文本整合']::text[], '149c7649d79600f45597cf17dc5042f1bec8403e4d3ccbf00f971f1d182c93e0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-105', 'chinese', 6, 3, 'choice', '{"stem":"围绕“步道建设要兼顾树木保护、雨水渗透和行洪安全”修改表达。哪句话逻辑严谨、语意完整？","options":["即使已有初步证据，也应说明适用范围并继续验证","因为有一个例子，所以任何情况都完全相同","虽然没有阅读材料，但是结论必定正确","只要句子很长，表达就一定严谨"],"answer":0,"explanation":"严谨表达既说明证据，也承认范围和继续验证的必要。"}'::jsonb, 'builtin', '语言综合运用', 'reason', array['全国通用', '多文本整合']::text[], 'fd69e698908031dd65717030a61a638c9812b3172dee911cfc02a6b8fd9dd5ad', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-106', 'chinese', 6, 1, 'fill', '{"stem":"“不仅要提出观点，___要提供证据”中应填递进关联词。","answer":"还","explanation":"结合六年级综合语文知识，填“还”能使表达准确完整。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], '2cc17742532b86bf15b71dfa2d6a590990db34045153d29c3715d60ac09ba623', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-107', 'chinese', 6, 1, 'fill', '{"stem":"比较两则材料时，要先找共同话题，再辨别各自的___。","answer":"角度","explanation":"结合六年级综合语文知识，填“角度”能使表达准确完整。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], '12dd855f38a2ead09d1c668919a78925ad141d66b6ab1170b8f506252bd839eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-108', 'chinese', 6, 1, 'fill', '{"stem":"整合信息不是简单拼接，而要建立信息之间的___。","answer":"联系","explanation":"结合六年级综合语文知识，填“联系”能使表达准确完整。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], '50f61d9afd01b5862cfb638c3934bc63c6fcb776cfe6e0bfe8ec2d61e163e7a4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-109', 'chinese', 6, 1, 'fill', '{"stem":"事实、数据和可靠事例都可以作为支持观点的___。","answer":"证据","explanation":"结合六年级综合语文知识，填“证据”能使表达准确完整。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], '5adf0f96b9b51b8c054f355eaf2f17f7e09c1668dd09630047356a3d7109c487', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-110', 'chinese', 6, 1, 'fill', '{"stem":"评价结论时，要检查证据是否充分以及适用___。","answer":"范围","explanation":"结合六年级综合语文知识，填“范围”能使表达准确完整。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], '03d6d134c4dc2217bdef3ecaf72f9dab4c85287c7114be9f7cfa05aa9db1c38b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-111', 'chinese', 6, 1, 'fill', '{"stem":"引用古诗文后，应说明它与当前语境的___。","answer":"联系","explanation":"结合六年级综合语文知识，填“联系”能使表达准确完整。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], 'b0a5e87bd0711fea0c2341280b8ad63be55bc88ccc4c5a6e0363f6af16f27486', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-112', 'chinese', 6, 1, 'fill', '{"stem":"面向真实读者写作，要考虑对象、目的和使用___。","answer":"场景","explanation":"结合六年级综合语文知识，填“场景”能使表达准确完整。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], '73402bd98e7b8e3af93a062ee80de80ac08bbe48c159c9e037886b8d5b8cc4af', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-113', 'chinese', 6, 1, 'fill', '{"stem":"传承传统文化既要尊重事实，也可以进行恰当的___。","answer":"创新","explanation":"结合六年级综合语文知识，填“创新”能使表达准确完整。"}'::jsonb, 'builtin', '传统文化', 'understand', array['全国通用', '综合阅读']::text[], 'aee12f47770c5bcb624a3f5dc56a23ee8958b42c380325d4faf7c96245461b95', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-114', 'chinese', 6, 1, 'fill', '{"stem":"“虽然已有数据，___仍需继续验证”应填转折词。","answer":"但是","explanation":"结合六年级综合语文知识，填“但是”能使表达准确完整。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], '27decb1fd02d7ab613a1df0d14a0870469c1985cc9af9a9482900c520b391a52', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-115', 'chinese', 6, 1, 'fill', '{"stem":"材料之间可能互相补充，也可能形成___。","answer":"对比","explanation":"结合六年级综合语文知识，填“对比”能使表达准确完整。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], '03d02cc96c8ca67968d0133b9e0d81075603773fa4d9dc1849161d8cc8aae70b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-116', 'chinese', 6, 1, 'fill', '{"stem":"表格、流程图和提纲都能帮助___复杂信息。","answer":"整理","explanation":"结合六年级综合语文知识，填“整理”能使表达准确完整。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], 'faca1d9fbbfe2102ad3039e9f1b9494ea3a3bb1cb2d104cd672efa02f5926ed1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-117', 'chinese', 6, 2, 'fill', '{"stem":"证据必须与观点相关，不能只追求数量___。","answer":"多","explanation":"结合六年级综合语文知识，填“多”能使表达准确完整。"}'::jsonb, 'builtin', '观点与证据', 'apply', array['全国通用', '多文本整合']::text[], 'e3257c12ecac7f0b890998c998fafe6e9e4ef69dc9cbcc52f65ecba32dd84f8a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-118', 'chinese', 6, 2, 'fill', '{"stem":"承认研究限制能使结论更加严谨和___。","answer":"可信","explanation":"结合六年级综合语文知识，填“可信”能使表达准确完整。"}'::jsonb, 'builtin', '概括评价', 'apply', array['全国通用', '多文本整合']::text[], 'd5e7bbd9f49fc4346d49598edc971382029b5365a13a240754b05ec03f502261', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-119', 'chinese', 6, 2, 'fill', '{"stem":"“纸上得来终觉浅”强调还要亲身___。","answer":"实践","explanation":"结合六年级综合语文知识，填“实践”能使表达准确完整。"}'::jsonb, 'builtin', '古诗文语境', 'apply', array['全国通用', '多文本整合']::text[], '1c3f0d6bfb93f6d8273be80c96eba1510a319d99d99afd5d52ca6c2f27ca2f0b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-120', 'chinese', 6, 2, 'fill', '{"stem":"通知要写清时间、地点、对象和注意___。","answer":"事项","explanation":"结合六年级综合语文知识，填“事项”能使表达准确完整。"}'::jsonb, 'builtin', '真实任务表达', 'apply', array['全国通用', '多文本整合']::text[], '9f8d3807f44894ad513e0c80bf7a5444185cf4fa0265f935ec1fe114d373ec1d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-121', 'chinese', 6, 2, 'fill', '{"stem":"保护文化遗产要保存其真实的历史___。","answer":"信息","explanation":"结合六年级综合语文知识，填“信息”能使表达准确完整。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '多文本整合']::text[], 'b3b59e58d60c5eb9dc0bfe6fb766e72716659f058e9be838c53fada5b9edd4e9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-122', 'chinese', 6, 2, 'fill', '{"stem":"删去重复和无关内容，可以使表达更___。","answer":"简洁","explanation":"结合六年级综合语文知识，填“简洁”能使表达准确完整。"}'::jsonb, 'builtin', '语言综合运用', 'apply', array['全国通用', '多文本整合']::text[], '119829b00ce77f21c0de04e7f2b75f0a28aa7d6396380f273375dc207cf001fd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-123', 'chinese', 6, 2, 'fill', '{"stem":"整合相互矛盾的信息时，应先核查来源和___。","answer":"条件","explanation":"结合六年级综合语文知识，填“条件”能使表达准确完整。"}'::jsonb, 'builtin', '信息整合', 'apply', array['全国通用', '多文本整合']::text[], '33df22b4f95db137189abfe074a0150ecf5b5691f67b2884be06d8835aa71199', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-124', 'chinese', 6, 3, 'fill', '{"stem":"单个事例通常不能证明所有情况，表达时要避免过度___。","answer":"概括","explanation":"结合六年级综合语文知识，填“概括”能使表达准确完整。"}'::jsonb, 'builtin', '观点与证据', 'reason', array['全国通用', '多文本整合']::text[], 'b429556c9a1703503baf7685f9aa4083d18ad3d0597e5407c1ced83785a92077', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-125', 'chinese', 6, 3, 'fill', '{"stem":"评价方案既要看收益，也要分析成本和___。","answer":"风险","explanation":"结合六年级综合语文知识，填“风险”能使表达准确完整。"}'::jsonb, 'builtin', '概括评价', 'reason', array['全国通用', '多文本整合']::text[], '1676dd44909a0a31a585cf2a40c46c29cf17513ca7e0be46dd70b223f8d2c245', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-126', 'chinese', 6, 3, 'fill', '{"stem":"作品交付前应让目标读者试用并提出___。","answer":"反馈","explanation":"结合六年级综合语文知识，填“反馈”能使表达准确完整。"}'::jsonb, 'builtin', '真实任务表达', 'reason', array['全国通用', '多文本整合']::text[], 'a95edfb82116841ac769135f3fb7c0412b8cb309c54eca85b42c0f004c8f3134', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-127', 'chinese', 6, 1, 'match', '{"stem":"小学毕业综合阅读图谱：匹配关联词与逻辑关系。","left":["因为……所以……","虽然……但是……","只有……才……","不仅……还……"],"right":["必要条件","因果","递进","转折"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据语言综合运用的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '语言综合运用', 'understand', array['全国通用', '综合阅读']::text[], '36d6513c7fefb81a81c15f5b61fcb70befd5347989291e089c2ce9a2c2c92cbc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-128', 'chinese', 6, 1, 'match', '{"stem":"小学毕业综合阅读图谱：匹配多文本关系与具体含义。","left":["共同点","不同点","补充","矛盾"],"right":["增加信息","相同主题","说法冲突","不同角度"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据多文本阅读的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '多文本阅读', 'understand', array['全国通用', '综合阅读']::text[], '4d858c19f1b7de879dfeeae6d9aa32e74b93d22614be3c1442b7db36ca2bf933', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-129', 'chinese', 6, 1, 'match', '{"stem":"小学毕业综合阅读图谱：匹配信息处理步骤与作用。","left":["提取","分类","联系","概括"],"right":["建立关系","找到关键内容","形成整体认识","按标准归组"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据信息整合的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '信息整合', 'understand', array['全国通用', '综合阅读']::text[], '45e0627c7f4936fa513057e152197f3374a44ea1ea717fb58eb7520836192c55', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-130', 'chinese', 6, 1, 'match', '{"stem":"小学毕业综合阅读图谱：匹配论证要素与功能。","left":["观点","事实","数据","推理"],"right":["具体数量","要说明的判断","证据到结论的过程","可核查情况"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据观点与证据的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '观点与证据', 'understand', array['全国通用', '综合阅读']::text[], '9c22854a29e7c731913d430d774c69eae007f9ee90cfaf035f7ce03a257923e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-131', 'chinese', 6, 1, 'match', '{"stem":"小学毕业综合阅读图谱：匹配评价标准与检查问题。","left":["充分性","相关性","适用范围","局限"],"right":["结论在哪里成立","证据够不够","尚未解决的问题","证据是否支持观点"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据概括评价的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '概括评价', 'understand', array['全国通用', '综合阅读']::text[], '81801a91739db4d53303afe5214348ed5aaa332c998a2a2ffa77bb00c1c1414e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-132', 'chinese', 6, 1, 'match', '{"stem":"小学毕业综合阅读图谱：匹配古语关键词与现代语境含义。","left":["躬行","兼听","守信","思危"],"right":["讲求信用","亲身实践","预想风险","听取多方"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据古诗文语境的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '古诗文语境', 'understand', array['全国通用', '综合阅读']::text[], '6655b41c9bc9c8d0abedf9e4fe32d58ba5333ac141f70d0045300cb80d90825e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-133', 'chinese', 6, 1, 'match', '{"stem":"小学毕业综合阅读图谱：匹配写作要素与需要回答的问题。","left":["读者","目的","证据","行动"],"right":["凭什么说","写给谁","希望怎样做","为什么写"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据真实任务表达的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '真实任务表达', 'understand', array['全国通用', '综合阅读']::text[], '6b53e7cbc51826fdfe6933b2d38817ad948e7a0467cde7fc51873c43fd1abd52', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-134', 'chinese', 6, 2, 'match', '{"stem":"小学毕业综合阅读图谱：匹配文化实践与行动目标。","left":["保护","传承","创新","求证"],"right":["适应当代","避免损毁","核查依据","延续价值"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据传统文化的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '传统文化', 'apply', array['全国通用', '多文本整合']::text[], '017c59db1b0f36084e5b3598d61f17c3e2378f0045f2687ae33bc3ff782ce455', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-135', 'chinese', 6, 2, 'match', '{"stem":"真实任务表达检查表：匹配关联词与逻辑关系。","left":["因为……所以……","虽然……但是……","只有……才……","不仅……还……"],"right":["必要条件","因果","递进","转折"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据语言综合运用的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '语言综合运用', 'apply', array['全国通用', '多文本整合']::text[], 'c80d0938c949ec48757d3302eee9a1a3eecaa8c930fe6c115005d78a28d36452', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-136', 'chinese', 6, 2, 'match', '{"stem":"真实任务表达检查表：匹配多文本关系与具体含义。","left":["共同点","不同点","补充","矛盾"],"right":["增加信息","相同主题","说法冲突","不同角度"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据多文本阅读的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '多文本阅读', 'apply', array['全国通用', '多文本整合']::text[], '5f73ab5c5473be237ac56df3082c68c714278b70a4cd019aa320955d213d4a34', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-137', 'chinese', 6, 2, 'match', '{"stem":"真实任务表达检查表：匹配信息处理步骤与作用。","left":["提取","分类","联系","概括"],"right":["建立关系","找到关键内容","形成整体认识","按标准归组"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据信息整合的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '信息整合', 'apply', array['全国通用', '多文本整合']::text[], '577832190ac407fa661365b7b8927eb4019de7e8b0abd4e0b07c0ac02ee94671', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-138', 'chinese', 6, 2, 'match', '{"stem":"真实任务表达检查表：匹配论证要素与功能。","left":["观点","事实","数据","推理"],"right":["具体数量","要说明的判断","证据到结论的过程","可核查情况"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据观点与证据的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '观点与证据', 'apply', array['全国通用', '多文本整合']::text[], '3be3ffd983e3df3647c51248394ef2f06991f661548a1febe4d0d0219d402f75', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-139', 'chinese', 6, 3, 'match', '{"stem":"真实任务表达检查表：匹配评价标准与检查问题。","left":["充分性","相关性","适用范围","局限"],"right":["结论在哪里成立","证据够不够","尚未解决的问题","证据是否支持观点"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据概括评价的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '概括评价', 'reason', array['全国通用', '多文本整合']::text[], '94a0528b1cdef3d959921c1a8474fc341dc0c31311cfe1fc97d7759d55a598b3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-chinese-authored-140', 'chinese', 6, 3, 'match', '{"stem":"真实任务表达检查表：匹配古语关键词与现代语境含义。","left":["躬行","兼听","守信","思危"],"right":["讲求信用","亲身实践","预想风险","听取多方"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据古诗文语境的含义、证据关系和使用场景逐项配对。"}'::jsonb, 'builtin', '古诗文语境', 'reason', array['全国通用', '多文本整合']::text[], 'd937601576390b2c5684908af1ddd9dca72749a651749548a996d210e7e9718a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-001', 'english', 6, 1, 'choice', '{"stem":"Read two short texts for “Tree-Shade Rest Area”: Text A — Survey: 70% of pupils want seats close to the sports field. Text B — Site note: keep seats away from large roots and leave a wide path for wheelchairs. What issue do both texts help the team understand?","options":["choose a convenient site without harming roots or blocking access","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '43f30bb2bb6cfd5a4d5dc5579961e90b7b185f63cc36167613dd981fd74a6126', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-002', 'english', 6, 1, 'choice', '{"stem":"Which sentence connects the two sources in the “Tree-Shade Rest Area” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], 'ddf27b17a0430c408764a3e9f8668f36d3929348126b1479be14648e7759fe6f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-003', 'english', 6, 1, 'choice', '{"stem":"Project notes: Text A — Survey: 70% of pupils want seats close to the sports field. Text B — Site note: keep seats away from large roots and leave a wide path for wheelchairs. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","choose a convenient site without harming roots or blocking access","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: choose a convenient site without harming roots or blocking access."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], '3412eef48ac66c22747c6b66d257dc03bce6c3bc895c79fad2423e72cf7383d3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-004', 'english', 6, 1, 'choice', '{"stem":"From the two sources in “Tree-Shade Rest Area”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","popularity alone cannot decide the exact location"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: popularity alone cannot decide the exact location."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], '1c42007a1a949aed51e2b2327e62172392c8d75a21e24dceef17b33c6a3559f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-005', 'english', 6, 1, 'choice', '{"stem":"Notice: “Tree-Shade Rest Area meeting — Tuesday, 3:30 p.m. — meeting room.” Which note records both when and where?","options":["Tuesday, 3:30 p.m.; meeting room","tomorrow; an unknown place","meeting room; no time given","Tuesday, 3:30 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], '0718550c1be44d815ba9ae00f70dc43affcf5dbdaf7a5887ebcbb539a3356bcc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-006', 'english', 6, 1, 'choice', '{"stem":"Task brief: “prepare a site proposal for the school planning team.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that the school planning team can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], '2e1c2c6f41ba525b8ca0bbc1539886ef446195bb59b53a37df13086e1b3e0afb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-007', 'english', 6, 1, 'choice', '{"stem":"A teammate says, “I think our goal should be to choose a convenient site without harming roots or blocking access, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], '2c41c9f47ff3873b927e3254d8cc42ab0c6ad9769d8cdd6baefb7b5ab380fd9e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-008', 'english', 6, 1, 'choice', '{"stem":"Before completing “prepare a site proposal”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'understand', array['全国通用', 'real-task English']::text[], 'a4504b4c513f0aeff15e849082dc4bc1105e78204bea6c80785c4a107dc43723', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-009', 'english', 6, 1, 'choice', '{"stem":"Read two short texts for “Old Bridge Lighting”: Text A — Visitor note: the bridge feels too dark after sunset. Text B — Heritage note: strong lights may hide stone details and change the historic atmosphere. What issue do both texts help the team understand?","options":["improve night safety while protecting the bridge’s character","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '6415c911c34e8766ec7f90edc087053c1b3d38c0833b99b96bd2e436325f3877', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-010', 'english', 6, 1, 'choice', '{"stem":"Which sentence connects the two sources in the “Old Bridge Lighting” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '330a15cac287f3e555e5dfd793c602ec5b3fafa2affe26b468b835e92ba23234', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-011', 'english', 6, 1, 'choice', '{"stem":"Project notes: Text A — Visitor note: the bridge feels too dark after sunset. Text B — Heritage note: strong lights may hide stone details and change the historic atmosphere. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","improve night safety while protecting the bridge’s character","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: improve night safety while protecting the bridge’s character."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], '935b0760c2f02f0a0188d898e40b144d3fc2c7ce699ead8a41a33dbd7f28580c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-012', 'english', 6, 1, 'choice', '{"stem":"From the two sources in “Old Bridge Lighting”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","light level and position need testing before installation"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: light level and position need testing before installation."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], '7c0e483540bc37a7841d29b4ca0b958af351090e211238712dd39dcebef4ecdc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-013', 'english', 6, 1, 'choice', '{"stem":"Notice: “Old Bridge Lighting meeting — Friday, 4:00 p.m. — museum office.” Which note records both when and where?","options":["Friday, 4:00 p.m.; museum office","tomorrow; an unknown place","museum office; no time given","Friday, 4:00 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], '99fa6f3ab25572efe88d035d5b6bb7086e872b34279617a65ba889e5fb0abc68', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-014', 'english', 6, 1, 'choice', '{"stem":"Task brief: “compare two lighting plans for heritage volunteers.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that heritage volunteers can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], '56b1b7da72ce2ac5a9fdd4d8378d519d991a95e9dfb6fc0ef71756bf6f5bfe40', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-015', 'english', 6, 1, 'choice', '{"stem":"A teammate says, “I think our goal should be to improve night safety while protecting the bridge’s character, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], 'db8caab56932d41895758b3eff0d0373f1c2dc977cf8b7e6194cc49c5c5596fc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-016', 'english', 6, 1, 'choice', '{"stem":"Before completing “compare two lighting plans”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'understand', array['全国通用', 'real-task English']::text[], 'c034b9dbd840e4143a9493b915669c953649e4cbddcf1eec8a80779f1dca92d7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-017', 'english', 6, 1, 'choice', '{"stem":"Read two short texts for “Paper Bridge Test”: Text A — Trial 1: the folded bridge held 42 coins, the highest result. Text B — Trial 2: a different fold position lowered the same design to 29 coins. What issue do both texts help the team understand?","options":["report both structural strength and the effect of consistent construction","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '6907c85214b23e07cd6e24cf6cba7f68971af20c0f7c8c23e483e070fc89511b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-018', 'english', 6, 1, 'choice', '{"stem":"Which sentence connects the two sources in the “Paper Bridge Test” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '9c9389fdc800f676bbf7d570c798ca810e293238344294cc95b8ba456c3c8a04', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-019', 'english', 6, 1, 'choice', '{"stem":"Project notes: Text A — Trial 1: the folded bridge held 42 coins, the highest result. Text B — Trial 2: a different fold position lowered the same design to 29 coins. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","report both structural strength and the effect of consistent construction","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: report both structural strength and the effect of consistent construction."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], 'ff78b6bbcb59c2a4dd567dad427da6276617a9bacb1443cc2557c1bccb4f4534', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-020', 'english', 6, 1, 'choice', '{"stem":"From the two sources in “Paper Bridge Test”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","one high result does not prove the design always works best"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: one high result does not prove the design always works best."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], '613ee4cacd774f3fe3f4962703ef780cb2bc8eda6d2b998ee4d0fa5a3bea7774', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-021', 'english', 6, 1, 'choice', '{"stem":"Notice: “Paper Bridge Test meeting — Monday, 2:20 p.m. — science lab.” Which note records both when and where?","options":["Monday, 2:20 p.m.; science lab","tomorrow; an unknown place","science lab; no time given","Monday, 2:20 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], '1fa0156aca02a7b00ec3787a717cb572263b25b185e56058423190e08a1e2e5a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-022', 'english', 6, 1, 'choice', '{"stem":"Task brief: “write a fair-test report for the science club.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that the science club can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], 'ecd97174a8c27b7f5d75c43ad635a9cfdb52ecd51c35b601d6c8845de79f0b94', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-023', 'english', 6, 1, 'choice', '{"stem":"A teammate says, “I think our goal should be to report both structural strength and the effect of consistent construction, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], 'c861eaad14f3bc2f5d2a7fad85f751b087c468593e546ff1ddb579d4844e2db5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-024', 'english', 6, 1, 'choice', '{"stem":"Before completing “write a fair-test report”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'understand', array['全国通用', 'real-task English']::text[], 'e8ccd4958605ded31400f08d459b5a0ce5cfe01821407041d972b6e2f1777cce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-025', 'english', 6, 1, 'choice', '{"stem":"Read two short texts for “Library Labels”: Text A — Borrowing data: books near the entrance were found more quickly. Text B — Observation: younger children still misunderstood labels with abstract topic words. What issue do both texts help the team understand?","options":["combine efficient shelf placement with child-friendly labels","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '8c93ca63ae513046a0e13f00f66c3c15f1ae3e1e210a0fe82f706d9faa586014', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-026', 'english', 6, 1, 'choice', '{"stem":"Which sentence connects the two sources in the “Library Labels” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '40f8f4bd58570ad642a30b8f8fcea6e2b97a6ee8e6d7d3fe11ceb92dc2029b00', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-027', 'english', 6, 1, 'choice', '{"stem":"Project notes: Text A — Borrowing data: books near the entrance were found more quickly. Text B — Observation: younger children still misunderstood labels with abstract topic words. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","combine efficient shelf placement with child-friendly labels","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: combine efficient shelf placement with child-friendly labels."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], 'd98c5bcf302e8e00bc3bde5659d884210b272060717f67b6d11ffe110dfcc5b1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-028', 'english', 6, 1, 'choice', '{"stem":"From the two sources in “Library Labels”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","colour labels may need pictures and examples"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: colour labels may need pictures and examples."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], 'ffd2dbe68f505200bbb1d14d7b4e4f6a2ed812dfce2538d42bc611f67677d8b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-029', 'english', 6, 1, 'choice', '{"stem":"Notice: “Library Labels meeting — Thursday, 12:40 p.m. — library corner.” Which note records both when and where?","options":["Thursday, 12:40 p.m.; library corner","tomorrow; an unknown place","library corner; no time given","Thursday, 12:40 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], '184684e8a0ce74580ac0e703b0fa8f217baeb69bf8469c97584d14738ef63fe7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-030', 'english', 6, 1, 'choice', '{"stem":"Task brief: “redesign the shelf guide for younger readers.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that younger readers can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], 'cbf0f593c022ec9708005d10aaceab21eff84025640d1fdbe70891b9eaa02133', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-031', 'english', 6, 1, 'choice', '{"stem":"A teammate says, “I think our goal should be to combine efficient shelf placement with child-friendly labels, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], '43b2874f79c826b0833aa6bb8048af3442df6924ae28f0082704127e1b8c1355', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-032', 'english', 6, 1, 'choice', '{"stem":"Before completing “redesign the shelf guide”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'understand', array['全国通用', 'real-task English']::text[], '81b4c85c5236195af28fd98f504f67c8894ac302a51ba33072b7a802704fbe02', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-033', 'english', 6, 1, 'choice', '{"stem":"Read two short texts for “Wetland Bird Count”: Text A — Team A watched at the same place and time without making noise. Text B — Team B changed routes and sometimes played bird sounds. What issue do both texts help the team understand?","options":["standardise observation conditions before comparing bird counts","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '10a97e45c8105ba0102f893362f025b052d6528f7a16456b85491a8fc80f3bc1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-034', 'english', 6, 1, 'choice', '{"stem":"Which sentence connects the two sources in the “Wetland Bird Count” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '68c0aa9d0de389519628acb21800d71121a3135417d33cfc123ee558524aaef0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-035', 'english', 6, 1, 'choice', '{"stem":"Project notes: Text A — Team A watched at the same place and time without making noise. Text B — Team B changed routes and sometimes played bird sounds. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","standardise observation conditions before comparing bird counts","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: standardise observation conditions before comparing bird counts."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], 'd0fda0fac42c431fac37a6e48fead96f8fc4ba7ba66f8b3bb22503b79c321ab1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-036', 'english', 6, 1, 'choice', '{"stem":"From the two sources in “Wetland Bird Count”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","the two teams’ totals are not directly comparable yet"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: the two teams’ totals are not directly comparable yet."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], 'abd68a476c40cce990f197e4ddc7359e8b6b71b0fc7745b35e7d338aeb8dd244', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-037', 'english', 6, 1, 'choice', '{"stem":"Notice: “Wetland Bird Count meeting — Sunday, 6:30 a.m. — wetland gate.” Which note records both when and where?","options":["Sunday, 6:30 a.m.; wetland gate","tomorrow; an unknown place","wetland gate; no time given","Sunday, 6:30 a.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], 'd144cfee1e537887fcb794838c09e220c6093dfe377891adff2dcb1ffd7fb5a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-038', 'english', 6, 1, 'choice', '{"stem":"Task brief: “create an observation rule card for new team members.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that new team members can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], '6c00411f15a29c7fdde600fb216a7776142448b40e3f0014d95e43879b40b3c7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-039', 'english', 6, 1, 'choice', '{"stem":"A teammate says, “I think our goal should be to standardise observation conditions before comparing bird counts, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], '286feb51504f0ac311703ca87536cc63053b0a0bcf0194f55354b70f9d0a9b13', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-040', 'english', 6, 1, 'choice', '{"stem":"Before completing “create an observation rule card”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'understand', array['全国通用', 'real-task English']::text[], '0bca5d928821866457b6288c290b5a7503479f130b140334cc2de419df43bece', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-041', 'english', 6, 1, 'choice', '{"stem":"Read two short texts for “Food-Waste Plan”: Text A — Data: average leftovers fell after small servings were offered. Text B — Interview: some pupils avoided second servings because the queue was slow. What issue do both texts help the team understand?","options":["keep small servings and improve the refill process","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '95a36e02b2b0f2818319e5179ba5733870b8082e8e9b0f4e36158162ce3d4cff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-042', 'english', 6, 1, 'choice', '{"stem":"Which sentence connects the two sources in the “Food-Waste Plan” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '1ceef517b1462a5e631af808cd938b4f8163afd55512e3acd8b8de4fd3a8c182', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-043', 'english', 6, 1, 'choice', '{"stem":"Project notes: Text A — Data: average leftovers fell after small servings were offered. Text B — Interview: some pupils avoided second servings because the queue was slow. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","keep small servings and improve the refill process","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: keep small servings and improve the refill process."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], '5cdaa6a6c3582856b8e8ca24d78080b355e8cc9bf13e7b5d53b4010222824249', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-044', 'english', 6, 1, 'choice', '{"stem":"From the two sources in “Food-Waste Plan”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","convenience can affect whether a saving plan succeeds"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: convenience can affect whether a saving plan succeeds."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], 'fb3815ff82ff7c5607756c5f87f8a79eee78589cc1a13d3a82f47830faacaa0b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-045', 'english', 6, 1, 'choice', '{"stem":"Notice: “Food-Waste Plan meeting — Wednesday, 1:10 p.m. — dining hall.” Which note records both when and where?","options":["Wednesday, 1:10 p.m.; dining hall","tomorrow; an unknown place","dining hall; no time given","Wednesday, 1:10 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], 'b2547d2ec7e4d49f2c32ede37c62ed4e7c374984353b2d9483009be7dcbbb52f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-046', 'english', 6, 1, 'choice', '{"stem":"Task brief: “suggest the next improvement for the school canteen.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that the school canteen can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], '54f2c051cf8237721346bf50acba5a4972461a01003cdc1aba02d83aa9777c6c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-047', 'english', 6, 1, 'choice', '{"stem":"A teammate says, “I think our goal should be to keep small servings and improve the refill process, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], '0cd91999102e56320b6d2a256dbe3134ce2ef4582ba09c66979269e01f1a795b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-048', 'english', 6, 1, 'choice', '{"stem":"Before completing “suggest the next improvement”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'understand', array['全国通用', 'real-task English']::text[], '0921574e72053fef5d1c674b9572e7a6a1d6393fffeccd2f1ae8b058c7f86738', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-049', 'english', 6, 1, 'choice', '{"stem":"Read two short texts for “School Bus Routes”: Text A — Route A reaches more neighbourhoods but has more stops. Text B — Route B is faster, while some younger pupils must walk farther. What issue do both texts help the team understand?","options":["compare coverage, travel time and walking distance","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '4b5e547a6b21af6ee52168c7e0434232c7c9cffa57e0046ed06b98fcfb021e4b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-050', 'english', 6, 1, 'choice', '{"stem":"Which sentence connects the two sources in the “School Bus Routes” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '70a6b14264452160dda7afb04e47f67fbdb00ce348bc73225f4da350e96eed67', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-051', 'english', 6, 1, 'choice', '{"stem":"Project notes: Text A — Route A reaches more neighbourhoods but has more stops. Text B — Route B is faster, while some younger pupils must walk farther. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","compare coverage, travel time and walking distance","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: compare coverage, travel time and walking distance."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], '90b8ca582a9e767368068199e31d4711c8a84d441ad56fc493ba683660c14e85', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-052', 'english', 6, 1, 'choice', '{"stem":"From the two sources in “School Bus Routes”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","the fastest route is not automatically best for every pupil"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: the fastest route is not automatically best for every pupil."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], '9d0876e36364b62c49e9c0cf20ea060357d698a2c1d1afba32f5d40696557789', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-053', 'english', 6, 2, 'choice', '{"stem":"Notice: “School Bus Routes meeting — Tuesday, 5:00 p.m. — transport office.” Which note records both when and where?","options":["Tuesday, 5:00 p.m.; transport office","tomorrow; an unknown place","transport office; no time given","Tuesday, 5:00 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'apply', array['全国通用', 'cross-text reasoning']::text[], '0c8d4ec7e1e5b3ab187ee5de9b4cd2517c781b92de01541885712f88c0b738cd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-054', 'english', 6, 2, 'choice', '{"stem":"Task brief: “build a route comparison table for families and pupils.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that families and pupils can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'apply', array['全国通用', 'cross-text reasoning']::text[], '8f92987439e768a93b9d42971c90f318f75e63ba602f0131eb3dcc9a4356ad2c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-055', 'english', 6, 2, 'choice', '{"stem":"A teammate says, “I think our goal should be to compare coverage, travel time and walking distance, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'a02b1a82f71eaf8d6aa063e79260c3e4ed04d1cac33344437f921797e22b18da', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-056', 'english', 6, 2, 'choice', '{"stem":"Before completing “build a route comparison table”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'apply', array['全国通用', 'cross-text reasoning']::text[], '6b7b3defff512b2acf44eccb98f8b48956a0c8626d623d2b33c9cfa513c96380', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-057', 'english', 6, 2, 'choice', '{"stem":"Read two short texts for “Printmaking Workshop”: Text A — The activity uses easier tools so beginners can take part. Text B — The artist says careful alignment must still be taught because it is central to colour printing. What issue do both texts help the team understand?","options":["make the activity accessible without misrepresenting the key technique","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'apply', array['全国通用', 'cross-text reasoning']::text[], '6e9be4fa631628498b7d66ae8930b44a651f57dd5026e3b688eac28eb61bc202', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-058', 'english', 6, 2, 'choice', '{"stem":"Which sentence connects the two sources in the “Printmaking Workshop” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'apply', array['全国通用', 'cross-text reasoning']::text[], '937d9fa8ac4c13de5ec260e9475d48a8c34162921ad98e190b7fbfa46076ce13', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-059', 'english', 6, 2, 'choice', '{"stem":"Project notes: Text A — The activity uses easier tools so beginners can take part. Text B — The artist says careful alignment must still be taught because it is central to colour printing. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","make the activity accessible without misrepresenting the key technique","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: make the activity accessible without misrepresenting the key technique."}'::jsonb, 'builtin', '信息归纳', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'bf2aa4f22f9fa8676ca67490ae4ee3e3250e4b503207408de604a4f614fe19af', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-060', 'english', 6, 2, 'choice', '{"stem":"From the two sources in “Printmaking Workshop”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","simplifying tools is different from removing the main principle"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: simplifying tools is different from removing the main principle."}'::jsonb, 'builtin', '语境推断', 'apply', array['全国通用', 'cross-text reasoning']::text[], '03a3ad6ecab5a2176514309c60cc6234ccfa95fc9dc8272d09aedf77c75052ff', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-061', 'english', 6, 2, 'choice', '{"stem":"Notice: “Printmaking Workshop meeting — Saturday, 9:30 a.m. — art studio.” Which note records both when and where?","options":["Saturday, 9:30 a.m.; art studio","tomorrow; an unknown place","art studio; no time given","Saturday, 9:30 a.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'apply', array['全国通用', 'cross-text reasoning']::text[], '28385db48129a49c929afe08d94034467e98caabff6c87b6206ccae7f1d52ea4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-062', 'english', 6, 2, 'choice', '{"stem":"Task brief: “write an honest workshop guide for first-time visitors.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that first-time visitors can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'apply', array['全国通用', 'cross-text reasoning']::text[], '58b4ab0db80bf1e4f7c3c015fb7f2ae145c77bfd802dda5bbdf501c6472497cd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-063', 'english', 6, 2, 'choice', '{"stem":"A teammate says, “I think our goal should be to make the activity accessible without misrepresenting the key technique, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'cross-text reasoning']::text[], '0a80092564181a2599eddebb5bb4d8ff12a8df49ace6cb21aa99254285c0e6d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-064', 'english', 6, 2, 'choice', '{"stem":"Before completing “write an honest workshop guide”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'apply', array['全国通用', 'cross-text reasoning']::text[], '6d3199bfb80742762660106d13962679aec65c44395e4e3d8a20402ca0451c5b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-065', 'english', 6, 2, 'choice', '{"stem":"Read two short texts for “Park Night Lights”: Text A — More people used the main path after brighter lights were added. Text B — Many insects gathered near strong lights beside the wetland. What issue do both texts help the team understand?","options":["use different lighting plans for busy paths and sensitive habitats","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'apply', array['全国通用', 'cross-text reasoning']::text[], '0239c42b31557f362da550f37f98a6162e104ebf7aee00c1f9a53ebeef0545bf', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-066', 'english', 6, 2, 'choice', '{"stem":"Which sentence connects the two sources in the “Park Night Lights” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'apply', array['全国通用', 'cross-text reasoning']::text[], '3cc4474aa60614a22e32d81ba8f99876b46a0ff3b419a3f7af39401f23fa32e9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-067', 'english', 6, 2, 'choice', '{"stem":"Project notes: Text A — More people used the main path after brighter lights were added. Text B — Many insects gathered near strong lights beside the wetland. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","use different lighting plans for busy paths and sensitive habitats","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: use different lighting plans for busy paths and sensitive habitats."}'::jsonb, 'builtin', '信息归纳', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'c4bba72617e7df95a5444950252ee6848a43cea05e9f7b92c0703070074720a2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-068', 'english', 6, 2, 'choice', '{"stem":"From the two sources in “Park Night Lights”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","a benefit in one area may create a problem in another"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: a benefit in one area may create a problem in another."}'::jsonb, 'builtin', '语境推断', 'apply', array['全国通用', 'cross-text reasoning']::text[], '30c444997f66f01b4d1c590aba1a6c754034fb70847e3b72904bff54bff58ed0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-069', 'english', 6, 2, 'choice', '{"stem":"Notice: “Park Night Lights meeting — Friday, 7:00 p.m. — park entrance.” Which note records both when and where?","options":["Friday, 7:00 p.m.; park entrance","tomorrow; an unknown place","park entrance; no time given","Friday, 7:00 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'apply', array['全国通用', 'cross-text reasoning']::text[], '93ae18f81da76afc02d86fa2e4babe967671c42752c505682a8a3acb70dc6e5d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-070', 'english', 6, 2, 'choice', '{"stem":"Task brief: “mark lighting zones on a map for park managers.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that park managers can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'f2aa270f21bb8ee26154504813a36eece4195b391febcd901d84a86ad7b7b51a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-071', 'english', 6, 2, 'choice', '{"stem":"A teammate says, “I think our goal should be to use different lighting plans for busy paths and sensitive habitats, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'cross-text reasoning']::text[], '2bf5ca2bc160725aa04abab1104cde3c5ca69e6a0fb2cb0bddc6016372a2b3e5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-072', 'english', 6, 2, 'choice', '{"stem":"Before completing “mark lighting zones on a map”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'apply', array['全国通用', 'cross-text reasoning']::text[], '6afda040ef411a5e72e9ed1df82154e545814e8714a2a2f196cabcf7f1025245', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-073', 'english', 6, 2, 'choice', '{"stem":"Read two short texts for “Charity Sale Review”: Text A — Group A had the highest sales but also the highest material cost. Text B — Group B earned less but reused materials and kept complete accounts. What issue do both texts help the team understand?","options":["evaluate income, cost, environmental choices and record quality","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'apply', array['全国通用', 'cross-text reasoning']::text[], '4ff571db60ca0b59fc7dba124e63a57ad7d3532cca8df70a80de1318ef120f85', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-074', 'english', 6, 2, 'choice', '{"stem":"Which sentence connects the two sources in the “Charity Sale Review” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'apply', array['全国通用', 'cross-text reasoning']::text[], '857bf257620746f9998e4a6ff4d22871da8cf2dc0163d8a369c21b674175031d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-075', 'english', 6, 2, 'choice', '{"stem":"Project notes: Text A — Group A had the highest sales but also the highest material cost. Text B — Group B earned less but reused materials and kept complete accounts. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","evaluate income, cost, environmental choices and record quality","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: evaluate income, cost, environmental choices and record quality."}'::jsonb, 'builtin', '信息归纳', 'apply', array['全国通用', 'cross-text reasoning']::text[], '5b885dd6a783bd99f6cf3baf33c13bd94ac617de692bbee0e1ff7be1464f97cc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-076', 'english', 6, 2, 'choice', '{"stem":"From the two sources in “Charity Sale Review”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","sales alone do not show the full value of a project"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: sales alone do not show the full value of a project."}'::jsonb, 'builtin', '语境推断', 'apply', array['全国通用', 'cross-text reasoning']::text[], '21c32d903cbee8cff8e15a88cde0899e7d96da5570c9b0c8569f365e59761c7f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-077', 'english', 6, 2, 'choice', '{"stem":"Notice: “Charity Sale Review meeting — Monday, 3:50 p.m. — classroom 6.” Which note records both when and where?","options":["Monday, 3:50 p.m.; classroom 6","tomorrow; an unknown place","classroom 6; no time given","Monday, 3:50 p.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'f6c1ee7d4d8ca4f5976796df9f152a959a1fcc89a59587fb096acaa4b25ab225', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-078', 'english', 6, 2, 'choice', '{"stem":"Task brief: “design a fair scoring sheet for the class committee.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that the class committee can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'efcdf7b570ec0b26d8ac4cb36d1bc6c08db57aa6a30b6df2e269bf6101512d9a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-079', 'english', 6, 2, 'choice', '{"stem":"A teammate says, “I think our goal should be to evaluate income, cost, environmental choices and record quality, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'cross-text reasoning']::text[], '732acd3850034c5ae3f90475feb1156528a2de2e723ca8a9717eb455ccd84207', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-080', 'english', 6, 2, 'choice', '{"stem":"Before completing “design a fair scoring sheet”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'apply', array['全国通用', 'cross-text reasoning']::text[], '7670fbc5d8a5f2654c89a664931e96c18095888c440e25eb250f13e24b9e96d3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-081', 'english', 6, 2, 'choice', '{"stem":"Read two short texts for “Temperature Report”: Text A — This month’s recorded average is higher than last year’s. Text B — Some dates are missing, and readings were taken at different times of day. What issue do both texts help the team understand?","options":["report the difference together with limits in the data","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'apply', array['全国通用', 'cross-text reasoning']::text[], '902237bfce0fbe8a6c5792c1c598040e3f99de54da354278e449bf1c64bba1d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-082', 'english', 6, 2, 'choice', '{"stem":"Which sentence connects the two sources in the “Temperature Report” project?","options":["One source proves everything in every situation.","Text A gives one need, while Text B adds a condition we must consider.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“While” clearly expresses how two useful sources contribute different information."}'::jsonb, 'builtin', '综合语言功能', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'ae251119654a2f6b624f9bf5afc8700058d7e431d1adec462bd45117154ddafb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-083', 'english', 6, 2, 'choice', '{"stem":"Project notes: Text A — This month’s recorded average is higher than last year’s. Text B — Some dates are missing, and readings were taken at different times of day. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","report the difference together with limits in the data","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: report the difference together with limits in the data."}'::jsonb, 'builtin', '信息归纳', 'apply', array['全国通用', 'cross-text reasoning']::text[], '6783cd5032124dfea7e7b04ef38c5d8fd242fdeb56e23bafaa7fec984f8b74ce', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-084', 'english', 6, 2, 'choice', '{"stem":"From the two sources in “Temperature Report”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","more consistent records are needed before claiming a long-term change"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: more consistent records are needed before claiming a long-term change."}'::jsonb, 'builtin', '语境推断', 'apply', array['全国通用', 'cross-text reasoning']::text[], '724037672cb07669a1efdab88f3d9f1fe3a8ede1e907c0b12780342422032061', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-085', 'english', 6, 2, 'choice', '{"stem":"Notice: “Temperature Report meeting — Thursday, 8:00 a.m. — weather station.” Which note records both when and where?","options":["Thursday, 8:00 a.m.; weather station","tomorrow; an unknown place","weather station; no time given","Thursday, 8:00 a.m.; a different city"],"answer":0,"explanation":"A complete schedule entry includes the stated date or time and place."}'::jsonb, 'builtin', '通知与日程', 'apply', array['全国通用', 'cross-text reasoning']::text[], '97580066046c069bfe04f102cccfa7f1b33af568b8abfeac956a3c4faf9ae701', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-086', 'english', 6, 2, 'choice', '{"stem":"Task brief: “revise the data summary for the morning news team.” Which first decision best fits the brief?","options":["Ignore the audience and remove all evidence.","Choose evidence and wording that the morning news team can understand and use.","Decorate before reading the task.","Copy every sentence without organising it."],"answer":1,"explanation":"The product must fit its named audience and purpose."}'::jsonb, 'builtin', '真实任务阅读', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'fa9f8a8cb6bcfac9141c573398605f130edfe726dbf0b00948174609d02f300f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-087', 'english', 6, 2, 'choice', '{"stem":"A teammate says, “I think our goal should be to report the difference together with limits in the data, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'cross-text reasoning']::text[], '949b2aba8c5d47b63dafe24fa539ae5131b463cff1e86739567ffc9fcd3f77be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-088', 'english', 6, 2, 'choice', '{"stem":"Before completing “revise the data summary”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","read the brief → select key facts → organise them → check clarity"],"answer":3,"explanation":"The sequence moves from understanding the task to evidence selection, organisation and checking."}'::jsonb, 'builtin', '综合运用', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'db5a1a590633cba98cf86afa536786d36d80c7a3fb0a6b6f3ebf9c4447eb9a60', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-089', 'english', 6, 2, 'choice', '{"stem":"Read two short texts for “Digital Museum Labels”: Text A — QR codes provide audio and photos from before restoration. Text B — Some older visitors cannot read the small instructions, and some children ignore the real object. What issue do both texts help the team understand?","options":["keep digital resources accessible and connected to object viewing","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'apply', array['全国通用', 'cross-text reasoning']::text[], '388c8b3517ca8a5a3f4e90c4caf428981a9ba2c234de0d67d9a614569044fe2f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-090', 'english', 6, 3, 'choice', '{"stem":"Which sentence acknowledges evidence and limits a claim in the “Digital Museum Labels” project?","options":["One source proves everything in every situation.","The evidence supports this direction; however, digital content should support rather than replace the exhibition.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“However” introduces a reasonable limit after acknowledging the evidence."}'::jsonb, 'builtin', '综合语言功能', 'reason', array['全国通用', 'cross-text reasoning']::text[], '47ba51470b8df0f1c201c77bdb10f6b66b934c08e808a04fb39572a4cdc168ab', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-091', 'english', 6, 3, 'choice', '{"stem":"Project notes: Text A — QR codes provide audio and photos from before restoration. Text B — Some older visitors cannot read the small instructions, and some children ignore the real object. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","keep digital resources accessible and connected to object viewing","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: keep digital resources accessible and connected to object viewing."}'::jsonb, 'builtin', '信息归纳', 'reason', array['全国通用', 'cross-text reasoning']::text[], 'cd1ef6cb6c7f95051700979318a26a1505591bc73d4c60f856a0186902950c6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-092', 'english', 6, 3, 'choice', '{"stem":"From the two sources in “Digital Museum Labels”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","digital content should support rather than replace the exhibition"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: digital content should support rather than replace the exhibition."}'::jsonb, 'builtin', '语境推断', 'reason', array['全国通用', 'cross-text reasoning']::text[], '67e70b2f2e188751ec5a2163a835dbd403755887ce62fdac0213c1e2046da87d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-093', 'english', 6, 3, 'choice', '{"stem":"Notice: “Digital Museum Labels meeting — Wednesday, 10:00 a.m. — gallery 2; bring evidence for the task ‘test a new exhibit label’.” Which preparation note includes every required detail?","options":["Wednesday, 10:00 a.m. at gallery 2; bring selected evidence for test a new exhibit label","Wednesday, 10:00 a.m. at an unknown place; bring no material","gallery 2 with no time; discuss another project","a different day and place; bring decoration only"],"answer":0,"explanation":"The complete note combines time, place and the material required for the named task."}'::jsonb, 'builtin', '通知与日程', 'reason', array['全国通用', 'cross-text reasoning']::text[], 'daa83534851384de629d8098310f55e7770e3e8f947362e2887737437c348310', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-094', 'english', 6, 3, 'choice', '{"stem":"Task brief: “test a new exhibit label for visitors of different ages.” Which review question checks both trustworthiness and usefulness?","options":["Does the page contain the most decoration?","Can visitors of different ages trace the main points to the sources and use the result for the task?","Were all source details hidden from readers?","Is the product long even when its purpose is unclear?"],"answer":1,"explanation":"A strong review checks whether claims are traceable and whether the intended audience can use the product."}'::jsonb, 'builtin', '真实任务阅读', 'reason', array['全国通用', 'cross-text reasoning']::text[], '03645b5fcd0ad19cd7b30d3146e09067af38f699ce83afe9c14b4480bebe003f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-095', 'english', 6, 3, 'choice', '{"stem":"A teammate says, “I think our goal should be to keep digital resources accessible and connected to object viewing, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', 'cross-text reasoning']::text[], '397deb2375cf9526cc7f80bc5ae7f485fff420f7fa287f364c4f2ae0fa1cd4b3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-096', 'english', 6, 3, 'choice', '{"stem":"Before completing “test a new exhibit label”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","identify audience → compare sources → state a supported conclusion → note limits → revise for use"],"answer":3,"explanation":"The full process integrates audience, evidence, reasoning limits and revision."}'::jsonb, 'builtin', '综合运用', 'reason', array['全国通用', 'cross-text reasoning']::text[], '4fdce604b11cd41f03c87a0e0857335f1ef8d1e06318c4af2b9ea267c54f2c98', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-097', 'english', 6, 3, 'choice', '{"stem":"Read two short texts for “Graduation Album”: Text A — The rules ask for true memories and the date of every photograph. Text B — One attractive article combines other pupils’ experiences and uses an image with no source. What issue do both texts help the team understand?","options":["check facts and image permission as well as writing quality","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'reason', array['全国通用', 'cross-text reasoning']::text[], '9e8a2d0010bf56a8836a6bdbc4675e225a9a701400eefa7ec07bbac461cc58f3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-098', 'english', 6, 3, 'choice', '{"stem":"Which sentence acknowledges evidence and limits a claim in the “Graduation Album” project?","options":["One source proves everything in every situation.","The evidence supports this direction; however, beautiful language cannot repair false or unlicensed content.","The texts are different, so neither can be useful.","I prefer this plan; therefore, evidence is unnecessary."],"answer":1,"explanation":"“However” introduces a reasonable limit after acknowledging the evidence."}'::jsonb, 'builtin', '综合语言功能', 'reason', array['全国通用', 'cross-text reasoning']::text[], 'ffb803f87b52ded593df7fdbc6eff42ad8a61e095227293754ed8681c6eb8da3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-099', 'english', 6, 3, 'choice', '{"stem":"Project notes: Text A — The rules ask for true memories and the date of every photograph. Text B — One attractive article combines other pupils’ experiences and uses an image with no source. Which summary keeps the main point without losing an important condition?","options":["copy only the first number","keep one attractive detail and delete the issue","check facts and image permission as well as writing quality","combine two unrelated actions"],"answer":2,"explanation":"The summary represents both sources: check facts and image permission as well as writing quality."}'::jsonb, 'builtin', '信息归纳', 'reason', array['全国通用', 'cross-text reasoning']::text[], '08e945e346e00da98ee85fe97b8ba9650eb1e31098170cefa3aaf4f5fa0e1505', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-100', 'english', 6, 3, 'choice', '{"stem":"From the two sources in “Graduation Album”, what can we infer without going beyond the evidence?","options":["the same result is certain everywhere forever","no further checking can ever be useful","the project has no real purpose","beautiful language cannot repair false or unlicensed content"],"answer":3,"explanation":"The inference follows both sources and stays within their evidence: beautiful language cannot repair false or unlicensed content."}'::jsonb, 'builtin', '语境推断', 'reason', array['全国通用', 'cross-text reasoning']::text[], 'b45160b03af93df79b1f299d31befe5db344eb57ab6dbcadcc0a673d88b1b516', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-101', 'english', 6, 3, 'choice', '{"stem":"Notice: “Graduation Album meeting — Friday, 3:00 p.m. — media room; bring evidence for the task ‘create an editing checklist’.” Which preparation note includes every required detail?","options":["Friday, 3:00 p.m. at media room; bring selected evidence for create an editing checklist","Friday, 3:00 p.m. at an unknown place; bring no material","media room with no time; discuss another project","a different day and place; bring decoration only"],"answer":0,"explanation":"The complete note combines time, place and the material required for the named task."}'::jsonb, 'builtin', '通知与日程', 'reason', array['全国通用', 'cross-text reasoning']::text[], '7d8efc705eeb3d8733531126a16581dc13a979957d09973068000a0f835a3d7f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-102', 'english', 6, 3, 'choice', '{"stem":"Task brief: “create an editing checklist for student editors.” Which review question checks both trustworthiness and usefulness?","options":["Does the page contain the most decoration?","Can student editors trace the main points to the sources and use the result for the task?","Were all source details hidden from readers?","Is the product long even when its purpose is unclear?"],"answer":1,"explanation":"A strong review checks whether claims are traceable and whether the intended audience can use the product."}'::jsonb, 'builtin', '真实任务阅读', 'reason', array['全国通用', 'cross-text reasoning']::text[], '9587e21f280defcf65d6d9c8bbb3387ca4643f20663803841a5a590449b75dc8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-103', 'english', 6, 3, 'choice', '{"stem":"A teammate says, “I think our goal should be to check facts and image permission as well as writing quality, but I may have missed a condition.” Which reply is most constructive?","options":["There is no need to read the sources.","Your idea is wrong because I said so.","Let’s check both texts and mark which detail supports each part.","Let’s delete every different opinion."],"answer":2,"explanation":"The reply is polite and proposes an evidence-based way to resolve uncertainty."}'::jsonb, 'builtin', '情境交际', 'reason', array['全国通用', 'cross-text reasoning']::text[], '59e2af81fbcac83d4f6f9ddef03e353b8ecc9c6b3557960b97eccea4144bfc0f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-104', 'english', 6, 3, 'choice', '{"stem":"Before completing “create an editing checklist”, which plan shows strong integrated language use?","options":["choose an answer first → hide sources → ignore feedback → stop","copy one text → delete conditions → change the audience → guess","decorate everything → remove the purpose → avoid revision → submit","identify audience → compare sources → state a supported conclusion → note limits → revise for use"],"answer":3,"explanation":"The full process integrates audience, evidence, reasoning limits and revision."}'::jsonb, 'builtin', '综合运用', 'reason', array['全国通用', 'cross-text reasoning']::text[], 'c4adb220a4d7a518871bdc07fdc769d768d65cf69839cff361c6b3bcfda12ddd', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-105', 'english', 6, 3, 'choice', '{"stem":"Read two short texts for “Riverside Path”: Text A — The design keeps old trees and uses a surface that lets rain pass through. Text B — A safety review shows one section may block floodwater during heavy rain. What issue do both texts help the team understand?","options":["keep the ecological features but move the path away from the risky section","a topic unrelated to either text","only the colour of the page","a plan with no audience or evidence"],"answer":0,"explanation":"The answer combines the key contribution of both texts."}'::jsonb, 'builtin', '多段文本', 'reason', array['全国通用', 'cross-text reasoning']::text[], 'c9382f1f3f59af2c0b4bcb13a6464875770c237231160c58a9b64a0eb3fb8a6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-106', 'english', 6, 1, 'fill', '{"stem":"When two texts discuss the same issue, compare their shared topic and different ___.","answer":"angles","explanation":"The word “angles” completes the sentence accurately."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '930e3fdc8084dc78e41cc4e3d371c3b6e89adda2db74d8fb341c7b8a901cf07a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-107', 'english', 6, 1, 'fill', '{"stem":"Use “however” to introduce a contrast or ___.","answer":"limit","explanation":"The word “limit” completes the sentence accurately."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], 'ae0bc453dee9f2c1d793eb0dbcf9f390165be5e40df42ad746fbcb1a2e913560', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-108', 'english', 6, 1, 'fill', '{"stem":"A summary keeps key information and removes ___ details.","answer":"unrelated","explanation":"The word “unrelated” completes the sentence accurately."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], 'b335b5d99ad2e404aeca2fbe141cf9341cc7990360d69bb86467385706112b9e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-109', 'english', 6, 1, 'fill', '{"stem":"A careful inference stays within the available ___.","answer":"evidence","explanation":"The word “evidence” completes the sentence accurately."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], 'ce9e2b35b90bc36ff9f11438d0676c57085324d627c7ae44ee254c6b108e8d68', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-110', 'english', 6, 1, 'fill', '{"stem":"A complete schedule records time, place and ___.","answer":"activity","explanation":"The word “activity” completes the sentence accurately."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], '3b05a646a00171e8f8abc4be582d489e3ac3963c2422bb3204ed4d3c0fb28f8e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-111', 'english', 6, 1, 'fill', '{"stem":"A task brief usually names a purpose and an intended ___.","answer":"audience","explanation":"The word “audience” completes the sentence accurately."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], 'c3b8ca2a0e44d6ce314cace9e800cf2995a3ba9d3a9773afce5bbc7dedcc3315', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-112', 'english', 6, 1, 'fill', '{"stem":"To ask for clarification politely, say “Could you explain that ___?”","answer":"again","explanation":"The word “again” completes the sentence accurately."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], '8892e8bb023e1e68a1f5572f8c9d0895d02c077ca80f7d6ffc4dbe2c25de7fc9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-113', 'english', 6, 1, 'fill', '{"stem":"After drafting, check accuracy, clarity and ___.","answer":"usefulness","explanation":"The word “usefulness” completes the sentence accurately."}'::jsonb, 'builtin', '综合运用', 'understand', array['全国通用', 'real-task English']::text[], 'f248b48dc1d33e7fab114eab0848b2a53189e4860029fb8e91b3e6c5c0f44541', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-114', 'english', 6, 1, 'fill', '{"stem":"One source may support another or provide a different ___.","answer":"view","explanation":"The word “view” completes the sentence accurately."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], '4b57d2f5ad11f73f21e6eb75459362885f39ae284ae5677a087f84e8df09bb19', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-115', 'english', 6, 1, 'fill', '{"stem":"“According to the survey” introduces an information ___.","answer":"source","explanation":"The word “source” completes the sentence accurately."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '544d2bd9bbc70d85ddddf7c9a2724375504c66898311e051bb3f623e34a5c035', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-116', 'english', 6, 1, 'fill', '{"stem":"A table helps organise categories in a consistent ___.","answer":"order","explanation":"The word “order” completes the sentence accurately."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], 'e8cabc55f3512e10fbf7903f5ebd389a31af275fb1ace82c0041219e9e867176', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-117', 'english', 6, 2, 'fill', '{"stem":"Words such as “may” prevent an unsupported over___.","answer":"claim","explanation":"The word “claim” completes the sentence accurately."}'::jsonb, 'builtin', '语境推断', 'apply', array['全国通用', 'cross-text reasoning']::text[], '4832692df0234b1a35b879cf77fe69c6558a0dba52056afd0dbde19ab9c12f65', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-118', 'english', 6, 2, 'fill', '{"stem":"If two activities overlap, the schedule has a time ___.","answer":"conflict","explanation":"The word “conflict” completes the sentence accurately."}'::jsonb, 'builtin', '通知与日程', 'apply', array['全国通用', 'cross-text reasoning']::text[], '7c9e4b87e691849c65d189976a8588b3af63ec3f924505cfcdde95d6260b4083', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-119', 'english', 6, 2, 'fill', '{"stem":"Instructions should let the reader complete the intended ___.","answer":"task","explanation":"The word “task” completes the sentence accurately."}'::jsonb, 'builtin', '真实任务阅读', 'apply', array['全国通用', 'cross-text reasoning']::text[], '46ddd69d6cdf32b78bfa5b0ec4b54f25b64769cc0043864ff2f1412b8a7b2035', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-120', 'english', 6, 2, 'fill', '{"stem":"A constructive disagreement recognises the other person’s ___.","answer":"point","explanation":"The word “point” completes the sentence accurately."}'::jsonb, 'builtin', '情境交际', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'd7d74b22250aecd2a7f21296ad0adefbe28e4345b9f71068899bacff34026609', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-121', 'english', 6, 2, 'fill', '{"stem":"Reliable work connects each main claim to its ___.","answer":"evidence","explanation":"The word “evidence” completes the sentence accurately."}'::jsonb, 'builtin', '综合运用', 'apply', array['全国通用', 'cross-text reasoning']::text[], '3183f8d53dd88a333e3447b21a329abcf8b712d6450ae5d0442d3aa8dcf8f584', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-122', 'english', 6, 2, 'fill', '{"stem":"Conflicting sources should be checked for method, date and ___.","answer":"context","explanation":"The word “context” completes the sentence accurately."}'::jsonb, 'builtin', '多段文本', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'b7dfc7499f0271f2f2a853b0b530ce2f427a7cac4eed6a3f6fefdc39748b4363', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-123', 'english', 6, 2, 'fill', '{"stem":"A heading helps readers locate a group of related ___.","answer":"facts","explanation":"The word “facts” completes the sentence accurately."}'::jsonb, 'builtin', '信息归纳', 'apply', array['全国通用', 'cross-text reasoning']::text[], '882d6ac76b3eba13ccebb77735ff25bb4e846bcdf3b08346083713969779ede4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-124', 'english', 6, 3, 'fill', '{"stem":"Limited evidence may support a possibility, not absolute ___.","answer":"certainty","explanation":"The word “certainty” completes the sentence accurately."}'::jsonb, 'builtin', '语境推断', 'reason', array['全国通用', 'cross-text reasoning']::text[], '2011e8a0a064ce9e72da5e78024809c5cb4fcde4139dea50f2028139b712a2b3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-125', 'english', 6, 3, 'fill', '{"stem":"Before submitting, test the product with a real ___.","answer":"reader","explanation":"The word “reader” completes the sentence accurately."}'::jsonb, 'builtin', '真实任务阅读', 'reason', array['全国通用', 'cross-text reasoning']::text[], '43a0f8d9feeca18345e98b1d02ec485c620a7f011488cdc600d312b5935a3936', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-126', 'english', 6, 3, 'fill', '{"stem":"Revision improves both language accuracy and task ___.","answer":"effectiveness","explanation":"The word “effectiveness” completes the sentence accurately."}'::jsonb, 'builtin', '综合运用', 'reason', array['全国通用', 'cross-text reasoning']::text[], 'a772b67e3d2cc9e65773d02aaae9b2dbe564ab02ad56bc9612aa5f5d9c5d36c5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-127', 'english', 6, 1, 'match', '{"stem":"Use the graduation English project chart. Match each cross-text relationship with its meaning.","left":["same topic","different angle","supporting source","conflicting source"],"right":["adds evidence","shared issue","disagrees","new viewpoint"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 多段文本 items."}'::jsonb, 'builtin', '多段文本', 'understand', array['全国通用', 'real-task English']::text[], 'ced04098eb5c1e48ec2f9e59fd26a06098f28901f25e3c5237b4145f2efddd79', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-128', 'english', 6, 1, 'match', '{"stem":"Use the graduation English project chart. Match each linking expression with its language function.","left":["according to","however","therefore","for example"],"right":["state result","introduce source","give an instance","show contrast"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 综合语言功能 items."}'::jsonb, 'builtin', '综合语言功能', 'understand', array['全国通用', 'real-task English']::text[], '14c0ad3301ab2c9f64c94afba3d56ac702b153aade2ceda41a69f4e8e8fbcf60', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-129', 'english', 6, 1, 'match', '{"stem":"Use the graduation English project chart. Match each organising term with its job.","left":["heading","category","key fact","summary"],"right":["important detail","topic label","main combined idea","information group"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 信息归纳 items."}'::jsonb, 'builtin', '信息归纳', 'understand', array['全国通用', 'real-task English']::text[], '5436e4e1cf8737e551de48d9c80b0c962bbc7bdb8a671978b54950c50f6f27b2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-130', 'english', 6, 1, 'match', '{"stem":"Use the graduation English project chart. Match each reasoning term with its evidence role.","left":["fact","clue","inference","overclaim"],"right":["reasoned idea","direct statement","beyond evidence","supporting sign"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 语境推断 items."}'::jsonb, 'builtin', '语境推断', 'understand', array['全国通用', 'real-task English']::text[], '5564400a44ad73f389962cee76ae2f59c5dc56b674dabcea27fedf5867d6910a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-131', 'english', 6, 1, 'match', '{"stem":"Use the graduation English project chart. Match each schedule field with the question it answers.","left":["date","time","place","activity"],"right":["where","which day","what happens","which hour"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 通知与日程 items."}'::jsonb, 'builtin', '通知与日程', 'understand', array['全国通用', 'real-task English']::text[], 'ced9137289f1651aac6578ac1bf3b5f847e42f5d4600db86fac082dc8a810df6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-132', 'english', 6, 1, 'match', '{"stem":"Use the graduation English project chart. Match each task element with its planning question.","left":["audience","purpose","format","criterion"],"right":["how it is presented","who will use it","how quality is checked","why it is made"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 真实任务阅读 items."}'::jsonb, 'builtin', '真实任务阅读', 'understand', array['全国通用', 'real-task English']::text[], '4adbb1bbd1cb409c570b35055b7735b8e97d2fbfa61285d6d710add5952d5a82', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-133', 'english', 6, 1, 'match', '{"stem":"Use the graduation English project chart. Match each communication action with its purpose.","left":["clarify","agree","disagree politely","suggest"],"right":["state another view respectfully","ask for meaning","offer an idea","share a view"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 情境交际 items."}'::jsonb, 'builtin', '情境交际', 'understand', array['全国通用', 'real-task English']::text[], '423d99b32621753abddb99c54316b0a51838e87b67daf444df144b668f1379f5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-134', 'english', 6, 2, 'match', '{"stem":"Use the graduation English project chart. Match each project stage with the work done there.","left":["plan","draft","review","revise"],"right":["check quality","decide approach","improve the work","create first version"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 综合运用 items."}'::jsonb, 'builtin', '综合运用', 'apply', array['全国通用', 'cross-text reasoning']::text[], '973dd7d3ba1b9d267178af779025a1f14e1645d745d805d01b86caebeb1f4c55', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-135', 'english', 6, 2, 'match', '{"stem":"Review the real-task checklist. Match each cross-text relationship with its meaning.","left":["same topic","different angle","supporting source","conflicting source"],"right":["adds evidence","shared issue","disagrees","new viewpoint"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 多段文本 items."}'::jsonb, 'builtin', '多段文本', 'apply', array['全国通用', 'cross-text reasoning']::text[], '87bfebb67b8a2730ca8f04f5b4a6524e8b34a881f7f9a2afeb96785cd4c687d1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-136', 'english', 6, 2, 'match', '{"stem":"Review the real-task checklist. Match each linking expression with its language function.","left":["according to","however","therefore","for example"],"right":["state result","introduce source","give an instance","show contrast"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 综合语言功能 items."}'::jsonb, 'builtin', '综合语言功能', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'c6766ae73f73bf6473515a96113ccf018ac863a74d6ceaeb2ea6404fa597ff0c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-137', 'english', 6, 2, 'match', '{"stem":"Review the real-task checklist. Match each organising term with its job.","left":["heading","category","key fact","summary"],"right":["important detail","topic label","main combined idea","information group"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 信息归纳 items."}'::jsonb, 'builtin', '信息归纳', 'apply', array['全国通用', 'cross-text reasoning']::text[], '16b7eb2e8ff06ae7f028d4afa6f85a9016a5e539f530de5c70e7ca970ba2412a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-138', 'english', 6, 2, 'match', '{"stem":"Review the real-task checklist. Match each reasoning term with its evidence role.","left":["fact","clue","inference","overclaim"],"right":["reasoned idea","direct statement","beyond evidence","supporting sign"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 语境推断 items."}'::jsonb, 'builtin', '语境推断', 'apply', array['全国通用', 'cross-text reasoning']::text[], 'e514ef2d310cc553e261299c2502b1b04134807a6a6676269c971da591aeacfc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-139', 'english', 6, 3, 'match', '{"stem":"Review the real-task checklist. Match each schedule field with the question it answers.","left":["date","time","place","activity"],"right":["where","which day","what happens","which hour"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 通知与日程 items."}'::jsonb, 'builtin', '通知与日程', 'reason', array['全国通用', 'cross-text reasoning']::text[], '4247c366d02bbd2df4c7c53b7d937330b0283e8f66305314a8565dbf206673b8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-english-authored-140', 'english', 6, 3, 'match', '{"stem":"Review the real-task checklist. Match each task element with its planning question.","left":["audience","purpose","format","criterion"],"right":["how it is presented","who will use it","how quality is checked","why it is made"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"Compare the meaning and function of all four 真实任务阅读 items."}'::jsonb, 'builtin', '真实任务阅读', 'reason', array['全国通用', 'cross-text reasoning']::text[], '5c3bbcd1362b38ef0f435196ce2543a71642a69aa7fdd01872ba70b51e6cbe6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-001', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：160件作品中有35%获推荐，获推荐多少件？","options":["56件","35件","104件","66件"],"answer":0,"explanation":"160×35%=56件。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], '327b7ae4a7e4107e66ad6979f8be328e08ae5aec974beeb64eabc52f97be17bc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-002', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：把9:15化成最简整数比。","options":["24:1","3:5","15:9","9:16"],"answer":1,"explanation":"同时除以最大公因数，最简比是3:5。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], '768fe887f0e92b277274aa2d0a5752e217790c0e690f90314146b1e2f8ebf35e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-003', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：比例x:48=1:6中，x可以取下面哪个数？","options":["9","48","8","6"],"answer":2,"explanation":"8:48同时除以8，正好等于1:6。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], '7eb97fde85310f202b92ad13dca95e65c0245304ff95460ac2391e52549ba581', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-004', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：半径6厘米的圆，周长是多少？（π取3.14）","options":["113.04厘米","18.84厘米","12厘米","37.68厘米"],"answer":3,"explanation":"圆周长=2πr=2×3.14×6=37.68厘米。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], '221a082cf4d72c6b8ebd2587694fbcab423d00ac317efdc7730e62e333c073b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-005', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：棱长6厘米的正方体有几个完全相同的正方形面？","options":["6个","4个","8个","6个3"],"answer":0,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], 'e21ca2e3c7e0deb1c5f47160dbd5e06bd8dc009e5c7f4ae408d2ebf46907e6d3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-006', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：海拔0米以下7米记作什么？","options":["+7米","-7米","0米","14米"],"answer":1,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], 'e99796d99ac128ecc1ad71a5caf2aed7b1821cc499389b12a9c23560c6d10733', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-007', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：袋中有5个红球、8个蓝球、1个绿球，任意摸一个，哪种颜色最可能？","options":["红球","绿球","蓝球","三种一样"],"answer":2,"explanation":"蓝球有8个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], '40afe21d08566bb1347e601310888f5d5c188f3a10eb79b8af800886a91dc316', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-008', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：每小时行48千米，2小时行多少千米？","options":["50千米","119千米","48千米","96千米"],"answer":3,"explanation":"路程=速度×时间=48×2=96千米。"}'::jsonb, 'builtin', '综合建模', 'understand', array['全国通用', '基础巩固']::text[], '0673740a5a659cf4bda06abdb37a6c62ce6c3b6be0728d684a331ec972c13f54', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-009', 'math', 6, 1, 'choice', '{"stem":"毕业项目展：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["分别算出实际付款额再比较","只比较“折”和“减”的字数","选择广告颜色更亮的","不看原价直接猜"],"answer":0,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'understand', array['全国通用', '基础巩固']::text[], '1ab98442163194647c54ed04f529f3cd9c6e8b4c4d6ef0688aba95aa0371413e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-010', 'math', 6, 1, 'choice', '{"stem":"校园节能周：180件作品中有20%获推荐，获推荐多少件？","options":["20件","36件","144件","46件"],"answer":1,"explanation":"180×20%=36件。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], '472070bd70fee0f01d95152d622b2fb18c7a140afd2c1fd69df1acd1d3bbc40f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-011', 'math', 6, 1, 'choice', '{"stem":"校园节能周：把10:17化成最简整数比。","options":["27:1","17:10","10:17","10:18"],"answer":2,"explanation":"同时除以最大公因数，最简比是10:17。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], 'f200d80e5b5618d02978cccf4342a989a50c6479ecdff2da4c202a209caa5a14', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-012', 'math', 6, 1, 'choice', '{"stem":"校园节能周：比例x:27=1:3中，x可以取下面哪个数？","options":["10","27","3","9"],"answer":3,"explanation":"9:27同时除以9，正好等于1:3。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], '65b7f2396f373dc636576b657092e958a365e796f621de075961395ba2f889eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-013', 'math', 6, 1, 'choice', '{"stem":"校园节能周：半径7厘米的圆，周长是多少？（π取3.14）","options":["43.96厘米","153.86厘米","21.98厘米","14厘米"],"answer":0,"explanation":"圆周长=2πr=2×3.14×7=43.96厘米。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], '71fc0a9f5ea4e527408c05ecaf7bb8aed5be27a5afd5f451787db909d35ef84f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-014', 'math', 6, 1, 'choice', '{"stem":"校园节能周：棱长3厘米的正方体有几个完全相同的正方形面？","options":["4个","6个","8个","3个"],"answer":1,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], 'a601df80c53c1f9c53061c2c52aba41a9f066be163d01e41e8b076f5b5893e07', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-015', 'math', 6, 1, 'choice', '{"stem":"校园节能周：海拔0米以下8米记作什么？","options":["+8米","0米","-8米","16米"],"answer":2,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], '2522d4eacfa3827ba762ff84ab15a36e85ea7e9b447663f0c283691082c07d1c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-016', 'math', 6, 1, 'choice', '{"stem":"校园节能周：袋中有2个红球、5个蓝球、2个绿球，任意摸一个，哪种颜色最可能？","options":["红球","绿球","三种一样","蓝球"],"answer":3,"explanation":"蓝球有5个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], 'ad9270cede791621a9ef9e4dc52879175debbe9b08014e277d8b9b145d187e2d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-017', 'math', 6, 1, 'choice', '{"stem":"校园节能周：每小时行49千米，3小时行多少千米？","options":["147千米","52千米","171千米","49千米"],"answer":0,"explanation":"路程=速度×时间=49×3=147千米。"}'::jsonb, 'builtin', '综合建模', 'understand', array['全国通用', '基础巩固']::text[], '7d296b1d25ce9b3d02dc6c3494240028ad5b0fbe53bf5697220cccaf388be3b1', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-018', 'math', 6, 1, 'choice', '{"stem":"校园节能周：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["只比较“折”和“减”的字数","分别算出实际付款额再比较","选择广告颜色更亮的","不看原价直接猜"],"answer":1,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'understand', array['全国通用', '基础巩固']::text[], '5cdd7400b93fdab8eca040a4662b317235edd6bb0cd3302e2f591aa648eee62f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-019', 'math', 6, 1, 'choice', '{"stem":"社区运动会：200件作品中有25%获推荐，获推荐多少件？","options":["25件","150件","50件","60件"],"answer":2,"explanation":"200×25%=50件。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], 'f3eeb1cbc4d572590ceb0891aa4fa14defab927d97f3b0abc55f6fbcb862ba43', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-020', 'math', 6, 1, 'choice', '{"stem":"社区运动会：把11:19化成最简整数比。","options":["30:1","19:11","11:20","11:19"],"answer":3,"explanation":"同时除以最大公因数，最简比是11:19。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], '1e9cf8d67ceefdde2c0858cb542fbc2859756278ce91a0213c6b6d96a5f8bd89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-021', 'math', 6, 1, 'choice', '{"stem":"社区运动会：比例x:40=1:4中，x可以取下面哪个数？","options":["10","11","40","4"],"answer":0,"explanation":"10:40同时除以10，正好等于1:4。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], '9f7b15f9dd0e6c30b4413b5ebf545ca04b200fbb91c0b846ce88366eefc10119', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-022', 'math', 6, 1, 'choice', '{"stem":"社区运动会：半径3厘米的圆，周长是多少？（π取3.14）","options":["28.26厘米","18.84厘米","9.42厘米","6厘米"],"answer":1,"explanation":"圆周长=2πr=2×3.14×3=18.84厘米。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], '9f8fc3466d31df1dda3742996fa21ae08c92ba1bae12e7a827604e0a04afe739', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-023', 'math', 6, 1, 'choice', '{"stem":"社区运动会：棱长4厘米的正方体有几个完全相同的正方形面？","options":["4个","8个","6个","4个3"],"answer":2,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], '27596ea889da79a6a7617a282a1b8d340779c32780863e9c06a93b2e46cd79ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-024', 'math', 6, 1, 'choice', '{"stem":"社区运动会：海拔0米以下9米记作什么？","options":["+9米","0米","18米","-9米"],"answer":3,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], 'f8cbca6de6787ad9f463a3db03634b30db0b2dfda580f8f27bfe4fb2bb4cbd76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-025', 'math', 6, 1, 'choice', '{"stem":"社区运动会：袋中有3个红球、6个蓝球、3个绿球，任意摸一个，哪种颜色最可能？","options":["蓝球","红球","绿球","三种一样"],"answer":0,"explanation":"蓝球有6个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], 'c24589334cfbf001e0e8e56ccf214cabb45e7bf1eef2d5197eec99b1e1e0ffdb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-026', 'math', 6, 1, 'choice', '{"stem":"社区运动会：每小时行50千米，4小时行多少千米？","options":["54千米","200千米","225千米","50千米"],"answer":1,"explanation":"路程=速度×时间=50×4=200千米。"}'::jsonb, 'builtin', '综合建模', 'understand', array['全国通用', '基础巩固']::text[], '224526fc818cfef34c1b8ed6b4a2f5f68fc81c136b7608bce1daaed8f2b65f4a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-027', 'math', 6, 1, 'choice', '{"stem":"社区运动会：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["只比较“折”和“减”的字数","选择广告颜色更亮的","分别算出实际付款额再比较","不看原价直接猜"],"answer":2,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'understand', array['全国通用', '基础巩固']::text[], 'b92d9784f1deabc95127667fbc508b9a9aafc7b240e1b9a529b4d100d3fd4bdc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-028', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：220件作品中有30%获推荐，获推荐多少件？","options":["30件","154件","76件","66件"],"answer":3,"explanation":"220×30%=66件。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], 'a29a329ae982264aed66bc0c08b6297aa0f1bc106ac7c282f74c90d287de2d7c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-029', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：把12:21化成最简整数比。","options":["4:7","33:1","21:12","12:22"],"answer":0,"explanation":"同时除以最大公因数，最简比是4:7。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], '1c1030fd889f53463b97f0699c2ec58f0ccc33e649b5f1c0c53ed2cbe340bde2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-030', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：比例x:55=1:5中，x可以取下面哪个数？","options":["12","11","55","5"],"answer":1,"explanation":"11:55同时除以11，正好等于1:5。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], 'c8c2e828a2f346af7b715a4042fd66e631e32a30b43b4ec04751056a28b60201', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-031', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：半径4厘米的圆，周长是多少？（π取3.14）","options":["50.24厘米","12.56厘米","25.12厘米","8厘米"],"answer":2,"explanation":"圆周长=2πr=2×3.14×4=25.12厘米。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], 'af5b9385d1b4d3b7e78b63f3a7e58b9c9ba03f791546c08ff147cc4ca01b340d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-032', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：棱长5厘米的正方体有几个完全相同的正方形面？","options":["4个","8个","5个","6个"],"answer":3,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], '0c7e86f77f8ba2b159bfab6b3f374daf7452a7be86b7c473c8a0b9f1968d0bcc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-033', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：海拔0米以下10米记作什么？","options":["-10米","+10米","0米","20米"],"answer":0,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], '56639da912f30508d334b427f1051bf486fba5a8834c5e25851a3c260ce04d6f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-034', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：袋中有4个红球、7个蓝球、1个绿球，任意摸一个，哪种颜色最可能？","options":["红球","蓝球","绿球","三种一样"],"answer":1,"explanation":"蓝球有7个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], '4ca4cb3500ca3f5b67a698b77f43f9a9924b8a1e6ad0b860c828595e1957e206', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-035', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：每小时行51千米，2小时行多少千米？","options":["53千米","128千米","102千米","51千米"],"answer":2,"explanation":"路程=速度×时间=51×2=102千米。"}'::jsonb, 'builtin', '综合建模', 'understand', array['全国通用', '基础巩固']::text[], 'e3fb4f218e44b30bf54a5fd85b8dfb920b368027487bcf21467bf3f6806d3674', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-036', 'math', 6, 1, 'choice', '{"stem":"湿地调查站：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["只比较“折”和“减”的字数","选择广告颜色更亮的","不看原价直接猜","分别算出实际付款额再比较"],"answer":3,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'understand', array['全国通用', '基础巩固']::text[], 'a59158fce4f758821da1cdbda06a00955044a6af0bd18bea7dd9e98472aad8ea', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-037', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：240件作品中有35%获推荐，获推荐多少件？","options":["84件","35件","156件","94件"],"answer":0,"explanation":"240×35%=84件。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], '99dd70c5824dc67e2d717779855a742f1bd0b31f0dd94f0268961066fd21aa95', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-038', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：把13:23化成最简整数比。","options":["36:1","13:23","23:13","13:24"],"answer":1,"explanation":"同时除以最大公因数，最简比是13:23。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], 'f44c77ae213092cdc96da5ae54edd2256610843b0dc558193d43d48a595b03e3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-039', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：比例x:72=1:6中，x可以取下面哪个数？","options":["13","72","12","6"],"answer":2,"explanation":"12:72同时除以12，正好等于1:6。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], 'c3f46e53bc6f1ed037b944ff967423fe60705f54eddfaddb4383443b525d5f5a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-040', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：半径5厘米的圆，周长是多少？（π取3.14）","options":["78.50厘米","15.70厘米","10厘米","31.40厘米"],"answer":3,"explanation":"圆周长=2πr=2×3.14×5=31.40厘米。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], '0909f6149ac3ab7ec0b94b3446fdf2873180606e7d3154c97def2156b722cc0e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-041', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：棱长6厘米的正方体有几个完全相同的正方形面？","options":["6个","4个","8个","6个3"],"answer":0,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], '81d94c29eb3c6d930ff0a057a89ca7ad0b67401155c0dd2a8110f6aca72ff563', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-042', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：海拔0米以下11米记作什么？","options":["+11米","-11米","0米","22米"],"answer":1,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], '5034a29ccc7eb9b68d306434b98aa1321037121a57d2f5e4522dea3fe90dce6d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-043', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：袋中有5个红球、8个蓝球、2个绿球，任意摸一个，哪种颜色最可能？","options":["红球","绿球","蓝球","三种一样"],"answer":2,"explanation":"蓝球有8个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], '8e78eda104562c4f3abda41ee3ed457424e9089d8546d74eef0aebb711e802f5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-044', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：每小时行52千米，3小时行多少千米？","options":["55千米","183千米","52千米","156千米"],"answer":3,"explanation":"路程=速度×时间=52×3=156千米。"}'::jsonb, 'builtin', '综合建模', 'understand', array['全国通用', '基础巩固']::text[], '2b73f213a49565b80ca040b4332dd4b0bab94948cb1d7a02458a32fb76ba961d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-045', 'math', 6, 1, 'choice', '{"stem":"图书漂流节：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["分别算出实际付款额再比较","只比较“折”和“减”的字数","选择广告颜色更亮的","不看原价直接猜"],"answer":0,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'understand', array['全国通用', '基础巩固']::text[], 'd57244fd30a969966c4222a9d74b67d35c5af729fefa445e905de95b8faacf0b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-046', 'math', 6, 1, 'choice', '{"stem":"科学实验室：260件作品中有20%获推荐，获推荐多少件？","options":["20件","52件","208件","62件"],"answer":1,"explanation":"260×20%=52件。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], '6ffd841640790e0a293abbe4bc33eb4fda8e8c558cc86c752e2d354bed9ee87f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-047', 'math', 6, 1, 'choice', '{"stem":"科学实验室：把14:25化成最简整数比。","options":["39:1","25:14","14:25","14:26"],"answer":2,"explanation":"同时除以最大公因数，最简比是14:25。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], '16ce42ad8863fa4b563a0a2456bfc406b47018c0ed99b68273bbda02f378219b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-048', 'math', 6, 1, 'choice', '{"stem":"科学实验室：比例x:39=1:3中，x可以取下面哪个数？","options":["14","39","3","13"],"answer":3,"explanation":"13:39同时除以13，正好等于1:3。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], '7276b58ec4fd46951bc51f210e685be632574cf8c26b5b466246952c82bad78f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-049', 'math', 6, 1, 'choice', '{"stem":"科学实验室：半径6厘米的圆，周长是多少？（π取3.14）","options":["37.68厘米","113.04厘米","18.84厘米","12厘米"],"answer":0,"explanation":"圆周长=2πr=2×3.14×6=37.68厘米。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], '7756767ba564da86d74a233fcc1449cb39aa26df8c9736395df1eec79d95b199', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-050', 'math', 6, 1, 'choice', '{"stem":"科学实验室：棱长3厘米的正方体有几个完全相同的正方形面？","options":["4个","6个","8个","3个"],"answer":1,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], '8b9cd923e9a53d8aaa8f4f7d6903b6648eb8078e010fe017145416be0f960bdb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-051', 'math', 6, 1, 'choice', '{"stem":"科学实验室：海拔0米以下12米记作什么？","options":["+12米","0米","-12米","24米"],"answer":2,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], '0c9bc9acbc4193a9617795b93dffc0eaa61b18648dfe3e99c403cd223bd81538', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-052', 'math', 6, 1, 'choice', '{"stem":"科学实验室：袋中有2个红球、5个蓝球、3个绿球，任意摸一个，哪种颜色最可能？","options":["红球","绿球","三种一样","蓝球"],"answer":3,"explanation":"蓝球有5个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], 'e4c937217c8673d8fe8db880a370305e8bd88cfadb3c4201430b5b9895fc9d0f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-053', 'math', 6, 2, 'choice', '{"stem":"科学实验室：每小时行53千米，4小时行多少千米？","options":["212千米","57千米","240千米","53千米"],"answer":0,"explanation":"路程=速度×时间=53×4=212千米。"}'::jsonb, 'builtin', '综合建模', 'apply', array['全国通用', '建模推理']::text[], 'd4f51ac2fb70381a28b17b638764808bee2be5c33265af2a2d3fea5bf4ace621', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-054', 'math', 6, 2, 'choice', '{"stem":"科学实验室：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["只比较“折”和“减”的字数","分别算出实际付款额再比较","选择广告颜色更亮的","不看原价直接猜"],"answer":1,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'apply', array['全国通用', '建模推理']::text[], '140192ce5fcdbaf5392ebdf859af66f0c8ac5ba520b2eb55617b5803998f9794', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-055', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：280件作品中有25%获推荐，获推荐多少件？","options":["25件","210件","70件","80件"],"answer":2,"explanation":"280×25%=70件。"}'::jsonb, 'builtin', '分数与百分数', 'apply', array['全国通用', '建模推理']::text[], 'fb101b2d38546c388a8a6d52c13b1b1cd1306853c4c752c8542336744efe8374', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-056', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：把15:27化成最简整数比。","options":["42:1","27:15","15:28","5:9"],"answer":3,"explanation":"同时除以最大公因数，最简比是5:9。"}'::jsonb, 'builtin', '比', 'apply', array['全国通用', '建模推理']::text[], '01289af7d8cd652b4405df8e18e4a9d3fba9f6bc785cee787e5762ed26d3292e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-057', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：比例x:56=1:4中，x可以取下面哪个数？","options":["14","15","56","4"],"answer":0,"explanation":"14:56同时除以14，正好等于1:4。"}'::jsonb, 'builtin', '比例', 'apply', array['全国通用', '建模推理']::text[], '4899f47909c78013490642336d30e87d9d3d7d629abea88f61bc13fadc3411d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-058', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：半径7厘米的圆，周长是多少？（π取3.14）","options":["153.86厘米","43.96厘米","21.98厘米","14厘米"],"answer":1,"explanation":"圆周长=2πr=2×3.14×7=43.96厘米。"}'::jsonb, 'builtin', '圆', 'apply', array['全国通用', '建模推理']::text[], 'e5b023a521659a3fb68f14751e195b24107f966b6a0258dbffc64006bc98ca89', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-059', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：棱长4厘米的正方体有几个完全相同的正方形面？","options":["4个","8个","6个","4个3"],"answer":2,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'apply', array['全国通用', '建模推理']::text[], '6d84affc6f0e28b010ae6fb632dabe0a1976157da2a0ed37109c15e0b41cd456', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-060', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：海拔0米以下13米记作什么？","options":["+13米","0米","26米","-13米"],"answer":3,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'apply', array['全国通用', '建模推理']::text[], '855b4fe2bd090cb78c7ed84c931156abc450e200434642813f17f7bee6ab08f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-061', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：袋中有3个红球、6个蓝球、1个绿球，任意摸一个，哪种颜色最可能？","options":["蓝球","红球","绿球","三种一样"],"answer":0,"explanation":"蓝球有6个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'apply', array['全国通用', '建模推理']::text[], 'f85785077586130faf6e17bf2228b6721dd9d6a70340cd64770f0f276b1078ae', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-062', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：每小时行54千米，2小时行多少千米？","options":["56千米","108千米","137千米","54千米"],"answer":1,"explanation":"路程=速度×时间=54×2=108千米。"}'::jsonb, 'builtin', '综合建模', 'apply', array['全国通用', '建模推理']::text[], 'ce56b1a7ce749d678fcd80be5facc67b05a8a84d3300458dd72c11734f0a5843', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-063', 'math', 6, 2, 'choice', '{"stem":"城市规划馆：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["只比较“折”和“减”的字数","选择广告颜色更亮的","分别算出实际付款额再比较","不看原价直接猜"],"answer":2,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'apply', array['全国通用', '建模推理']::text[], '18c85866fa17564048a499c60edea2cda21c8365ead2fb0c8bfb951d7259119b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-064', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：300件作品中有30%获推荐，获推荐多少件？","options":["30件","210件","100件","90件"],"answer":3,"explanation":"300×30%=90件。"}'::jsonb, 'builtin', '分数与百分数', 'apply', array['全国通用', '建模推理']::text[], '78b7e62c9b73e41a9a86dd34411725ef7ed158f609fbe73bc8150969feb24791', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-065', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：把16:29化成最简整数比。","options":["16:29","45:1","29:16","16:30"],"answer":0,"explanation":"同时除以最大公因数，最简比是16:29。"}'::jsonb, 'builtin', '比', 'apply', array['全国通用', '建模推理']::text[], '8e6b7c3eaca3d2c446917d2fe3b4837d0d695e862c3905c9250ed870d9622f68', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-066', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：比例x:75=1:5中，x可以取下面哪个数？","options":["16","15","75","5"],"answer":1,"explanation":"15:75同时除以15，正好等于1:5。"}'::jsonb, 'builtin', '比例', 'apply', array['全国通用', '建模推理']::text[], '2a4aae600da559222b71071faae1627e01b73461d166f24a957dbbcd3b75e84f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-067', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：半径3厘米的圆，周长是多少？（π取3.14）","options":["28.26厘米","9.42厘米","18.84厘米","6厘米"],"answer":2,"explanation":"圆周长=2πr=2×3.14×3=18.84厘米。"}'::jsonb, 'builtin', '圆', 'apply', array['全国通用', '建模推理']::text[], '06b953e67a9377723d332e829f5f9af7d36a11350849056171db90ecc7d5a9d9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-068', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：棱长5厘米的正方体有几个完全相同的正方形面？","options":["4个","8个","5个","6个"],"answer":3,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'apply', array['全国通用', '建模推理']::text[], '8cd3d10aad69184aa09c558b12f9ddc5593a9cfda80bc98a11a59602560d8c9f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-069', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：海拔0米以下14米记作什么？","options":["-14米","+14米","0米","28米"],"answer":0,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'apply', array['全国通用', '建模推理']::text[], '5757da6acc080e7011393033743af3bd1414e28b693d444f6c45d704fed7a035', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-070', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：袋中有4个红球、7个蓝球、2个绿球，任意摸一个，哪种颜色最可能？","options":["红球","蓝球","绿球","三种一样"],"answer":1,"explanation":"蓝球有7个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'apply', array['全国通用', '建模推理']::text[], 'd90120a82879ec5964a7fd14543b0f8431cb7cc301a3276f0c020971c9e94d47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-071', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：每小时行55千米，3小时行多少千米？","options":["58千米","195千米","165千米","55千米"],"answer":2,"explanation":"路程=速度×时间=55×3=165千米。"}'::jsonb, 'builtin', '综合建模', 'apply', array['全国通用', '建模推理']::text[], '09288529007185532ddcd90bfd8670133e0cb8eb77cbb28ddc8d0a33ae8c82c0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-072', 'math', 6, 2, 'choice', '{"stem":"传统工艺坊：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["只比较“折”和“减”的字数","选择广告颜色更亮的","不看原价直接猜","分别算出实际付款额再比较"],"answer":3,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'apply', array['全国通用', '建模推理']::text[], 'd710b4b750397dd4fdb162d660400b20fe028662344f590615a2d0b28cc06f0a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-073', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：320件作品中有35%获推荐，获推荐多少件？","options":["112件","35件","208件","122件"],"answer":0,"explanation":"320×35%=112件。"}'::jsonb, 'builtin', '分数与百分数', 'apply', array['全国通用', '建模推理']::text[], '1971fbd91ebbb31521cf111fe46c3ce62aece58fb7846102e0d14eb44adf6e8f', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-074', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：把17:31化成最简整数比。","options":["48:1","17:31","31:17","17:32"],"answer":1,"explanation":"同时除以最大公因数，最简比是17:31。"}'::jsonb, 'builtin', '比', 'apply', array['全国通用', '建模推理']::text[], '0996d918729f712173e19e622ac4417b60e30748134575929ab3917a53aac063', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-075', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：比例x:96=1:6中，x可以取下面哪个数？","options":["17","96","16","6"],"answer":2,"explanation":"16:96同时除以16，正好等于1:6。"}'::jsonb, 'builtin', '比例', 'apply', array['全国通用', '建模推理']::text[], 'bbb3da4f3558c174394150d31f175bbeac2003f445eff0f23d235ef7215b9930', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-076', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：半径4厘米的圆，周长是多少？（π取3.14）","options":["50.24厘米","12.56厘米","8厘米","25.12厘米"],"answer":3,"explanation":"圆周长=2πr=2×3.14×4=25.12厘米。"}'::jsonb, 'builtin', '圆', 'apply', array['全国通用', '建模推理']::text[], '3449a0532809134e184d982edeb3bb582ec0b1dcb94232730b6ed75cb6f40319', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-077', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：棱长6厘米的正方体有几个完全相同的正方形面？","options":["6个","4个","8个","6个3"],"answer":0,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'apply', array['全国通用', '建模推理']::text[], '79c1678eddc459d9db90339bc8c39514732de3c4b1b575bfcbc70e2f530adf47', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-078', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：海拔0米以下15米记作什么？","options":["+15米","-15米","0米","30米"],"answer":1,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'apply', array['全国通用', '建模推理']::text[], 'ee02b34e321a6afd18459807dfbb3b6c35299f9253f2d8b336b11aee2f26d14e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-079', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：袋中有5个红球、8个蓝球、3个绿球，任意摸一个，哪种颜色最可能？","options":["红球","绿球","蓝球","三种一样"],"answer":2,"explanation":"蓝球有8个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'apply', array['全国通用', '建模推理']::text[], '9cf1e8cca45c9694c19a5b78d98784a9fb49c64a1548cfb7578a6d7e648e110e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-080', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：每小时行56千米，4小时行多少千米？","options":["60千米","255千米","56千米","224千米"],"answer":3,"explanation":"路程=速度×时间=56×4=224千米。"}'::jsonb, 'builtin', '综合建模', 'apply', array['全国通用', '建模推理']::text[], '5e4d4b7176f22d3326a69974358456f7398db541abdc29b4b3332bd5afd63732', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-081', 'math', 6, 2, 'choice', '{"stem":"公益义卖场：解决“比较两种优惠方案”时，最可靠的策略是什么？","options":["分别算出实际付款额再比较","只比较“折”和“减”的字数","选择广告颜色更亮的","不看原价直接猜"],"answer":0,"explanation":"不同优惠形式要转化为同一指标——实际付款额——再比较。"}'::jsonb, 'builtin', '策略选择', 'apply', array['全国通用', '建模推理']::text[], '050c7fbb248d8b3b3ff5c5506502398a8d9c70d972c7306954d52b1f155a4db0', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-082', 'math', 6, 2, 'choice', '{"stem":"气象观测组：340件作品中有20%获推荐，获推荐多少件？","options":["20件","68件","272件","78件"],"answer":1,"explanation":"340×20%=68件。"}'::jsonb, 'builtin', '分数与百分数', 'apply', array['全国通用', '建模推理']::text[], 'd23fb957421542b37ae1a194d7db30f770d47dd60a14e7bd894a2492589b82eb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-083', 'math', 6, 2, 'choice', '{"stem":"气象观测组：把18:33化成最简整数比。","options":["51:1","33:18","6:11","18:34"],"answer":2,"explanation":"同时除以最大公因数，最简比是6:11。"}'::jsonb, 'builtin', '比', 'apply', array['全国通用', '建模推理']::text[], '0c29594729202995440b5751e4a5c3ed139cf88cb1ce48a15b28a7efb311efa2', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-084', 'math', 6, 2, 'choice', '{"stem":"气象观测组：比例x:51=1:3中，x可以取下面哪个数？","options":["18","51","3","17"],"answer":3,"explanation":"17:51同时除以17，正好等于1:3。"}'::jsonb, 'builtin', '比例', 'apply', array['全国通用', '建模推理']::text[], '4fbdcecf15cdef5297bd59cfebd8fed67b1af6705a4d8b5bf99888378d6dfec4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-085', 'math', 6, 2, 'choice', '{"stem":"气象观测组：半径5厘米的圆，周长是多少？（π取3.14）","options":["31.40厘米","78.50厘米","15.70厘米","10厘米"],"answer":0,"explanation":"圆周长=2πr=2×3.14×5=31.40厘米。"}'::jsonb, 'builtin', '圆', 'apply', array['全国通用', '建模推理']::text[], 'db5eb2536ab24429be2f8ff032d649d2602fdebce237822facb14475b337224a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-086', 'math', 6, 2, 'choice', '{"stem":"气象观测组：棱长3厘米的正方体有几个完全相同的正方形面？","options":["4个","6个","8个","3个"],"answer":1,"explanation":"正方体有6个完全相同的正方形面。"}'::jsonb, 'builtin', '空间观念', 'apply', array['全国通用', '建模推理']::text[], 'faa5cfc17c6278c8d7716ab7dde705aee437888badb1d19f2059cc76354d6bd9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-087', 'math', 6, 2, 'choice', '{"stem":"气象观测组：海拔0米以下16米记作什么？","options":["+16米","0米","-16米","32米"],"answer":2,"explanation":"以海平面为0，低于海平面用负数表示。"}'::jsonb, 'builtin', '负数初步', 'apply', array['全国通用', '建模推理']::text[], 'd74dea8cec34093c45f62c3dbe350aa75dba392fbe80705ec46f57cba65d7a95', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-088', 'math', 6, 2, 'choice', '{"stem":"气象观测组：袋中有2个红球、5个蓝球、1个绿球，任意摸一个，哪种颜色最可能？","options":["红球","绿球","三种一样","蓝球"],"answer":3,"explanation":"蓝球有5个，数量最多，所以摸到的可能性最大。"}'::jsonb, 'builtin', '统计与可能性', 'apply', array['全国通用', '建模推理']::text[], '7350ba8ac925a6c4810a74b254bde859524fb1a5416f79d1d2b2093f0544336a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-089', 'math', 6, 2, 'choice', '{"stem":"气象观测组：每小时行57千米，2小时行多少千米？","options":["114千米","59千米","146千米","57千米"],"answer":0,"explanation":"路程=速度×时间=57×2=114千米。"}'::jsonb, 'builtin', '综合建模', 'apply', array['全国通用', '建模推理']::text[], 'a51182a20cb809e539ee34c6f35f13595fbb73e4ae6dea01f4c69de8f5c7abe5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-090', 'math', 6, 3, 'choice', '{"stem":"气象观测组：购买5件单价20元的用品，可选择“总价减14元”或“按八五折付款”。哪种方案更省？","options":["原价付款更省","八五折更省","只看优惠数字无法比较","减14元更省"],"answer":1,"explanation":"原价100元，减价后86元，八五折后85.00元，比较实际付款额即可。"}'::jsonb, 'builtin', '策略选择', 'reason', array['全国通用', '建模推理']::text[], '1d5e96fa461303bb348b768a530600957d80c8554aa207a87926c4afd07826a7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-091', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：某类材料原占总量的25%，改进后该类数量增加20%，总量暂不变。现在该类相当于原总量的百分之几？","options":["45%","5%","30%","20.833333333333336%"],"answer":2,"explanation":"以原总量为单位1，原来占25%，增加20%后是25%×1.2=30%。"}'::jsonb, 'builtin', '分数与百分数', 'reason', array['全国通用', '建模推理']::text[], '023b8ec53289674a5eef9b0cab52739caac08188304c0d5bbfa5ac689dd8c2ec', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-092', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：甲、乙两组人数比为19:35，总人数是216。甲组有多少人？","options":["140人","108人","54人","76人"],"answer":3,"explanation":"比的总份数是54，每份216÷54=4人，甲组19×4=76人。"}'::jsonb, 'builtin', '比', 'reason', array['全国通用', '建模推理']::text[], '33a782c582a6c75a18a73d94c7f42bdb52e27ff6a3026fddd6c6f3c531d6f888', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-093', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：地图上4厘米表示实际16千米。另一段图上长18厘米，实际长多少千米？","options":["72千米","22千米","72千米2","4.5千米"],"answer":0,"explanation":"每厘米表示4千米，18厘米表示72千米。"}'::jsonb, 'builtin', '比例', 'reason', array['全国通用', '建模推理']::text[], '421bc3749ef6347e17971cea3904404e5be255960b733f250bf3175f0c5691c6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-094', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：圆形花坛半径6米，沿外圈铺一周边条并在内部铺草。边条长度和草地面积分别是多少？（π取3.14）","options":["113.04米，37.68平方米","37.68米，113.04平方米","18.84米，72.00平方米","12米，36平方米"],"answer":1,"explanation":"周长=2πr=37.68米，面积=πr²=113.04平方米。"}'::jsonb, 'builtin', '圆', 'reason', array['全国通用', '建模推理']::text[], 'accd367ec617f9546ecda21a853ed02cd43b72fcf837bb22be9a7ead0729b464', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-095', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：一个无盖正方体收纳盒棱长4分米，制作外壳至少需要多少平方分米材料？","options":["96平方分米","64平方分米","80平方分米","16平方分米"],"answer":2,"explanation":"无盖正方体有5个面，每面16平方分米，共80平方分米。"}'::jsonb, 'builtin', '空间观念', 'reason', array['全国通用', '建模推理']::text[], '59a4e897b3512ceb279337290a316b9154c10331dda8dc36ec44cb28cf054677', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-096', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：清晨气温为-17℃，中午上升7℃，夜间又下降3℃，夜间气温是多少？","options":["21℃","-10℃","-27℃","-13℃"],"answer":3,"explanation":"从-17开始，上升7再下降3：-17+7-3=-13℃。"}'::jsonb, 'builtin', '负数初步', 'reason', array['全国通用', '建模推理']::text[], '68a47f3add3b49cc5aa3c02bb05fed44a752aad5af8e26d131bac59d0e2d2224', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-097', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：袋中有3个红球、6个蓝球、2个绿球。要使摸到红球与蓝球的可能性相同，至少应增加多少个红球？","options":["3个","3个1","2个","11个"],"answer":0,"explanation":"球除颜色外相同，数量相等时可能性相同，应增加6-3=3个红球。"}'::jsonb, 'builtin', '统计与可能性', 'reason', array['全国通用', '建模推理']::text[], 'bffd7df253ef5a1e06171707686b65e336285376ed606e90836ef0681da9180b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-098', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：研学车前3小时平均每小时行58千米，休息后又行33千米。若全程计划237千米，还剩多少千米？","options":["207千米","30千米","63千米","94千米"],"answer":1,"explanation":"已行58×3+33=207千米，计划比它多30千米，所以还剩30千米。"}'::jsonb, 'builtin', '综合建模', 'reason', array['全国通用', '建模推理']::text[], 'ce6a88df508e3dc7e98a59c35e396ef68d305070e1b81df1d9bc361f4f0e52b9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-099', 'math', 6, 3, 'choice', '{"stem":"研学路线设计：购买6件单价21元的用品，可选择“总价减15元”或“按八五折付款”。哪种方案更省？","options":["原价付款更省","只看优惠数字无法比较","八五折更省","减15元更省"],"answer":2,"explanation":"原价126元，减价后111元，八五折后107.10元，比较实际付款额即可。"}'::jsonb, 'builtin', '策略选择', 'reason', array['全国通用', '建模推理']::text[], 'd0357eab1769162028b7c7afbefbe7f00aa4bcc7e9c749c4a837afbc1e772c6c', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-100', 'math', 6, 3, 'choice', '{"stem":"健康数据中心：某类材料原占总量的30%，改进后该类数量增加20%，总量暂不变。现在该类相当于原总量的百分之几？","options":["50%","10%","25%","36%"],"answer":3,"explanation":"以原总量为单位1，原来占30%，增加20%后是30%×1.2=36%。"}'::jsonb, 'builtin', '分数与百分数', 'reason', array['全国通用', '建模推理']::text[], 'f863d8816400c7ecb4ebca88c0ce22ca3b0d31b6d5d07f59fa90dc7dd80a434d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-101', 'math', 6, 3, 'choice', '{"stem":"健康数据中心：甲、乙两组人数比为20:37，总人数是228。甲组有多少人？","options":["80人","148人","114人","57人"],"answer":0,"explanation":"比的总份数是57，每份228÷57=4人，甲组20×4=80人。"}'::jsonb, 'builtin', '比', 'reason', array['全国通用', '建模推理']::text[], 'bd04ab9d4079e1477d562269bd8349a8b556c91d098887f9415e7aba9ae2ba09', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-102', 'math', 6, 3, 'choice', '{"stem":"健康数据中心：地图上5厘米表示实际20千米。另一段图上长19厘米，实际长多少千米？","options":["23千米","76千米","95千米","4.75千米"],"answer":1,"explanation":"每厘米表示4千米，19厘米表示76千米。"}'::jsonb, 'builtin', '比例', 'reason', array['全国通用', '建模推理']::text[], 'e048dbdf74ea5f48a7e3ef34b31d3aed9099a1c79946b844e31e23603277e99a', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-103', 'math', 6, 3, 'choice', '{"stem":"健康数据中心：圆形花坛半径7米，沿外圈铺一周边条并在内部铺草。边条长度和草地面积分别是多少？（π取3.14）","options":["153.86米，43.96平方米","21.98米，98.00平方米","43.96米，153.86平方米","14米，49平方米"],"answer":2,"explanation":"周长=2πr=43.96米，面积=πr²=153.86平方米。"}'::jsonb, 'builtin', '圆', 'reason', array['全国通用', '建模推理']::text[], '515ba83b5ce62a1302903637f6cc4ce79cdad013f1f51e2f603d838d0ac4a9c3', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-104', 'math', 6, 3, 'choice', '{"stem":"健康数据中心：一个无盖正方体收纳盒棱长5分米，制作外壳至少需要多少平方分米材料？","options":["150平方分米","125平方分米2","20平方分米","125平方分米"],"answer":3,"explanation":"无盖正方体有5个面，每面25平方分米，共125平方分米。"}'::jsonb, 'builtin', '空间观念', 'reason', array['全国通用', '建模推理']::text[], '2b28a24cf6ff43871c7b9ea0310258f246dd70a061239875089dc408cbd5f6b7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-105', 'math', 6, 3, 'choice', '{"stem":"健康数据中心：清晨气温为-18℃，中午上升8℃，夜间又下降3℃，夜间气温是多少？","options":["-13℃","23℃","-10℃","-29℃"],"answer":0,"explanation":"从-18开始，上升8再下降3：-18+8-3=-13℃。"}'::jsonb, 'builtin', '负数初步', 'reason', array['全国通用', '建模推理']::text[], '934ff20bc165470585fea731df330019b5ef038979b4e33149284d2bf116b61d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-106', 'math', 6, 1, 'fill', '{"stem":"健康数据中心：袋中白球8个、黑球3个，摸到___球的可能性更大。","answer":"白","explanation":"数量越多，在随机摸取中可能性越大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], '86a671e46dfaa5111d05243ba333449920652d00a522e318f3f8430e990cad33', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-107', 'math', 6, 1, 'fill', '{"stem":"健康数据中心：单价8元，数量4件，总价是___元。","answer":"32","explanation":"总价=单价×数量。"}'::jsonb, 'builtin', '综合建模', 'understand', array['全国通用', '基础巩固']::text[], '40507af097596f8b85c4cebcadba66fcd1b92e34992116246e33a6a779d66fac', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-108', 'math', 6, 1, 'fill', '{"stem":"健康数据中心：比较不同单位的数据前，应先统一___。","answer":"单位","explanation":"统一单位后才能直接比较。"}'::jsonb, 'builtin', '策略选择', 'understand', array['全国通用', '基础巩固']::text[], '3a8a92fea1e8876bc0cce876fded4c4a6fb2dda8bd49944b35f22cdfb751128b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-109', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：28%写成小数是___。","answer":"0.28","explanation":"百分数除以100化成小数。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], '293c1e5ea01ee7757334035bdbd3cdb01c03695b3b15d45ffc6318367f129541', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-110', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：12:16化简时，两项要同时除以它们的最大公___数。","answer":"因","explanation":"化简比要同时除以最大公因数。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], '1f98e731db8c40259e46d8bec8740ce5c852e94937eae1b05338187e309d275d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-111', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：比例2:5=x:40，x=___。","answer":"16","explanation":"根据比例基本性质求未知项。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], '373f11a8762875873e31378c66d87cb704287c5366e92fec4e4a6d0939d1b6be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-112', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：直径7厘米的圆，半径是___厘米。","answer":"3.5","explanation":"半径是直径的一半。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], '121e267d7f3d61f0dddd8c6c1dd3841bb1f60cc9b654b6af2bb9c3ea0eeb4e6d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-113', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：长方体长11厘米、宽3厘米、高2厘米，体积是___立方厘米。","answer":"66","explanation":"长方体体积=长×宽×高。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], '2d11bb7a6d8295e9349c80dbd589b68aa1d9964ec5261a5812eb2d9f028ef580', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-114', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：比0低11的数记作___。","answer":"-11","explanation":"低于基准0用负数表示。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], '0addfe499bd52959cfe957d5792f5030c59b56129cae3d150cdbabb8b953ebb9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-115', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：袋中白球8个、黑球4个，摸到___球的可能性更大。","answer":"白","explanation":"数量越多，在随机摸取中可能性越大。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], 'aeae1b70748e46c7dfa62e7454850e3fc74b61d01d531b54ee45f7b4de8b1589', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-116', 'math', 6, 1, 'fill', '{"stem":"公园改造计划：单价17元，数量4件，总价是___元。","answer":"68","explanation":"总价=单价×数量。"}'::jsonb, 'builtin', '综合建模', 'understand', array['全国通用', '基础巩固']::text[], 'f823c64a76f9196dd964175230f8293ba92800dc9ef5562a90cb7dfd8dd00578', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-117', 'math', 6, 2, 'fill', '{"stem":"公园改造计划：比较不同单位的数据前，应先统一___。","answer":"单位","explanation":"统一单位后才能直接比较。"}'::jsonb, 'builtin', '策略选择', 'apply', array['全国通用', '建模推理']::text[], '74f5b3d54a22576832efe928ed5e39f3cd26c94a183acf88fd8384594c79f0f6', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-118', 'math', 6, 2, 'fill', '{"stem":"班级预算会：37%写成小数是___。","answer":"0.37","explanation":"百分数除以100化成小数。"}'::jsonb, 'builtin', '分数与百分数', 'apply', array['全国通用', '建模推理']::text[], '646f6d2075e2f9ff040aebd99060b177ec19844f6a504a3c96e213fdf229ae76', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-119', 'math', 6, 2, 'fill', '{"stem":"班级预算会：21:25化简时，两项要同时除以它们的最大公___数。","answer":"因","explanation":"化简比要同时除以最大公因数。"}'::jsonb, 'builtin', '比', 'apply', array['全国通用', '建模推理']::text[], '7389676c48c57baf8401f389dec761158191fa95988a3a00b9f7bd84912ac613', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-120', 'math', 6, 2, 'fill', '{"stem":"班级预算会：比例2:5=x:85，x=___。","answer":"34","explanation":"根据比例基本性质求未知项。"}'::jsonb, 'builtin', '比例', 'apply', array['全国通用', '建模推理']::text[], '365139bad5999a6a3854e88fa7bc9fafc06b190a61ed51be0db1bbf3d66a076d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-121', 'math', 6, 2, 'fill', '{"stem":"班级预算会：直径6厘米的圆，半径是___厘米。","answer":"3","explanation":"半径是直径的一半。"}'::jsonb, 'builtin', '圆', 'apply', array['全国通用', '建模推理']::text[], 'b5b54405e0baa2fa49c07ea1a2c447df8bbc870ef14f187a325a31c192dcad12', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-122', 'math', 6, 2, 'fill', '{"stem":"班级预算会：长方体长20厘米、宽3厘米、高2厘米，体积是___立方厘米。","answer":"120","explanation":"长方体体积=长×宽×高。"}'::jsonb, 'builtin', '空间观念', 'apply', array['全国通用', '建模推理']::text[], '08835e2e191491ab390611cbaec8b378d9b75bacde5baf17313abb8078b23750', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-123', 'math', 6, 2, 'fill', '{"stem":"班级预算会：比0低20的数记作___。","answer":"-20","explanation":"低于基准0用负数表示。"}'::jsonb, 'builtin', '负数初步', 'apply', array['全国通用', '建模推理']::text[], '4b8e9c2ef0648eb16dba01c2d4ce3b6b6a1f86a28ee9df40a1041d28465fd0e5', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-124', 'math', 6, 3, 'fill', '{"stem":"班级预算会：袋中白球8个、黑球5个，摸到___球的可能性更大。","answer":"白","explanation":"数量越多，在随机摸取中可能性越大。"}'::jsonb, 'builtin', '统计与可能性', 'reason', array['全国通用', '建模推理']::text[], '1d59f8cd9f63589e2a8e82ee3ac09a084db047b84d42bd92d3c6e25bc01f2c6b', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-125', 'math', 6, 3, 'fill', '{"stem":"班级预算会：单价26元，数量4件，总价是___元。","answer":"104","explanation":"总价=单价×数量。"}'::jsonb, 'builtin', '综合建模', 'reason', array['全国通用', '建模推理']::text[], '59bf8a60317c678b78e66674681ecbef74bc7ef7eb8fb0fe1175385818060ba4', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-126', 'math', 6, 3, 'fill', '{"stem":"班级预算会：比较不同单位的数据前，应先统一___。","answer":"单位","explanation":"统一单位后才能直接比较。"}'::jsonb, 'builtin', '策略选择', 'reason', array['全国通用', '建模推理']::text[], '9ff2e19544f5ac01fc7a0a95ad14f3e48dd81f7a19cb5d2dd4f18554ee3a3cbc', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-127', 'math', 6, 1, 'match', '{"stem":"交通调查组：匹配等值的分数、小数与百分数。","left":["1/2","1/4","3/5","0.8"],"right":["60%","50%","80%","25%"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据分数与百分数的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '分数与百分数', 'understand', array['全国通用', '基础巩固']::text[], '8470ce3f3e6c6d0bf4ef2b08e096f929e0000afaa01567c7fa83fe7d3169180d', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-128', 'math', 6, 1, 'match', '{"stem":"交通调查组：匹配能够化为同一最简比的两组比。","left":["2:3","4:5","1:2","3:4"],"right":["5:10","4:6","9:12","8:10"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据比的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '比', 'understand', array['全国通用', '基础巩固']::text[], '921bd3e896e2363d57ff68c96ac1531fc4c46c91fe182517cc26df3c858bb521', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-129', 'math', 6, 1, 'match', '{"stem":"交通调查组：匹配可以组成比例的比。","left":["2:3","3:5","4:7","5:8"],"right":["8:14","6:9","15:24","9:15"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据比例的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '比例', 'understand', array['全国通用', '基础巩固']::text[], 'caf4c46f5ff1158f6a304c8fb6b865cd2a77b45690a9debb0bd3300263dbdc31', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-130', 'math', 6, 1, 'match', '{"stem":"交通调查组：匹配圆的概念与计算式。","left":["半径","直径","周长","面积"],"right":["2πr","d÷2","πr²","2r"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据圆的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '圆', 'understand', array['全国通用', '基础巩固']::text[], 'c64c7b7199382edb7572e99211d77396ba0e5c1f6ddd3786e03fce8042622fcb', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-131', 'math', 6, 1, 'match', '{"stem":"交通调查组：匹配量的单位与生活对象。","left":["立方厘米","立方分米","平方米","升"],"right":["地面面积","小方块体积","水箱容量","纸箱体积"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据空间观念的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '空间观念', 'understand', array['全国通用', '基础巩固']::text[], '0561cb130b7955eacfcabdb66a5629ad5e65b6bc704c694f9491f39d75de24be', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-132', 'math', 6, 1, 'match', '{"stem":"交通调查组：匹配有理数与相对基准的含义。","left":["+5","0","-3","-8"],"right":["低于基准3","高于基准5","低于基准8","基准点"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据负数初步的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '负数初步', 'understand', array['全国通用', '基础巩固']::text[], '8bcbed73ae58325c70223801a4f89f184a85327306592431f08598724b89833e', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-133', 'math', 6, 1, 'match', '{"stem":"交通调查组：匹配统计概念与求法或特征。","left":["平均数","中位数","最大可能性","不可能事件"],"right":["数量最多","总数÷份数","概率为0","排序后的中间数"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据统计与可能性的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '统计与可能性', 'understand', array['全国通用', '基础巩固']::text[], '84ceb7a9dfd3a1d900197f4b4a88ba28e7934957393060aef116dad20395da30', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-134', 'math', 6, 2, 'match', '{"stem":"交通调查组：匹配实际数量与建模关系。","left":["总价","路程","工作总量","浓度"],"right":["效率×时间","单价×数量","溶质÷溶液","速度×时间"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据综合建模的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '综合建模', 'apply', array['全国通用', '建模推理']::text[], '81aaf07aec651658da1f8f1c51824f8c3f17799bd107693288426d34a4171992', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-135', 'math', 6, 2, 'match', '{"stem":"交通调查组：匹配解题策略与适用目的。","left":["画图","列表","假设","倒推"],"right":["先设一种情况","表示空间关系","从结果回到条件","有序整理情况"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据策略选择的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '策略选择', 'apply', array['全国通用', '建模推理']::text[], '920af3d510abd31bc021b7675aee478e3c61045da3488545dcb4481e6134f593', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-136', 'math', 6, 2, 'match', '{"stem":"农业实践园：匹配等值的分数、小数与百分数。","left":["1/2","1/4","3/5","0.8"],"right":["60%","50%","80%","25%"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据分数与百分数的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '分数与百分数', 'apply', array['全国通用', '建模推理']::text[], '2e3b01d68e97ed58f5e0cea9ccab61e4c2822c280dc587c1c24d8f59132ffee7', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-137', 'math', 6, 2, 'match', '{"stem":"农业实践园：匹配能够化为同一最简比的两组比。","left":["2:3","4:5","1:2","3:4"],"right":["5:10","4:6","9:12","8:10"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据比的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '比', 'apply', array['全国通用', '建模推理']::text[], 'cbd62ba7dfa3badc99831d6efaf4c0356b2dcda7db4a3631a959c8d65d03e8d8', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-138', 'math', 6, 2, 'match', '{"stem":"农业实践园：匹配可以组成比例的比。","left":["2:3","3:5","4:7","5:8"],"right":["8:14","6:9","15:24","9:15"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据比例的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '比例', 'apply', array['全国通用', '建模推理']::text[], '3df6f74f751d9d4d662ee2cf539b5990381c5c71e1480a7bc6ed7a1995ac7881', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-139', 'math', 6, 3, 'match', '{"stem":"农业实践园：匹配圆的概念与计算式。","left":["半径","直径","周长","面积"],"right":["2πr","d÷2","πr²","2r"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据圆的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '圆', 'reason', array['全国通用', '建模推理']::text[], 'dd8e9058fe1493c4964ec9ad5e1559dc4f0793e949f15908196bfc9d07ed9a96', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;
insert into public.questions (external_id, subject, grade, difficulty, type, content, source, knowledge_point, skill, tags, content_hash, review_status, version)
values ('g6-math-authored-140', 'math', 6, 3, 'match', '{"stem":"农业实践园：匹配量的单位与生活对象。","left":["立方厘米","立方分米","平方米","升"],"right":["地面面积","小方块体积","水箱容量","纸箱体积"],"matches":[[0,1],[1,3],[2,0],[3,2]],"explanation":"根据空间观念的定义、等值关系或适用条件逐项配对。"}'::jsonb, 'builtin', '空间观念', 'reason', array['全国通用', '建模推理']::text[], 'cc90d68ae957c02988c5554670a84512fdf56837cbeadd24d8694bec86ac47a9', 'approved', 1)
on conflict (external_id) do update set
  subject = excluded.subject, grade = excluded.grade, difficulty = excluded.difficulty,
  type = excluded.type, content = excluded.content, source = excluded.source,
  knowledge_point = excluded.knowledge_point, skill = excluded.skill, tags = excluded.tags,
  content_hash = excluded.content_hash, review_status = excluded.review_status, version = excluded.version;

commit;
