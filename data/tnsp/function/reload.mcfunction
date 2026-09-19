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
#体力 1000=10ハート
scoreboard objectives add health dummy
#ダメージ管理 50=0.5ハート 
scoreboard objectives add damage_base dummy
#個人倍率　単位は%(1=1%)
scoreboard objectives add damage_personal dummy
scoreboard objectives add damage dummy
#クールダウン管理
function tnsp:manage/cd/reload
#コスト管理
scoreboard objectives add mp dummy
scoreboard objectives add mp_max dummy
#効果範囲管理
scoreboard objectives add range dummy


#数字のスコア
scoreboard objectives add number dummy
scoreboard players set 10 number 10
scoreboard players set 20 number 20
scoreboard players set 40 number 40
scoreboard players set 50 number 50


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
