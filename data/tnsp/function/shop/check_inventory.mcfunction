#> tnsp:shop/check_inventory
#
# インベントリ内のアイテムがクリックされたことを検知
#
# @within func tnsp:shop/tick

execute unless items entity @s container.9 * run function tnsp:shop/set_inventory
execute unless items entity @s container.10 * run function tnsp:shop/set_inventory
execute unless items entity @s container.11 * run function tnsp:shop/set_inventory

execute unless items entity @s container.16 * run function tnsp:shop/reroll_mission
execute unless items entity @s container.17 * run function tnsp:shop/set_inventory

execute unless items entity @s container.19 * run function tnsp:shop/set_inventory
execute unless items entity @s container.20 * run function tnsp:shop/reroll_augment {tag:kt.battle_augment}
execute unless items entity @s container.21 * run function tnsp:shop/set_inventory

execute unless items entity @s container.23 * run function tnsp:shop/set_inventory
execute unless items entity @s container.24 * run function tnsp:shop/reroll_augment {tag:kt.economy_augment}
execute unless items entity @s container.25 * run function tnsp:shop/set_inventory

execute unless items entity @s container.29 * run function tnsp:shop/set_inventory
execute unless items entity @s container.30 * run function tnsp:shop/set_inventory
execute unless items entity @s container.31 * run function tnsp:shop/set_inventory
execute unless items entity @s container.32 * run function tnsp:shop/set_inventory
execute unless items entity @s container.33 * run function tnsp:shop/set_inventory