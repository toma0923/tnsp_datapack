#> tnsp:augment/augment3
#
# ダメージを与えると少しの再生を得る
#
# @within func tnsp:manage/damage/do

execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 2 1 true
execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run scoreboard players add @s health 50