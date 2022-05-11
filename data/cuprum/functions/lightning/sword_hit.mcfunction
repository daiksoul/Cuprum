tag @s add cupr.marked
execute store result score @s cupr.val1 run data get entity @s UUID[0] 1
scoreboard players operation @s cupr.val1 %= #LIGHTNING_FORKS cupr.const
scoreboard players operation @s cupr.val1 += #LIGHTNING_FORKSBASE cupr.const
scoreboard players remove @s cupr.val2 1
execute if score @s cupr.val2 matches 1.. run function cuprum:lightning/sword_loop