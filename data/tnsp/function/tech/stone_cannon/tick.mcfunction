#> tnsp:tech/stone_cannon/tick
#
# 毎ティック実行される処理
#
# @within function tnsp:main

function tnsp:misc/search_uuid {tag:"kt.stone_cannon"}

# 複数発射処理
execute if score @s kt.stone_cannon_timer matches 20 at @s run function tnsp:tech/stone_cannon/summon_stone
execute if score @s kt.stone_cannon_timer matches 16 at @s run function tnsp:tech/stone_cannon/summon_stone
execute if score @s kt.stone_cannon_timer matches 12 at @s run function tnsp:tech/stone_cannon/summon_stone
execute if score @s kt.stone_cannon_timer matches 8 at @s run function tnsp:tech/stone_cannon/summon_stone
execute if score @s kt.stone_cannon_timer matches 4 at @s run function tnsp:tech/stone_cannon/summon_stone
scoreboard players remove @s[scores={kt.stone_cannon_timer=1..}] kt.stone_cannon_timer 1

# ダメージ処理
execute as @e[tag=kt.this] at @s positioned ~-0.5 ~-2 ~-0.5 if entity @e[dx=1,dy=4,dz=1,tag=!kt.this,type=!tadpole,type=!block_display] run function tnsp:tech/stone_cannon/damage

# 地面についた弾を削除
execute as @e[tag=kt.tadpole_under_cannon,nbt={OnGround:1b}] run function tnsp:tech/stone_cannon/kill

tag @e remove kt.this