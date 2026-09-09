# パーティクルのサイズは scale:0.4 で控えめにし、色は血の赤（1.0, 0.0, 0.0）
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^0.2 ^0.0 ^1.0 0 0 0 0 1
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^0.14 ^0.14 ^1.0 0 0 0 0 1
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^0.0 ^0.2 ^1.0 0 0 0 0 1
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^-0.14 ^0.14 ^1.0 0 0 0 0 1
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^-0.2 ^0.0 ^1.0 0 0 0 0 1
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^-0.14 ^-0.14 ^1.0 0 0 0 0 1
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^0.0 ^-0.2 ^1.0 0 0 0 0 1
execute at @s anchored eyes run particle dust{color:[1.0,0.0,0.0],scale:0.4} ^0.14 ^-0.14 ^1.0 0 0 0 0 1

# （おまけ）チャージが進むにつれて圧縮音を鳴らす
execute if score @s right_time matches 1.. run tnsp_pose crossbow
execute at @s if score @s right_time matches 0.. run playsound minecraft:block.sculk.charge player @s ~ ~ ~ 1 1
execute at @s if score @s right_time matches 20 run playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 1 1


execute at @s if score @s right_time matches 1..5 run effect give @s slowness 1 1 true
execute at @s if score @s right_time matches 6..10 run effect give @s slowness 1 2 true
execute at @s if score @s right_time matches 11..15 run effect give @s slowness 1 4 true
execute at @s if score @s right_time matches 16..19 run effect give @s slowness 1 6 true
execute at @s if score @s right_time matches 20.. run effect give @s slowness 1 8 true

