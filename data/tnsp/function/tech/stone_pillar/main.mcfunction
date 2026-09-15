#> tnsp:tech/stone_pillar/main
#
# 頭上に岩を召喚し、落下させる

execute anchored eyes run function tnsp:misc/look_at {count:15,func:"tnsp:tech/stone_pillar/summon_falling_entity"}


playsound minecraft:entity.warden.emerge master @a ~ ~ ~ 1 0.5
schedule function tnsp:tech/stone_pillar/stopsound 5s