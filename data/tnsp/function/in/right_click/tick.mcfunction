#長押し時間検知
scoreboard players add @s right_time 1

#in独自のもの
execute if score @s in matches 423 run function tnsp:tech/senketsu/tick
