summon marker ~ ~ ~ {Tags:["global.ignore","cupr.bolt_effect"]}
scoreboard players set @e[tag=cupr.bolt_effect,tag=!cupr.marked] cupr.val1 0
execute as @e[tag=cupr.bolt_effect,tag=!cupr.marked] at @s run function cuprum:lightning/effect/sword_bolt