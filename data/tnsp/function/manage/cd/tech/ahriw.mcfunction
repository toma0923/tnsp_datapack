#アーリ
execute as @s run scoreboard players remove @s cd_ahriw 1
execute as @s run scoreboard players operation @s cd_ahriw_s = @s cd_ahriw
execute as @s run scoreboard players operation @s cd_ahriw_s /= 20 number
execute as @s store result storage tnsp:cd ahriw int 1 run scoreboard players get @s cd_ahriw_s
