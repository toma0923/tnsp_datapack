#技の発動
execute as @s if score @s mp matches 500.. run goukakyu
#MPが足りない時
execute as @s if score @s mp matches ..499 run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp matches ..499 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp matches 500.. run scoreboard players set @s cd_goukakyu 200
#mp消費
execute as @s if score @s mp matches 500.. run scoreboard players remove @s mp 500