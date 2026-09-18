#> tnsp:tech/muon/tick
#
# 剣閃の動きを制御
#
# @within function tnsp:tech/muon/tick

function tnsp:misc/search_uuid {tag:kt.muon_slash}

# 移動
execute as @e[tag=kt.muon_slash,tag=kt.this,type=item_display] at @s run tp @s ^ ^ ^1
scoreboard players add @e[tag=kt.muon_slash,tag=kt.this,type=item_display] kt.timer 1
execute as @e[tag=kt.muon_slash,tag=kt.this,type=item_display] if score @s kt.timer matches 20.. run function tnsp:tech/muon/kill

# particle
execute at @e[tag=kt.muon_slash,tag=kt.this] run particle gust ~ ~-1 ~ 0 0.5 0 0.01 1 force

# damage
tag @s add kt.me
execute at @e[tag=kt.muon_slash,tag=kt.this,type=item_display] positioned ~-0.5 ~-2 ~-0.5 if entity @n[type=!#tnsp:develop,tag=!kt.me,dx=1,dy=4,dz=1] run function tnsp:tech/muon/damage
tag @s remove kt.me

tag @e[tag=kt.muon_slash] remove kt.this