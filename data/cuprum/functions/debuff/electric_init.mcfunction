execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~ ~ {Tags:["cupr.electric_marker"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. as @e[tag=cupr.electric_effect,tag=!cupr.marked] at @s run function cuprum:debuff/electric_effect_offset
execute unless score @s cupr.elect_timer matches 1.. run tag @e[tag=cupr.electric_effect,tag=!cupr.marked] add cupr.marked
execute unless score @s cupr.elect_timer matches 1.. run tp @e[tag=cupr.electric_marker,sort=nearest,limit=1] @s
execute unless score @s cupr.elect_timer matches 1.. run effect give @s[type=#cuprum:undead] instant_health 1 1 true
execute unless score @s cupr.elect_timer matches 1.. run effect give @s[type=!#cuprum:undead] instant_damage 1 1 true
scoreboard players set @s cupr.elect_timer 100
scoreboard players set @e[tag=cupr.electric_marker,tag=!cupr.marked] cupr.elect_timer 100
tag @e[tag=cupr.electric_marker,tag=!cupr.marked] add cupr.marked