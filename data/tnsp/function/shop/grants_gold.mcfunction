#> tnsp:shop/grants_gold
#
# ゴールドを付与する処理
#
# @within func tnsp:mission/acheive_mission

$scoreboard players add @s kt.gold $(gold)
$scoreboard players set $reward kt.gold $(gold)
execute store result storage kt.my_dat reward int 0.05 run scoreboard players get $reward kt.gold
$tellraw @s [{"text":"+","color":"gold"},{"storage":"kt.my_dat","nbt":"reward"},{"text":"G ($(fact))"}]