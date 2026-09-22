#> tnsp:augment/augment4
#
# ダメージを与えると30%の確率で2秒間鈍足を与える
#
# @within func tnsp:manage/damage/do

execute store result score $random kt.util run random value 1..100
execute if score $random kt.util matches ..30 run effect give @e[tag=hit] slowness 2 2
execute if score $random kt.util matches ..30 run tellraw @s {"text":"鈍足が発動した","color":"gray"}