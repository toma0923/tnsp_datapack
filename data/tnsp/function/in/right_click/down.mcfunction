
title @s actionbar ""

function tnsp:in/right_click/in_check_down

tnsp_pose reset
tnsp_righthud clear


#リセット
scoreboard players set @s right 0
scoreboard players set @s right_time 0
scoreboard players set @s in 0