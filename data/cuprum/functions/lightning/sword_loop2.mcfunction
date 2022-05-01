# runned by cupr.bolt_fork
# > lightning/sword_loop

execute if score @s cupr.val1 matches 1.. as @e[type=!#cuprum:immune_ligtning,sort=nearest,tag=!cupr.marked,distance=..5] at @s run summon marker ~ ~1 ~ {Tags:[cupr.bolt_fork]}
scoreboard players remove @s cupr.val1 1
scoreboard players operation @e[tag=cupr.bolt_fork,tag=!cupr.marked] cupr.val2 = @s cupr.val2

execute if score @s cupr.val1 matches 1.. run function cuprum:lightning/sword_loop2