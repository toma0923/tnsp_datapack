#> tnsp:tech/wall/main.mcfunction
#
# 壁を出し、投擲物から身を守る

execute as @s if score @s mp >= wall mp run function tnsp:tech/wall/kill
execute if score @s mp >= wall mp anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/wall/summon_falling_entity",count:5}


#MPが足りない時
execute as @s if score @s mp < wall mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < wall mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= wall mp run function tnsp:manage/cd/set {"tech":"wall"}
#mp消費
execute as @s if score @s mp >= wall mp run function tnsp:manage/mp/remove {"tech":"wall"}