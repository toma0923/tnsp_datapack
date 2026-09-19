#旋突
execute as @s run scoreboard players remove @s cd_dash 1
execute as @s run scoreboard players operation @s cd_dash_s = @s cd_dash
execute as @s run scoreboard players operation @s cd_dash_s /= 20 number
execute as @s store result storage tnsp:cd dash int 1 run scoreboard players get @s cd_dash_s
