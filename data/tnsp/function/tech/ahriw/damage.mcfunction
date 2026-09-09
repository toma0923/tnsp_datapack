#> tnsp:tech/ahriw/damage
#
# 追突時処理
#
# @within function tnsp:tech/ahriw/homing

damage @n[type=player,tag=!kt.this] 2 cactus

execute on passengers run kill @s
kill @s