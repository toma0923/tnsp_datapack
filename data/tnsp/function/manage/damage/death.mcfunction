#> tnsp:manage/damage/death
#
# 死亡が発生した時の処理
#
# @within func tnsp:manage/damage/do

# オーグメント処理
execute as @a[tag=kt.augment7] run function tnsp:augment/augment7
execute as @a[tag=kt.augment9,tag=hit] run function tnsp:augment/augment9 {reset:0}
execute as @a[tag=kt.augment14,tag=actor] run function tnsp:augment/augment14

# ミッション処理
scoreboard players add @a[tag=actor] kt.mission_kills 1
execute as @a[tag=actor,scores={kt.mission_num=6}] if score @s kt.mission_kills matches 2.. at @s run function tnsp:mission/acheive_mission {mission_num:6}
execute as @a[tag=actor,scores={kt.mission_num=7}] if score @s kt.mission_kills matches 3.. at @s run function tnsp:mission/acheive_mission {mission_num:7}
scoreboard players set @a[tag=hit,scores={kt.mission_num=8}] kt.mission_kills 0
execute as @a[tag=actor,scores={kt.mission_num=8}] if score @s kt.mission_kills matches 2.. at @s run function tnsp:mission/acheive_mission {mission_num:8}

# プレイヤーの体力がなくなったら通知
tellraw @a [{"selector": "@s"},{"text": "は"},{"selector": "@n[tag=actor]"},{"text": "に殺された"}]