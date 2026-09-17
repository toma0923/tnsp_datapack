tag @s add hit
execute on attacker run tag @s add actor
function tnsp:manage/damage/do {"tech":"senketsu"}
tag @s remove hit_senketsu
execute on attacker run tag @s remove actor
