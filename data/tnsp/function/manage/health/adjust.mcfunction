#> tnsp:manage/health/adjust
#
# 体力をスコアのhealthに合わせる
#
# @within func 

execute store result storage kt.my_dat max_health float 0.02 run scoreboard players get @s health
function tnsp:manage/health/adjust2 with storage kt.my_dat