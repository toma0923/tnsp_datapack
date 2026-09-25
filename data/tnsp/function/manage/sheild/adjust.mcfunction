#> tnsp:manage/sheild/adjust
#
# 金ハートをスコアのkt.sheildに合わせる
#
# @within func tnsp:augment/augment7

scoreboard players operation @s health += @s kt.sheild
execute store result storage kt.my_dat sheild float 0.02 run scoreboard players get @s kt.sheild
function tnsp:manage/sheild/adjust2 with storage kt.my_dat