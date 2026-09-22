#> tnsp:augment/augment5
#
# 自分の現在体力が多いほど与えるダメージが増加する(ハート1つにつき、2%増加)
#
# @within func tnsp:manage/damage/do

execute if entity @s[tag=kt.damage_buff_tmp5] run scoreboard players operation @s damage_personal -= $augment5_tmp kt.util
execute if entity @s[tag=kt.damage_buff_tmp5] run return run tag @s remove kt.damage_buff_tmp5

tag @s add kt.damage_buff_tmp5
scoreboard players operation $augment5_tmp kt.util = @s health
scoreboard players operation $augment5_tmp kt.util /= 50 number
scoreboard players operation @s damage_personal += $augment5_tmp kt.util