#泥沼の術
execute as @s run scoreboard players remove @s cd_doronuma 1
execute as @s run scoreboard players operation @s cd_doronuma_s = @s cd_doronuma
execute as @s run scoreboard players operation @s cd_doronuma_s /= 20 number
execute as @s store result storage tnsp:cd doronuma int 1 run scoreboard players get @s cd_doronuma_s