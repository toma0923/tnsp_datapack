#123(西南東)　地割
execute if score @s in matches 123 if score @s cd_fang matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 123 if score @s cd_fang matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 123 if score @s cd_fang matches ..0 run function tnsp:tech/fang/play
#113(西東東)  岩砲弾
execute if score @s in matches 113 if score @s cd_stone_cannon matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 113 if score @s cd_stone_cannon matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 113 if score @s cd_stone_cannon matches ..0 run function tnsp:tech/stone_cannon/main
#213(西東南)  泥沼の術
execute if score @s in matches 213 if score @s cd_doronuma matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 213 if score @s cd_doronuma matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 213 if score @s cd_doronuma matches ..0 run function tnsp:tech/doronuma/main
#413(西東北)　岩落としの術
execute if score @s in matches 413 if score @s cd_stone_pillar matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 413 if score @s cd_stone_pillar matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 413 if score @s cd_stone_pillar matches ..0 run function tnsp:tech/stone_pillar/main
#223(西南南)　超火球の術
execute if score @s in matches 223 if score @s cd_goukakyu matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 223 if score @s cd_goukakyu matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 223 if score @s cd_goukakyu matches ..0 run function tnsp:tech/goukakyu/play
#232(南西南)　岩壁の術
execute if score @s in matches 232 if score @s cd_wall matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 232 if score @s cd_wall matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 232 if score @s cd_wall matches ..0 run function tnsp:tech/wall/main
#323(西南西)　アーリ
execute if score @s in matches 323 if score @s cd_ahriw matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 323 if score @s cd_ahriw matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 323 if score @s cd_ahriw matches ..0 run function tnsp:tech/ahriw/main
#344(北北西)　旋突
execute if score @s in matches 344 if score @s cd_dash matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 344 if score @s cd_dash matches ..0 run function tnsp:tech/dash/reset
#423(西南北)　穿血
execute if score @s in matches 423 if score @s cd_senketsu matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 423 if score @s cd_senketsu matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 423 if score @s cd_senketsu matches ..0 run function tnsp:tech/senketsu/play
#431(東西北)  分身の術
execute if score @s in matches 431 if score @s cd_clone matches 1.. run title @s actionbar [{"text": "クールダウン中!"}]
execute if score @s in matches 431 if score @s cd_clone matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 431 if score @s cd_clone matches ..0 run function tnsp:tech/clone/main




#213(西東南)  泥沼
#423(西南北)　穿血
#344(北北西)　旋突
#223(西南南)　火遁豪火球の術
#431(東西北)  分身の術