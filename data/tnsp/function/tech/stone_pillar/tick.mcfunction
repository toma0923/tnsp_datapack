#> tnsp:tech/stone_pillar/tick
#
# 毎ティック実行
#
# @within function tnsp:main

function tnsp:misc/search_uuid {tag:"kt.rock_armor_stand"}
execute as @e[tag=kt.this,scores={kt.timer=1..}] at @s run function tnsp:tech/stone_pillar/fill_rock
execute as @e[tag=kt.this,scores={kt.timer=1..}] at @s run function tnsp:tech/stone_pillar/fill_rock
tag @e remove kt.this