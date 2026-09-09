#> tnsp:tech/ahriw/tick
#
# 毎ティック処理
#
# @within function tnsp:main

# 周囲の魂を回転、追従させる
tag @s add kt.ahriw_tmp
execute as @e[tag=kt.ahriw_soul,scores={kt.timer=..100}] run data modify entity @s Pos set from entity @p[tag=kt.ahriw_tmp] Pos
tag @s remove kt.ahriw_tmp
execute as @e[tag=kt.ahriw_soul,scores={kt.timer=..100}] at @s run tp @s ~ ~ ~ ~3 ~

# パーティクル表示
execute as @e[tag=kt.ahriw_soul,scores={kt.timer=..100}] at @s run particle soul_fire_flame ^0.7 ^1.2 ^1.3 0.1 0.1 0.1 0 1
execute as @e[tag=kt.ahriw_soul,scores={kt.timer=100..}] at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 1

# 寿命設定
scoreboard players add @e[tag=kt.ahriw_soul] kt.timer 1
execute if entity @e[scores={kt.timer=100}] run function tnsp:tech/ahriw/kill
execute if entity @e[scores={kt.timer=180}] run function tnsp:tech/ahriw/kill
kill @e[tag=kt.ahriw_soul,scores={kt.timer=-1}]

# 近くに敵がいるとホーミング
execute if entity @n[type=player,distance=0.1..5] as @e[tag=kt.ahriw_soul,scores={kt.timer=..100}] at @s run function tnsp:tech/ahriw/turn2homing
execute as @e[tag=kt.ahriw_soul,scores={kt.timer=101..}] at @s run function tnsp:tech/ahriw/homing

# 殴ると消える
execute as @e[tag=kt.ahriw_for_attacked] at @s if data entity @s attack on vehicle run kill @s
execute as @e[tag=kt.ahriw_for_attacked] at @s if data entity @s attack run particle sculk_soul ~ ~-2 ~ 0.2 0.2 0.2 0 5
execute as @e[tag=kt.ahriw_for_attacked] at @s if data entity @s attack run playsound block.sculk.break ambient @a
execute as @e[tag=kt.ahriw_for_attacked] at @s if data entity @s attack run kill @s
