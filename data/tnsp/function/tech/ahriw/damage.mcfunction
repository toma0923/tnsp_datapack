#> tnsp:tech/ahriw/damage
#
# 追突時処理
#
# @within function tnsp:tech/ahriw/homing

tag @n[type=player,tag=!kt.this] add hit
tag @p[tag=kt.this] add actor
# damage @n[type=player,tag=!kt.this] 2 cactus
function tnsp:manage/damage/do {tech:"ahriw"}

execute on passengers run kill @s
kill @s