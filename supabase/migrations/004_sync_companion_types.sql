-- Keep database foreign-key values aligned with src/data/companionTypes.ts.
insert into public.companion_types (
  id, name, category, base_image_url, rarity, unlock_cost, is_active
) values
  ('ranger', '小游侠', 'fantasy', '/assets/companions/Forest_Ranger_1/Body.png', 'common', 0, true),
  ('warrior', '小战士', 'fantasy', '/assets/companions/Skeleton_Warrior_1/Body.png', 'common', 0, true),
  ('mage', '小法师', 'fantasy', '/assets/companions/Dark_Oracle_1/Body.png', 'common', 0, true),
  ('minotaur', '小牛魔', 'fantasy', '/assets/companions/Minotaur_1/Body.png', 'rare', 500, true),
  ('valkyrie', '女武神', 'fantasy', '/assets/companions/Valkyrie_1/Body.png', 'rare', 800, true),
  ('golem', '石魔像', 'fantasy', '/assets/companions/Golem_1/Body.png', 'rare', 600, true),
  ('reaper', '小死神', 'fantasy', '/assets/companions/Reaper_Man_1/Body.png', 'legendary', 1000, true),
  ('angel', '小天使', 'fantasy', '/assets/companions/Fallen_Angels_1/Body.png', 'legendary', 1200, true)
on conflict (id) do update set
  name = excluded.name,
  category = excluded.category,
  base_image_url = excluded.base_image_url,
  rarity = excluded.rarity,
  unlock_cost = excluded.unlock_cost,
  is_active = excluded.is_active;

