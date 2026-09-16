#> tnsp:tech/wall/main.mcfunction
#
# 壁を出し、投擲物から身を守る

function tnsp:tech/wall/kill
execute anchored eyes positioned ^ ^ ^ run function tnsp:misc/look_at {func:"tnsp:tech/wall/summon_falling_entity",count:5}