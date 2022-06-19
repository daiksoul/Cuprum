particle soul_fire_flame ^ ^ ^ 0 0 0 0 1 normal
execute if block ~ ~ ~ #mineable/axe run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ #leaves run setblock ~ ~ ~ air destroy
scoreboard players add @s cupr.val2 1
execute if score @s cupr.thund_coold matches ..15 as @e[type=!#cuprum:immune_ligtning,dx=0] at @s run function cuprum:debuff/electric_init 
execute if score @s cupr.val2 matches ..30 positioned ^ ^ ^0.1 if entity @e[tag=cupr.bolt_fork,tag=cupr.bolt_axe,distance=..0.1] if score @e[tag=cupr.bolt_fork,tag=cupr.bolt_axe,distance=..0.1,sort=nearest,limit=1] cupr.thund_coold = @s cupr.thund_coold run function cuprum:lightning/axe/fork_loop
execute if score @s cupr.val2 matches ..30 positioned ^ ^ ^0.1 unless entity @e[tag=cupr.bolt_fork,tag=cupr.bolt_axe,distance=..0.1] run function cuprum:lightning/axe/fork_loop