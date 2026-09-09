#> tnsp:tech/clone/swap
#
# 分身と入れ替わる
#
# @within function tnsp:tech/clone/main

function tnsp:misc/search_uuid {tag:"kt.clone"}
summon marker ~ ~ ~ {Tags:[kt.for_swap]}
tp @s @n[tag=kt.this]
tp @n[tag=kt.this] @n[tag=kt.for_swap]
kill @n[tag=kt.for_swap]
tag @e[tag=kt.this] remove kt.this

playsound entity.enderman.teleport ambient @s