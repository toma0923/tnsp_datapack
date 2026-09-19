#豪火球
execute as @s run scoreboard players remove @s cd_goukakyu 1
execute as @s run scoreboard players operation @s cd_goukakyu_s = @s cd_goukakyu
execute as @s run scoreboard players operation @s cd_goukakyu_s /= 20 number
execute as @s store result storage tnsp:cd goukakyu int 1 run scoreboard players get @s cd_goukakyu_s