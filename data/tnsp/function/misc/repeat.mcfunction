#> tnsp:misc/repeat
#
# 引数に渡されたfuncをcount回実行する
#
# @within function tnsp:misc/repeat

$function $(func)

$scoreboard players set $count kt.util $(count)
scoreboard players remove $count kt.util 1
execute if score $count kt.util matches ..0 run return 0
execute store result storage kt.my_dat count int 1 run scoreboard players get $count kt.util
$data modify storage kt.my_dat func set value "$(func)"
function tnsp:misc/repeat with storage kt.my_dat