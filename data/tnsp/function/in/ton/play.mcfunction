#オーラ
execute at @s run particle dust{color:[0.2,0.4,1.0],scale:0.5} ~ ~0.8 ~ 0.1 0.3 0.1 0 200
#見た目
scoreboard players set @s in_in 0
tnsp_pose bow
playsound minecraft:block.bone_block.place player @s ~ ~ ~ 1 1
tnsp_lefthud \uF020\uF014\uE011\uF020\uF003\uE012\uF020\uF001\uE013\uF020\uF001\uE014\n\uE031\uF001\uE022\uF002\uE023\uF002\uE024

#スコア設定
execute if score @s in matches 10..99 run scoreboard players add @s in 100
execute if score @s in matches 1..9 run scoreboard players add @s in 10
execute if score @s in matches 0 run scoreboard players add @s in 1
