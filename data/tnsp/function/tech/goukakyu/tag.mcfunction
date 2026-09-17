tag @s add hit
execute on attacker run tag @s add actor
function tnsp:manage/damage/do {"tech":"goukakyu"}
tag @s remove hit_goukakyu
execute on attacker run tag @s remove actor
