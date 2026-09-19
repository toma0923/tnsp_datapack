#
execute as @s run scoreboard players remove @s cd_heal_small 1
execute as @s run scoreboard players operation @s cd_heal_small_s = @s cd_heal_small
execute as @s run scoreboard players operation @s cd_heal_small_s /= 20 number
execute as @s store result storage tnsp:cd heal_small int 1 run scoreboard players get @s cd_heal_small_s
