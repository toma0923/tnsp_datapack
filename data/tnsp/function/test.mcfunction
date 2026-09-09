# 分身召喚

summon minecraft:mannequin ~ ~ ~ {Tags:["start_2_player","start_2_player"]}

# 召喚主と召喚した分身のIDを一緒にする
scoreboard players operation @e[tag=start_2_player] kt.uuid = @s kt.uuid

# 分身の見た目を自分に
loot spawn ~ ~ ~ loot tnsp:head
data modify entity @n[tag=start_2_player] profile set from entity @n[type=item] Item.components."minecraft:profile".name
kill @n[type=item]

#tag @e remove start_2_player

#tag @n[tag=kt.this] remove kt.this



#$execute as @s positioned $(x) $(y) $(z) run summon lightning_bolt ~ ~ ~

#execute as @e[tag=No_Join,limit=1] at @s run summon minecraft:text_display ~ ~2 ~ {billboard:"center",text:{color:"yellow",italic:true,text:"見学者"},background:0,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0f,3.0f,3.0f]}}