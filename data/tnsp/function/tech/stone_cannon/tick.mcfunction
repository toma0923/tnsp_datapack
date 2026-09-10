#> tnsp:tech/stone_cannon/tick
#
# 毎ティック実行される処理
#
# @within function tnsp:main

# 地面についた弾を削除
execute as @e[tag=kt.silverfish_under_cannon,nbt={OnGround:1b}] run function tnsp:tech/stone_cannon/kill

# 複数発射処理
execute as @a[scores={kt.stone_cannon_timer=20}] at @s run function tnsp:tech/stone_cannon/summon_stone
execute as @a[scores={kt.stone_cannon_timer=16}] at @s run function tnsp:tech/stone_cannon/summon_stone
execute as @a[scores={kt.stone_cannon_timer=12}] at @s run function tnsp:tech/stone_cannon/summon_stone
execute as @a[scores={kt.stone_cannon_timer=8}] at @s run function tnsp:tech/stone_cannon/summon_stone
execute as @a[scores={kt.stone_cannon_timer=4}] at @s run function tnsp:tech/stone_cannon/summon_stone
scoreboard players remove @a[scores={kt.stone_cannon_timer=1..}] kt.stone_cannon_timer 1

# ダメージ処理
execute as @e[tag=kt.stone_cannon] run function tnsp:misc/search_uuid {tag:"kt.player"}
execute as @e[tag=kt.stone_cannon] at @s positioned ~ ~-2 ~ if entity @e[dy=4,tag=!kt.this,type=!silverfish,type=!item_display] run function tnsp:tech/stone_cannon/damage
tag @e remove kt.this