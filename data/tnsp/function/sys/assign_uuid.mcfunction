#> tnsp:sys/assign_uuid.mcfunction
#
# プレイヤー全員にUUIDを割り振り
#
# @within function tnsp:sys/when_start

scoreboard players set @s kt.uuid 0
execute as @a[scores={kt.uuid=0..}] run scoreboard players add @p[scores={kt.uuid=0}] kt.uuid 1
execute as @r[scores={kt.uuid=-1}] run return run function tnsp:sys/assign_uuid