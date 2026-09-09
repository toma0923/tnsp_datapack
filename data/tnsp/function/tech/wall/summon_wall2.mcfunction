#> tnsp:tech/wall/summon_wall2
#
# 壁を出す
#
# @within function tnsp:tech/wall/summon_wall

$summon item_display ~ ~-3.5 ~ {brightness:{sky:15,block:15},teleport_duration:30,item:{id:"minecraft:$(block)",count:1},Tags:[kt.wall,kt.baby_wall]}
execute as @n[tag=kt.baby_wall] at @s run tp @s ~ ~4 ~ ~ ~
execute as @n[tag=kt.baby_wall,type=item_display] at @s run summon item_display ~ ~-0.5 ~ {Tags:["kt.wall","kt.baby_wall","kt.wall_for_ride"],Passengers:[{id:"minecraft:shulker",Silent:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Tags:["kt.baby_wall","kt.wall"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:99999999,show_particles:0b}]}]}

data modify entity @n[tag=kt.baby_wall,tag=!kt.wall_for_ride] Rotation set from entity @s Rotation
scoreboard players operation @e[tag=kt.baby_wall] kt.uuid = @s kt.uuid

tag @e remove kt.baby_wall