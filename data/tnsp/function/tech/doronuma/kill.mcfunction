#> tnsp:tech/doronuma/kill
#
# 泥沼を削除する
#

function tnsp:misc/search_uuid {tag:"kt.doronuma"}
execute as @e[tag=kt.this] at @s run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"large_smoke"},Radius:1f,Duration:25,Age:20}
kill @e[tag=kt.this]