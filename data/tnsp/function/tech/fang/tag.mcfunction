tag @s add hit
execute as @a[tag=actor_fang] run tag @s add actor
function tnsp:manage/damage/do {"tech":"fang"}
tag @s remove hit_fang
tag @a remove actor_fang
