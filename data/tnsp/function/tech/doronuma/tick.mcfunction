#> tnsp:tech/doronuma/tick
#
# 毎ティック実行
#
# @within function tnsp:main

function tnsp:misc/search_uuid {tag:"kt.doronuma"}

execute as @e[tag=kt.for_doronuma] if entity @s[nbt={OnGround:1b}] run scoreboard players add @s kt.timer 1
execute as @e[tag=kt.for_doronuma,scores={kt.timer=5}] at @s run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:block,block_state:{Name:dirt}},Radius:1f,Duration:35,WaitTime:0,potion_contents:{custom_color:4668994}}
execute as @e[tag=kt.for_doronuma,scores={kt.timer=20}] at @s run function tnsp:tech/doronuma/generate_dronuma

# 一定時間で消える
scoreboard players add @e[tag=kt.doronuma,tag=kt.this] kt.timer 1
execute as @e[tag=kt.doronuma,tag=kt.this,scores={kt.timer=600..}] at @s run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"smoke"},Radius:1f,Duration:25,Age:20}
execute as @e[tag=kt.doronuma,tag=kt.this] if score @s kt.timer matches 600.. at @s run kill @s

# 泥沼内の敵に鈍足付与
execute as @e[tag=kt.doronuma,tag=kt.this] at @s if entity @p[distance=..1] run attribute @p[distance=..1] jump_strength base set 0.42
execute as @e[tag=kt.doronuma,tag=kt.this] at @s if entity @p[distance=..1] run function tnsp:tech/doronuma/slow

tag @e remove kt.this
