
#時間管理
scoreboard players remove system game_time_sub 5
execute if score system game_time_sub matches ..0 run scoreboard players remove system game_time 1
execute if score system game_time matches 0.. if score system game_time_sub matches ..0 run scoreboard players set system game_time_sub 99


#タイトル
execute if score system game_time matches 3.. if score system game_time_sub matches 10.. run title @a subtitle [{"score":{"name":"system","objective":"game_time"},"color": "white"},{"text": ".","color": "white"},{"score":{"name":"system","objective":"game_time_sub"},"color": "white"}]
execute if score system game_time matches 3.. if score system game_time_sub matches ..9 run title @a subtitle [{"score":{"name":"system","objective":"game_time"},"color": "white"},{"text": ".0","color": "white"},{"score":{"name":"system","objective":"game_time_sub"},"color": "white"}]
execute if score system game_time matches 0..3 if score system game_time_sub matches 10.. run title @a subtitle [{"score":{"name":"system","objective":"game_time"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name":"system","objective":"game_time_sub"},"color": "yellow"}]
execute if score system game_time matches 0..3 if score system game_time_sub matches ..9 run title @a subtitle [{"score":{"name":"system","objective":"game_time"},"color": "yellow"},{"text": ".0","color": "yellow"},{"score":{"name":"system","objective":"game_time_sub"},"color": "yellow"}]
execute if score system game_time matches ..-1 run title @a subtitle [{"text": "0.00","color": "red"}]

#次のstepへ
execute if score system game_time matches ..-3 run function tnsp:game/step/2

