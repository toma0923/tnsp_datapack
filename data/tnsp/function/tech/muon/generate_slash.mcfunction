#> tnsp:tech/muon/generate_slash
#
# 剣閃を生成
#
# @within function 

# 基準点となる防具立てを召喚
summon item_display ^ ^ ^-0.1 {Tags:["kt.muon_slash","kt.baby_muon_slash"],teleport_duration:1}
execute as @e[tag=kt.baby_muon_slash] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=kt.baby_muon_slash] at @s run tp @s ^ ^1 ^0.1

# block display召喚
summon block_display ~ ~ ~ {Tags:["kt.muon_slash_display","kt.baby_muon_slash_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.08f,-1f,0f],scale:[0.16f,1f,0.7f]},block_state:{Name:"minecraft:white_stained_glass"}}
summon block_display ~ ~ ~ {Tags:["kt.muon_slash_display","kt.baby_muon_slash_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.08f,-2f,-0.2f],scale:[0.16f,1f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"}}
summon block_display ~ ~ ~ {Tags:["kt.muon_slash_display","kt.baby_muon_slash_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.08f,0f,-0.2f],scale:[0.16f,1f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"}}
summon block_display ~ ~ ~ {Tags:["kt.muon_slash_display","kt.baby_muon_slash_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.04f,-3f,-0.3f],scale:[0.08f,1f,0.3f]},block_state:{Name:"minecraft:white_stained_glass"}}
summon block_display ~ ~ ~ {Tags:["kt.muon_slash_display","kt.baby_muon_slash_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.04f,1f,-0.3f],scale:[0.08f,1f,0.3f]},block_state:{Name:"minecraft:white_stained_glass"}}
summon block_display ~ ~ ~ {Tags:["kt.muon_slash_display","kt.baby_muon_slash_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.08f,-1.4f,0f],scale:[0.08f,1.8f,0.4f]},block_state:{Name:"minecraft:white_stained_glass"}}
summon block_display ~ ~ ~ {Tags:["kt.muon_slash_display","kt.baby_muon_slash_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.16f,-1.4f,0f],scale:[0.08f,1.8f,0.4f]},block_state:{Name:"minecraft:white_stained_glass"}}

# block displayの向きを調整し、騎乗させる
execute as @n[tag=kt.baby_muon_slash] at @s run tp @e[tag=kt.baby_muon_slash_display] ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=kt.baby_muon_slash_display] run data modify entity @s Rotation[1] set value 0
execute as @e[tag=kt.baby_muon_slash_display] run ride @s mount @n[tag=kt.baby_muon_slash]

# ID設定
scoreboard players operation @e[tag=kt.baby_muon_slash] kt.uuid = @s kt.uuid
scoreboard players operation @e[tag=kt.baby_muon_slash_display] kt.uuid = @s kt.uuid

scoreboard players set @n[tag=kt.baby_muon_slash] kt.timer 0

tag @e remove kt.baby_muon_slash
tag @e remove kt.baby_muon_slash_display
tag @s remove kt.muon