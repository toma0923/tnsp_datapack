
#技の発動
execute as @s if score @s mp >= fang mp run tnsp_fang


#MPが足りない時
execute as @s if score @s mp < fang mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < fang mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= fang mp run function tnsp:manage/cd/set {"tech":"fang"}
#mp消費
execute as @s if score @s mp >= fang mp run function tnsp:manage/mp/remove {"tech":"fang"}