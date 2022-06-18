#execute as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword] at @s run function cuprum:util/tp_to_owner
scoreboard players add @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword] cupr.val1 1
scoreboard players add @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword] cupr.val2 1
execute as @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword] at @s run function cuprum:lightning/sword/move_guide
kill @e[tag=cupr.bolt_guide,tag=cupr.bolt_sword,scores={cupr.val1=16..}]
kill @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword,scores={cupr.val2=16..}]
execute as @e[tag=cupr.bolt_axis,tag=cupr.bolt_sword] at @s run function cuprum:lightning/sword/spawn_fork
execute as @e[tag=cupr.bolt_fork,tag=cupr.bolt_sword,tag=cupr.marked] at @s run function cuprum:lightning/sword/fork