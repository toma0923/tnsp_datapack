
#クールダウン減らす
function tnsp:cd/remove

#game進行
function tnsp:game/main

#印
scoreboard players add @a in_in 1
execute as @a if score @s in_in matches 10 run tnsp_pose reset
execute as @a if score @s in_in matches 10 run tnsp_lefthud \n\uE021\uF001\uE022\uF002\uE023\uF002\uE024\n\uF020\uF015\uF011\uE011\uF015\uF015\uF011\uE012\uF020\uF012\uE013\uF020\uF012\uE014

#スニーク関連
execute as @a at @s if score @s sneak matches 1.. run function tnsp:in/sneak/play
execute as @a at @s if score @s sneak matches 1.. if score @s sneak2 matches 0 run function tnsp:in/sneak/reset

#ジャンプ関連

#右クリ関連
execute as @a at @s if score @s right matches 1 run function tnsp:in/right_click/tick

#tech tick 処理
execute if entity @e[tag=hit_goukakyu] as @e[tag=hit_goukakyu] at @s run function tnsp:tech/goukakyu/tag
execute if entity @e[tag=hit_senketsu] as @e[tag=hit_senketsu] at @s run function tnsp:tech/senketsu/tag
execute if entity @e[tag=hit_fang] as @e[tag=hit_fang] at @s run function tnsp:tech/fang/tag
execute as @a at @s run function tnsp:tech/clone/tick
execute as @a at @s run function tnsp:tech/doronuma/tick
execute as @a at @s run function tnsp:tech/wall/tick
execute as @a at @s run function tnsp:tech/ahriw/tick
execute as @a at @s run function tnsp:tech/stone_cannon/tick
execute as @a at @s run function tnsp:tech/stone_pillar/tick
execute as @a at @s run function tnsp:tech/sword/tick
execute as @a at @s run function tnsp:tech/muon/tick

execute as @a if score @s in matches 1.. at @s run function tnsp:in/display




#test
#execute as @a store result storage tnsp:test cd int 1 run scoreboard players get @s cd_fang
#execute as @a at @s run function tnsp:test with storage tnsp:test
execute as @a run function tnsp:in/display/righthud/do


#リセット

scoreboard players set @a sneak2 0
