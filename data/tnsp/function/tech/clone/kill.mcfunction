#> tnsp:tech/clone/kill
#
# 分身を消す処理
#
# @within function tnsp:tech/clone/summon_clone
#         function tnsp:tech/clone/tick

function tnsp:misc/search_uuid {tag:"kt.clone"}
execute as @e[tag=kt.this] at @s run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"large_smoke"},Radius:1f,Duration:25,Age:20}
tp @e[tag=kt.this] 0 -100 0
kill @e[tag=kt.this]

function tnsp:misc/search_uuid {tag:"kt.clone_dest"}
kill @e[tag=kt.this]