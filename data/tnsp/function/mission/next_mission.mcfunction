#> tnsp:mission/next_mission
#
# 次のミッション
#
# @within func tnsp:mission/acheive_mission

tellraw @s {"text":"------------------------------------------------","color":"green"}
$tellraw @s [{"text":"[達成] ","color":"green"},{"storage":"kt.my_dat","nbt":"missions[$(mission_num)][1][0]","color":"white"}]
$tellraw @s [{"text":"[次の任務] ","color":"green"},{"storage":"kt.my_dat","nbt":"missions[$(next_mission_num)][1][0]","color":"white"}]
tellraw @s {"text":"------------------------------------------------","color":"green"}