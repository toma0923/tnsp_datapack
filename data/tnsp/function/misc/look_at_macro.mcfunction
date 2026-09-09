#> tnsp:misc/look_at
#
# 視点の先のブロックで指定のfunctionをマクロ付きで実行
#


$scoreboard players set $count kt.util $(count)
scoreboard players remove $count kt.util 1
execute store result storage kt.my_dat count int 1 run scoreboard players get $count kt.util
$execute if score $count kt.util matches ..0 run function $(func) $(macro)

# particle crit ~ ~ ~
execute if score $count kt.util matches 1.. if block ~ ~ ~ air unless entity @e[type=shulker,distance=..1] positioned ^ ^ ^1 run function tnsp:misc/look_at with storage kt.my_dat

$execute unless block ~ ~ ~ air run function $(func) $(macro)