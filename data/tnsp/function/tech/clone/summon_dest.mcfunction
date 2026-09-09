#> tnsp:tech/clone/summon_dest
#
# 目的地用のエンティティ召喚
#
# @within function tnsp:tech/clone/look_at

# 視点の先に目的地エンティティを召喚し、idを設定
# $summon marker $(x) $(y) $(z) {Tags:["kt.clone_dest","kt.baby_dest"]}
summon marker ~ ~ ~ {Tags:["kt.clone_dest","kt.baby_dest"]}
scoreboard players operation @e[tag=kt.baby_dest] kt.uuid = @s kt.uuid

# 分身の視点を目的の方向へ
execute as @e[tag=kt.clone] if score @s kt.uuid = @n[tag=kt.baby_dest] kt.uuid at @s run tp @s ~ ~ ~ facing entity @n[tag=kt.baby_dest]

tag @e remove kt.baby_dest