#> tnsp:tech/stone_pillar/summon_falling_entity
#
# 段差考慮のために落下するエンティティを召喚する
#
# @within function tnsp:tech/stone_pillar/main

summon armor_stand ~ ~2 ~ {Invisible:1b,Silent:1b,Motion:[0.0,-5.0,0.0],Tags:["kt.falling_rock"]}

scoreboard players operation @n[tag=kt.falling_rock] kt.uuid = @s kt.uuid