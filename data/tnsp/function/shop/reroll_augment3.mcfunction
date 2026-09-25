#> tnsp:shop/reroll_augment3
#
# オーグメントをリロールする
#
# @within func tnsp:shop/reroll_augment2

summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:[kt.for_reroll_augment]}
$item replace entity @n[tag=kt.for_reroll_augment] weapon from entity @s container.$(slot)
data modify entity @n[tag=kt.for_reroll_augment] equipment.mainhand.components."minecraft:custom_data".battle_augment set value 0
data modify entity @n[tag=kt.for_reroll_augment] equipment.mainhand.components."minecraft:custom_data".economy_augment set value 0

# オーグメント処理
execute store result score $augment_num kt.util run data get entity @n[tag=kt.for_reroll_augment] equipment.mainhand.components."minecraft:custom_data".augment_num
execute if score $augment_num kt.util matches 9 run function tnsp:augment/augment9 {reset:0}
execute if score $augment_num kt.util matches 15 run function tnsp:augment/augment15

execute if items entity @s container.9 white_stained_glass_pane run data modify storage kt.my_dat slot set value 9
execute if items entity @s container.9 white_stained_glass_pane run return run item replace entity @s container.9 from entity @n[tag=kt.for_reroll_augment] weapon
execute if items entity @s container.10 white_stained_glass_pane run data modify storage kt.my_dat slot set value 10
execute if items entity @s container.10 white_stained_glass_pane run return run item replace entity @s container.10 from entity @n[tag=kt.for_reroll_augment] weapon
execute if items entity @s container.11 white_stained_glass_pane run data modify storage kt.my_dat slot set value 11
execute if items entity @s container.11 white_stained_glass_pane run return run item replace entity @s container.11 from entity @n[tag=kt.for_reroll_augment] weapon

item replace entity @s container.9 from entity @s container.10
item replace entity @s container.10 from entity @s container.11
item replace entity @s container.11 from entity @n[tag=kt.for_reroll_augment] weapon
data modify storage kt.my_dat slot set value 11

kill @e[tag=kt.for_reroll_augment]
