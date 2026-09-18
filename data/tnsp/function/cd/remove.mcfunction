#
execute as @a run scoreboard players remove @s cd_senketsu 1
execute as @a run scoreboard players operation @s cd_senketsu_s = @s cd_senketsu
execute as @a run scoreboard players operation @s cd_senketsu_s /= 20 number
execute as @a store result storage tnsp:cd senketsu int 1 run scoreboard players get @s cd_senketsu_s
#
execute as @a run scoreboard players remove @s cd_goukakyu 1
execute as @a run scoreboard players operation @s cd_goukakyu_s = @s cd_goukakyu
execute as @a run scoreboard players operation @s cd_goukakyu_s /= 20 number
execute as @a store result storage tnsp:cd goukakyu int 1 run scoreboard players get @s cd_goukakyu_s




scoreboard players remove @a cd_fang 1
scoreboard players remove @a cd_ahriw 1
scoreboard players remove @a cd_clone 1
scoreboard players remove @a cd_dash 1
scoreboard players remove @a cd_doronuma 1
scoreboard players remove @a cd_stone_cannon 1
scoreboard players remove @a cd_stone_pillar 1
scoreboard players remove @a cd_wall 1
scoreboard players remove @a cd_wing 1


#各技をhudの文字に代入
execute as @a run function tnsp:cd/hud with storage tnsp:cd
