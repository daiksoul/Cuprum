tp @s ~ ~ ~ ~10 ~
scoreboard players add @s cupr.val1 1
summon marker ^ ^ ^0.5 {Tags:["cupr.bolt_fork","cupr.bolt_armor"]}
data modify entity @e[tag=cupr.bolt_fork,tag=cupr.bolt_armor,tag=!cupr.marked,sort=nearest,limit=1] Rotation set from entity @s Rotation
tp @e[tag=cupr.bolt_fork,tag=cupr.bolt_armor,tag=!cupr.marked,sort=nearest,limit=1] ~ ~ ~ ~95 ~
execute as @e[tag=cupr.bolt_fork,tag=cupr.bolt_armor,tag=!cupr.marked,sort=nearest,limit=1] at @s run function cuprum:util/offset/one
scoreboard players operation @e[tag=cupr.bolt_fork,tag=cupr.bolt_armor,tag=!cupr.marked,sort=nearest,limit=1] cupr.val1 = @s cupr.val1
tag @e[tag=cupr.bolt_fork,tag=cupr.bolt_armor,tag=!cupr.marked,sort=nearest,limit=1] add cupr.marked
execute if score @s cupr.val1 matches ..36 rotated ~ ~10 run function cuprum:lightning/armor/loop_axis