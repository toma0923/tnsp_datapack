#> tnsp:augment/augment1
#
# 相手のHPがハート5つ以下のとき、ダメージ30%増加
#
# @within func tnsp:manage/damage/do

execute if entity @s[tag=kt.damage_buff_tmp1] run scoreboard players remove @s damage_personal 30
execute if entity @s[tag=kt.damage_buff_tmp1] run return run tag @s remove kt.damage_buff_tmp1

tag @s add kt.damage_buff_tmp1
scoreboard players add @s damage_personal 30
