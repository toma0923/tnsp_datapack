#> tnsp:tech/stone_pillar/tick
#
# 毎ティック実行
#
# @within function tnsp:main

function tnsp:misc/search_uuid {tag:"kt.rock_armor_stand"}

# 岩を召喚する処理
execute as @e[tag=kt.falling_rock,nbt={OnGround:1b}] at @s positioned ~ ~10 ~ run function tnsp:tech/stone_pillar/generate_rock

# 岩の見た目を制御する処理
execute as @e[tag=kt.this,tag=kt.rock_armor_stand,scores={kt.timer=1..}] at @s run function tnsp:tech/stone_pillar/fill_rock
execute as @e[tag=kt.this,tag=kt.rock_armor_stand,scores={kt.timer=1..}] at @s run function tnsp:tech/stone_pillar/fill_rock

execute as @e[tag=kt.this,tag=kt.rock_armor_stand,scores={kt.timer=30}] run data modify entity @s Marker set value 0b
execute as @e[tag=kt.this,tag=kt.rock_armor_stand,scores={kt.timer=30}] run data modify entity @s Motion[1] set value -1

# 地面に激突した時の処理
execute as @e[tag=kt.this,tag=kt.rock_armor_stand,nbt={OnGround:1b},scores={kt.timer=0}] at @s run function tnsp:tech/stone_pillar/explode
execute as @e[tag=kt.exploded,nbt={OnGround:1b}] run function tnsp:tech/stone_pillar/kill

tag @e remove kt.this
