#技の実行者にはtag=actor,対象者にはtag=hit

# オーグメント処理
execute as @n[tag=actor,tag=kt.augment1] if entity @e[tag=hit,scores={health=..500}] run function tnsp:augment/augment1
execute as @n[tag=hit,tag=kt.augment2] run function tnsp:augment/augment2
execute as @n[tag=actor,tag=kt.augment3] run function tnsp:augment/augment3
execute as @n[tag=actor,tag=kt.augment4] run function tnsp:augment/augment4
execute as @n[tag=actor,tag=kt.augment5] run function tnsp:augment/augment5
execute if entity @n[tag=actor,tag=kt.augment6] as @e[tag=hit,type=villager] run function tnsp:augment/augment6


#技のダメージを1に
$scoreboard players set $(tech) damage 1
#基礎ダメージを設定
$scoreboard players operation $(tech) damage *= $(tech) damage_base
#個人倍率をかける(実行者にはactorのtag)
$scoreboard players operation $(tech) damage *= @n[tag=actor] damage_personal

#対象者の体力スコアを減らす
$execute as @e[tag=hit] at @s run scoreboard players operation @s health -= $(tech) damage
#プレイヤーの体力がなくなったら通知
execute as @a[tag=hit] if score @s health matches ..0 run tellraw @a [{"selector": "@s"},{"text": "は"},{"selector": "@n[tag=actor]"},{"text": "に殺された"}]

# オーグメント処理
execute as @n[tag=actor,tag=kt.augment1,tag=kt.damage_buff_tmp1] run function tnsp:augment/augment1
execute as @n[tag=actor,tag=kt.augment5,tag=kt.damage_buff_tmp5] run function tnsp:augment/augment5

#ダメージのスコアに0.0002をかけダメージを与える
$execute store result storage tnsp:manage damage float 0.0002 run scoreboard players get $(tech) damage
execute as @e[tag=hit] at @s run function tnsp:manage/damage/check with storage tnsp:manage