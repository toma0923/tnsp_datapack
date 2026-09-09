#> tnsp:tech/clone/walk
#
# 目的地に向かって歩く処理
#
# @within function tnsp:tech/clone/tick

execute positioned 0.000 0.000 0.000 unless entity @e[tag=kt.for_clone] run summon marker ^ ^ ^0.23 {Tags:[kt.for_clone]}
execute positioned ~-0.5 ~100 ~-0.5 unless entity @e[tag=kt.clone_dest,dy=-200] run data modify entity @s Motion[0] set from entity @n[tag=kt.for_clone] Pos[0]
execute positioned ~-0.5 ~100 ~-0.5 unless entity @e[tag=kt.clone_dest,dy=-200] run data modify entity @s Motion[2] set from entity @n[tag=kt.for_clone] Pos[2]

kill @e[tag=kt.for_clone]