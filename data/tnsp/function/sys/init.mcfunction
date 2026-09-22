#> tnsp:sys/init.mcfunction
#
# 初期化

forceload add 0 0 0 0

scoreboard objectives add kt.uuid dummy
scoreboard objectives add kt.util dummy
scoreboard objectives add kt.timer dummy
scoreboard objectives add kt.stone_cannon_timer dummy
scoreboard objectives add kt.reroll_augment_timer dummy
scoreboard objectives add kt.wind_charge_count dummy
scoreboard objectives add kt.gold dummy
scoreboard objectives add kt.mission_num dummy
scoreboard objectives add kt.detect_jump custom:jump

scoreboard objectives add kt.stats_aqua dummy "STATS"
scoreboard objectives add kt.stats_black dummy "STATS"
scoreboard objectives add kt.stats_blue dummy "STATS"
scoreboard objectives add kt.stats_dark_aqua dummy "STATS"
scoreboard objectives add kt.stats_dark_blue dummy "STATS"
scoreboard objectives add kt.stats_dark_gray dummy "STATS"
scoreboard objectives add kt.stats_dark_green dummy "STATS"
scoreboard objectives add kt.stats_dark_purple dummy "STATS"

data modify storage kt.my_dat _ set value 0