#> tnsp:shop/reroll_mission
#
# ミッションをリロールする
#
# @within func tnsp:shop/check_inventory

clear @s feather[custom_data~{reroll_mission:1b}]
item replace entity @s container.16 with feather[custom_name={"bold":true,"color":"yellow","italic":false,"text":"任務をリロール"},lore=[{"color":"gold","italic":false,"text":"20G"}],custom_data={reroll_mission:1b,shop:1b}] 1

execute if score @s kt.gold matches ..19 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0
execute if score @s kt.gold matches ..19 run return run tellraw @s {"text":"ゴールドが足りません","color":"red"}

scoreboard players remove @s kt.gold 20

execute store result storage kt.my_dat num int 1 run random value 0..11
function tnsp:shop/reroll_mission2 with storage kt.my_dat

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1