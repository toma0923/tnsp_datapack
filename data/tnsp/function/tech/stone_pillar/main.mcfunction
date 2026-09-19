#> tnsp:tech/stone_pillar/main
#
# 頭上に岩を召喚し、落下させる

execute if score @s mp >= stone_pillar mp anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {count:15,func:"tnsp:tech/stone_pillar/summon_falling_entity"}


execute as @s if score @s mp >= stone_pillar mp run playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 0.3 0.5
execute as @s if score @s mp >= stone_pillar mp run schedule function tnsp:tech/stone_pillar/stopsound 5s


#MPが足りない時
execute as @s if score @s mp < stone_pillar mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < stone_pillar mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= stone_pillar mp run function tnsp:manage/cd/set {"tech":"stone_pillar"}
#mp消費
execute as @s if score @s mp >= stone_pillar mp run function tnsp:manage/mp/remove {"tech":"stone_pillar"}