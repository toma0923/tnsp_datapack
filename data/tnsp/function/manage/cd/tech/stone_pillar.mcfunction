#岩落としの術
execute as @s run scoreboard players remove @s cd_stone_pillar 1
execute as @s run scoreboard players operation @s cd_stone_pillar_s = @s cd_stone_pillar
execute as @s run scoreboard players operation @s cd_stone_pillar_s /= 20 number
execute as @s store result storage tnsp:cd stone_pillar int 1 run scoreboard players get @s cd_stone_pillar_s
