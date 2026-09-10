#配置されていないrandomなプレーヤーにタグをつける
tag @r[tag=!spectator,tag=!player] add player_set


#配置されていないplayerがいなければ終了
execute unless entity @a[tag=player_set] run return 0


#playerのいないアマスタにタグをつける
execute as @a[tag=player_set,limit=1] run tag @e[type=item_display,tag=start_camera_2,tag=!player_done,sort=random,limit=1] add player_tp

#playerをtp
execute as @a[tag=player_set,limit=1] run tp @s @e[type=item_display,tag=start_camera_2,tag=!player_done,tag=player_tp,sort=random,limit=1]

#playerとアマスタにtag付け
tag @a[tag=player_set] add player
tag @e[type=item_display,tag=start_camera_2,tag=!player_done,tag=player_tp,sort=random,limit=1] add player_done


#tagを消す
tag @a remove player_set
tag @e[type=item_display,tag=start_camera_2] remove player_tp

#再帰
function tnsp:game/support/player_set