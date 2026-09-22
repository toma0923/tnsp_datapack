#> tnsp:augment/augment6
#
# ダメージを与えた相手の体力とマナがわかる
#
# @within func tnsp:manage/damage/do

tellraw @p[tag=actor] [{"text":"--","color":"green"},{"selector":"@s"},{"text":"の情報-------------"}]

scoreboard players operation $current kt.util = @s health
scoreboard players operation $current kt.util /= 50 number
scoreboard players operation $max kt.util = @s health_max
scoreboard players operation $max kt.util /= 50 number

tellraw @p[tag=actor] [{"text":"体力:   ","color":"red"},{"score":{"name":"$current","objective":"kt.util"}},{"text":"/"},{"score":{"name":"$max","objective":"kt.util"}}]
tellraw @p[tag=actor] [{"text":"マナ:   ","color":"blue"},{"score":{"name":"@s","objective":"mp"}},{"text":"/"},{"score":{"name":"@s","objective":"mp_max"}}]

tellraw @p[tag=actor] {"text":"------------------------","color":"green"}