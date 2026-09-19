#fang
execute as @s run scoreboard players remove @s cd_fang 1
execute as @s run scoreboard players operation @s cd_fang_s = @s cd_fang
execute as @s run scoreboard players operation @s cd_fang_s /= 20 number
execute as @s store result storage tnsp:cd fang int 1 run scoreboard players get @s cd_fang_s