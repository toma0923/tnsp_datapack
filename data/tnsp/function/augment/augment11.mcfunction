#> tnsp:augment/augment11
#
# 与えたダメージハート1つにつき、10G入手
#
# @within func tnsp:manage/damage/do

$execute store result storage kt.my_dat gold int 2 run scoreboard players get $(tech) damage
data modify storage kt.my_dat fact set value "オーグメント効果"
function tnsp:shop/grants_gold with storage kt.my_dat