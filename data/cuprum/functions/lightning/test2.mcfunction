scoreboard players add @s cupr.val1 1
particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 10 normal
tp @s ^ ^ ^0.218 ~5 ~
kill @s[scores={cupr.val1=73..}]
execute if score @s cupr.val1 matches ..72 positioned ^ ^ ^0.218 rotated ~5 ~ run function cuprum:lightning/test2