

#試合のリセット
tp @a 0 24 -36
gamemode adventure @a
clear @a
effect clear @a
effect give @a minecraft:instant_health 1 15
effect give @s minecraft:saturation infinite 1 true
gamerule naturalRegeneration true

#tagのリセット
tag @a remove spectator
tag @a remove player
tag @e[type=item_display,tag=start_camera_2] remove player_done
team leave @a
tag @a remove actor
tag @a remove hit


#エンティティのキル
kill @e[tag=game_clone]
kill @e[tag=start_camera_2_player]
kill @e[tag=start_camera_2_player2]
kill @e[tag=start_camera_2_player3]

#スコアのリセット
scoreboard players set @a damage_personal 100
scoreboard players set @a health 100
