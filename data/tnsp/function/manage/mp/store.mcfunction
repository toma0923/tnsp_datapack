#現在のmpを保存
execute as @a store result storage tnsp:mp mp int 1 run scoreboard players get @s mp
#現在の最大mpを保存
execute as @a store result storage tnsp:mp mp_max int 1 run scoreboard players get @s mp_max

#経験値バーに表示
execute as @a run function tnsp:manage/mp/hud with storage tnsp:mp
