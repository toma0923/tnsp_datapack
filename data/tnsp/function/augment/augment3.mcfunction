#> tnsp:augment/augment3
#
# 与えたダメージの30%回復する
#
# @within func tnsp:manage/damage/do

$scoreboard players operation $augment3_tmp damage = $(tech) damage
scoreboard players operation $augment3_tmp damage *= 3 number
scoreboard players operation $augment3_tmp damage /= 10 number
scoreboard players operation @s health += $augment3_tmp damage
function tnsp:manage/health/adjust