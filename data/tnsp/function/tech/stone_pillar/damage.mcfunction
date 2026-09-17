#> tnsp:tech/stone_pillar/damage
#
# ダメージ処理
#
# @within function tnsp:tech/stone_pillar/explode

function tnsp:misc/search_uuid {tag:kt.player}
tag @e[tag=!kt.this,distance=..2.5,type=!item_display] add hit
tag @p[tag=kt.this] add actor
function tnsp:manage/damage/do {tech:"stone_pillar"}
# execute as @e[tag=!kt.this,distance=..2.5] run damage @s 15 cactus

tag @a remove kt.this