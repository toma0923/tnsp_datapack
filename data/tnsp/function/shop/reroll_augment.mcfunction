#> tnsp:shop/reroll_augment
#
# オーグメントをリロールする
#
# @within func tnsp:shop/check_inventory

$tag @s add $(tag)
execute if entity @s[tag=kt.battle_augment] run clear @s *[custom_data~{battle_augment:1b}]
execute if entity @s[tag=kt.economy_augment] run clear @s *[custom_data~{economy_augment:1b}]

execute if score @s kt.gold matches ..199 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0
execute if score @s kt.gold matches ..199 run tellraw @s {"text":"ゴールドが足りません","color":"red"}
execute if score @s kt.gold matches ..199 run tag @s remove kt.battle_augment
execute if score @s kt.gold matches ..199 run tag @s remove kt.economy_augment
execute if score @s kt.gold matches ..199 run item replace entity @s container.20 with creeper_spawn_egg[custom_name={"bold":true,"color":"gold","italic":false,"text":"戦闘系オーグメントを引く"},lore=[{"color":"gold","italic":false,"text":"200G"}],custom_data={"battle_augment":1b,"shop":1b}] 1
execute if score @s kt.gold matches ..199 run return run item replace entity @s container.24 with wandering_trader_spawn_egg[custom_name={"bold":true,"color":"gold","italic":false,"text":"経済系オーグメントを引く"},lore=[{"color":"gold","italic":false,"text":"200G"}],custom_data={"economy_augment":1b,"shop":1b}] 1

execute unless score @s kt.reroll_augment_timer matches 0.. run scoreboard players remove @s kt.gold 200
execute unless score @s kt.reroll_augment_timer matches 0.. run scoreboard players set @s kt.reroll_augment_timer 33