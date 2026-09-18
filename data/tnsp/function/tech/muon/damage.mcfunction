#> tnsp:tech/muon/damage
#
# ダメージ処理
#
# @within function tnsp:tech/muon/move_slash

scoreboard players operation @e[tag=kt.this,tag=kt.muon_slash] kt.timer *= 10 number
scoreboard players operation muon damage_base -= @e[tag=kt.this,tag=kt.muon_slash] kt.timer

tag @s add actor
tag @e[type=!#tnsp:develop,tag=!kt.me,dx=1,dy=4,dz=1] add hit
function tnsp:manage/damage/do {tech:muon}

scoreboard players operation muon damage_base += @e[tag=kt.this,tag=kt.muon_slash] kt.timer

execute as @e[tag=kt.this,tag=kt.muon_slash] run function tnsp:tech/muon/kill