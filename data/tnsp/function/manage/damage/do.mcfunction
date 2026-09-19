#技の実行者にはtag=actor,対象者にはtag=hit

#技のダメージを1に
$scoreboard players set $(tech) damage 1
#基礎ダメージを設定
$scoreboard players operation $(tech) damage *= $(tech) damage_base
#個人倍率をかける(実行者にはactorのtag)
$scoreboard players operation $(tech) damage *= @n[tag=actor] damage_personal

#対象者の体力スコアを減らす
$execute as @a[tag=hit] at @s run scoreboard players operation @s health -= $(tech) damage
#プレイヤーの体力がなくなったら通知
execute as @a[tag=hit] if score @s health matches ..0 run tellraw @a [{"selector": "@s"},{"text": "は"},{"selector": "@n[tag=actor]"},{"text": "に殺された"}]

#ダメージのスコアに0.0002をかけダメージを与える
$execute store result storage tnsp:manage damage float 0.0002 run scoreboard players get $(tech) damage
execute as @e[tag=hit] at @s run function tnsp:manage/damage/check with storage tnsp:manage

