#> tnsp:augment/augment14
#
# 100Gを入手し、ランダムなオーグメントに変化する
#
# @within func tnsp:manage/damage/death

scoreboard players add @s kt.gold 100

execute store result score $random kt.util run random value 0..1
execute if score $random kt.util matches 0 run loot replace entity @n[tag=kt.for_reroll_augment] weapon loot tnsp:battle_augments
execute if score $random kt.util matches 1 run loot replace entity @n[tag=kt.for_reroll_augment] weapon loot tnsp:economy_augments

data modify storage kt.my_dat augment_name set from entity @n[tag=kt.for_reroll_augment] equipment.mainhand.components."minecraft:custom_name".text
tellraw @s [{"text":"[運命] ","color":"green"},{"storage":"kt.my_dat","nbt":"augment_name","color":"gold","bold":true},{"text":" に変化しました","color":"white","bold":false}]