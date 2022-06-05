execute as @e[scores={cupr.elect_timer=1..}] at @s run function cuprum:debuff/electric_tick
execute as @e[scores={cupr.bleed_timer=1..}] at @s run function cuprum:debuff/bleed_tick
execute as @e[tag=cupr.electric_effect,tag=cupr.marked] at @s run function cuprum:debuff/electric_effect_tick
scoreboard players remove @e[tag=cupr.electric_marker,tag=cupr.marked] cupr.elect_timer 1
kill @e[tag=cupr.electric_marker,scores={cupr.elect_timer=..0}]