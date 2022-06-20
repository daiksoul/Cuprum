scoreboard players set @s cupr.val2 0
scoreboard players add @s cupr.thund_coold 1
tp @s[tag=cupr.n1,scores={cupr.thund_coold=3}] ~ ~ ~ facing entity @e[tag=cupr.n1,tag=cupr.bolt_sword,scores={cupr.thund_coold=1},sort=nearest,limit=1]
tp @s[tag=cupr.n2,scores={cupr.thund_coold=3}] ~ ~ ~ facing entity @e[tag=cupr.n2,tag=cupr.bolt_sword,scores={cupr.thund_coold=1},sort=nearest,limit=1]
tp @s[tag=cupr.n3,scores={cupr.thund_coold=3}] ~ ~ ~ facing entity @e[tag=cupr.n3,tag=cupr.bolt_sword,scores={cupr.thund_coold=1},sort=nearest,limit=1]
execute if entity @s[tag=cupr.n1,tag=cupr.bolt_sword,scores={cupr.thund_coold=3}] unless entity @e[tag=cupr.n1,tag=cupr.bolt_sword,scores={cupr.thund_coold=1}] run tag @s add cupr.bolt_no_targ
execute if entity @s[tag=cupr.n2,tag=cupr.bolt_sword,scores={cupr.thund_coold=3}] unless entity @e[tag=cupr.n2,tag=cupr.bolt_sword,scores={cupr.thund_coold=1}] run tag @s add cupr.bolt_no_targ
execute if entity @s[tag=cupr.n3,tag=cupr.bolt_sword,scores={cupr.thund_coold=3}] unless entity @e[tag=cupr.n3,tag=cupr.bolt_sword,scores={cupr.thund_coold=1}] run tag @s add cupr.bolt_no_targ
kill @s[scores={cupr.thund_coold=32..}]
execute if score @s[tag=!cupr.bolt_no_targ] cupr.thund_coold matches 5..30 run function cuprum:lightning/sword/fork_loop