#> tnsp:tech/stone_pillar/main
#
# 頭上に岩を召喚し、落下させる

#MPが足りない時
execute unless entity @s[tag=kt.debug] if score @s mp < stone_pillar mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute unless entity @s[tag=kt.debug] if score @s mp < stone_pillar mp run return playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3


execute anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {count:15,func:"tnsp:tech/stone_pillar/summon_falling_entity"}

playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 0.3 0.5
schedule function tnsp:tech/stone_pillar/stopsound 5s

#クールダウン
execute unless entity @s[tag=kt.debug] run function tnsp:manage/cd/set {"tech":"stone_pillar"}
#mp消費
execute unless entity @s[tag=kt.debug] run function tnsp:manage/mp/remove {"tech":"stone_pillar"}