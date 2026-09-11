#> tnsp:tech/stone_pillar/fill_rock
#
# 生成した岩の枠組みの中身を埋めていく

scoreboard players remove @s kt.timer 1

execute store result score $tmp kt.util run random value 0..3
execute if score $tmp kt.util matches 0 run data modify entity @n[tag=kt.rock,distance=..4,nbt=!{item:{count:1}},sort=random] item.id set value "tuff"
execute if score $tmp kt.util matches 1 run data modify entity @n[tag=kt.rock,distance=..4,nbt=!{item:{count:1}},sort=random] item.id set value "dripstone_block"
execute if score $tmp kt.util matches 2 run data modify entity @n[tag=kt.rock,distance=..4,nbt=!{item:{count:1}},sort=random] item.id set value "andesite"
execute if score $tmp kt.util matches 3 run data modify entity @n[tag=kt.rock,distance=..4,nbt=!{item:{count:1}},sort=random] item.id set value "granite"