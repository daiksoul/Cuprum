#tellraw @a [{"nbt":"Pos","entity": "@s"}," ",{"nbt":"UUID[0]","entity": "@s"}," ",{"score":{"name": "@s","objective": "cupr.copper_equ"}}]
particle soul_fire_flame ~ ~1 ~ 0.01 0.01 0.01 0.002 1 normal
scoreboard players add @s cupr.copper_equ 1

execute if entity @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run tag @s add cupr.marked
execute if entity @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] store result score @s cupr.val1 run data get entity @s UUID[0] 1
execute if entity @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run scoreboard players operation @s cupr.val1 %= #LIGHTNING_FORKS cupr.const
execute if entity @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run scoreboard players operation @s cupr.val1 += #LIGHTNING_FORKSBASE cupr.const
execute if entity @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run scoreboard players remove @s cupr.val2 1
execute if entity @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] if score @s cupr.val2 matches 1.. run function cuprum:lightning/sword_loop

execute as @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run effect give @s wither 1 1 true
execute as @e[type=!#cuprum:immune_ligtning,distance=..1,tag=cupr.marked,tag=!cupr.bolt_forked,tag=!cupr.using_bolt] run tag @s add cupr.bolt_forked

execute if score @s cupr.copper_equ matches ..75 unless entity @e[type=!#cuprum:immune_ligtning,distance=..0.5,tag=cupr.marked,tag=!cupr.bolt_forked] if block ~ ~ ~ air positioned ^ ^ ^0.1 run function cuprum:lightning/sword_loop2
execute if score @s cupr.copper_equ matches 76.. run kill @s

execute unless block ~ ~ ~ air run kill @s