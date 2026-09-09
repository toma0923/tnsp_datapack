#> tnsp:tech/clone/summon_clone
#
# 分身を召喚する
#
# @within function tnsp:tech/clone/main

# 他の自分の分身削除
function tnsp:tech/clone/kill

summon minecraft:mannequin ~ ~ ~ {Tags:["kt.clone","kt.baby_clone"]}

# 召喚主と召喚した分身のIDを一緒にする
scoreboard players operation @e[tag=kt.baby_clone] kt.uuid = @s kt.uuid

# 分身の見た目を自分に
loot spawn ~ ~ ~ loot tnsp:head
data modify entity @n[tag=kt.baby_clone] profile set from entity @n[type=item] Item.components."minecraft:profile".name
kill @n[type=item]

tag @e remove kt.baby_clone
