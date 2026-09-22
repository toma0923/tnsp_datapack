#> tnsp:shop/init_missions
#
# ミッションを設定
#
# @within func tnsp:reload

data modify storage kt.my_dat missions set value [[30,["[西南北]穿血を相手に1回当てる","報酬: 30G"]]]
data modify storage kt.my_dat missions append value [40,["[西南東]超火球の術を相手に1回当てる","報酬: 40G"]]
data modify storage kt.my_dat missions append value [40,["[西南南]地割りの術を相手に1回当てる","報酬: 40G"]]
data modify storage kt.my_dat missions append value [30,["[西東東]岩砲弾を相手に1回当てる","報酬: 30G"]]
data modify storage kt.my_dat missions append value [50,["[西東北]岩落としを相手に1回当てる","報酬: 50G"]]
data modify storage kt.my_dat missions append value [40,["無音の太刀を相手に1回当てる","報酬: 40G"]]

data modify storage kt.my_dat missions append value [200,["敵を2人キルする","報酬: 200G"]]
data modify storage kt.my_dat missions append value [400,["敵を3人キルする","報酬: 400G"]]
data modify storage kt.my_dat missions append value [400,["死なずに敵を2人キルする","報酬: 400G"]]

data modify storage kt.my_dat missions append value [100,["合計30ハート分のダメージを与える","報酬: 100G"]]

data modify storage kt.my_dat missions append value [20,["20m落下する","報酬: 20G"]]
data modify storage kt.my_dat missions append value [40,["500m歩く","報酬: 40G"]]