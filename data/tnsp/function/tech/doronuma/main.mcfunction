#> tnsp:tech/doronuma/main
#
# 視点の先に泥沼を召喚する

#MPが足りない時
execute unless entity @s[tag=kt.debug] if score @s mp < doronuma mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute unless entity @s[tag=kt.debug] if score @s mp < doronuma mp run return run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3

execute anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/doronuma/summon_falling_entity",count:30}

#クールダウン
execute unless entity @s[tag=kt.debug] run function tnsp:manage/cd/set {"tech":"doronuma"}
#mp消費
execute unless entity @s[tag=kt.debug] run function tnsp:manage/mp/remove {"tech":"doronuma"}