scoreboard players set @s cupr.val2 0
scoreboard players add @s cupr.thund_coold 1
tp @s[tag=cupr.n1,scores={cupr.thund_coold=1}] ~ ~ ~ facing entity @e[tag=cupr.n1,tag=cupr.bolt_sword,scores={cupr.thund_coold=2},sort=nearest,limit=1]
tp @s[tag=cupr.n2,scores={cupr.thund_coold=1}] ~ ~ ~ facing entity @e[tag=cupr.n2,tag=cupr.bolt_sword,scores={cupr.thund_coold=2},sort=nearest,limit=1]
tp @s[tag=cupr.n3,scores={cupr.thund_coold=1}] ~ ~ ~ facing entity @e[tag=cupr.n3,tag=cupr.bolt_sword,scores={cupr.thund_coold=2},sort=nearest,limit=1]
kill @s[scores={cupr.thund_coold=30..}]
execute if score @s cupr.thund_coold matches 5.. run function cuprum:lightning/sword/fork_loop