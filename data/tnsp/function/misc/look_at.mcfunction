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
tag @s add kt.me
$data modify storage kt.my_dat func set value "$(func)"
execute if score $count kt.util matches 1.. if block ~ ~ ~ #tnsp:transparent positioned ^ ^-2 ^ unless entity @e[tag=!kt.me,type=!armor_stand,type=!block_display,dy=4] positioned ^ ^2 ^1 run function tnsp:misc/look_at with storage kt.my_dat
tag @s remove kt.me

tag @s add kt.me
$execute unless block ~ ~ ~ #tnsp:transparent run function $(func)
execute unless block ~ ~ ~ #tnsp:transparent run return run tag @s remove kt.me
$execute positioned ~ ~-2 ~ if entity @e[tag=!kt.me,type=!armor_stand,type=!block_display,dy=4] run function $(func)
tag @s remove kt.me