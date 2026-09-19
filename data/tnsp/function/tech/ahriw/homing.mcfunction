#> tnsp:tech/ahriw/homing
#
# 追尾処理
#
# @within function tnsp:tech/ahriw/tick

# ホーミング処理
function tnsp:misc/search_uuid {tag:"kt.player"}
tp @s ^ ^ ^0.3 facing entity @n[tag=!kt.this,type=player,gamemode=!spectator] eyes

# ダメージ処理
execute positioned ~ ~-2 ~ if entity @e[tag=!kt.this,dy=4,type=player] run function tnsp:tech/ahriw/damage
tag @e remove kt.this