#> tnsp:augment/augment7
#
# タンクエンジン
#
# @within func tnsp:manage/damage/death

# タンクエンジンで増えていた分のHP増加を一旦戻す
scoreboard players operation $tank_engine_tmp health_max = @s kt.tank_engine
scoreboard players operation $tank_engine_tmp health_max *= 400 number
scoreboard players operation @s health_max -= $tank_engine_tmp health_max

# タンクエンジンで増えていた分のサイズを一旦戻す
scoreboard players operation $tank_engine_tmp kt.size = @s kt.tank_engine
scoreboard players operation $tank_engine_tmp kt.size *= 5 number
scoreboard players operation @s kt.size -= $tank_engine_tmp kt.size

# タンクエンジンのスコア変動
execute if entity @s[tag=actor] run scoreboard players add @s kt.tank_engine 1
execute if entity @s[tag=hit] run scoreboard players operation @s kt.tank_engine *= 6 number
execute if entity @s[tag=hit] run scoreboard players operation @s kt.tank_engine /= 10 number

# タンクエンジンによるのHP増加
scoreboard players operation $tank_engine_tmp health_max = @s kt.tank_engine
scoreboard players operation $tank_engine_tmp health_max *= 400 number
scoreboard players operation @s health_max += $tank_engine_tmp health_max

# タンクエンジンによるのサイズの変更
scoreboard players operation $tank_engine_tmp kt.size = @s kt.tank_engine
scoreboard players operation $tank_engine_tmp kt.size *= 5 number
scoreboard players operation @s kt.size += $tank_engine_tmp kt.size

function tnsp:manage/health/adjust_max
function tnsp:manage/size/adjust