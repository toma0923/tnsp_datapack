#> tnsp:shop/tick
#
# 毎ティック実行
#
# @within func tnsp:main

execute run function tnsp:shop/check_inventory

execute if entity @s[tag=kt.battle_augment] if score @s kt.reroll_augment_timer matches 0.. run function tnsp:shop/reroll_augment2 {slot1:19,slot2:20,slot3:21}
execute if entity @s[tag=kt.economy_augment] if score @s kt.reroll_augment_timer matches 0.. run function tnsp:shop/reroll_augment2 {slot1:23,slot2:24,slot3:25}