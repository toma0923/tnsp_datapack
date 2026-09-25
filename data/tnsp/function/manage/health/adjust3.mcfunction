#> tnsp:manage/health/adjust
#
# 体力をスコアのhealthに合わせる
#
# @within func 

execute as @a[tag=kt.adjust_health] store result storage kt.my_dat max_health float 0.02 run scoreboard players get @s health_max
execute as @a[tag=kt.adjust_health] run function tnsp:manage/health/adjust_max2 with storage kt.my_dat
tag @a remove kt.adjust_health