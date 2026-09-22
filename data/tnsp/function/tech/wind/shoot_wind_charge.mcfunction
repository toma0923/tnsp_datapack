#> tnsp:tech/wind/shoot_wind_charge
#
# ウィンドチャージを発射する

execute if entity @e[tag=kt.wind_center,distance=..7] run scoreboard players set @s kt.wind_charge_count 2
execute if entity @e[tag=kt.wind_center,distance=..6] run scoreboard players set @s kt.wind_charge_count 4
execute if entity @e[tag=kt.wind_center,distance=..5] run scoreboard players set @s kt.wind_charge_count 6
execute if entity @e[tag=kt.wind_center,distance=..4] run scoreboard players set @s kt.wind_charge_count 7
execute if entity @e[tag=kt.wind_center,distance=..3] run scoreboard players set @s kt.wind_charge_count 8
execute if entity @e[tag=kt.wind_center,distance=..2] run scoreboard players set @s kt.wind_charge_count 10
execute if entity @e[tag=kt.wind_center,distance=..1] run scoreboard players set @s kt.wind_charge_count 12
function tnsp:tech/wind/summon_wind_charge

function tnsp:misc/search_uuid {tag:"kt.wind"}
tag @s add kt.me
execute as @e[tag=kt.wind,tag=kt.this] at @s run data modify entity @s Pos[1] set from entity @n[tag=kt.me] Pos[1]
execute as @e[tag=kt.wind,tag=kt.this] at @s run tp @s ~ ~1.4 ~
tag @s remove kt.me

execute facing entity @n[tag=kt.wind_center] eyes positioned 0.000 0.000 0.000 unless entity @e[tag=kt.for_wind] run summon marker ^ ^ ^-2 {Tags:[kt.for_wind]}
execute as @e[tag=kt.wind,tag=kt.this] run data modify entity @s Motion set from entity @n[tag=kt.for_wind] Pos
execute as @e[tag=kt.wind,tag=kt.this] run data modify entity @s Motion[1] set value 0.1
kill @e[tag=kt.for_wind]
tag @e[tag=kt.wind] remove kt.this