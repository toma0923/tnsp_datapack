#壁
execute as @s run scoreboard players remove @s cd_wall 1
execute as @s run scoreboard players operation @s cd_wall_s = @s cd_wall
execute as @s run scoreboard players operation @s cd_wall_s /= 20 number
execute as @s store result storage tnsp:cd wall int 1 run scoreboard players get @s cd_wall_s