#> tnsp:manage/health/adjust_max
#
# 最大体力をスコアのhealth_maxに合わせる
#
# @within func tnsp:augment/augment7

execute store result storage kt.my_dat max_health float 0.02 run scoreboard players get @s health_max
function tnsp:manage/health/adjust_max2 with storage kt.my_dat