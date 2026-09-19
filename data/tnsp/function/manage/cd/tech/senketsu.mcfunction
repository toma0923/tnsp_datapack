#
execute as @s run scoreboard players remove @s cd_senketsu 1
execute as @s run scoreboard players operation @s cd_senketsu_s = @s cd_senketsu
execute as @s run scoreboard players operation @s cd_senketsu_s /= 20 number
execute as @s store result storage tnsp:cd senketsu int 1 run scoreboard players get @s cd_senketsu_s
