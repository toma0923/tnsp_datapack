#123(西南東)　地割〇
execute if score @s in matches 123 if score @s cd_fang matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 123 if score @s cd_fang matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 123 if score @s cd_fang matches ..0 run function tnsp:tech/fang/play
#113(西東東)  岩砲弾〇
execute if score @s in matches 113 if score @s cd_stone_cannon matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 113 if score @s cd_stone_cannon matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 113 if score @s cd_stone_cannon matches ..0 run function tnsp:tech/stone_cannon/main
#213(西東南)  泥沼の術〇
execute if score @s in matches 213 if score @s cd_doronuma matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 213 if score @s cd_doronuma matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 213 if score @s cd_doronuma matches ..0 run function tnsp:tech/doronuma/main
#413(西東北)　岩落としの術〇
execute if score @s in matches 413 if score @s cd_stone_pillar matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 413 if score @s cd_stone_pillar matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 413 if score @s cd_stone_pillar matches ..0 run function tnsp:tech/stone_pillar/main
#223(西南南)　超火球の術〇
execute if score @s in matches 223 if score @s cd_goukakyu matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 223 if score @s cd_goukakyu matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 223 if score @s cd_goukakyu matches ..0 run function tnsp:tech/goukakyu/play
#232(南西南)　岩壁の術
execute if score @s in matches 232 if score @s cd_wall matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 232 if score @s cd_wall matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 232 if score @s cd_wall matches ..0 run function tnsp:tech/wall/main
#323(西南西)　アーリ〇
execute if score @s in matches 323 if score @s cd_ahriw matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 323 if score @s cd_ahriw matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 323 if score @s cd_ahriw matches ..0 run function tnsp:tech/ahriw/main
#344(北南東)　無音の太刀
execute if score @s in matches 124 if score @s cd_sword matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 124 if score @s cd_sword matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 124 if score @s cd_sword matches ..0 run function tnsp:tech/muon/main
#344(北北西)　旋突〇
execute if score @s in matches 344 if score @s cd_dash matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 344 if score @s cd_dash matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 344 if score @s cd_dash matches ..0 run function tnsp:tech/dash/reset
#423(西南北)　穿血〇
execute if score @s in matches 423 if score @s cd_senketsu matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 423 if score @s cd_senketsu matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 423 if score @s cd_senketsu matches ..0 run function tnsp:tech/senketsu/play
#431(東西北)  分身の術〇
execute if score @s in matches 431 if score @s cd_clone matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 431 if score @s cd_clone matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 431 if score @s cd_clone matches ..0 run function tnsp:tech/clone/main
#142(南北東)　ヒール大
execute if score @s in matches 142 if score @s cd_heal_big matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 142 if score @s cd_heal_big matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 142 if score @s cd_heal_big matches ..0 run function tnsp:tech/heal_big/main
#242(南北西)　ヒール中
execute if score @s in matches 242 if score @s cd_heal_mid matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 242 if score @s cd_heal_mid matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 242 if score @s cd_heal_mid matches ..0 run function tnsp:tech/heal_mid/main
#342(南北南)　ヒール小
execute if score @s in matches 342 if score @s cd_heal_small matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 342 if score @s cd_heal_small matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 342 if score @s cd_heal_small matches ..0 run function tnsp:tech/heal_small/main
#442(南北北)　ヒールマナ
execute if score @s in matches 442 if score @s cd_heal_mana matches 1.. run title @s actionbar [{"text": "クールダウン中!","color": "red"}]
execute if score @s in matches 442 if score @s cd_heal_mana matches 1.. run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 10 0.3
execute if score @s in matches 442 if score @s cd_heal_mana matches ..0 run function tnsp:tech/heal_mana/main


#213(西東南)  泥沼
#423(西南北)　穿血
#344(北北西)　旋突
#223(西南南)　火遁豪火球の術
#431(東西北)  分身の術