#> tnsp:manage/health/adjust2
#
# 体力をスコアのhealthに合わせる
#
# @within func tnsp:manage/health/adjust

$attribute @s max_health base set $(max_health)
effect give @s instant_health 1 10 true
tag @s add kt.adjust_health
schedule function tnsp:manage/health/adjust3 2t