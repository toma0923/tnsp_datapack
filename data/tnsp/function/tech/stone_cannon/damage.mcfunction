#> tnsp:tech/stone_cannon/damage
#
# ダメージ処理
#
# @within function tnsp:tech/stone_cannon/tick

execute if score @n[type=!tadpole,type=!block_display] kt.uuid = @s kt.uuid run return 0

tag @n[type=!tadpole,type=!block_display] add hit
function tnsp:misc/search_uuid {tag:"kt.player"}
tag @a[tag=kt.this] add actor
function tnsp:manage/damage/do {tech:"stone_cannon"}
# damage @n[type=!tadpole,type=!block_display] 2.5 cactus
tag @a remove kt.this

function tnsp:tech/stone_cannon/kill