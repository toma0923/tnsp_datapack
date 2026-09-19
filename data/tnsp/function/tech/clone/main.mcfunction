#> tnsp:tech/clone/main
#


# 分身を召喚し、視点の先まで移動させる

# 分身が既に存在するなら位置入れ替え
execute as @s if score @s mp >= clone mp run function tnsp:misc/search_uuid {tag:"kt.clone"}
execute if score @s mp >= clone mp if entity @n[tag=kt.this] run return run function tnsp:tech/clone/swap

# 分身召喚
execute if score @s mp >= clone mp unless entity @n[tag=kt.this] run function tnsp:tech/clone/summon_clone
execute as @s if score @s mp >= clone mp run tag @n[tag=kt.this] remove kt.this

# # 視点の先に目的地を設定 modによる検知なし用
execute if score @s mp >= clone mp anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/clone/summon_dest",count:30}

# 視点の先に目的地を設定
# function tnsp:tech/clone/summon_dest with storage tnsp:block_pos

#MPが足りない時
execute as @s if score @s mp < clone mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < clone mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= clone mp run function tnsp:manage/cd/set {"tech":"clone"}
#mp消費
execute as @s if score @s mp >= clone mp run function tnsp:manage/mp/remove {"tech":"clone"}