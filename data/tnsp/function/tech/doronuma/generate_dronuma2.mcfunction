#> tnsp:tech/doronuma/generate_dronuma.mcfunction
#
# 泥沼を生成する
#
# @within function tnsp:tech/doronuma/generate_dronuma.mcfunction

$summon block_display ~ ~-0.2 ~ {brightness:{sky:15,block:15},Motion:[0.0,1.0,0.0],Tags:["kt.doronuma","kt.baby_doronuma"],teleport_duration:40,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,$(random)f,1f]},block_state:{Name:"minecraft:mud"}}
execute as @n[tag=kt.baby_doronuma] at @s run tp @s ~ ~0.2 ~
scoreboard players operation @e[tag=kt.baby_doronuma] kt.uuid = @s kt.uuid
execute if entity @s[tag=kt.for_doronuma] run kill @s
tag @e remove kt.baby_doronuma