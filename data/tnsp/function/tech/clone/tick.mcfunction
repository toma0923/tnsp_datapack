#> tnsp:tech/clone/tick
#
# 毎ティック実行される処理
#
# @within function tnsp:main

tag @s add kt.clone_tmp

# 分身を歩かせる
execute if entity @e[tag=kt.clone] run function tnsp:misc/search_uuid {tag:"kt.clone"}
execute unless entity @e[tag=kt.this] run return run function tnsp:tech/clone/kill
execute as @n[tag=kt.this] at @s run function tnsp:tech/clone/walk
tag @e remove kt.this

# 分身をジャンプさせる
execute if score @s kt.detect_jump matches 1.. as @e[tag=kt.clone] if entity @s[nbt={OnGround:1b}] if score @s kt.uuid = @p[tag=kt.clone_tmp] kt.uuid run data modify entity @s Motion[1] set from entity @p[tag=kt.clone_tmp] Motion[1]
execute if score @s kt.detect_jump matches 1.. run scoreboard players set @s kt.detect_jump 0

# 分身のタイマーを増加させ、一定数以上で殺す
scoreboard players add @e[tag=kt.clone] kt.timer 1
execute if entity @e[scores={kt.timer=100..},tag=kt.clone] run function tnsp:tech/clone/kill

tag @s remove kt.clone_tmp

# execute as @e[tag=kt.clone_dest] at @s run particle cloud ~ ~ ~