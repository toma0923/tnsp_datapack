#> tnsp:tech/wing/shoot_wind_charge
#
# ウィンドチャージを発射する

scoreboard players set $wind_charge_count kt.util 12
function tnsp:tech/wing/summon_wind_charge

execute as @e[tag=kt.wing] at @s run data modify entity @s Pos[1] set from entity @p Pos[1]
execute as @e[tag=kt.wing] at @s run tp @s ~ ~1.4 ~

execute facing entity @n[tag=kt.wing_center] eyes positioned 0.000 0.000 0.000 unless entity @e[tag=kt.for_wing] run summon marker ^ ^ ^-2 {Tags:[kt.for_wing]}
execute as @e[tag=kt.wing] run data modify entity @s Motion set from entity @n[tag=kt.for_wing] Pos
execute as @e[tag=kt.wing] run data modify entity @s Motion[1] set value 0.1
kill @e[tag=kt.for_wing]