#execute as @e[tag=cupr.bolt_axis] at @s run function cuprum:util/tp_to_owner
scoreboard players add @e[tag=cupr.bolt_guide] cupr.val1 1
scoreboard players add @e[tag=cupr.bolt_axis] cupr.val2 1
execute as @e[tag=cupr.bolt_guide] at @s run function cuprum:lightning/sword/move_guide
kill @e[tag=cupr.bolt_guide,scores={cupr.val1=16..}]
kill @e[tag=cupr.bolt_axis,scores={cupr.val2=16..}]
execute as @e[tag=cupr.bolt_axis] at @s run function cuprum:lightning/sword/spawn_fork
execute as @e[tag=cupr.bolt_fork,tag=cupr.marked] at @s run function cuprum:lightning/sword/fork