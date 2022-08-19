scoreboard players add @s cupr.val1 1
tp @s ~ ~ ~ ~10 0
summon marker ^ ^ ^2 {Tags:["cupr.bolt_armor","cupr.bolt_fork","cupr.unmarked"]}
data modify entity @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked,limit=1,sort=nearest] Rotation set from entity @s Rotation
scoreboard players operation @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked] cupr.uuid0 = @s cupr.uuid0
scoreboard players operation @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked] cupr.uuid1 = @s cupr.uuid1
scoreboard players operation @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked] cupr.uuid2 = @s cupr.uuid2
scoreboard players operation @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked] cupr.uuid3 = @s cupr.uuid3
scoreboard players set @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked] cupr.thund_coold 0
execute as @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked] run function cuprum:util/offset/three
tag @e[tag=cupr.bolt_armor,tag=cupr.bolt_fork,tag=cupr.unmarked] remove cupr.unmarked
execute if score @s cupr.val1 matches ..36 rotated ~10 ~ run function cuprum:lightning/armor/loop_axis