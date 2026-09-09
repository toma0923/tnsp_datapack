#> tnsp:misc/look_at
#
# 視点の先のブロックで指定のfunctionを実行
#
# @within function tnsp:misc/look_at
#         function tnsp:tech/clone/main
#         function tnsp:tech/doronuma/main
#         function tnsp:tech/wall/main

$scoreboard players set $count kt.util $(count)
scoreboard players remove $count kt.util 1
execute store result storage kt.my_dat count int 1 run scoreboard players get $count kt.util
$execute if score $count kt.util matches ..0 run function $(func)
execute if score $count kt.util matches ..0 run return 0

# particle crit ~ ~ ~
$data modify storage kt.my_dat func set value "$(func)"
execute if score $count kt.util matches 1.. if block ~ ~ ~ #tnsp:transparent unless entity @e[type=shulker,distance=..1] positioned ^ ^ ^1 run function tnsp:misc/look_at with storage kt.my_dat

$execute unless block ~ ~ ~ #tnsp:transparent run function $(func)
execute unless block ~ ~ ~ #tnsp:transparent run return 1
$execute if entity @e[type=shulker,distance=..1] run function $(func)