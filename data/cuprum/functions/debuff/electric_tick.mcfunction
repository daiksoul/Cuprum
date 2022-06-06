scoreboard players remove @s[scores={cupr.elect_timer=1..}] cupr.elect_timer 1
tp @s @e[tag=cupr.electric_marker,sort=nearest,limit=1,distance=..0.5]
execute if score @s cupr.elect_timer matches 1 run kill @e[tag=cupr.electric_marker,sort=nearest,limit=1]
scoreboard players operation #ELEC cupr.val1 = @s cupr.elect_timer
scoreboard players operation #ELEC cupr.val1 %= #ELECT_DELAY cupr.const
execute if score #ELEC cupr.val1 matches 0 run tp @e[tag=cupr.electric_marker,sort=nearest,limit=1,distance=..0.5] ~ ~ ~ ~10 ~
execute if score #ELEC cupr.val1 matches 2 run tp @e[tag=cupr.electric_marker,sort=nearest,limit=1,distance=..0.5] ~ ~ ~ ~-10 ~
scoreboard players reset #ELEC cupr.val1