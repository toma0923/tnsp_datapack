#岩砲弾
execute as @s run scoreboard players remove @s cd_stone_cannon 1
execute as @s run scoreboard players operation @s cd_stone_cannon_s = @s cd_stone_cannon
execute as @s run scoreboard players operation @s cd_stone_cannon_s /= 20 number
execute as @s store result storage tnsp:cd stone_cannon int 1 run scoreboard players get @s cd_stone_cannon_s
