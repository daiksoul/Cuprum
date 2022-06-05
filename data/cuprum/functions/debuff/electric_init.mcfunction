execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~ ~ {Tags:["cupr.electric_marker"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. run summon marker ~ ~1 ~ {Tags:["cupr.electric_effect"]}
execute unless score @s cupr.elect_timer matches 1.. as @e[tag=cupr.electric_effect,tag=!cupr.marked] at @s run function cuprum:lightning/sword/offset_fork
execute unless score @s cupr.elect_timer matches 1.. run tag @e[tag=cupr.electric_effect,tag=!cupr.marked] add cupr.marked
execute unless score @s cupr.elect_timer matches 1.. run tp @e[tag=cupr.electric_marker,sort=nearest,limit=1] @s
execute unless score @s cupr.elect_timer matches 1.. run effect give @s wither 1 1 false
scoreboard players set @s cupr.elect_timer 50