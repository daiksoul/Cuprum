#tellraw @a [{"nbt":"Pos","entity": "@s"}," ",{"nbt":"UUID[0]","entity": "@s"}," ",{"score":{"name": "@s","objective": "cupr.copper_equ"}}]
particle soul_fire_flame ~ ~1 ~ 0.01 0.01 0.01 0.002 1 normal
scoreboard players add @s cupr.copper_equ 1

execute if entity @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run function cuprum:lightning/sword_hit
execute as @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] at @s run function cuprum:lightning/sword_hit2

execute if score @s cupr.copper_equ matches ..75 unless entity @e[type=!#cuprum:immune_ligtning,distance=..0.5,tag=cupr.marked,tag=!cupr.bolt_forked] if block ~ ~ ~ air positioned ^ ^ ^0.1 run function cuprum:lightning/sword_loop2
execute if score @s cupr.copper_equ matches 76.. run kill @s

execute unless block ~ ~ ~ air run kill @s