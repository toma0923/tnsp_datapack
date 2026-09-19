
tag @e[type=item_display,tag=start_camera_2] remove player_done

#エンティティのキル

kill @e[tag=start_camera_2_player]
kill @e[tag=start_camera_2_player2]
kill @e[tag=start_camera_2_player3]

#初期設定
scoreboard players set system game 3
scoreboard players set system game_time 0
scoreboard players set system game_time_sub 0

#gameスタート
title @a title [{"text": "\uE005\uF002\uE001\uF001\uE002\uF001\uE003\uF001\uE004\uF001\uE006"}]
title @a subtitle [{"text": "スタート！","color": "red"}]

gamemode adventure @a[tag=player]
execute as @a[tag=player] at @s run tp @s @e[tag=game_clone,sort=nearest,limit=1]

tp @e[tag=game_clone] ~ ~-250 ~

#スコアの設定
scoreboard players set @a mp 1000


