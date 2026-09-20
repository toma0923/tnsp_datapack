#> tnsp:tech/stone_cannon/main
#
# 岩砲弾を連射する
#
# @within func tnsp:in/right_click/in_check_down

#MPが足りない時
execute unless entity @s[tag=kt.debug] if score @s mp < stone_cannon mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute unless entity @s[tag=kt.debug] if score @s mp < stone_cannon mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3

#技の発動
scoreboard players set @s kt.stone_cannon_timer 20

#クールダウン
execute unless entity @s[tag=kt.debug] run function tnsp:manage/cd/set {"tech":"stone_cannon"}
#mp消費
execute unless entity @s[tag=kt.debug] run function tnsp:manage/mp/remove {"tech":"stone_cannon"}