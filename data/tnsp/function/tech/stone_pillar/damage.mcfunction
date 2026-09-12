#> tnsp:tech/stone_pillar/damage
#
# ダメージ処理
#
# @within function tnsp:tech/stone_pillar/explode

function tnsp:misc/search_uuid {tag:kt.player}
execute as @e[tag=!kt.this,distance=..2.5] run damage @s 15 cactus

tag @a remove kt.this