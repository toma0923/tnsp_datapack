#> tnsp:sys/init.mcfunction
#
# 初期化

forceload add 0 0 0 0

scoreboard objectives add kt.uuid dummy
scoreboard objectives add kt.util dummy
scoreboard objectives add kt.timer dummy
scoreboard objectives add kt.stone_cannon_timer dummy
scoreboard objectives add kt.detect_jump custom:jump

data modify storage kt.my_dat _ set value 0