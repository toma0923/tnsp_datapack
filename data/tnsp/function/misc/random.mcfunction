#> tnsp:misc/random
#
# 乱数を生成

$execute store result score $random kt.util run random value $(from)..$(to)
return run scoreboard players get $random kt.util