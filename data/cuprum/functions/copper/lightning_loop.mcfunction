#Initiate cooldown
scoreboard players set @e[tag=!cupr.thunder,scores={cupr.copper_cnt=1..},predicate=cuprum:thundering] cupr.thund_coold 200
tag @e[tag=!cupr.thunder,scores={cupr.copper_cnt=1..},predicate=cuprum:thundering] add cupr.thunder

#Mark to be struck by lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=199,cupr.copper_cnt=1}] if predicate cuprum:probability/10_1perc run tag @s add cupr.thunder.o
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=199,cupr.copper_cnt=2}] if predicate cuprum:probability/10_2perc run tag @s add cupr.thunder.o
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=199,cupr.copper_cnt=3}] if predicate cuprum:probability/10_3perc run tag @s add cupr.thunder.o
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=199,cupr.copper_cnt=4}] if predicate cuprum:probability/10_4perc run tag @s add cupr.thunder.o
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=199,cupr.copper_cnt=5}] if predicate cuprum:probability/10_5perc run tag @s add cupr.thunder.o
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=199,cupr.copper_cnt=6}] if predicate cuprum:probability/10_6perc run tag @s add cupr.thunder.o

#Alert effect
execute as @a[tag=cupr.thunder.o,scores={cupr.thund_coold=60}] at @s run playsound block.anvil.land player @a[distance=..3] ~ ~ ~ 0.7 1.75
execute as @a[tag=cupr.thunder.o,scores={cupr.thund_coold=60}] at @s run particle electric_spark ~ ~1 ~ 0.25 0.5 0.25 0 10 normal
execute as @a[tag=cupr.thunder.o,scores={cupr.thund_coold=40}] at @s run playsound block.anvil.land player @a[distance=..3] ~ ~ ~ 0.7 1.875
execute as @a[tag=cupr.thunder.o,scores={cupr.thund_coold=40}] at @s run particle electric_spark ~ ~1 ~ 0.25 0.5 0.25 0 10 normal
execute as @a[tag=cupr.thunder.o,scores={cupr.thund_coold=20}] at @s run playsound block.anvil.land player @a[distance=..3] ~ ~ ~ 0.7 2
execute as @a[tag=cupr.thunder.o,scores={cupr.thund_coold=20}] at @s run particle electric_spark ~ ~1 ~ 0.25 0.5 0.25 0 10 normal

#Operate Cooldown
execute as @a[tag=cupr.thunder.o,scores={cupr.thund_coold=0}] at @s run function cuprum:copper/lightning
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=0}] at @s run scoreboard players set @s cupr.thund_coold 200
execute as @e[tag=cupr.thunder,scores={cupr.thund_coold=1..}] run scoreboard players remove @s cupr.thund_coold 1

#Unset Cooldown
execute as @e[tag=cupr.thunder] unless entity @s[scores={cupr.copper_cnt=1..},predicate=cuprum:thundering] run scoreboard players reset @s cupr.thund_coold
execute as @e[tag=cupr.thunder] unless entity @s[scores={cupr.copper_cnt=1..},predicate=cuprum:thundering] run tag @s remove cupr.thunder
execute as @e[tag=cupr.thunder.o] unless entity @s[scores={cupr.copper_cnt=1..},predicate=cuprum:thundering] run tag @s remove cupr.thunder.o