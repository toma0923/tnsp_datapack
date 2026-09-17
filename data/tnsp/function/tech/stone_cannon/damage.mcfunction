#> tnsp:tech/stone_cannon/damage
#
# ダメージ処理
#
# @within function tnsp:tech/stone_cannon/tick

function tnsp:misc/search_uuid {tag:"kt.player"}

tag @n[type=!tadpole,type=!block_display,tag=!kt.this] add hit
tag @a[tag=kt.this] add actor
function tnsp:manage/damage/do {tech:"stone_cannon"}
# damage @n[type=!tadpole,type=!block_display,tag=!kt.this] 2.5 cactus

tag @a remove kt.this
function tnsp:tech/stone_cannon/kill