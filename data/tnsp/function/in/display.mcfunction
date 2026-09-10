#印の一の位を調べる
scoreboard players operation @s in_1 = @s in
scoreboard players operation @s in_1 %= 10 number

execute if score @s in_1 matches 1 run function tnsp:in/display/ton_start
execute if score @s in_1 matches 2 run function tnsp:in/display/nan_start
execute if score @s in_1 matches 3 run function tnsp:in/display/sha_start
execute if score @s in_1 matches 4 run function tnsp:in/display/pe_start





