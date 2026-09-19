#オーラ
execute at @s run particle dust{color:[0.0,0.0,0.0],scale:0.5} ~ ~0.8 ~ 0.1 0.3 0.1 0 200
#見た目
scoreboard players set @s in_in 0
tnsp_pose spear
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.5 1
tnsp_lefthud \n\uE021\uF001\uE022\uF002\uE023\uF002\uE034\n\uF020\uF015\uF011\uE011\uF015\uF015\uF011\uE012\uF020\uF012\uE013\uF020\uF012\uE014

#スコア設定
execute if score @s in matches 10..99 run scoreboard players add @s in 400
execute if score @s in matches 1..9 run scoreboard players add @s in 40
execute if score @s in matches 0 run scoreboard players add @s in 4
