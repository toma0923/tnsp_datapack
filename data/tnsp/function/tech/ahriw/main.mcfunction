#> tnsp:tech/ahriw/main
#


# アーリのW

execute as @s if score @s mp >= ahriw mp run effect give @s speed 1 1 true

execute as @s if score @s mp >= ahriw mp run function tnsp:tech/ahriw/kill
execute as @s if score @s mp >= ahriw mp run function tnsp:tech/ahriw/summon_soul

#MPが足りない時
execute as @s if score @s mp < ahriw mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < ahriw mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= ahriw mp run function tnsp:manage/cd/set {"tech":"ahriw"}
#mp消費
execute as @s if score @s mp >= ahriw mp run function tnsp:manage/mp/remove {"tech":"ahriw"}