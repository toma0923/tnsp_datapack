#> tnsp:sys/init.mcfunction
#
# ゲーム開始時に実行

scoreboard players set @a kt.uuid -1
tag @a add kt.player
execute as @r run function tnsp:sys/assign_uuid
