
$execute if score @s cd_senketsu matches 1.. run data modify storage tnsp:hud senketsu set value "&eあと $(senketsu)秒"
execute if score @s cd_senketsu matches ..0 run data modify storage tnsp:hud senketsu set value "&6発動可能"

$execute if score @s cd_goukakyu matches 1.. run data modify storage tnsp:hud goukakyu set value "&eあと $(goukakyu)秒"
execute if score @s cd_goukakyu matches ..0 run data modify storage tnsp:hud goukakyu set value "&6発動可能"



