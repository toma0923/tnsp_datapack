#> tnsp:game/sidebar/set_sidebar
#
# サイドバー設定
#
# @within func tnsp:sys/when_start

scoreboard objectives setdisplay sidebar.team.aqua kt.stats_aqua
scoreboard objectives setdisplay sidebar.team.black kt.stats_black
scoreboard objectives setdisplay sidebar.team.blue kt.stats_blue
scoreboard objectives setdisplay sidebar.team.dark_aqua kt.stats_dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_blue kt.stats_dark_blue
scoreboard objectives setdisplay sidebar.team.dark_gray kt.stats_dark_gray
scoreboard objectives setdisplay sidebar.team.dark_green kt.stats_dark_green
scoreboard objectives setdisplay sidebar.team.dark_purple kt.stats_dark_purple

team join aqua @a[scores={kt.uuid=1}]
team join black @a[scores={kt.uuid=2}]
team join blue @a[scores={kt.uuid=3}]
team join dark_aqua @a[scores={kt.uuid=4}]
team join dark_blue @a[scores={kt.uuid=5}]
team join dark_gray @a[scores={kt.uuid=6}]
team join dark_green @a[scores={kt.uuid=7}]
team join dark_purple @a[scores={kt.uuid=8}]