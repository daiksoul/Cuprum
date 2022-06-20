execute rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~20 ~ {Tags:["cupr.bolt_axe","cupr.bolt_source"]}
execute rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["cupr.bolt_axe","cupr.bolt_target"]}
execute as @e[tag=cupr.bolt_axe,tag=cupr.bolt_target,tag=!cupr.marked] at @s run function cuprum:util/highest
tag @e[tag=cupr.bolt_axe,tag=cupr.bolt_target,tag=!cupr.marked] add cupr.marked
item modify entity @s weapon.mainhand cuprum:copper/charge/discharge