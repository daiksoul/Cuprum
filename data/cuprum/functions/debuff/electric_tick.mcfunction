scoreboard players remove @s[scores={cupr.elect_timer=1..}] cupr.elect_timer 1
tp @s @e[tag=cupr.electric_marker,sort=nearest,limit=1]
execute anchored eyes run particle electric_spark ^ ^ ^0.001 1 1 1 0.001 20 normal
execute if score @s cupr.elect_timer matches 1 run kill @e[tag=cupr.electric_marker,sort=nearest,limit=1]