

#game進行
function tnsp:game/main






#印
scoreboard players add @a in_in 1
execute as @a if score @s in_in matches 10 run tnsp_pose reset
execute as @a if score @s in_in matches 10 run tnsp_lefthud \uF020\uF014\uE011\uF020\uF003\uE012\uF020\uF001\uE013\uF020\uF001\uE014\n\uE021\uF001\uE022\uF002\uE023\uF002\uE024

#スニーク関連
execute as @a at @s if score @s sneak matches 1.. run function tnsp:in/sneak/play
execute as @a at @s if score @s sneak matches 1.. if score @s sneak2 matches 0 run function tnsp:in/sneak/reset

#ジャンプ関連

#右クリ関連
execute as @a at @s if score @s right matches 1 run function tnsp:in/right_click/tick

#分身
execute as @a at @s run function tnsp:tech/clone/tick
execute as @a at @s run function tnsp:tech/doronuma/tick
execute as @a at @s run function tnsp:tech/wall/tick
execute as @a at @s run function tnsp:tech/ahriw/tick

execute as @a if score @s in matches 1.. at @s run function tnsp:in/display



#リセット

scoreboard players set @a sneak2 0
