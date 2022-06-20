scoreboard players set @e[tag=!cupr.thunder,scores={cupr.copper_equ=1..},predicate=cuprum:thundering] cupr.thund_coold 200
tag @e[tag=!cupr.thunder,scores={cupr.copper_equ=1..},predicate=cuprum:thundering] add cupr.thunder
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0,cupr.copper_cnt=1}] at @s if predicate cuprum:probability/10_1perc run function cuprum:copper/lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0,cupr.copper_cnt=2}] at @s if predicate cuprum:probability/10_2perc run function cuprum:copper/lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0,cupr.copper_cnt=3}] at @s if predicate cuprum:probability/10_3perc run function cuprum:copper/lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0,cupr.copper_cnt=4}] at @s if predicate cuprum:probability/10_4perc run function cuprum:copper/lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0,cupr.copper_cnt=5}] at @s if predicate cuprum:probability/10_5perc run function cuprum:copper/lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0,cupr.copper_cnt=6}] at @s if predicate cuprum:probability/10_6perc run function cuprum:copper/lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0}] at @s run scoreboard players set @s cupr.thund_coold 200
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=1..}] run scoreboard players remove @s cupr.thund_coold 1
execute as @e[tag=cupr.thunder] unless entity @s[scores={cupr.copper_equ=1..},predicate=cuprum:thundering] run scoreboard players reset @s cupr.thund_coold
execute as @e[tag=cupr.thunder] unless entity @s[scores={cupr.copper_equ=1..},predicate=cuprum:thundering] run tag @s remove cupr.thunder