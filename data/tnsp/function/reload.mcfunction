say Reloaded!

#
team add name_tag
team modify name_tag nametagVisibility hideForOwnTeam

#gamestep
scoreboard objectives add game dummy
scoreboard objectives add game_time dummy
scoreboard objectives add game_time_sub dummy

#印の番号
scoreboard objectives add in dummy
scoreboard objectives add in_1 dummy
scoreboard objectives add in_in dummy

#技の調整--------------------------------------
#ダメージ管理
scoreboard objectives add damege dummy
#クールダウン管理
scoreboard objectives add cd dummy
#コスト管理
scoreboard objectives add cd dummy
#効果範囲管理
scoreboard objectives add range dummy


#10のスコア
scoreboard objectives add number dummy
scoreboard players set 10 number 10

#スニーク検知
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak2 minecraft.custom:minecraft.sneak_time
#ジャンプ検知
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add jump_time dummy
scoreboard players set @a jump_time 0
#右クリ検知
scoreboard objectives add right dummy
#右クリ長押し時間検知
scoreboard objectives add right_time dummy


scoreboard objectives add look_x dummy
scoreboard objectives add look_y dummy
scoreboard objectives add look_z dummy


#分身
function tnsp:sys/init
function tnsp:sys/when_start