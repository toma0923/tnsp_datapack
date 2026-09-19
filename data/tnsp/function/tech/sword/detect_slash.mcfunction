#> tnsp:tech/sword/detect_slash
#
# 剣を振ったのを検知
#
# @within function tnsp:tech/sword/tick

function tnsp:misc/search_uuid {tag:kt.detect_slash}

# 検知用のinteraction召喚
execute unless entity @e[tag=kt.this,tag=kt.detect_slash] run summon interaction ^ ^1 ^0.1 {Tags:["kt.detect_slash","kt.baby_detect_slash"]}
scoreboard players operation @n[tag=kt.baby_detect_slash] kt.uuid = @s kt.uuid
tag @e remove kt.baby_detect_slash

# 検知用のinteractionを目の前にtp
execute anchored eyes run tp @n[tag=kt.this,tag=kt.detect_slash] ^ ^-0.5 ^0.5

# 殴ったことを検知
execute if data entity @n[tag=kt.detect_slash,tag=kt.this] attack run function tnsp:tech/sword/activate
execute if data entity @n[tag=kt.detect_slash,tag=kt.this] attack run function tnsp:tech/sword/kill

tag @e[tag=kt.detect_slash] remove kt.this