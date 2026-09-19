#> tnsp:tech/sword/tick
#
# 毎ティック実行される処理
#
# @within function tnsp:main

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run function tnsp:tech/sword/kill
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run function tnsp:tech/sword/detect_slash
