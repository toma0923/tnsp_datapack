#> tnsp:tech/stone_cannon/main
#
# 岩砲弾を連射する

#技の発動
execute as @s if score @s mp >= stone_cannon mp run scoreboard players set @s kt.stone_cannon_timer 20

#MPが足りない時
execute as @s if score @s mp < stone_cannon mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < stone_cannon mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= stone_cannon mp run function tnsp:manage/cd/set {"tech":"stone_cannon"}
#mp消費
execute as @s if score @s mp >= stone_cannon mp run function tnsp:manage/mp/remove {"tech":"stone_cannon"}