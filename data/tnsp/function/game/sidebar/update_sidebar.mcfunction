#> tnsp:game/sidebar/update_sidebar
#
# サイドバー更新
#
# @within func tnsp:game/sidebar/tick

$scoreboard players operation キル数 kt.stats_$(team) = @s kill
$scoreboard players operation 死亡数 kt.stats_$(team) = @s death
$scoreboard players operation 所持金 kt.stats_$(team) = @s kt.gold
$scoreboard players operation 所持金 kt.stats_$(team) /= 20 number

$execute if score @s kt.cd_augment10 matches 1.. run scoreboard players operation 脱出プランCD kt.stats_$(team) = @s kt.cd_augment10
$execute if score @s kt.cd_augment10 matches 1.. run scoreboard players operation 脱出プランCD kt.stats_$(team) /= 20 number
$execute unless score @s kt.cd_augment10 matches 1.. run scoreboard players reset 脱出プランCD kt.stats_$(team)