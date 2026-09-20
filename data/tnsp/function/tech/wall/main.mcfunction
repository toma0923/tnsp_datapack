#> tnsp:tech/wall/main.mcfunction
#
# 壁を出し、投擲物から身を守る
#
# @within func tnsp:in/right_click/in_check_down

#MPが足りない時
execute unless entity @s[tag=kt.debug] if score @s mp < wall mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute unless entity @s[tag=kt.debug] if score @s mp < wall mp run return run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3

function tnsp:tech/wall/kill
execute anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/wall/summon_falling_entity",count:5}

#クールダウン
execute unless entity @s[tag=kt.debug] run function tnsp:manage/cd/set {"tech":"wall"}
#mp消費
execute unless entity @s[tag=kt.debug] run function tnsp:manage/mp/remove {"tech":"wall"}