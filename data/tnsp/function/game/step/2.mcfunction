#初期設定
scoreboard players set system game 2
scoreboard players set system game_time 0
scoreboard players set system game_time_sub 0


gamemode adventure @a[tag=!spectator]

#playerを配置
function tnsp:game/support/player_set
execute as @a[tag=player] at @s run function tnsp:game/support/clone

#カメラ準備
execute as @e[type=item_display,tag=start_camera_2] at @s run summon item_display ^ ^1.7 ^7 {Tags:["start_camera_2_player"]}
execute as @e[type=item_display,tag=start_camera_2] at @s run summon item_display ^ ^1.5 ^ {Tags:["start_camera_2_player2"]}
execute as @e[type=item_display,tag=start_camera_2] at @s run summon item_display ^ ^ ^5 {Tags:["start_camera_2_player3"]}

#マネキンをカメラに向ける
execute as @e[type=mannequin,tag=game_clone] at @s run tp @s ^ ^ ^ facing entity @e[type=item_display,tag=start_camera_2_player3,limit=1,sort=nearest]
gamemode spectator @a
execute as @a[tag=player] at @s run spectate @e[type=item_display,tag=start_camera_2_player,limit=1,sort=nearest] @s

