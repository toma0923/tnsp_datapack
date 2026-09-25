#> tnsp:manage/damage/death
#
# 死亡が発生した時の処理
#
# @within func tnsp:manage/damage/do

# オーグメント処理
execute as @a[tag=kt.augment7] run function tnsp:augment/augment7
execute as @a[tag=kt.augment9,tag=hit] run function tnsp:augment/augment9 {reset:0}
execute as @a[tag=kt.augment14,tag=actor] run function tnsp:augment/augment14

# プレイヤーの体力がなくなったら通知
tellraw @a [{"selector": "@s"},{"text": "は"},{"selector": "@n[tag=actor]"},{"text": "に殺された"}]