#> tnsp:tech/ahriw/kill
#
# 削除する
#
# @within function tnsp:tech/ahriw/tick

function tnsp:misc/search_uuid {tag:"kt.ahriw_soul"}
execute as @e[tag=kt.this] at @s run kill @e[tag=kt.ahriw_for_attacked,distance=..2]
kill @e[tag=kt.this]