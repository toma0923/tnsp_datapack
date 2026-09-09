
#時間管理
scoreboard players add system game_time 1


#カメラ移動
execute as @e[type=item_display,tag=start_camera_2_player] at @s run tp @s ^ ^ ^0.1 facing entity @e[type=item_display,tag=start_camera_2_player2,limit=1,sort=nearest]

#次のステップへ
execute if score system game_time matches 60 run function tnsp:game/step/3