#> tnsp:manage/size/adjust
#
# サイズをスコアのkt.sizeに合わせる
#
# @within func tnsp:augment/augment7

execute store result storage kt.my_dat size float 0.01 run scoreboard players get @s kt.size
function tnsp:manage/size/adjust2 with storage kt.my_dat