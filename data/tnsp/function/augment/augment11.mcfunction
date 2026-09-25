#> tnsp:augment/augment11
#
# 与えたダメージハート1つにつき、10G入手
#
# @within func tnsp:manage/damage/do

$scoreboard players operation $augment11_tmp damage = $(tech) damage
scoreboard players operation $augment11_tmp damage /= 10 number
scoreboard players operation @s kt.gold += $augment11_tmp damage