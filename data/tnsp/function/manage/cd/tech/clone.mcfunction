#分身の術
execute as @s run scoreboard players remove @s cd_clone 1
execute as @s run scoreboard players operation @s cd_clone_s = @s cd_clone
execute as @s run scoreboard players operation @s cd_clone_s /= 20 number
execute as @s store result storage tnsp:cd clone int 1 run scoreboard players get @s cd_clone_s
