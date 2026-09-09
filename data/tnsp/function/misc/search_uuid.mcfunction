#> tnsp:misc/search_uuid
#
# 自分のcloneにtagをつける
#
# @within function tnsp:tech/clone/kill
#         function tnsp:tech/clone/tick
#         function tnsp:tech/doronuma/kill
#         function tnsp:tech/wall/kill

tag @s add kt.search_uuid_tmp
$execute as @e[tag=$(tag)] if score @s kt.uuid = @n[tag=kt.search_uuid_tmp] kt.uuid run tag @s add kt.this
tag @s remove kt.search_uuid_tmp