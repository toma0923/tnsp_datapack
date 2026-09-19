#ついでにMpも登録
execute as @s store result storage tnsp:cd goukakyu_mp int 1 run scoreboard players get goukakyu mp
#技の発動
execute as @s if score @s mp >= goukakyu mp run goukakyu
#MPが足りない時
execute as @s if score @s mp < goukakyu mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < goukakyu mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= goukakyu mp run function tnsp:manage/cd/set {"tech":"goukakyu"}
#mp消費
execute as @s if score @s mp >= goukakyu mp run function tnsp:manage/mp/remove {"tech":"goukakyu"}