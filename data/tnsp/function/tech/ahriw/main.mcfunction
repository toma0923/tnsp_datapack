#> tnsp:tech/ahriw/main
#
# アーリのW

#MPが足りない時
execute unless entity @s[tag=kt.debug] if score @s mp < ahriw mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute unless entity @s[tag=kt.debug] if score @s mp < ahriw mp run return run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3

effect give @s speed 1 1 true

function tnsp:tech/ahriw/kill
function tnsp:tech/ahriw/summon_soul

#クールダウン
execute unless entity @s[tag=kt.debug] run function tnsp:manage/cd/set {"tech":"ahriw"}
#mp消費
execute unless entity @s[tag=kt.debug] run function tnsp:manage/mp/remove {"tech":"ahriw"}