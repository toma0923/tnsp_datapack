#> tnsp:tech/wall/summon_wall
#
# 壁を出す
#
# @within function tnsp:tech/wall/tick

function tnsp:misc/search_uuid {tag:"kt.player"}
tp @s ~ ~ ~ facing entity @p[tag=kt.this]
tag @a remove kt.this

playsound minecraft:entity.player.work_weaponsmith ambient @a ~ ~ ~ 1 0.1

execute as @s at @s run function tnsp:tech/wall/summon_wall2 {block:"red_sandstone"}
execute as @s at @s positioned ^ ^1 ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sandstone"}
execute as @s at @s positioned ^ ^2 ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sand"}
execute as @s at @s positioned ^ ^3 ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sand"}
execute as @s at @s positioned ^1 ^ ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sandstone"}
execute as @s at @s positioned ^1 ^1 ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sand"}
execute as @s at @s positioned ^1 ^2 ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sand"}
execute as @s at @s positioned ^-1 ^ ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sandstone"}
execute as @s at @s positioned ^-1 ^1 ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sand"}
execute as @s at @s positioned ^-1 ^2 ^ run function tnsp:tech/wall/summon_wall2 {block:"red_sand"}

kill @s