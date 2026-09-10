


tag @s add can_dash









# --- 基本の書き方（マクロ機能） ---
# Javaから送られてきた数値を $(fw) と $(side) で受け取り、tnsp_dash を実行する
#$tnsp_dash $(fw) $(side)


# --- 応用例：条件を付ける場合 ---
# 例1：「can_dash」というタグを持っている時だけ発動させる
#$execute if entity @s[tag=can_dash] run tnsp_dash $(fw) $(side)

# 例2：経験値レベルが1以上の時だけ発動させ、発動後にレベルを1減らす
#$execute if entity @s[level=1..] run tnsp_dash $(fw) $(side)
#execute if entity @s[level=1..] run experience add @s -1 levels

# 例3：特定のアイテム（例：羽根）をメインハンドに持っている時だけ発動
#$execute if entity @s[nbt={SelectedItem:{id:"minecraft:feather"}}] run tnsp_dash $(fw) $(side)