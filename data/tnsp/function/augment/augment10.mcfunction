#> tnsp:augment/augment10
#
# 脱出プラン。体力がハート3つ以下になると一時体力ハート4つ、移動速度2を5秒得る。55秒のクールダウン
#
# @within func tnsp:main
#         func tnsp:manage/damage/do

execute if score @s kt.cd_augment10 matches 1.. if entity @s[tag=hit] run return 0
execute if score @s kt.cd_augment10 matches 1.. run return run scoreboard players remove @s kt.cd_augment10 1
execute if score @s health matches 301.. run return 0

effect give @s speed 5 2 true
scoreboard players set @s kt.sheild 400
scoreboard players set @s kt.sheild_timer 100
scoreboard players set @s kt.cd_augment10 1100
function tnsp:manage/sheild/adjust