#> tnsp:augment/augment9
#
# 狂気の化学者。このオーグメントを取得した時およびリスポーンするたびに一時的な体力ハート4つ、サイズ40%増加、スキルヘイスト40増加、移動速度40%増加、サイズ40%減少、MP500のどれかを得る
#
# @within func tnsp:manage/damage/death
#         func tnsp:shop/reroll_augment3
#         func tnsp:main

tag @s add kt.detect_reset_aug9

# 増えていたステータスを戻す
execute if entity @s[tag=kt.augment9_hp] run scoreboard players remove @s health_max 400
execute if entity @s[tag=kt.augment9_hp] run tag @s remove kt.augment9_hp
execute if entity @s[tag=kt.augment9_size_up] run scoreboard players remove @s kt.size 40
execute if entity @s[tag=kt.augment9_size_up] run tag @s remove kt.augment9_size_up


execute if entity @s[tag=kt.augment9_speed] run scoreboard players remove @s kt.speed 40
execute if entity @s[tag=kt.augment9_speed] run tag @s remove kt.augment9_speed
execute if entity @s[tag=kt.augment9_size_down] run scoreboard players add @s kt.size 40
execute if entity @s[tag=kt.augment9_size_down] run tag @s remove kt.augment9_size_down
execute if entity @s[tag=kt.augment9_mp] run scoreboard players remove @s mp_max 500
execute if entity @s[tag=kt.augment9_mp] run tag @s remove kt.augment9_mp

$execute if score 1 number matches $(reset) run tag @s remove kt.detect_reset_aug9
$execute if score 1 number matches $(reset) run return run function tnsp:manage/adjust_stats

# ランダムでステータス増加
execute store result score $random kt.util run random value 1..6
execute if score $random kt.util matches 1 run scoreboard players add @s health_max 400
execute if score $random kt.util matches 1 run tellraw @s [{"text":"[狂気の化学者] ","color":"gold"},{"text":"HPがハート4つ増加した","color":"red"}]
execute if score $random kt.util matches 1 run tag @s add kt.augment9_hp
execute if score $random kt.util matches 2 run scoreboard players add @s kt.size 40
execute if score $random kt.util matches 2 run tellraw @s [{"text":"[狂気の化学者] ","color":"gold"},{"text":"サイズが40%増加した","color":"green"}]
execute if score $random kt.util matches 2 run tag @s add kt.augment9_size_up


execute if score $random kt.util matches 4 run scoreboard players add @s kt.speed 40
execute if score $random kt.util matches 4 run tellraw @s [{"text":"[狂気の化学者] ","color":"gold"},{"text":"移動速度が40%増加した","color":"white"}]
execute if score $random kt.util matches 4 run tag @s add kt.augment9_speed
execute if score $random kt.util matches 5 run scoreboard players remove @s kt.size 40
execute if score $random kt.util matches 5 run tellraw @s [{"text":"[狂気の化学者] ","color":"gold"},{"text":"サイズが40%減少した","color":"green"}]
execute if score $random kt.util matches 5 run tag @s add kt.augment9_size_down
execute if score $random kt.util matches 6 run scoreboard players add @s mp_max 500
execute if score $random kt.util matches 6 run tellraw @s [{"text":"[狂気の化学者] ","color":"gold"},{"text":"MPが500増加した","color":"blue"}]
execute if score $random kt.util matches 6 run tag @s add kt.augment9_mp

# ステータス反映
function tnsp:manage/adjust_stats