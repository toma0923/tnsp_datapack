#> tnsp:tech/doronuma/slow.mcfunction
#
# 泥沼内の敵に鈍足付与
#
# @within function tnsp:tech/doronuma/tick.mcfunction

execute if score @s kt.uuid = @p kt.uuid run return 0

attribute @p jump_strength base set 0
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:1f,Duration:21,Age:20,potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:5,duration:3,show_particles:0b,show_icon:0b}]}}