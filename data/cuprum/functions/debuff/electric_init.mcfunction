execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~ ~ {Tags:["cupr.electric_marker"]}
execute unless score @s cupr.elect_timer matches 1.. run function cuprum:debuff/electric_effect_init
execute unless score @s cupr.elect_timer matches 1.. run tp @e[tag=cupr.electric_marker,sort=nearest,limit=1] @s
execute unless score @s cupr.elect_timer matches 1.. run effect give @s[type=#cuprum:undead] instant_health 1 1 true
execute unless score @s cupr.elect_timer matches 1.. run effect give @s[type=!#cuprum:undead] instant_damage 1 1 true
scoreboard players set @s cupr.elect_timer 100
scoreboard players set @e[tag=cupr.electric_marker,tag=!cupr.marked] cupr.elect_timer 100
tag @e[tag=cupr.electric_marker,tag=!cupr.marked] add cupr.marked