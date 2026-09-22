#> tnsp:shop/reroll_mission2
#
# ミッションをリロールする
#
# @within func tnsp:shop/reroll_mission

summon armor_stand ~ ~ ~ {equipment:{mainhand:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"yellow","italic":false,"text":"任務"},custom_data:{"shop":1b}}}},Tags:["kt.reroll_mission_armor_stand"]}

$data modify entity @n[tag=kt.reroll_mission_armor_stand] equipment.mainhand.components.minecraft:lore set from storage kt.my_dat missions[$(num)][1]
$scoreboard players set @s kt.mission_num $(num)

item replace entity @s container.17 from entity @n[tag=kt.reroll_mission_armor_stand] weapon
kill @e[tag=kt.reroll_mission_armor_stand]