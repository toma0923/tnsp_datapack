#> tnsp:tech/clone/main
#
# 分身を召喚し、視点の先まで移動させる

#MPが足りない時
execute unless entity @s[tag=kt.debug] if score @s mp < clone mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute unless entity @s[tag=kt.debug] if score @s mp < clone mp run return run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3

# 分身が既に存在するなら位置入れ替え
function tnsp:misc/search_uuid {tag:"kt.clone"}
execute if entity @n[tag=kt.this] run return run function tnsp:tech/clone/swap

# 分身召喚
function tnsp:tech/clone/summon_clone
tag @e[tag=kt.clone] remove kt.this

# 視点の先に目的地を設定 modによる検知なし用
execute anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/clone/summon_dest",count:30}

# 視点の先に目的地を設定
# function tnsp:tech/clone/summon_dest with storage tnsp:block_pos

#クールダウン
execute unless entity @s[tag=kt.debug] run function tnsp:manage/cd/set {"tech":"clone"}
#mp消費
execute unless entity @s[tag=kt.debug] run function tnsp:manage/mp/remove {"tech":"clone"}