#> tnsp:tech/wall/tick
#
# 毎ティック実行
#
# @within function tnsp:main

function tnsp:misc/search_uuid {tag:"kt.wall"}

execute as @e[tag=kt.for_wall] if entity @s[nbt={OnGround:1b}] at @s run function tnsp:tech/wall/summon_wall

scoreboard players add @e[tag=kt.wall,tag=kt.this] kt.timer 1
kill @e[tag=kt.wall,tag=kt.this,scores={kt.timer=200..}]
execute as @e[tag=kt.wall,tag=kt.this,type=!shulker] at @s unless entity @e[type=shulker,distance=..1] run kill @s

tag @e remove kt.this
