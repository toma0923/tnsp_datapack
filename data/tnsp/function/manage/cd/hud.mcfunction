#せんけつ
$execute if score @s cd_senketsu matches 1.. run data modify storage tnsp:hud senketsu set value "&e $(senketsu)秒"
execute if score @s cd_senketsu matches ..0 run data modify storage tnsp:hud senketsu set value "&6OK"
$execute as @s run data modify storage tnsp:hud senketsu_mp set value "&b[MP:$(senketsu_mp)] "
#豪火球
$execute if score @s cd_goukakyu matches 1.. run data modify storage tnsp:hud goukakyu set value "&e $(goukakyu)秒"
execute if score @s cd_goukakyu matches ..0 run data modify storage tnsp:hud goukakyu set value "&6OK"
$execute as @s run data modify storage tnsp:hud goukakyu_mp set value "&b[MP:$(goukakyu_mp)] "
#地割れ
$execute if score @s cd_fang matches 1.. run data modify storage tnsp:hud fang set value "&e $(fang)秒"
execute if score @s cd_fang matches ..0 run data modify storage tnsp:hud fang set value "&6OK"
$execute as @s run data modify storage tnsp:hud fang_mp set value "&b[MP:$(fang_mp)] "
#アーリ
$execute if score @s cd_ahriw matches 1.. run data modify storage tnsp:hud ahriw set value "&e $(ahriw)秒"
execute if score @s cd_ahriw matches ..0 run data modify storage tnsp:hud ahriw set value "&6OK"
$execute as @s run data modify storage tnsp:hud ahriw_mp set value "&b[MP:$(ahriw_mp)] "
#岩壁
$execute if score @s cd_wall matches 1.. run data modify storage tnsp:hud wall set value "&e $(wall)秒"
execute if score @s cd_wall matches ..0 run data modify storage tnsp:hud wall set value "&6OK"
$execute as @s run data modify storage tnsp:hud wall_mp set value "&b[MP:$(wall_mp)]"
#ダッシュ
$execute if score @s cd_dash matches 1.. run data modify storage tnsp:hud dash set value "&e $(dash)秒"
execute if score @s cd_dash matches ..0 run data modify storage tnsp:hud dash set value "&6OK"
$execute as @s run data modify storage tnsp:hud dash_mp set value "&b[MP:$(dash_mp)]"
#分身
$execute if score @s cd_clone matches 1.. run data modify storage tnsp:hud clone set value "&e $(clone)秒"
execute if score @s cd_clone matches ..0 run data modify storage tnsp:hud clone set value "&6OK"
$execute as @s run data modify storage tnsp:hud clone_mp set value "&b[MP:$(clone_mp)]"
#岩飛ばし
$execute if score @s cd_stone_cannon matches 1.. run data modify storage tnsp:hud stone_cannon set value "&e $(stone_cannon)秒"
execute if score @s cd_stone_cannon matches ..0 run data modify storage tnsp:hud stone_cannon set value "&6OK"
$execute as @s run data modify storage tnsp:hud stone_cannon_mp set value "&b[MP:$(stone_cannon_mp)]"
#岩落とし
$execute if score @s cd_stone_pillar matches 1.. run data modify storage tnsp:hud stone_pillar set value "&e $(stone_pillar)秒"
execute if score @s cd_stone_pillar matches ..0 run data modify storage tnsp:hud stone_pillar set value "&6OK"
$execute as @s run data modify storage tnsp:hud stone_pillar_mp set value "&b[MP:$(stone_pillar_mp)]"
#泥沼
$execute if score @s cd_doronuma matches 1.. run data modify storage tnsp:hud doronuma set value "&e $(doronuma)秒"
execute if score @s cd_doronuma matches ..0 run data modify storage tnsp:hud doronuma set value "&6OK"
$execute as @s run data modify storage tnsp:hud doronuma_mp set value "&b[MP:$(doronuma_mp)]"
#ヒール大
$execute if score @s cd_heal_big matches 1.. run data modify storage tnsp:hud heal_big set value "&e $(heal_big)秒"
execute if score @s cd_heal_big matches ..0 run data modify storage tnsp:hud heal_big set value "&6OK"
$execute as @s run data modify storage tnsp:hud heal_big_mp set value "&b[MP:$(heal_big_mp)]"
#ヒール中
$execute if score @s cd_heal_mid matches 1.. run data modify storage tnsp:hud heal_mid set value "&e $(heal_mid)秒"
execute if score @s cd_heal_mid matches ..0 run data modify storage tnsp:hud heal_mid set value "&6OK"
$execute as @s run data modify storage tnsp:hud heal_mid_mp set value "&b[MP:$(heal_mid_mp)]"
#ヒール小
$execute if score @s cd_heal_small matches 1.. run data modify storage tnsp:hud heal_small set value "&e $(heal_small)秒"
execute if score @s cd_heal_small matches ..0 run data modify storage tnsp:hud heal_small set value "&6OK"
$execute as @s run data modify storage tnsp:hud heal_small_mp set value "&b[MP:$(heal_small_mp)]"
#ヒールマナ
$execute if score @s cd_heal_mana matches 1.. run data modify storage tnsp:hud heal_mana set value "&e $(heal_mana)秒"
execute if score @s cd_heal_mana matches ..0 run data modify storage tnsp:hud heal_mana set value "&6OK"
$execute as @s run data modify storage tnsp:hud heal_mana_mp set value "&b[MP:   $(heal_mana_mp)]"
#
