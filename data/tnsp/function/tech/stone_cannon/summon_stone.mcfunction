#> tnsp:tech/stone_cannon/main
#
# 岩砲弾を生成する

# 岩砲弾の生成
execute anchored eyes run summon block_display ^ ^ ^-0.1 {Tags:["kt.stone_cannon","kt.baby_stone_cannon"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[-0.5f,0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip_merge"}}}
execute as @n[tag=kt.baby_stone_cannon] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute anchored eyes run summon silverfish ^ ^ ^1 {active_effects:[{id:invisibility,duration:9999999,show_particles:false}],Invulnerable:1b,Silent:1b,DeathLootTable:"minecraft:empty",Tags:["kt.silverfish_under_cannon","kt.baby_silverfish_under_cannon"]}
ride @n[tag=kt.baby_stone_cannon] mount @n[tag=kt.baby_silverfish_under_cannon]

scoreboard players operation @n[tag=kt.baby_stone_cannon] kt.uuid = @s kt.uuid
scoreboard players operation @n[tag=kt.baby_silverfish_under_cannon] kt.uuid = @s kt.uuid

# 岩砲弾の発射
execute positioned 0.000 0.000 0.000 unless entity @e[tag=kt.for_stone_cannon] run summon marker ^ ^ ^3 {Tags:[kt.for_stone_cannon]}
data modify entity @n[tag=kt.baby_silverfish_under_cannon] Motion set from entity @n[tag=kt.for_stone_cannon] Pos

kill @e[tag=kt.for_stone_cannon]

playsound minecraft:entity.wind_charge.wind_burst

tag @e remove kt.baby_stone_cannon
tag @e remove kt.baby_silverfish_under_cannon