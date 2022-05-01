# runned by cupr.bolt_fork entities
# > lightning/sword
tag @s add cupr.marked
tag @e[limit=1,sort=nearest,distance=..1,type=!#cuprum:immune_ligtning] add cupr.marked

execute store result score @s cupr.val1 run data get entity @s UUID[0] 1
scoreboard players operation @s cupr.val1 %= #LIGHTNING_FORKS cupr.const
scoreboard players remove @s cupr.val2 1
execute if score @s cupr.val2 matches 1.. as @s at @s run function cuprum:lightning/sword_loop2