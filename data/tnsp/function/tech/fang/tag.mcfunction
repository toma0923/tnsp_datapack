tag @s add hit
execute on attacker run tag @s add actor
function tnsp:manage/damage/do {"tech":"fang"}
tag @s remove hit_fang
execute on attacker run tag @s remove actor
