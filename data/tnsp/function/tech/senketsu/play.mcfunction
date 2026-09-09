effect clear @s slowness
execute if score @s right_time matches 20.. run senketsu
execute if score @s right_time matches 20.. run tellraw @s [{"text":"穿血","color":"red"}]

