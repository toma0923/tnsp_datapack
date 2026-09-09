# 分身召喚
summon minecraft:mannequin ~ ~ ~ {Tags:["game_clone"]}
# 召喚主と召喚した分身のIDを一緒にする
scoreboard players operation @e[tag=game_clone] kt.uuid = @s kt.uuid
# 分身の見た目を自分に
loot spawn ~ ~ ~ loot tnsp:head
data modify entity @n[tag=game_clone] profile set from entity @n[type=item] Item.components."minecraft:profile".name
kill @n[type=item]