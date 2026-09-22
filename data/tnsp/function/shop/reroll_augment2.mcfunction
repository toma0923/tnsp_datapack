#> tnsp:shop/reroll_augment2
#
# オーグメントをリロールする
#
# @within func tnsp:shop/tick

# 音
execute if score @s kt.reroll_augment_timer matches 33 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.6
execute if score @s kt.reroll_augment_timer matches 30 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.7
execute if score @s kt.reroll_augment_timer matches 27 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.8
execute if score @s kt.reroll_augment_timer matches 24 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.9
execute if score @s kt.reroll_augment_timer matches 21 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute if score @s kt.reroll_augment_timer matches 18 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.1
execute if score @s kt.reroll_augment_timer matches 15 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.2
execute if score @s kt.reroll_augment_timer matches 12 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.4
execute if score @s kt.reroll_augment_timer matches 9 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.6
execute if score @s kt.reroll_augment_timer matches 6 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.8
execute if score @s kt.reroll_augment_timer matches 3 at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 2
execute if score @s kt.reroll_augment_timer matches 1 at @s run playsound entity.player.levelup master @s ~ ~ ~ 0.5

# 見た目
$execute if score @s kt.reroll_augment_timer matches 33 at @s run item replace entity @s container.$(slot1) with pink_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 30 at @s run item replace entity @s container.$(slot1) with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 27 at @s run item replace entity @s container.$(slot1) with purple_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 24 at @s run item replace entity @s container.$(slot1) with blue_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 21 at @s run item replace entity @s container.$(slot1) with light_blue_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 18 at @s run item replace entity @s container.$(slot1) with cyan_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 15 at @s run item replace entity @s container.$(slot1) with green_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 12 at @s run item replace entity @s container.$(slot1) with lime_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 9 at @s run item replace entity @s container.$(slot1) with yellow_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 6 at @s run item replace entity @s container.$(slot1) with orange_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 3 at @s run item replace entity @s container.$(slot1) with red_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 0 at @s run item replace entity @s container.$(slot1) with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 33 at @s run item replace entity @s container.$(slot3) with pink_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 30 at @s run item replace entity @s container.$(slot3) with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 27 at @s run item replace entity @s container.$(slot3) with purple_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 24 at @s run item replace entity @s container.$(slot3) with blue_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 21 at @s run item replace entity @s container.$(slot3) with light_blue_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 18 at @s run item replace entity @s container.$(slot3) with cyan_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 15 at @s run item replace entity @s container.$(slot3) with green_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 12 at @s run item replace entity @s container.$(slot3) with lime_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 9 at @s run item replace entity @s container.$(slot3) with yellow_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 6 at @s run item replace entity @s container.$(slot3) with orange_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 3 at @s run item replace entity @s container.$(slot3) with red_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]
$execute if score @s kt.reroll_augment_timer matches 0 at @s run item replace entity @s container.$(slot3) with magenta_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={shop:1b}]

# オーグメントガチャ
summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:[kt.for_reroll_augment]}
execute if entity @s[tag=kt.battle_augment] run loot replace entity @n[tag=kt.for_reroll_augment] weapon loot tnsp:battle_augments
execute if entity @s[tag=kt.economy_augment] run loot replace entity @n[tag=kt.for_reroll_augment] weapon loot tnsp:economy_augments
$item replace entity @s container.$(slot2) from entity @n[tag=kt.for_reroll_augment] weapon
kill @e[tag=kt.for_reroll_augment]

# スロットにオーグメントを入れる
$execute if score @s kt.reroll_augment_timer matches 0 run function tnsp:shop/reroll_augment3 {slot:$(slot2)}

# オーグメントのtag付け
function tnsp:shop/tag_augment

execute if score @s kt.reroll_augment_timer matches 0 run tag @s remove kt.battle_augment
execute if score @s kt.reroll_augment_timer matches 0 run tag @s remove kt.economy_augment
scoreboard players remove @s kt.reroll_augment_timer 1