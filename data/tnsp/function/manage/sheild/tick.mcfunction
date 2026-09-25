#> tnsp:manage/sheild/tick
#
# シールドのティック処理
#
# @within func tnsp:main

execute if score @s kt.sheild_timer matches 1.. run return run scoreboard players remove @s kt.sheild_timer 1

execute store result storage kt.my_dat sheild int 50 run data get entity @s AbsorptionAmount
execute store result score $augment10_tmp kt.sheild run data get storage kt.my_dat sheild
scoreboard players operation @s health -= $augment10_tmp kt.sheild
scoreboard players set @s kt.sheild 0
function tnsp:manage/sheild/adjust