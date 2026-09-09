#> tnsp:tech/clone/main
#
# 分身を召喚し、視点の先まで移動させる

# 分身が既に存在するなら位置入れ替え
function tnsp:misc/search_uuid {tag:"kt.clone"}
execute if entity @n[tag=kt.this] run return run function tnsp:tech/clone/swap

# 分身召喚
execute unless entity @n[tag=kt.this] run function tnsp:tech/clone/summon_clone
tag @n[tag=kt.this] remove kt.this

# # 視点の先に目的地を設定 modによる検知なし用
execute anchored eyes run function tnsp:misc/look_at {func:"tnsp:tech/clone/summon_dest",count:30}

# 視点の先に目的地を設定
# function tnsp:tech/clone/summon_dest with storage tnsp:block_pos