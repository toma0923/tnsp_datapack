#> tnsp:tech/stone_pillar/explode
#
# 地面に激突した時の爆発処理
#
# @within function tnsp:tech/stone_pillar/tick

playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 5 0.1
particle explosion_emitter
function tnsp:tech/stone_pillar/damage
function tnsp:tech/stone_pillar/kill

summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[0.0,1.0,0.7],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:andesite",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[0.7,1.0,0.7],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:granite",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[0.7,1.0,0.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dripstone_block",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[-0.7,1.0,0.7],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:tuff",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[0.0,1.0,-0.7],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:andesite",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[-0.7,1.0,0.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dripstone_block",count:1}}]}

summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[0.0,0.7,1.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:granite",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[1.0,0.7,1.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:tuff",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[1.0,0.7,0.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:tuff",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[-1.0,0.7,1.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:andesite",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[0.0,0.7,-1.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:granite",count:1}}]}
summon armor_stand ~ ~ ~ {Tags:["kt.exploded"],Motion:[-1.0,0.7,0.0],Invisible:1b,Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dripstone_block",count:1}}]}
