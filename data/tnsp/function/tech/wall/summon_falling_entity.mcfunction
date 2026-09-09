#> tnsp:tech/wall/summon_falling_entity
#
# 段差考慮のために落下するエンティティを召喚する
#
# @within function tnsp:tech/wall/main.mcfunction

summon armor_stand ~ ~2 ~ {Invisible:1b,Silent:1b,Motion:[0.0,-5.0,0.0],Tags:[kt.for_wall]}

scoreboard players operation @n[tag=kt.for_wall] kt.uuid = @s kt.uuid