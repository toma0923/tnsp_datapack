#> tnsp:shop/set_inventory
#
# 所定のアイテムをインベントリにセットする

# 左上3個のオーグメントスロット以外削除
setblock 0 0 0 chest
item replace block 0 0 0 container.9 from entity @s container.9
item replace block 0 0 0 container.10 from entity @s container.10
item replace block 0 0 0 container.11 from entity @s container.11
clear @s *[custom_data~{shop:1b}]
item replace entity @s container.9 from block 0 0 0 container.9
item replace entity @s container.10 from block 0 0 0 container.10
item replace entity @s container.11 from block 0 0 0 container.11

# オーグメントスロット
execute unless items entity @s container.9 * run item replace entity @s container.9 with white_stained_glass_pane[custom_name={"color":"gray","text":"オーグメントスロット"},custom_data={shop:1b}] 1
execute unless items entity @s container.10 * run item replace entity @s container.10 with white_stained_glass_pane[custom_name={"color":"gray","text":"オーグメントスロット"},custom_data={shop:1b}] 1
execute unless items entity @s container.11 * run item replace entity @s container.11 with white_stained_glass_pane[custom_name={"color":"gray","text":"オーグメントスロット"},custom_data={shop:1b}] 1

# ミッション
item replace entity @s container.16 with feather[custom_name={"bold":true,"color":"yellow","italic":false,"text":"任務をリロール"},lore=[{"color":"gold","italic":false,"text":"20G"}],custom_data={"reroll_mission":1b,"shop":1b}] 1
item replace entity @s container.17 with paper[custom_name={"color":"white","text":"任務"},lore=[{"color":"red","text":"未設定"}],custom_data={shop:1b}] 1
execute if score @s kt.mission_num matches 0.. store result storage kt.my_dat num int 1 run scoreboard players get @s kt.mission_num
execute if score @s kt.mission_num matches 0.. run function tnsp:shop/reroll_mission2 with storage kt.my_dat

# 戦闘系オーグメント
item replace entity @s container.19 with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}] 1
item replace entity @s container.20 with creeper_spawn_egg[custom_name={"bold":true,"color":"gold","italic":false,"text":"戦闘系オーグメントを引く"},lore=[{"color":"gold","italic":false,"text":"200G"}],custom_data={"battle_augment":1b,"shop":1b}] 1
item replace entity @s container.21 with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}] 1

# 経済系オーグメント
item replace entity @s container.23 with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}] 1
item replace entity @s container.24 with wandering_trader_spawn_egg[custom_name={"bold":true,"color":"gold","italic":false,"text":"経済系オーグメントを引く"},lore=[{"color":"gold","italic":false,"text":"200G"}],custom_data={"economy_augment":1b,"shop":1b}] 1
item replace entity @s container.25 with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}] 1

# 強化系
item replace entity @s container.29 with potion[custom_data={shop:1b}]
item replace entity @s container.30 with copper_axe[custom_data={shop:1b}]
item replace entity @s container.31 with golden_apple[custom_data={shop:1b}]
item replace entity @s container.32 with iron_chestplate[custom_data={shop:1b}]
item replace entity @s container.33 with prismarine_shard[custom_data={shop:1b}]

# オーグメントのtag管理
function tnsp:shop/tag_augment