#> tnsp:shop/check_dup_aug
#
# オーグメントのリロールで重複を検知
#
# @within func tnsp:shop/reroll_augment3

$execute unless entity @s[tag=kt.augment$(augment_num)] run return 0

$item replace entity @s container.$(slot) with white_stained_glass_pane
scoreboard players set @s kt.reroll_augment_timer 0