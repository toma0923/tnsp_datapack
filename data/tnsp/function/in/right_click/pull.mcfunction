title @s actionbar ""

#長押し発動用スコア
scoreboard players set @s right 1
#印をチェックし実行
function tnsp:in/right_click/in_check_pull


# 例1：「can_dash」というタグを持っている時だけ発動させる
$execute if entity @s[tag=can_dash] run tnsp_dash $(fw) $(side)










