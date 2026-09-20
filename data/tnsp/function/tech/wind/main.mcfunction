#> tnsp:tech/wind/main
#
# 爆風で吹き飛ばす
#
# @within func tnsp:in/right_click/in_check_down

#MPが足りない時
execute unless entity @s[tag=kt.debug] if score @s mp < wind mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute unless entity @s[tag=kt.debug] if score @s mp < wind mp run return run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3

execute unless entity @s[x_rotation=90] anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/wind/summon_wind_center",count:10}
execute if entity @s[x_rotation=90] run function tnsp:tech/wind/summon_wind_center

execute at @e[tag=kt.wind_center] run particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=kt.wind_center] as @e[type=!#tnsp:develop,distance=..5] at @s run function tnsp:tech/wind/shoot_wind_charge

kill @e[tag=kt.wind_center]
schedule function tnsp:tech/wind/kill 1s

#クールダウン
execute unless entity @s[tag=kt.debug] run function tnsp:manage/cd/set {"tech":"wind"}
#mp消費
execute unless entity @s[tag=kt.debug] run function tnsp:manage/mp/remove {"tech":"wind"}