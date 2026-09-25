#> tnsp:sys/init.mcfunction
#
# ゲーム開始時に実行

scoreboard players set @a kt.uuid -1
tag @a add kt.player
execute as @r run function tnsp:sys/assign_uuid

scoreboard players set @a kt.size 100
scoreboard players set @a kt.speed 100
scoreboard players set @a kt.sheild 0
scoreboard players set @a kt.tank_engine 0
scoreboard players set @a kt.gold 0
scoreboard players set @a kt.cd_augment10 0
scoreboard players set @a kt.sheild 0
scoreboard players set @a kt.sheild_timer 0
scoreboard players reset @a kt.mission_num

tag @a remove kt.augment9_hp
tag @a remove kt.augment9_size_up
tag @a remove kt.augment9_size_down
tag @a remove kt.augment9_mp
tag @a remove kt.augment9_speed