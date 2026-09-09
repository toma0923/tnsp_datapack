#> tnsp:tech/ahriw/sumon_soul
#
# 周囲を漂う魂を召喚する
#
# @within function tnsp:tech/ahriw/main

summon item_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:2,item:{id:skeleton_skull},Tags:["kt.ahriw_soul","kt.baby_ahriw_soul"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1.2f,1.5f],scale:[0.7f,0.7f,0.7f]},Passengers:[{id:"minecraft:interaction",width:0.3f,height:-0.3f,Tags:["kt.ahriw_for_attacked"]}]}
summon item_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:2,item:{id:skeleton_skull},Tags:["kt.ahriw_soul","kt.baby_ahriw_soul"],Rotation:[120,0],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1.2f,1.5f],scale:[0.7f,0.7f,0.7f]},Passengers:[{id:"minecraft:interaction",width:0.3f,height:-0.3f,Tags:["kt.ahriw_for_attacked"]}]}
summon item_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:2,item:{id:skeleton_skull},Tags:["kt.ahriw_soul","kt.baby_ahriw_soul"],Rotation:[240,0],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,1.2f,1.5f],scale:[0.7f,0.7f,0.7f]},Passengers:[{id:"minecraft:interaction",width:0.3f,height:-0.3f,Tags:["kt.ahriw_for_attacked"]}]}

scoreboard players operation @e[tag=kt.baby_ahriw_soul] kt.uuid = @s kt.uuid

tag @e remove kt.baby_ahriw_soul