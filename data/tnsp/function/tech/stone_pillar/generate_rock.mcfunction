#> tnsp:tech/stone_pillar/generate_rock
#
# 岩を生成する
#
# @within function tnsp:tech/stone_pillar/tick

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["kt.rock_armor_stand","kt.baby_rock_armor_stand"]}
scoreboard players set @n[tag=kt.baby_rock_armor_stand] kt.timer 130

summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,1.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,1.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,1.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,1.5f,-0.5f],scale:[1f,1f,1f]}}

summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,0.5f,0.5f],scale:[1f,1f,1f]}}

summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,-0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,-0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,-0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,-0.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-0.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-0.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-0.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-0.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-0.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-0.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-0.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,-0.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,-0.5f,1.5f],scale:[1f,1f,1f]}}

summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,-1.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[2.5f,-1.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-1.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-1.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-1.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-1.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-1.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-1.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-1.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-1.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-1.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-1.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.5f,-2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.5f,2.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.5f,-1.5f,0.5f],scale:[1f,1f,1f]}}

summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-2.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-2.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,-2.5f,1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-2.5f,-1.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-2.5f,-0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-2.5f,0.5f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {Tags:["kt.rock","kt.baby_rock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-2.5f,-0.5f],scale:[1f,1f,1f]}}

execute as @e[tag=kt.baby_rock] run ride @s mount @n[tag=kt.baby_rock_armor_stand]
scoreboard players operation @e[tag=kt.baby_rock] kt.uuid = @s kt.uuid
scoreboard players operation @e[tag=kt.baby_rock_armor_stand] kt.uuid = @s kt.uuid

kill @n[tag=kt.falling_rock,nbt={OnGround:1b}]
tag @e remove kt.baby_rock
tag @e remove kt.baby_rock_armor_stand