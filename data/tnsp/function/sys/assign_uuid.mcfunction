#> tnsp:sys/assign_uuid.mcfunction
#
# プレイヤー全員にUUIDを割り振り
#
# @within function tnsp:sys/when_start

tag @s add kt.assing_tmp
scoreboard players set @s kt.uuid 0
execute as @a[scores={kt.uuid=0..}] run scoreboard players add @p[tag=kt.assing_tmp] kt.uuid 1
tag @s remove kt.assing_tmp
execute as @p[scores={kt.uuid=-1}] run return run function tnsp:sys/assign_uuid