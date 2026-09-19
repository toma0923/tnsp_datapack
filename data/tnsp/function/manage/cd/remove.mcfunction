#
execute as @a if score @s cd_senketsu matches 0.. run function tnsp:manage/cd/tech/senketsu
#豪火球
execute as @a if score @s cd_goukakyu matches 0.. run function tnsp:manage/cd/tech/goukakyu
#fang
execute as @a if score @s cd_fang matches 0.. run function tnsp:manage/cd/tech/fang
#アーリ
execute as @a if score @s cd_ahriw matches 0.. run function tnsp:manage/cd/tech/ahriw
#分身の術
execute as @a if score @s cd_clone matches 0.. run function tnsp:manage/cd/tech/clone
#旋突
execute as @a if score @s cd_dash matches 0.. run function tnsp:manage/cd/tech/dash
#泥沼の術
execute as @a if score @s cd_doronuma matches 0.. run function tnsp:manage/cd/tech/doronuma
#岩砲弾
execute as @a if score @s cd_stone_cannon matches 0.. run function tnsp:manage/cd/tech/stone_cannon
#岩落としの術
execute as @a if score @s cd_stone_pillar matches 0.. run function tnsp:manage/cd/tech/stone_pillar
#壁
execute as @a if score @s cd_wall matches 0.. run function tnsp:manage/cd/tech/wall
#ヒール大
execute as @a if score @s cd_heal_big matches 0.. run function tnsp:manage/cd/tech/heal_big
#ヒール中
execute as @a if score @s cd_heal_mid matches 0.. run function tnsp:manage/cd/tech/heal_mid
#ヒール小
execute as @a if score @s cd_heal_small matches 0.. run function tnsp:manage/cd/tech/heal_small
#ヒール小
execute as @a if score @s cd_heal_mana matches 0.. run function tnsp:manage/cd/tech/heal_mana



#各技をhudの文字に代入
execute as @a run function tnsp:manage/cd/hud with storage tnsp:cd
