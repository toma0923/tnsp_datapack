

#技の発動
effect clear @s slowness
execute if score @s right_time matches 20.. if score @s mp >= senketsu mp run senketsu
#MPが足りない時
execute as @s if score @s mp < senketsu mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < senketsu mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s right_time matches 20.. if score @s mp >= senketsu mp run function tnsp:manage/cd/set {"tech":"senketsu"}
#mp消費
execute as @s if score @s right_time matches 20.. if score @s mp >= senketsu mp run function tnsp:manage/mp/remove {"tech":"senketsu"}
