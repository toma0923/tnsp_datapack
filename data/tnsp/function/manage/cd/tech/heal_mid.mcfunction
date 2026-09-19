#
execute as @s run scoreboard players remove @s cd_heal_mid 1
execute as @s run scoreboard players operation @s cd_heal_mid_s = @s cd_heal_mid
execute as @s run scoreboard players operation @s cd_heal_mid_s /= 20 number
execute as @s store result storage tnsp:cd heal_mid int 1 run scoreboard players get @s cd_heal_mid_s
