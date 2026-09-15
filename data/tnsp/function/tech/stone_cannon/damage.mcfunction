#> tnsp:tech/stone_cannon/damage
#
# ダメージ処理
#
# @within function tnsp:tech/stone_cannon/tick

execute if score @n[type=!tadpole,type=!block_display] kt.uuid = @s kt.uuid run return 0

damage @n[type=!tadpole,type=!block_display] 2.5 cactus

function tnsp:tech/stone_cannon/kill