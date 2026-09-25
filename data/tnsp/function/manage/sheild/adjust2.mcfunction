#> tnsp:manage/sheild/adjust2
#
# 金ハートをスコアのkt.sheildに合わせる
#
# @within func tnsp:manage/sheild/adjust

$attribute @s max_absorption base set $(sheild)
effect give @s absorption infinite 255 true
effect clear @s absorption