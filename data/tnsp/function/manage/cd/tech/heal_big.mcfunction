#ヒール
execute as @s run scoreboard players remove @s cd_heal_big 1
execute as @s run scoreboard players operation @s cd_heal_big_s = @s cd_heal_big
execute as @s run scoreboard players operation @s cd_heal_big_s /= 20 number
execute as @s store result storage tnsp:cd heal_big int 1 run scoreboard players get @s cd_heal_big_s
