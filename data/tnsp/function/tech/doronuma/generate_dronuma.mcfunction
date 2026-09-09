#> tnsp:tech/doronuma/generate_dronuma
#
# 泥沼を生成する
#
# @within function tnsp:tech/doronuma/tick

execute store result storage kt.my_dat random float 0.01 run function tnsp:misc/random {from:10,to:40}
function tnsp:tech/doronuma/generate_dronuma2 with storage kt.my_dat