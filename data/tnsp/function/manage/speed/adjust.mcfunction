#> tnsp:manage/speed/adjust
#
# スピードをスコアのkt.speedに合わせる
#
# @within func tnsp:augment/augment9

execute store result storage kt.my_dat speed float 0.001 run scoreboard players get @s kt.speed
function tnsp:manage/speed/adjust2 with storage kt.my_dat