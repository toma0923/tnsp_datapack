#クールダウン
execute as @s if score @s mp >= dash mp run function tnsp:manage/cd/set {"tech":"dash"}
#mp消費
execute as @s if score @s mp >= dash mp run function tnsp:manage/mp/remove {"tech":"dash"}
