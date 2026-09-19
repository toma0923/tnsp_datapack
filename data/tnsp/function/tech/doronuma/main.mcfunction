#> tnsp:tech/doronuma/main


# 視点の先に泥沼を召喚する

execute if score @s mp >= doronuma mp anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/doronuma/summon_falling_entity",count:30}

#MPが足りない時
execute as @s if score @s mp < doronuma mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < doronuma mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= doronuma mp run function tnsp:manage/cd/set {"tech":"doronuma"}
#mp消費
execute as @s if score @s mp >= doronuma mp run function tnsp:manage/mp/remove {"tech":"doronuma"}