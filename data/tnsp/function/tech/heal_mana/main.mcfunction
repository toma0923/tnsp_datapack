
#ついでにMpも登録
execute as @s store result storage tnsp:cd heal_mana_mp int 1 run scoreboard players get heal_mana mp
#技の発動
#マナを500回復する
execute as @s if score @s mp >= heal_mana mp run scoreboard players add @s mp 500

#音
execute as @s if score @s mp >= heal_mana mp run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
#マナがオーバーする場合
execute as @s if score @s mp >= heal_mana mp run execute if score @s mp > @s mp_max run scoreboard players operation @s mp = @s mp_max



#MPが足りない時
execute as @s if score @s mp < heal_mana mp run title @s actionbar [{"text": "MPが足りない!","color": "red"}]
execute as @s at @s if score @s mp < heal_mana mp run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
#クールダウン
execute as @s if score @s mp >= heal_mana mp run function tnsp:manage/cd/set {"tech":"heal_mana"}
#mp消費
execute as @s if score @s mp >= heal_mana mp run function tnsp:manage/mp/remove {"tech":"heal_mana"}

