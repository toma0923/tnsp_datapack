#> tnsp:tech/wing/summon_wind_charge
#
# ウィンドチャージを召喚する
#
# @within function tnsp:tech/wing/shoot_wind_charge

execute unless score $wind_charge_count kt.util matches 1.. run return 0
execute facing entity @n[tag=kt.wing_center] eyes run summon wind_charge ^ ^ ^2 {Tags:["kt.wing"]}
scoreboard players remove $wind_charge_count kt.util 1
execute if score $wind_charge_count kt.util matches 1.. run function tnsp:tech/wing/summon_wind_charge