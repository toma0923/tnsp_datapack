#> tnsp:tech/wind/summon_wind_charge
#
# ウィンドチャージを召喚する
#
# @within function tnsp:tech/wind/shoot_wind_charge

execute unless score @s kt.wind_charge_count matches 1.. run return 0
execute facing entity @n[tag=kt.wind_center] eyes run summon wind_charge ^ ^ ^0.5 {Tags:["kt.wind","kt.baby_wind"]}
scoreboard players operation @n[tag=kt.baby_wind] kt.uuid = @s kt.uuid
tag @e remove kt.baby_wind
scoreboard players remove @s kt.wind_charge_count 1
execute if score @s kt.wind_charge_count matches 1.. run function tnsp:tech/wind/summon_wind_charge