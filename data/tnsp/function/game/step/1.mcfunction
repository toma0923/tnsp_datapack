
#初期設定
scoreboard players set system game 1
scoreboard players set system game_time 7
scoreboard players set system game_time_sub 99

#参加者設定
execute as @e[type=item_display,tag=No_Join,limit=1] at @s run tag @a[distance=..2] add spectator
effect give @a minecraft:saturation infinite 1 true
gamerule naturalRegeneration false
#team
team join name_tag @a[tag=!spectator]


#タイトル表示
title @a title {"text":"まもなく始まります...","color": "green"}
title @a times 10 160 20

#スタート前視点
gamemode spectator @a
execute as @a[tag=!spectator] at @s run spectate @e[type=minecraft:item_display,tag=start_camera,limit=1,sort=random] @s
