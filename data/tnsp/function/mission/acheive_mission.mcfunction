#> tnsp:mission/achieve_mission
#
# ミッション達成時の処理
#
# @within func tnsp:manage/damage/do

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.3 2

scoreboard players add @s kt.gold 400
function tnsp:shop/mission/reroll_mission
execute store result storage kt.my_dat next_mission_num int 1 run scoreboard players get @s kt.mission_num
$data modify storage kt.my_dat mission_num set value $(mission_num)
function tnsp:mission/next_mission with storage kt.my_dat

$data modify storage kt.my_dat gold set from storage kt.my_dat missions[$(mission_num)][0]
data modify storage kt.my_dat fact set value "ミッション達成"
function tnsp:shop/grants_gold with storage kt.my_dat
data modify storage kt.my_dat fact set value "オーグメント効果"
execute if entity @s[tag=kt.augment12] run function tnsp:shop/grants_gold with storage kt.my_dat