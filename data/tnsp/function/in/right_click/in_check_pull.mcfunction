
execute if score @s in matches 344 if score @s cd_dash matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 344 if score @s cd_dash matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 344 if score @s cd_dash matches ..0 run function tnsp:tech/dash/play
