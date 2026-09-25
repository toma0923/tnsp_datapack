#> tnsp:shop/tag_augment
#
# 所持オーグメントのtag付与
#
# @within func tnsp:shop/set_inventory
#.        func tnsp:shop/reroll_augment2

function tnsp:shop/reset_augment
execute unless items entity @s container.9 white_stained_glass_pane store result storage kt.my_dat augment_num int 1 run data get entity @s Inventory[{Slot:9b}].components."minecraft:custom_data".augment_num
execute unless items entity @s container.9 white_stained_glass_pane run function tnsp:shop/tag_augment2 with storage kt.my_dat
execute unless items entity @s container.10 white_stained_glass_pane store result storage kt.my_dat augment_num int 1 run data get entity @s Inventory[{Slot:10b}].components."minecraft:custom_data".augment_num
execute unless items entity @s container.10 white_stained_glass_pane run function tnsp:shop/tag_augment2 with storage kt.my_dat
execute unless items entity @s container.11 white_stained_glass_pane store result storage kt.my_dat augment_num int 1 run data get entity @s Inventory[{Slot:11b}].components."minecraft:custom_data".augment_num
execute unless items entity @s container.11 white_stained_glass_pane run function tnsp:shop/tag_augment2 with storage kt.my_dat
