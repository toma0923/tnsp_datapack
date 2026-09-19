
#ついでにMpも登録
execute as @s store result storage tnsp:cd heal_big_mp int 1 run scoreboard players get heal_big mp
#技の発動
#体力を800回復する
execute as @s if score @s mp >= heal_big mp run scoreboard players add @s health 800
#8ハート分回復
execute as @s if score @s mp >= heal_big mp run effect give @s instant_health 1 2
#音
execute as @s if score @s mp >= heal_big mp run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
#HPがオーバーする場合
execute as @s if score @s mp >= heal_big mp run execute if score @s health > @s health_max run scoreboard players operation @s health = @s health_max



#MPが足りない時
execute as @s if score @s mp < heal_big mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < heal_big mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= heal_big mp run function tnsp:manage/cd/set {"tech":"heal_big"}
#mp消費
execute as @s if score @s mp >= heal_big mp run function tnsp:manage/mp/remove {"tech":"heal_big"}

