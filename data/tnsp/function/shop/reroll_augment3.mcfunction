#> tnsp:shop/reroll_augment3
#
# オーグメントをリロールする
#
# @within func tnsp:shop/reroll_augment2

summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:[kt.for_reroll_augment]}
$item replace entity @n[tag=kt.for_reroll_augment] weapon from entity @s container.$(slot)
data modify entity @n[tag=kt.for_reroll_augment] equipment.mainhand.components."minecraft:custom_data".battle_augment set value 0
data modify entity @n[tag=kt.for_reroll_augment] equipment.mainhand.components."minecraft:custom_data".economy_augment set value 0

execute if items entity @s container.9 white_stained_glass_pane run return run item replace entity @s container.9 from entity @n[tag=kt.for_reroll_augment] weapon
execute if items entity @s container.10 white_stained_glass_pane run return run item replace entity @s container.10 from entity @n[tag=kt.for_reroll_augment] weapon
execute if items entity @s container.11 white_stained_glass_pane run return run item replace entity @s container.11 from entity @n[tag=kt.for_reroll_augment] weapon

item replace entity @s container.9 from entity @s container.10
item replace entity @s container.10 from entity @s container.11
item replace entity @s container.11 from entity @n[tag=kt.for_reroll_augment] weapon

kill @e[tag=kt.for_reroll_augment]
