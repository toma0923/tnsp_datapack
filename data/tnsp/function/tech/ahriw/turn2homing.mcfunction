#> tnsp:tech/ahriw/turn2homing
#
# 追尾するように
#
# @within function tnsp:tech/ahriw/tick

# 同時に発射しないように遅延処理
function tnsp:misc/search_uuid {tag:"kt.ahriw_soul"}
execute if entity @e[tag=kt.this,scores={kt.timer=101..110}] run return run tag @e remove kt.this
scoreboard players set @s kt.timer 101
tag @e remove kt.this

# 実態の場所を変更
data modify entity @s transformation.translation set value [0.0,0.0,0.0]
tp @s ^ ^1.2 ^1.5

